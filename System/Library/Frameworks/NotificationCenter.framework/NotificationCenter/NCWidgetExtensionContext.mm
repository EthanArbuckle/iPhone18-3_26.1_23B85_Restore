@interface NCWidgetExtensionContext
@end

@implementation NCWidgetExtensionContext

void __77___NCWidgetExtensionContext_initWithInputItems_listenerEndpoint_contextUUID___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 userInfo];
  v14 = v6;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v7 = [v6 objectForKey:@"NCExtensionItemUserInfoInitialMaxLessSize"];
    v8 = v7;
    if (v7)
    {
      v9 = (a1[4] + 24);
      *v9 = CGSizeFromString(v7);
      *(*(a1[5] + 8) + 24) = 1;
    }

    v6 = v14;
  }

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v10 = [v6 objectForKey:@"NCExtensionItemUserInfoInitialMaxMoreSize"];
    v11 = v10;
    if (v10)
    {
      v12 = (a1[4] + 40);
      *v12 = CGSizeFromString(v10);
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = v14;
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v13 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13 & 1;
}

void __55___NCWidgetExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D0AC70];
  v15[0] = *MEMORY[0x277D0AC58];
  v15[1] = v2;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC38];
  v15[2] = *MEMORY[0x277D0AC28];
  v16[2] = @"NCAppLaunchOriginWidget";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v5 = *(a1 + 32);
  v14 = 0;
  v6 = [v4 openSensitiveURL:v5 withOptions:v3 error:&v14];
  v7 = v14;
  *(*(*(a1 + 48) + 8) + 24) = v6;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    NSLog(&cfstr_SFailed.isa, "[_NCWidgetExtensionContext openURL:completionHandler:]_block_invoke", v7);
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55___NCWidgetExtensionContext_openURL_completionHandler___block_invoke_2;
    block[3] = &unk_278750C10;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end