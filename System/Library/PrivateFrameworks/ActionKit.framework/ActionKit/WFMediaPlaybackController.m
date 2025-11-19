@interface WFMediaPlaybackController
+ (id)bundleIdentifierForMediaPlaybackApplication:(unint64_t)a3;
+ (id)songPropertySet;
- (WFMediaPlaybackController)init;
- (id)createSendCommandError:(unsigned int)a3;
- (void)clearQueueWithCompletion:(id)a3;
- (void)connectToEndpoint:(id)a3 completion:(id)a4;
- (void)connectToExternalDevice:(id)a3 completion:(id)a4;
- (void)getActivePlayerPathWithCompletion:(id)a3;
- (void)getCurrentlyPlayingMediaWithCompletion:(id)a3;
- (void)getPreferredMediaControlDestinationForOutputDeviceUIDs:(id)a3 completionBlock:(id)a4;
- (void)getPreferredMediaControlOriginWithCompletion:(id)a3;
- (void)getPreferredPlaybackDestinationForPlaybackArchive:(id)a3 completionBlock:(id)a4;
- (void)getPreferredPlaybackOriginWithCompletion:(id)a3;
- (void)getRemoteControlEndpointsMatchingUIDs:(id)a3 completion:(id)a4;
- (void)queueItemsWithIdentifierSets:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5;
- (void)queueMediaItems:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5;
- (void)queueiTunesStoreItems:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5;
- (void)sendCommand:(unsigned int)a3 options:(id)a4 completion:(id)a5;
- (void)sendCommand:(unsigned int)a3 playerPath:(void *)a4 options:(id)a5 completion:(id)a6;
- (void)skipBackwardOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5;
- (void)skipForwardOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5;
- (void)skipToPositionOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5;
@end

@implementation WFMediaPlaybackController

- (void)skipToPositionOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D27D50];
  v8 = v15;
  v9 = MEMORY[0x277CCABB0];
  v10 = a5;
  v11 = a3;
  v12 = [v9 numberWithDouble:a4];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:24 deviceUIDs:v11 options:v13 sendTwice:0 completion:v10];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)skipBackwardOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D27DF8];
  v8 = v15;
  v9 = MEMORY[0x277CCABB0];
  v10 = a5;
  v11 = a3;
  v12 = [v9 numberWithDouble:a4];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:18 deviceUIDs:v11 options:v13 sendTwice:0 completion:v10];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)skipForwardOnDevicesWithUIDs:(id)a3 interval:(double)a4 completion:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277D27DF8];
  v8 = v15;
  v9 = MEMORY[0x277CCABB0];
  v10 = a5;
  v11 = a3;
  v12 = [v9 numberWithDouble:a4];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(WFMediaPlaybackController *)self sendCommandToDevicesWithUIDs:17 deviceUIDs:v11 options:v13 sendTwice:0 completion:v10];
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    return [*(a1 + 32) sendCommand:*(a1 + 56) origin:0 options:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    if ([v7 count] || !objc_msgSend(v8, "count"))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__3072;
      v47 = __Block_byref_object_dispose__3073;
      v48 = 0;
      v10 = dispatch_group_create();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_226;
      aBlock[3] = &unk_278C195F8;
      v42 = buf;
      v11 = v10;
      v12 = *(a1 + 32);
      v39 = v11;
      v40 = v12;
      v43 = *(a1 + 56);
      v41 = *(a1 + 40);
      v44 = *(a1 + 60);
      v13 = _Block_copy(aBlock);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_4;
      v34[3] = &unk_278C19620;
      v14 = v11;
      v15 = *(a1 + 32);
      v35 = v14;
      v36 = v15;
      v16 = v13;
      v37 = v16;
      [v7 enumerateObjectsUsingBlock:v34];
      v17 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_5;
      block[3] = &unk_278C223F8;
      v32 = *(a1 + 48);
      v33 = buf;
      dispatch_group_notify(v14, v17, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = getWFActionsLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[WFMediaPlaybackController sendCommandToDevicesWithUIDs:deviceUIDs:options:sendTwice:completion:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_23DE30000, v18, OS_LOG_TYPE_INFO, "%s Found no endpoints for provided UIDs, only devices: %@", buf, 0x16u);
      }

      if (v9)
      {
        v19 = [v9 userInfo];
        v20 = [v19 mutableCopy];
      }

      else
      {
        v20 = objc_opt_new();
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = WFLocalizedPluralString(@"These devices can't be controlled remotely.");
      v26 = [v24 localizedStringWithFormat:v25, objc_msgSend(v8, "count")];
      [v20 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA450]];

      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:objc_msgSend(v9 userInfo:{"code"), v20}];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v21 = getWFActionsLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[WFMediaPlaybackController sendCommandToDevicesWithUIDs:deviceUIDs:options:sendTwice:completion:]_block_invoke_2";
      _os_log_impl(&dword_23DE30000, v21, OS_LOG_TYPE_INFO, "%s Found no endpoints and no devices for provided UIDs.", buf, 0xCu);
    }

    if (v9)
    {
      v22 = [v9 userInfo];
      v23 = [v22 mutableCopy];
    }

    else
    {
      v23 = objc_opt_new();
    }

    v28 = WFLocalizedString(@"No endpoints were found.");
    [v23 setObject:v28 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:objc_msgSend(v9 userInfo:{"code"), v23}];
    (*(*(a1 + 48) + 16))();
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2_227;
    aBlock[3] = &unk_278C1CE08;
    v21 = *(a1 + 56);
    v20 = *(a1 + 32);
    v8 = _Block_copy(aBlock);
    v9 = *(a1 + 64);
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_3;
    v13[3] = &unk_278C195D0;
    v18 = *(a1 + 68);
    v17 = v9;
    v13[4] = v11;
    v16 = a3;
    v14 = v10;
    v15 = v8;
    v12 = v8;
    [v11 sendCommand:v9 origin:a3 options:v14 completion:v13];
  }
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  [*(a1 + 40) connectToEndpoint:v4 completion:*(a1 + 48)];
}

