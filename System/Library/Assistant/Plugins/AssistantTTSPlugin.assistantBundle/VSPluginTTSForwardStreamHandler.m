@interface VSPluginTTSForwardStreamHandler
- (VSPluginTTSForwardStreamHandler)initWithDictionary:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation VSPluginTTSForwardStreamHandler

- (void)performWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(VSPluginTTSForwardStreamHandler *)self streamObject];

  if (v4)
  {
    v5 = [MEMORY[0x277D799A8] sharedInstance];
    v6 = [(VSPluginTTSForwardStreamHandler *)self streamObject];
    [v5 forwardStreamObject:v6];

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (VSPluginTTSForwardStreamHandler)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VSPluginTTSForwardStreamHandler;
  v5 = [(VSPluginTTSForwardStreamHandler *)&v19 init];
  if (v5)
  {
    v6 = *MEMORY[0x277D470D8];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D470D8]];
    v8 = [v7 isEqualToString:*MEMORY[0x277D48AA8]];

    if (v8)
    {
      v9 = MEMORY[0x277D479B0];
    }

    else
    {
      v10 = [v4 objectForKeyedSubscript:v6];
      v11 = [v10 isEqualToString:*MEMORY[0x277D48AB0]];

      if (v11)
      {
        v9 = MEMORY[0x277D479B8];
      }

      else
      {
        v12 = [v4 objectForKeyedSubscript:v6];
        v13 = [v12 isEqualToString:*MEMORY[0x277D48AB8]];

        if (!v13)
        {
          streamObject = VSGetLogDefault();
          if (os_log_type_enabled(streamObject, OS_LOG_TYPE_ERROR))
          {
            v18 = [v4 objectForKeyedSubscript:*MEMORY[0x277D47C90]];
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

    v14 = [[v9 alloc] initWithDictionary:v4];
    streamObject = v5->_streamObject;
    v5->_streamObject = v14;
LABEL_9:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

@end