@interface MPSetPriorityForPlaybackSessionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setPreloadedSessions:(id)sessions;
@end

@implementation MPSetPriorityForPlaybackSessionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_preloadedSessions count])
  {
    v20 = dictionary;
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](self->_preloadedSessions, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_preloadedSessions;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      v8 = *MEMORY[0x1E69B0CB8];
      v9 = *MEMORY[0x1E69B0CA8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v26[0] = v8;
          revision = [v11 revision];
          v26[1] = v9;
          v27[0] = revision;
          v13 = MEMORY[0x1E696AD98];
          priority = [v11 priority];
          if (priority == 2)
          {
            v15 = 1024;
          }

          else
          {
            v15 = (priority == 1) << 9;
          }

          v16 = [v13 numberWithInteger:v15];
          v27[1] = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
          identifier = [v11 identifier];
          [v4 setObject:v17 forKeyedSubscript:identifier];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v6);
    }

    dictionary = v20;
    [v20 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69B0D48]];
  }

  return dictionary;
}

- (void)setPreloadedSessions:(id)sessions
{
  sessionsCopy = sessions;
  if (([(NSArray *)self->_preloadedSessions isEqual:?]& 1) == 0)
  {
    v4 = [sessionsCopy copy];
    preloadedSessions = self->_preloadedSessions;
    self->_preloadedSessions = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end