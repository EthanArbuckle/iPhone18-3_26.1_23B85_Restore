@interface SHMatcherFactory
- (SHMatcherFactory)initWithAudioTapProvider:(id)provider;
- (id)buildConcurrentMatcherWithInitialBuffers:(id)buffers callback:(id)callback;
- (id)matcherForRequest:(id)request catalog:(id)catalog;
- (id)matcherForRequest:(id)request catalog:(id)catalog initialBuffers:(id)buffers;
@end

@implementation SHMatcherFactory

- (SHMatcherFactory)initWithAudioTapProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SHMatcherFactory;
  v6 = [(SHMatcherFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioTapProvider, provider);
  }

  return v7;
}

- (id)matcherForRequest:(id)request catalog:(id)catalog
{
  requestCopy = request;
  catalogCopy = catalog;
  v8 = +[NSMutableArray array];
  if ([requestCopy type] == 1 || objc_msgSend(requestCopy, "type") == 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    audioTapProvider = [(SHMatcherFactory *)self audioTapProvider];
    tapsForAvailableSources = [audioTapProvider tapsForAvailableSources];

    v11 = [tapsForAvailableSources countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(tapsForAvailableSources);
          }

          v15 = [[SHRecordingBuffer alloc] initWithTap:*(*(&v19 + 1) + 8 * i)];
          [v8 addObject:v15];
        }

        v12 = [tapsForAvailableSources countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v16 = [v8 copy];
  v17 = [(SHMatcherFactory *)self matcherForRequest:requestCopy catalog:catalogCopy initialBuffers:v16];

  return v17;
}

- (id)matcherForRequest:(id)request catalog:(id)catalog initialBuffers:(id)buffers
{
  catalogCopy = catalog;
  buffersCopy = buffers;
  type = [request type];
  _createMatcher = 0;
  if (type <= 1)
  {
    if (!type)
    {
      _createMatcher = [catalogCopy _createMatcher];
      goto LABEL_14;
    }

    if (type != 1)
    {
      goto LABEL_14;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100025E20;
    v19[3] = &unk_10007D978;
    v20 = catalogCopy;
    selfCopy = self;
    _createMatcher = [(SHMatcherFactory *)self buildConcurrentMatcherWithInitialBuffers:buffersCopy callback:v19];
    v12 = v20;
    goto LABEL_11;
  }

  if (type == 2)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100025BEC;
    v22[3] = &unk_10007D978;
    v23 = catalogCopy;
    selfCopy2 = self;
    _createMatcher = [(SHMatcherFactory *)self buildConcurrentMatcherWithInitialBuffers:buffersCopy callback:v22];
    v12 = v23;
LABEL_11:

    goto LABEL_14;
  }

  if (type == 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientIdentifier = [catalogCopy clientIdentifier];
      v14 = [clientIdentifier isEqualToString:@"com.apple.assistant_service"];

      v15 = v14 & 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = [SHAppIntentMatcher alloc];
    v17 = [[SHAppIntentRunnerMatcher alloc] initWithSource:v15];
    _createMatcher = [(SHAppIntentMatcher *)v16 initWithRunnerMatcher:v17];
  }

LABEL_14:

  return _createMatcher;
}

- (id)buildConcurrentMatcherWithInitialBuffers:(id)buffers callback:(id)callback
{
  buffersCopy = buffers;
  callbackCopy = callback;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [buffersCopy count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = buffersCopy;
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

        v14 = callbackCopy[2](callbackCopy, *(*(&v21 + 1) + 8 * i));
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
    audioTapProvider = [(SHMatcherFactory *)self audioTapProvider];
    audioRecordingManager = [audioTapProvider audioRecordingManager];
    firstObject = [(SHMultipleConcurrentMatcher *)v16 initWithMatchers:v17 audioRecordingManager:audioRecordingManager];
  }

  else
  {
    firstObject = [v8 firstObject];
  }

  return firstObject;
}

@end