void __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_2_227(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __98__WFMediaPlaybackController_sendCommandToDevicesWithUIDs_deviceUIDs_options_sendTwice_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 68) == 1)
  {
    return [*(a1 + 32) sendCommand:*(a1 + 64) origin:*(a1 + 56) options:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)sendCommand:(unsigned int)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__WFMediaPlaybackController_sendCommand_options_completion___block_invoke;
  v16 = &unk_278C19580;
  v18 = a3;
  v17 = v8;
  v9 = v8;
  v10 = a4;
  v11 = _Block_copy(&v13);
  v12 = [(WFMediaPlaybackController *)self queue:v13];
  MRMediaRemoteSendCommandWithReply();
}

void __60__WFMediaPlaybackController_sendCommand_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = v4, v4, v5))
  {
    if (v5 == 2)
    {
      v6 = MRMediaRemoteCopyCommandHandlerStatusDescription();
      v7 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA068];
      v19[0] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v9 = [v7 errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:2 userInfo:v8];
    }

    else
    {
      v10 = *(a1 + 40);
      v6 = MRMediaRemoteCopyCommandDescription();
      v8 = getWFActionsLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 136315650;
        v13 = "[WFMediaPlaybackController sendCommand:options:completion:]_block_invoke";
        v14 = 2114;
        v15 = v6;
        v16 = 1024;
        v17 = v5;
        _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s %{public}@ received a non-success status: '%u'", &v12, 0x1Cu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(unsigned int)a3 playerPath:(void *)a4 options:(id)a5 completion:(id)a6
{
  v8 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__WFMediaPlaybackController_sendCommand_playerPath_options_completion___block_invoke;
  aBlock[3] = &unk_278C1A718;
  v14 = v8;
  v9 = v8;
  v10 = a5;
  v11 = _Block_copy(aBlock);
  v12 = [(WFMediaPlaybackController *)self queue];
  MRMediaRemoteSendCommandToPlayer();
}

void __71__WFMediaPlaybackController_sendCommand_playerPath_options_completion___block_invoke(uint64_t a1, unsigned int a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = MRMediaRemoteCopySendCommandErrorDescription();
    v5 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA068];
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v5 errorWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:a2 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (id)createSendCommandError:(unsigned int)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MRMediaRemoteCopySendCommandErrorDescription();
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFMediaPlaybackControllerErrorDomain" code:a3 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)connectToExternalDevice:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[WFMediaPlaybackController connectToExternalDevice:completion:]";
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Connecting to external device: %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke;
  aBlock[3] = &unk_278C21360;
  v9 = v6;
  v21 = v9;
  v22 = self;
  v10 = v7;
  v23 = v10;
  v11 = _Block_copy(aBlock);
  if ([v9 isConnected])
  {
    v12 = [(WFMediaPlaybackController *)self queue];
    dispatch_async(v12, v11);
  }

  else
  {
    objc_initWeak(buf, v9);
    v16 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v19, buf);
    v17 = v11;
    v18 = v10;
    v13 = [(WFMediaPlaybackController *)self queue:v16];
    [v9 setConnectionStateCallback:&v16 withQueue:v13];

    v24 = *MEMORY[0x277D27908];
    v25 = @"WFMediaPlaybackController";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v9 connectWithOptions:0 userInfo:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = getWFActionsLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
    _os_log_impl(&dword_23DE30000, v2, OS_LOG_TYPE_DEBUG, "%s Successfully connected to external device.", &v9, 0xCu);
  }

  v3 = [*(a1 + 32) customOrigin];
  if (v3)
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s No origin for %{public}@", &v9, 0x16u);
    }

    v7 = [*(a1 + 40) createSendCommandError:6];
    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__WFMediaPlaybackController_connectToExternalDevice_completion___block_invoke_202(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2 == 3)
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[WFMediaPlaybackController connectToExternalDevice:completion:]_block_invoke";
      v11 = 2114;
      v12 = WeakRetained;
      v13 = 2114;
      v14 = a3;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s Connection failed %{public}@: %{public}@", &v9, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    (*(*(a1 + 32) + 16))();
