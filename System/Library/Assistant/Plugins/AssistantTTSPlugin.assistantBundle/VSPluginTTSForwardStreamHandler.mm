@interface VSPluginTTSForwardStreamHandler
- (VSPluginTTSForwardStreamHandler)initWithDictionary:(id)dictionary;
- (void)performWithCompletion:(id)completion;
@end

@implementation VSPluginTTSForwardStreamHandler

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  streamObject = [(VSPluginTTSForwardStreamHandler *)self streamObject];

  if (streamObject)
  {
    mEMORY[0x277D799A8] = [MEMORY[0x277D799A8] sharedInstance];
    streamObject2 = [(VSPluginTTSForwardStreamHandler *)self streamObject];
    [mEMORY[0x277D799A8] forwardStreamObject:streamObject2];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (VSPluginTTSForwardStreamHandler)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = VSPluginTTSForwardStreamHandler;
  v5 = [(VSPluginTTSForwardStreamHandler *)&v19 init];
  if (v5)
  {
    v6 = *MEMORY[0x277D470D8];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D470D8]];
    v8 = [v7 isEqualToString:*MEMORY[0x277D48AA8]];

    if (v8)
    {
      v9 = MEMORY[0x277D479B0];
    }

    else
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:v6];
      v11 = [v10 isEqualToString:*MEMORY[0x277D48AB0]];

      if (v11)
      {
        v9 = MEMORY[0x277D479B8];
      }

      else
      {
        v12 = [dictionaryCopy objectForKeyedSubscript:v6];
        v13 = [v12 isEqualToString:*MEMORY[0x277D48AB8]];

        if (!v13)
        {
          streamObject = VSGetLogDefault();
          if (os_log_type_enabled(streamObject, OS_LOG_TYPE_ERROR))
          {
            v18 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D47C90]];
            *buf = 136315394;
            v21 = "[VSPluginTTSForwardStreamHandler initWithDictionary:]";
            v22 = 2112;
            v23 = v18;
            _os_log_error_impl(&dword_2334AC000, streamObject, OS_LOG_TYPE_ERROR, "%s Unknown class %@", buf, 0x16u);
          }

          goto LABEL_9;
        }

        v9 = MEMORY[0x277D479C0];
      }
    }

    v14 = [[v9 alloc] initWithDictionary:dictionaryCopy];
    streamObject = v5->_streamObject;
    v5->_streamObject = v14;
LABEL_9:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end