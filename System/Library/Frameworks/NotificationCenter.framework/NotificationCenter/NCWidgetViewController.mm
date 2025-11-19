@interface NCWidgetViewController
@end

@implementation NCWidgetViewController

void __48___NCWidgetViewController__enqueueProxyRequest___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48___NCWidgetViewController__enqueueProxyRequest___block_invoke_2;
  v2[3] = &unk_278750A48;
  v3 = *(a1 + 32);
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v4);
}

void __48___NCWidgetViewController__enqueueProxyRequest___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

void __71___NCWidgetViewController__processInputItems_initialActiveDisplayMode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v33 = a2;
  v6 = [v33 userInfo];
  v7 = v6;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v8 = [v6 objectForKey:@"NCExtensionItemUserInfoWidgetIdentifier"];
    if ([v8 length])
    {
      v9 = [v8 copy];
      v10 = *(a1 + 32);
      v11 = *(v10 + 1080);
      *(v10 + 1080) = v9;

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v12 = [v7 objectForKey:@"NCExtensionItemUserInfoContainerIdentifier"];
    if ([v12 length])
    {
      v13 = [v12 copy];
      v14 = *(a1 + 32);
      v15 = *(v14 + 1088);
      *(v14 + 1088) = v13;

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v16 = [v7 objectForKey:@"NCExtensionItemUserInfoDefaultMargins"];
    if ([(NSString *)v16 length])
    {
      v17 = (*(a1 + 32) + 1096);
      *v17 = UIEdgeInsetsFromString(v16);
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v18 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialLayoutMargins"];
    if ([(NSString *)v18 length])
    {
      v19 = (*(a1 + 32) + 1128);
      *v19 = UIEdgeInsetsFromString(v18);
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v20 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialBounds"];
    v21 = v20;
    if (v20)
    {
      v22 = (*(a1 + 32) + 1016);
      *v22 = CGRectFromString(v20);
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v23 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialActiveDisplayMode"];
    v24 = v23;
    if (v23)
    {
      if (*(a1 + 120))
      {
        **(a1 + 120) = [v23 integerValue];
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v25 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialMaxLessSize"];
    *(*(*(a1 + 88) + 8) + 24) = v25 != 0;
  }

  if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
  {
    v26 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialMaxMoreSize"];
    *(*(*(a1 + 96) + 8) + 24) = v26 != 0;
  }

  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    v27 = [v7 objectForKey:@"NCExtensionItemUserInfoInitialVisibilityState"];
    v28 = v27;
    if (v27)
    {
      *(*(a1 + 32) + 1064) = [v27 integerValue];
      *(*(*(a1 + 104) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v29 = [v7 objectForKey:@"NCExtensionItemUserInfoSnapshotTimestampsEnabled"];
    v30 = v29;
    if (v29)
    {
      *(*(a1 + 32) + 1048) = [v29 BOOLValue];
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 80) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 96) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 104) + 8) + 24) & 1) == 0 && *(*(*(a1 + 112) + 8) + 24) != 1)
  {
    goto LABEL_56;
  }

  v31 = [v7 mutableCopy];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoWidgetIdentifier"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoContainerIdentifier"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoDefaultMargins"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoInitialBounds"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoInitialActiveDisplayMode"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoInitialMaxLessSize"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoInitialMaxMoreSize"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoInitialVisibilityState"];
  [v31 removeObjectForKey:@"NCExtensionItemUserInfoSnapshotTimestampsEnabled"];
  [v33 setUserInfo:v31];

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1 && *(*(*(a1 + 72) + 8) + 24) == 1 && *(*(*(a1 + 80) + 8) + 24) == 1 && *(*(*(a1 + 88) + 8) + 24) == 1 && *(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v32 = *(*(*(a1 + 104) + 8) + 24);
  }

  else
  {
LABEL_56:
    v32 = 0;
  }

  *a4 = v32 & 1;
}

void __60___NCWidgetViewController_beginRequestWithExtensionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _remoteViewControllerProxy];
  [v3 __setLargestAvailableDisplayMode:*(a1 + 32)];
}

void __60___NCWidgetViewController__closeTransactionWithAppearState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _remoteViewControllerProxy];
  [v3 __closeTransactionForAppearanceCallWithState:*(a1 + 40) withIdentifier:*(a1 + 32)];
}

void __42___NCWidgetViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _closeTransactionWithAppearState:1];
}

void __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _remoteViewControllerProxy];
  [v3 __requestPreferredViewHeight:*(a1 + 32)];
}

void __55___NCWidgetViewController__requestPreferredViewHeight___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _contentProvidingViewController];
  v2 = [v1 view];
  [v2 layoutBelowIfNeeded];
}

void __78___NCWidgetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _contentProvidingViewController];
  v2 = [v1 view];
  [v2 layoutBelowIfNeeded];
}

uint64_t __63___NCWidgetViewController__performUpdateWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 1);
  }

  return result;
}

void __70___NCWidgetViewController__clientLargestSupportedDisplayModeDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _remoteViewControllerProxy];
  [v3 __setLargestAvailableDisplayMode:*(a1 + 32)];
}

void __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke(id *a1)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] context];

  if (v2)
  {
    [MEMORY[0x277CD9FF0] begin];
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] activateBackground:1];
    }

    v3 = [a1[5] path];
    v4 = objc_alloc(MEMORY[0x277CBEB38]);
    v5 = [v4 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], *MEMORY[0x277CDA0B0], 0}];
    if ([a1[6] isEqualToString:@"com.apple.atx"])
    {
      [v5 setObject:@"com.apple.atx" forKey:*MEMORY[0x277CDA0A0]];
      v6 = *MEMORY[0x277CD2DD8];
      v7 = *MEMORY[0x277CD2DD0];
      v21[0] = *MEMORY[0x277CD2F40];
      v21[1] = v7;
      v22[0] = v6;
      v22[1] = &unk_284052068;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v5 setObject:v8 forKey:*MEMORY[0x277CDA0A8]];
    }

    v9 = a1[4];
    CAMLEncodeLayerTreeToPathWithOptions();
    CFRelease(v3);
    [MEMORY[0x277CD9FF0] commit];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke_128;
    block[3] = &unk_278750B58;
    v17 = a1[7];
    v18 = 0;
    v19 = a1[8];
    v10 = 0;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_ERROR))
    {
      __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke_cold_1(v11);
    }

    v12 = NCLogWidgets;
    if (os_log_type_enabled(NCLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D116000, v12, OS_LOG_TYPE_DEFAULT, "Attempt to snapshot a layer not attached to a context", buf, 2u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke_130;
    v14[3] = &unk_278750B80;
    v15 = a1[8];
    dispatch_async(MEMORY[0x277D85CD0], v14);
    v10 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke_128(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v5 = [v3 description];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v4 errorWithDomain:@"NCWidgetErrorDomain" code:1 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(a1[6] + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __88___NCWidgetViewController__encodeLayerTreeToURL_withCodingImageFormat_withReplyHandler___block_invoke_130(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"The layer being encoded isn't attached to a context";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"NCWidgetErrorDomain" code:2 userInfo:v3];
  (*(v1 + 16))(v1, v4);

  v5 = *MEMORY[0x277D85DE8];
}

@end