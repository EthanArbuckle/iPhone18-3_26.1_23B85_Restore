@interface SHMatcherFactory
- (SHMatcherFactory)initWithAudioTapProvider:(id)a3;
- (id)buildConcurrentMatcherWithInitialBuffers:(id)a3 callback:(id)a4;
- (id)matcherForRequest:(id)a3 catalog:(id)a4;
- (id)matcherForRequest:(id)a3 catalog:(id)a4 initialBuffers:(id)a5;
@end

@implementation SHMatcherFactory

- (SHMatcherFactory)initWithAudioTapProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHMatcherFactory;
  v6 = [(SHMatcherFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioTapProvider, a3);
  }

  return v7;
}

- (id)matcherForRequest:(id)a3 catalog:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 type] == 1 || objc_msgSend(v6, "type") == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(SHMatcherFactory *)self audioTapProvider];
    v10 = [v9 tapsForAvailableSources];

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[SHRecordingBuffer alloc] initWithTap:*(*(&v19 + 1) + 8 * i)];
          [v8 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v16 = [v8 copy];
  v17 = [(SHMatcherFactory *)self matcherForRequest:v6 catalog:v7 initialBuffers:v16];

  return v17;
}

- (id)matcherForRequest:(id)a3 catalog:(id)a4 initialBuffers:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 type];
  v11 = 0;
  if (v10 <= 1)
  {
    if (!v10)
    {
      v11 = [v8 _createMatcher];
      goto LABEL_14;
    }

    if (v10 != 1)
    {
      goto LABEL_14;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100025E20;
    v19[3] = &unk_10007D978;
    v20 = v8;
    v21 = self;
    v11 = [(SHMatcherFactory *)self buildConcurrentMatcherWithInitialBuffers:v9 callback:v19];
    v12 = v20;
    goto LABEL_11;
  }

  if (v10 == 2)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100025BEC;
    v22[3] = &unk_10007D978;
    v23 = v8;
    v24 = self;
    v11 = [(SHMatcherFactory *)self buildConcurrentMatcherWithInitialBuffers:v9 callback:v22];
    v12 = v23;
LABEL_11:

    goto LABEL_14;
  }

  if (v10 == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v8 clientIdentifier];
      v14 = [v13 isEqualToString:@"com.apple.assistant_service"];

      v15 = v14 & 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SHAppIntentMatcher alloc];
    v17 = [[SHAppIntentRunnerMatcher alloc] initWithSource:v15];
    v11 = [(SHAppIntentMatcher *)v16 initWithRunnerMatcher:v17];
  }

LABEL_14:

  return v11;
}

- (id)buildConcurrentMatcherWithInitialBuffers:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = v7[2](v7, *(*(&v21 + 1) + 8 * i));
        [v8 addObject:{v14, v21}];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count] > 1)
  {
    v16 = [SHMultipleConcurrentMatcher alloc];
    v17 = [v8 copy];
    v18 = [(SHMatcherFactory *)self audioTapProvider];
    v19 = [v18 audioRecordingManager];
    v15 = [(SHMultipleConcurrentMatcher *)v16 initWithMatchers:v17 audioRecordingManager:v19];
  }

  else
  {
    v15 = [v8 firstObject];
  }

  return v15;
}

@end