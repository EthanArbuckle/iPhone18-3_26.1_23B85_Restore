@interface ANAnnouncement(AudioProcessing)
- (uint64_t)processAudioWithEffects:()AudioProcessing error:;
@end

@implementation ANAnnouncement(AudioProcessing)

- (uint64_t)processAudioWithEffects:()AudioProcessing error:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CEAB80] sharedInstance];
  v8 = [v7 BOOLForDefault:*MEMORY[0x277CEA910]];

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [a1 dataItems];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 type] == 1 && (objc_msgSend(v14, "flags") & 1) != 0)
          {
            if (![v14 processAudioWithEffects:a3 error:a4])
            {
              v15 = 0;
              goto LABEL_20;
            }

            [v14 setFlags:{objc_msgSend(v14, "flags") & 0xFFFFFFFFFFFFFFFELL}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (ANLogHandleAudioProcessing_once != -1)
    {
      [ANAnnouncement(AudioProcessing) processAudioWithEffects:error:];
    }

    v9 = ANLogHandleAudioProcessing_logger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "%@Audio Normalization is Disabled", buf, 0xCu);
    }
  }

  v15 = 1;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end