LABEL_7:
    [WeakRetained setConnectionStateCallback:0 withQueue:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectToEndpoint:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[WFMediaPlaybackController connectToEndpoint:completion:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Connecting to endpoint: %@", &v14, 0x16u);
  }

  if (v6 && ![v6 isLocalEndpoint])
  {
    v10 = [v6 externalDevice];
    if (v10)
    {
      v11 = [v6 externalDevice];
      [(WFMediaPlaybackController *)self connectToExternalDevice:v11 completion:v7];
    }

    else
    {
      v12 = getWFActionsLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[WFMediaPlaybackController connectToEndpoint:completion:]";
        v16 = 2114;
        v17 = v6;
        _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s No device for endpoint %{public}@", &v14, 0x16u);
      }

      v11 = [(WFMediaPlaybackController *)self createSendCommandError:2];
      (*(v7 + 2))(v7, 0, 0, v11);
    }
  }

  else
  {
    LocalOrigin = MRMediaRemoteGetLocalOrigin();
    (*(v7 + 2))(v7, 0, LocalOrigin, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getRemoteControlEndpointsMatchingUIDs:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Getting remote control endpoints for UIDs: %@", buf, 0x16u);
  }

  v9 = getWFActionsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]";
    _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Nullifying existing reconSession.", buf, 0xCu);
  }

  [(WFMediaPlaybackController *)self setReconSession:0];
  [(WFMediaPlaybackController *)self setReconSession:MRAVReconnaissanceSessionCreateWithEndpointFeatures()];
  [(WFMediaPlaybackController *)self reconSession];
  MRAVReconnaissanceSessionSetWaitForUnanimousEndpoints();
  [(WFMediaPlaybackController *)self reconSession];
  MRAVReconnaissanceSessionSetReturnPartialResults();
  [(WFMediaPlaybackController *)self reconSession];
  v12 = v7;
  v10 = v7;
  MRAVReconnaissanceSessionBeginEndpointsSearch();

  v11 = *MEMORY[0x277D85DE8];
}

void __78__WFMediaPlaybackController_getRemoteControlEndpointsMatchingUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if (v7)
  {
    if ([v7 code] == 26 && (objc_msgSend(v7, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277D27AE0], v12 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D27AE0]), v11, v10, v12))
    {
      v13 = [v8 count];
      v14 = getWFActionsLogObject();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        if (!v15)
        {
          goto LABEL_13;
        }

        v21 = 136315138;
        v22 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v16 = "%s Search for remote control endpoints timed out with no results.";
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 12;
        goto LABEL_12;
      }

      if (v15)
      {
        v21 = 136315394;
        v22 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v23 = 2114;
        v24 = v8;
        v16 = "%s Search for remote control endpoints timed out with partial results. Found endpoints: %{public}@";
LABEL_9:
        v17 = v14;
        v18 = OS_LOG_TYPE_ERROR;
        v19 = 22;
LABEL_12:
        _os_log_impl(&dword_23DE30000, v17, v18, v16, &v21, v19);
      }
    }

    else
    {
      v14 = getWFActionsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
        v23 = 2114;
        v24 = v7;
        v16 = "%s Search for remote control endpoints failed with error: %{public}@";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = getWFActionsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 136315650;
      v22 = "[WFMediaPlaybackController getRemoteControlEndpointsMatchingUIDs:completion:]_block_invoke";
      v23 = 2048;
      v24 = [v8 count];
      v25 = 2048;
      v26 = [v9 count];
      v16 = "%s Search for remote control endpoints succeeded. Found %lu endpoints, %lu devices.";
      v17 = v14;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 32;
      goto LABEL_12;
    }
  }

LABEL_13:

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v9, v7);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getActivePlayerPathWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFActionsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]";
    _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_INFO, "%s Querying active player path...", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__WFMediaPlaybackController_getActivePlayerPathWithCompletion___block_invoke;
  v8[3] = &unk_278C19508;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(WFMediaPlaybackController *)self getPreferredMediaControlOriginWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __63__WFMediaPlaybackController_getActivePlayerPathWithCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_INFO, "%s Preferred media control origin is local, falling back to [MPCPlayerPath deviceActivePlayerPath]...", &v12, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = [getMPCPlayerPathClass() deviceActivePlayerPath];
    (*(v5 + 16))(v5, v6, 1);
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = [objc_opt_class() bundleIdentifierForMediaPlaybackApplication:1];
    v9 = [getMPCPlayerPathClass() pathWithCustomOrigin:a2 bundleID:v6 playerID:0];
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[WFMediaPlaybackController getActivePlayerPathWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = a2;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_INFO, "%s Preferred media control origin is not local (%@)—constructed player path with bundle ID %@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearQueueWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getMPCPlayerRequestClass());
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WFMediaPlaybackController_clearQueueWithCompletion___block_invoke;
  v7[3] = &unk_278C194E0;
  v8 = v3;
  v5 = v3;
  v6 = [v4 performWithCompletion:v7];
}

