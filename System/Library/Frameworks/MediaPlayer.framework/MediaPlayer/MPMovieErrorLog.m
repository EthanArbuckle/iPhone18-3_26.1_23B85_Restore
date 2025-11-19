@interface MPMovieErrorLog
- (NSArray)events;
- (id)_initWithAVItemErrorLog:(id)a3;
@end

@implementation MPMovieErrorLog

- (NSArray)events
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(AVPlayerItemErrorLog *)self->_errorLog events];
  if ([v2 count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [MPMovieErrorLogEvent alloc];
          v11 = [(MPMovieErrorLogEvent *)v10 _initWithAVItemErrorLogEvent:v9, v13];
          [v3 addObject:v11];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_initWithAVItemErrorLog:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MPMovieErrorLog;
    v6 = [(MPMovieErrorLog *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_errorLog, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end