void __54__WFMediaPlaybackController_clearQueueWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 tracklist];
    v4 = [v3 resetCommand];
    v7 = [v4 clearUpNextItems];

    if (v7)
    {
      [getMPCPlayerChangeRequestClass() performRequest:v7 completion:*(a1 + 32)];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

- (void)queueItemsWithIdentifierSets:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFMediaPlaybackController.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"identifierSets"}];
  }

  if ([v9 count])
  {
    v11 = [getMPModelSongClass() kindWithVariants:1];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v12 = getMPModelLibraryRequestClass_softClass;
    v30 = getMPModelLibraryRequestClass_softClass;
    if (!getMPModelLibraryRequestClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getMPModelLibraryRequestClass_block_invoke;
      v26[3] = &unk_278C222B8;
      v26[4] = &v27;
      __getMPModelLibraryRequestClass_block_invoke(v26);
      v12 = v28[3];
    }

    v13 = v12;
    _Block_object_dispose(&v27, 8);
    v14 = objc_alloc_init(v12);
    [v14 setItemKind:v11];
    v15 = [getMPPropertySetClass() emptyPropertySet];
    [v14 setItemProperties:v15];

    [v14 setAllowedItemIdentifiers:v9];
    getMPCPlayerRequestClass();
    v16 = [v9 firstObject];
    v17 = [v14 playbackIntentWithStartItemIdentifiers:v16];

    [v17 setShuffleMode:-1];
    v18 = objc_alloc_init(getMPCPlayerRequestClass());
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__WFMediaPlaybackController_queueItemsWithIdentifierSets_inAdditionMode_completion___block_invoke;
    v22[3] = &unk_278C194B8;
    v24 = v10;
    v25 = a4;
    v23 = v17;
    v19 = v17;
    v20 = [v18 performWithCompletion:v22];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __84__WFMediaPlaybackController_queueItemsWithIdentifierSets_inAdditionMode_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12)
  {
    v6 = a1[6];
    if (v6 == 1)
    {
      v7 = [v12 tracklist];
      v8 = [v7 insertCommand];
      v9 = [v8 insertAtEndOfTracklistWithPlaybackIntent:a1[4]];
    }

    else
    {
      if (v6)
      {
LABEL_9:
        v10 = *(a1[5] + 16);
        goto LABEL_10;
      }

      v7 = [v12 tracklist];
      v8 = [v7 insertCommand];
      v9 = [v8 insertAfterPlayingItemWithPlaybackIntent:a1[4]];
    }

    v11 = v9;

    if (v11)
    {
      [getMPCPlayerChangeRequestClass() performRequest:v11 completion:a1[5]];

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = *(a1[5] + 16);
LABEL_10:
  v10();
LABEL_11:
}

- (void)queueiTunesStoreItems:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [getMPModelSongClass() kindWithVariants:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke;
  v13[3] = &unk_278C19490;
  v14 = v10;
  v11 = v10;
  v12 = [v9 if_map:v13];

  [(WFMediaPlaybackController *)self queueItemsWithIdentifierSets:v12 inAdditionMode:a4 completion:v8];
}

id __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(getMPIdentifierSetClass());
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_2;
  v9[3] = &unk_278C19468;
  v10 = v3;
  v6 = v3;
  v7 = [v4 initWithModelKind:v5 block:v9];

  return v7;
}

void __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_3;
  v3[3] = &unk_278C19440;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __77__WFMediaPlaybackController_queueiTunesStoreItems_inAdditionMode_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "longLongValue")}];
}

- (void)queueMediaItems:(id)a3 inAdditionMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [getMPMediaLibraryClass() defaultMediaLibrary];
  v11 = [getMPModelSongClass() kindWithVariants:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke;
  v18 = &unk_278C19418;
  v19 = v11;
  v20 = v10;
  v12 = v10;
  v13 = v11;
  v14 = [v9 if_map:&v15];

  [(WFMediaPlaybackController *)self queueItemsWithIdentifierSets:v14 inAdditionMode:a4 completion:v8, v15, v16, v17, v18];
}

id __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(getMPIdentifierSetClass());
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_2;
  v9[3] = &unk_278C193F0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = v3;
  v7 = [v4 initWithModelKind:v5 block:v9];

  return v7;
}

void __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_3;
  v6[3] = &unk_278C193C8;
  v7 = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __71__WFMediaPlaybackController_queueMediaItems_inAdditionMode_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

- (void)getPreferredMediaControlOriginWithCompletion:(id)a3
{
  v5 = a3;
  LocalOrigin = MRMediaRemoteGetLocalOrigin();
  (*(a3 + 2))(v5, LocalOrigin, 1);
}

- (void)getPreferredPlaybackOriginWithCompletion:(id)a3
{
  v5 = a3;
  LocalOrigin = MRMediaRemoteGetLocalOrigin();
  (*(a3 + 2))(v5, LocalOrigin, 1);
}

- (void)getCurrentlyPlayingMediaWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFActionsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]";
    _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_INFO, "%s Starting fetching currently playing song information...", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke;
  v8[3] = &unk_278C193A0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(WFMediaPlaybackController *)self getActivePlayerPathWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"remote companion";
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *buf = 136315651;
    if (a3)
    {
      v7 = @"local";
    }

    *&buf[12] = 2113;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v35 = v7;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Resolved active player path: %{private}@, %{public}@", buf, 0x20u);
  }

  if (v5)
  {
    v8 = objc_alloc(getMPPropertySetClass());
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v9 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
    v29 = getMPModelRelationshipGenericSongSymbolLoc_ptr;
    if (!getMPModelRelationshipGenericSongSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPModelRelationshipGenericSongSymbolLoc_block_invoke;
      v35 = &unk_278C222B8;
      v36 = &v26;
      v10 = MediaPlayerLibrary();
      v11 = dlsym(v10, "MPModelRelationshipGenericSong");
      *(v36[1] + 24) = v11;
      getMPModelRelationshipGenericSongSymbolLoc_ptr = *(v36[1] + 24);
      v9 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v9)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipGenericSong(void)"];
      [v21 handleFailureInFunction:v22 file:@"WFMediaPlaybackController.m" lineNumber:54 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v12 = *v9;
    v13 = v12;
    if (a3)
    {
      v32 = v12;
      v14 = [getMPPropertySetClass() emptyPropertySet];
      v33 = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v30 = v12;
      v15 = *(a1 + 32);
      v14 = [objc_opt_class() songPropertySet];
      v31 = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    }
    v16 = ;
    v17 = [v8 initWithProperties:MEMORY[0x277CBEBF8] relationships:v16];

    v18 = objc_alloc_init(getMPCPlayerRequestClass());
    [v18 setPlayerPath:v5];
    [v18 setPlayingItemProperties:v17];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke_179;
    v23[3] = &unk_278C19378;
    v24 = *(a1 + 40);
    v25 = a3;
    v19 = [v18 performWithCompletion:v23];
  }

  else
  {
    (*(*(a1 + 40) + 16))(0.0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__WFMediaPlaybackController_getCurrentlyPlayingMediaWithCompletion___block_invoke_179(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315651;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2113;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    *&buf[24] = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s MPCPlayerRequest responded: %{private}@ with error: %{public}@", buf, 0x20u);
  }

  v8 = [v5 tracklist];
  v9 = [v8 playingItem];

  v10 = [v9 metadataObject];
  if (!v10)
  {
    (*(*(a1 + 32) + 16))(0.0);
    goto LABEL_21;
  }

  v11 = getWFActionsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2113;
    *&buf[14] = v10;
    _os_log_impl(&dword_23DE30000, v11, OS_LOG_TYPE_INFO, "%s Fetched now playing media: %{private}@", buf, 0x16u);
  }

  if (*(a1 + 40) != 1)
  {
    v19 = getWFActionsLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v19, OS_LOG_TYPE_INFO, "%s Making a MPMediaItem from model object", buf, 0xCu);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v20 = getMPMediaItemClass_softClass;
    v28 = getMPMediaItemClass_softClass;
    if (!getMPMediaItemClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPMediaItemClass_block_invoke;
      *&buf[24] = &unk_278C222B8;
      *&v30 = &v25;
      __getMPMediaItemClass_block_invoke(buf);
      v20 = v26[3];
    }

    v21 = v20;
    _Block_object_dispose(&v25, 8);
    v18 = [v20 itemFromModelObject:{v10, v25}];
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_17:
    v31 = 0;
    v30 = 0u;
    memset(buf, 0, sizeof(buf));
    goto LABEL_18;
  }

  v12 = [v10 song];
  v13 = [v12 identifiers];
  v14 = [v13 library];
  v15 = [v14 persistentID];

  v16 = getWFActionsLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    *&buf[4] = "[WFMediaPlaybackController getCurrentlyPlayingMediaWithCompletion:]_block_invoke";
    *&buf[12] = 2049;
    *&buf[14] = v15;
    _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_INFO, "%s Making a local MPMediaItem from pid %{private}lld", buf, 0x16u);
  }

  v17 = [getMPMediaLibraryClass() defaultMediaLibrary];
  v18 = [v17 itemWithPersistentID:v15 verifyExistence:0];

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_10:
  [v9 duration];
LABEL_18:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v23 = *&v30 + (v22 - *buf) * *(&v30 + 2);
  if (v23 >= *&buf[24])
  {
    v23 = *&buf[24];
  }

  (*(*(a1 + 32) + 16))(fmax(v23, 0.0));

LABEL_21:
  v24 = *MEMORY[0x277D85DE8];
}

- (WFMediaPlaybackController)init
{
  v8.receiver = self;
  v8.super_class = WFMediaPlaybackController;
  v2 = [(WFMediaPlaybackController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.shortcuts.WFMediaController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)songPropertySet
{
  v108[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getMPPropertySetClass());
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v3 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  v100 = getMPModelPropertyGenreNameSymbolLoc_ptr;
  if (!getMPModelPropertyGenreNameSymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary();
    v98[3] = dlsym(v4, "MPModelPropertyGenreName");
    getMPModelPropertyGenreNameSymbolLoc_ptr = v98[3];
    v3 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v3)
  {
    v62 = [MEMORY[0x277CCA890] currentHandler];
    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyGenreName(void)"];
    [v62 handleFailureInFunction:v63 file:@"WFMediaPlaybackController.m" lineNumber:75 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v108[0] = *v3;
  v5 = MEMORY[0x277CBEA60];
  v6 = v108[0];
  v7 = [v5 arrayWithObjects:v108 count:1];

  v96 = [v2 initWithProperties:v7 relationships:0];
  v8 = objc_alloc(getMPPropertySetClass());
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v9 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  v100 = getMPModelPropertyAlbumTitleSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTitleSymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary();
    v98[3] = dlsym(v10, "MPModelPropertyAlbumTitle");
    getMPModelPropertyAlbumTitleSymbolLoc_ptr = v98[3];
    v9 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v9)
  {
    v64 = [MEMORY[0x277CCA890] currentHandler];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumTitle(void)"];
    [v64 handleFailureInFunction:v65 file:@"WFMediaPlaybackController.m" lineNumber:68 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v11 = *v9;
  v106[0] = v11;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v12 = getMPModelPropertyAlbumDiscCountSymbolLoc_ptr;
  v100 = getMPModelPropertyAlbumDiscCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumDiscCountSymbolLoc_ptr)
  {
    v13 = MediaPlayerLibrary();
    v98[3] = dlsym(v13, "MPModelPropertyAlbumDiscCount");
    getMPModelPropertyAlbumDiscCountSymbolLoc_ptr = v98[3];
    v12 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v12)
  {
    v66 = [MEMORY[0x277CCA890] currentHandler];
    v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumDiscCount(void)"];
    [v66 handleFailureInFunction:v67 file:@"WFMediaPlaybackController.m" lineNumber:69 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v14 = *v12;
  v106[1] = v14;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v15 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  v100 = getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr)
  {
    v16 = MediaPlayerLibrary();
    v98[3] = dlsym(v16, "MPModelPropertyAlbumReleaseDateComponents");
    getMPModelPropertyAlbumReleaseDateComponentsSymbolLoc_ptr = v98[3];
    v15 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v15)
  {
    v68 = [MEMORY[0x277CCA890] currentHandler];
    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumReleaseDateComponents(void)"];
    [v68 handleFailureInFunction:v69 file:@"WFMediaPlaybackController.m" lineNumber:70 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v17 = *v15;
  v106[2] = v17;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v18 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  v100 = getMPModelPropertyAlbumTrackCountSymbolLoc_ptr;
  if (!getMPModelPropertyAlbumTrackCountSymbolLoc_ptr)
  {
    v19 = MediaPlayerLibrary();
    v98[3] = dlsym(v19, "MPModelPropertyAlbumTrackCount");
    getMPModelPropertyAlbumTrackCountSymbolLoc_ptr = v98[3];
    v18 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v18)
  {
    v70 = [MEMORY[0x277CCA890] currentHandler];
    v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyAlbumTrackCount(void)"];
    [v70 handleFailureInFunction:v71 file:@"WFMediaPlaybackController.m" lineNumber:71 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v107 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v107;
  v22 = [v20 arrayWithObjects:v106 count:4];

  v95 = [v8 initWithProperties:v22 relationships:0];
  v23 = objc_alloc(getMPPropertySetClass());
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v24 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  v100 = getMPModelPropertyArtistNameSymbolLoc_ptr;
  if (!getMPModelPropertyArtistNameSymbolLoc_ptr)
  {
    v25 = MediaPlayerLibrary();
    v98[3] = dlsym(v25, "MPModelPropertyArtistName");
    getMPModelPropertyArtistNameSymbolLoc_ptr = v98[3];
    v24 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v24)
  {
    v72 = [MEMORY[0x277CCA890] currentHandler];
    v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertyArtistName(void)"];
    [v72 handleFailureInFunction:v73 file:@"WFMediaPlaybackController.m" lineNumber:64 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v105 = *v24;
  v26 = MEMORY[0x277CBEA60];
  v27 = v105;
  v28 = [v26 arrayWithObjects:&v105 count:1];

  v94 = [v23 initWithProperties:v28 relationships:0];
  v93 = objc_alloc(getMPPropertySetClass());
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v29 = getMPModelPropertySongTitleSymbolLoc_ptr;
  v100 = getMPModelPropertySongTitleSymbolLoc_ptr;
  if (!getMPModelPropertySongTitleSymbolLoc_ptr)
  {
    v30 = MediaPlayerLibrary();
    v98[3] = dlsym(v30, "MPModelPropertySongTitle");
    getMPModelPropertySongTitleSymbolLoc_ptr = v98[3];
    v29 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v29)
  {
    v74 = [MEMORY[0x277CCA890] currentHandler];
    v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongTitle(void)"];
    [v74 handleFailureInFunction:v75 file:@"WFMediaPlaybackController.m" lineNumber:55 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v31 = *v29;
  v104[0] = v31;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v32 = getMPModelPropertySongDurationSymbolLoc_ptr;
  v100 = getMPModelPropertySongDurationSymbolLoc_ptr;
  if (!getMPModelPropertySongDurationSymbolLoc_ptr)
  {
    v33 = MediaPlayerLibrary();
    v98[3] = dlsym(v33, "MPModelPropertySongDuration");
    getMPModelPropertySongDurationSymbolLoc_ptr = v98[3];
    v32 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v32)
  {
    v76 = [MEMORY[0x277CCA890] currentHandler];
    v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongDuration(void)"];
    [v76 handleFailureInFunction:v77 file:@"WFMediaPlaybackController.m" lineNumber:56 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v34 = *v32;
  v104[1] = v34;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v35 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  v100 = getMPModelPropertySongDiscNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongDiscNumberSymbolLoc_ptr)
  {
    v36 = MediaPlayerLibrary();
    v98[3] = dlsym(v36, "MPModelPropertySongDiscNumber");
    getMPModelPropertySongDiscNumberSymbolLoc_ptr = v98[3];
    v35 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v35)
  {
    v78 = [MEMORY[0x277CCA890] currentHandler];
    v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongDiscNumber(void)"];
    [v78 handleFailureInFunction:v79 file:@"WFMediaPlaybackController.m" lineNumber:57 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v37 = *v35;
  v104[2] = v37;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v38 = getMPModelPropertySongExplicitSymbolLoc_ptr;
  v100 = getMPModelPropertySongExplicitSymbolLoc_ptr;
  if (!getMPModelPropertySongExplicitSymbolLoc_ptr)
  {
    v39 = MediaPlayerLibrary();
    v98[3] = dlsym(v39, "MPModelPropertySongExplicit");
    getMPModelPropertySongExplicitSymbolLoc_ptr = v98[3];
    v38 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v38)
  {
    v80 = [MEMORY[0x277CCA890] currentHandler];
    v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongExplicit(void)"];
    [v80 handleFailureInFunction:v81 file:@"WFMediaPlaybackController.m" lineNumber:58 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v40 = *v38;
  v104[3] = v40;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v41 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  v100 = getMPModelPropertySongTrackNumberSymbolLoc_ptr;
  if (!getMPModelPropertySongTrackNumberSymbolLoc_ptr)
  {
    v42 = MediaPlayerLibrary();
    v98[3] = dlsym(v42, "MPModelPropertySongTrackNumber");
    getMPModelPropertySongTrackNumberSymbolLoc_ptr = v98[3];
    v41 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v41)
  {
    v82 = [MEMORY[0x277CCA890] currentHandler];
    v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongTrackNumber(void)"];
    [v82 handleFailureInFunction:v83 file:@"WFMediaPlaybackController.m" lineNumber:59 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v43 = *v41;
  v104[4] = v43;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v44 = getMPModelPropertySongArtworkSymbolLoc_ptr;
  v100 = getMPModelPropertySongArtworkSymbolLoc_ptr;
  if (!getMPModelPropertySongArtworkSymbolLoc_ptr)
  {
    v45 = MediaPlayerLibrary();
    v98[3] = dlsym(v45, "MPModelPropertySongArtwork");
    getMPModelPropertySongArtworkSymbolLoc_ptr = v98[3];
    v44 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v44)
  {
    v84 = [MEMORY[0x277CCA890] currentHandler];
    v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelPropertySongArtwork(void)"];
    [v84 handleFailureInFunction:v85 file:@"WFMediaPlaybackController.m" lineNumber:60 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v92 = v31;
  v46 = *v44;
  v104[5] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:6];
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v48 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  v100 = getMPModelRelationshipSongArtistSymbolLoc_ptr;
  if (!getMPModelRelationshipSongArtistSymbolLoc_ptr)
  {
    v49 = MediaPlayerLibrary();
    v98[3] = dlsym(v49, "MPModelRelationshipSongArtist");
    getMPModelRelationshipSongArtistSymbolLoc_ptr = v98[3];
    v48 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v48)
  {
    v86 = [MEMORY[0x277CCA890] currentHandler];
    v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongArtist(void)"];
    [v86 handleFailureInFunction:v87 file:@"WFMediaPlaybackController.m" lineNumber:63 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v50 = *v48;
  v103[0] = v94;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v51 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v100 = getMPModelRelationshipSongAlbumSymbolLoc_ptr;
  v101[0] = v50;
  if (!getMPModelRelationshipSongAlbumSymbolLoc_ptr)
  {
    v52 = MediaPlayerLibrary();
    v98[3] = dlsym(v52, "MPModelRelationshipSongAlbum");
    getMPModelRelationshipSongAlbumSymbolLoc_ptr = v98[3];
    v51 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v51)
  {
    v88 = [MEMORY[0x277CCA890] currentHandler];
    v89 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongAlbum(void)"];
    [v88 handleFailureInFunction:v89 file:@"WFMediaPlaybackController.m" lineNumber:67 description:{@"%s", dlerror()}];

    goto LABEL_64;
  }

  v53 = *v51;
  v101[1] = v53;
  v103[1] = v95;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v54 = getMPModelRelationshipSongGenreSymbolLoc_ptr;
  v100 = getMPModelRelationshipSongGenreSymbolLoc_ptr;
  if (!getMPModelRelationshipSongGenreSymbolLoc_ptr)
  {
    v55 = MediaPlayerLibrary();
    v98[3] = dlsym(v55, "MPModelRelationshipSongGenre");
    getMPModelRelationshipSongGenreSymbolLoc_ptr = v98[3];
    v54 = v98[3];
  }

  _Block_object_dispose(&v97, 8);
  if (!v54)
  {
    v90 = [MEMORY[0x277CCA890] currentHandler];
    v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getMPModelRelationshipSongGenre(void)"];
    [v90 handleFailureInFunction:v91 file:@"WFMediaPlaybackController.m" lineNumber:74 description:{@"%s", dlerror()}];

LABEL_64:
    __break(1u);
  }

  v102 = *v54;
  v103[2] = v96;
  v56 = MEMORY[0x277CBEAC0];
  v57 = v102;
  v58 = [v56 dictionaryWithObjects:v103 forKeys:v101 count:3];

  v59 = [v93 initWithProperties:v47 relationships:v58];
  v60 = *MEMORY[0x277D85DE8];

  return v59;
}

+ (id)bundleIdentifierForMediaPlaybackApplication:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = MEMORY[0x277D7A298];
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x277D7A288];
LABEL_7:
    v3 = *v4;
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  v3 = [a1 bundleIdentifierForMediaPlaybackApplication:1];
LABEL_8:
  a2 = v3;
LABEL_9:

  return a2;
}

- (void)getPreferredMediaControlDestinationForOutputDeviceUIDs:(id)a3 completionBlock:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFActionsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]";
    _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_INFO, "%s Querying preferred media control MPCAssistant destination...", buf, 0xCu);
  }

  if ([v6 count])
  {
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]";
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Output device UIDs are given. Returning local destination, with the UIDs set", buf, 0xCu);
    }

    v10 = [getMPCAssistantMutableRemoteControlDestinationClass() nowPlayingApplicationDestination];
    [v10 setOutputDeviceUIDs:v6];
    v7[2](v7, v10);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__WFMediaPlaybackController_MPCAssistant__getPreferredMediaControlDestinationForOutputDeviceUIDs_completionBlock___block_invoke;
    v12[3] = &unk_278C1A428;
    v13 = v7;
    [(WFMediaPlaybackController *)self getPreferredMediaControlOriginWithCompletion:v12];
    v10 = v13;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __114__WFMediaPlaybackController_MPCAssistant__getPreferredMediaControlDestinationForOutputDeviceUIDs_completionBlock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"remote companion";
    v11 = "[WFMediaPlaybackController(MPCAssistant) getPreferredMediaControlDestinationForOutputDeviceUIDs:completionBlock:]_block_invoke";
    v10 = 136315650;
    if (a3)
    {
      v7 = @"local";
    }

    v12 = 2112;
    v13 = a2;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Constructing playback destination for origin %@ (%{public}@), player bundle ID nil (MR will pick whatever player is active)", &v10, 0x20u);
  }

  v8 = [objc_alloc(getMPCAssistantMutableRemoteControlDestinationClass()) initWithAppBundleID:0 playerID:0 origin:a2];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)getPreferredPlaybackDestinationForPlaybackArchive:(id)a3 completionBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[WFMediaPlaybackController(MPCAssistant) getPreferredPlaybackDestinationForPlaybackArchive:completionBlock:]";
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_INFO, "%s Querying preferred playback MPCAssistant destination...", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__WFMediaPlaybackController_MPCAssistant__getPreferredPlaybackDestinationForPlaybackArchive_completionBlock___block_invoke;
  v9[3] = &unk_278C1A428;
  v10 = v5;
  v7 = v5;
  [(WFMediaPlaybackController *)self getPreferredPlaybackOriginWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __109__WFMediaPlaybackController_MPCAssistant__getPreferredPlaybackDestinationForPlaybackArchive_completionBlock___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [WFMediaPlaybackController bundleIdentifierForMediaPlaybackApplication:a3 ^ 1u];
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"remote companion";
    v12 = 136315906;
    v13 = "[WFMediaPlaybackController(MPCAssistant) getPreferredPlaybackDestinationForPlaybackArchive:completionBlock:]_block_invoke";
    v14 = 2112;
    v15 = a2;
    if (a3)
    {
      v8 = @"local";
    }

    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s Constructing playback destination for origin %@ (%{public}@), player bundle ID %@", &v12, 0x2Au);
  }

  v9 = [objc_alloc(getMPCAssistantMutableRemoteControlDestinationClass()) initWithAppBundleID:v6 playerID:0 origin:a2];
  (*(*(a1 + 32) + 16))(*(a1 + 32), v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

@end