@interface ADPersonalizedAdsStatusManager
+ (id)sharedInstance;
- (void)sendPersonalizedAdsStatusToAdPlatforms:(id)a3 completionHandler:(id)a4;
@end

@implementation ADPersonalizedAdsStatusManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ADPersonalizedAdsStatusManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_1, block);
  }

  v2 = sharedInstance__instance_1;

  return v2;
}

uint64_t __48__ADPersonalizedAdsStatusManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_1 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (void)sendPersonalizedAdsStatusToAdPlatforms:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CE9658] sharedInstance];
  v9 = [v8 activeDSIDRecord];

  v10 = [MEMORY[0x277CE9638] sharedInstance];
  v11 = [v10 isPersonalizedAdsEnabled];

  v12 = [v9 DSID];
  v13 = [v6 isEqualToString:v12];

  if (v13)
  {
    if (self->_sendingPersonalizedAdsToAdPlatforms)
    {
      v14 = MEMORY[0x277CCACA8];
      v36 = objc_opt_class();
      v15 = @"[%@]: Not sending Personalized Ads status to AdPlatforms - request already in-flight.";
LABEL_4:
      [v14 stringWithFormat:v15, v36, v37];
      v16 = LABEL_5:;
      _ADLog();
      goto LABEL_8;
    }

    if ([v9 isPlaceholderAccount])
    {
      v16 = [v9 idForClientType:0];
      v20 = [v9 iAdIDBeforeReset];
      v21 = [v20 isEqualToString:v16];

      v22 = MEMORY[0x277CCACA8];
      v23 = objc_opt_class();
      if (v21 && v11)
      {
        [v22 stringWithFormat:@"[%@]: Not sending ADOptOutRequest to AdPlatforms for what is now the old iAdID: %@.", v23, v16, v38];
        goto LABEL_7;
      }

      v25 = @"Out";
      if (v11)
      {
        v25 = @"In";
      }

      v26 = [v22 stringWithFormat:@"[%@]: Sending Opted-%@ Personalized Ads status to AdPlatforms for logged out iTunes user (DSID 0) - Backend needs knowledge of iAdID's Personalized Ads status.", v23, v25];
      _ADLog();
    }

    else
    {
      if (v11)
      {
        v24 = [v9 idForClientType:5];

        if (!v24)
        {
          v14 = MEMORY[0x277CCACA8];
          v36 = objc_opt_class();
          v15 = @"[%@]: Not sending Personalized Ads status to AdPlatforms - Personalized Ads is on with no DPID. FILE A RADAR.";
          goto LABEL_4;
        }
      }

      if (llround([v9 lastSentPersonalizedAdsTimestamp]))
      {
        if (v11 == [v9 lastSentPersonalizedAdsStatus] && objc_msgSend(v9, "lastSentPersonalizedAdsTimestamp") >= 1)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Not sending Personalized Ads status to AdPlatforms - Personalized Ads status has not changed (%d).", objc_opt_class(), v11];
          goto LABEL_5;
        }
      }

      else
      {
        v27 = MEMORY[0x277CCACA8];
        v28 = objc_opt_class();
        v29 = [v9 idForClientType:0];
        v30 = [v27 stringWithFormat:@"[%@]: Personalized Ads status for %@ (%d) has never been sent to AdPlatforms. Sending now.", v28, v29, v11];
        _ADLog();
      }
    }

    v31 = MEMORY[0x277CCACA8];
    v32 = objc_opt_class();
    v33 = [v9 idForClientType:0];
    v34 = [v31 stringWithFormat:@"[%@]: Sending current Personalized Ads status (%d) for %@ to AdPlatforms.", v32, v11, v33];
    _ADLog();

    self->_sendingPersonalizedAdsToAdPlatforms = 1;
    v35 = [MEMORY[0x277CE96B8] workQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __91__ADPersonalizedAdsStatusManager_sendPersonalizedAdsStatusToAdPlatforms_completionHandler___block_invoke;
    v39[3] = &unk_278C586B0;
    v40 = v9;
    v44 = v11;
    v41 = v6;
    v42 = self;
    v43 = v7;
    [v35 addOperationWithBlock:v39];

    goto LABEL_25;
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v16 = [v9 DSID];
  [v17 stringWithFormat:@"[%@]: Not sending Personalized Ads status to AdPlatforms - invalid argument. %@ is not the current DSID (%@).", v18, v6, v16];
  v19 = LABEL_7:;
  _ADLog();

LABEL_8:
  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_25:
}

void __91__ADPersonalizedAdsStatusManager_sendPersonalizedAdsStatusToAdPlatforms_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CE9680]);
  v3 = [MEMORY[0x277CE96B8] sharedInstance];
  [v2 setStatusChangeTimestamp:{objc_msgSend(*(a1 + 32), "personalizedAdsTimestamp")}];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v2 setTransmitTimestamp:{objc_msgSend(v4, "AD_toServerTime")}];

  v5 = [*(a1 + 32) encryptedIDForClientType:5];
  [v2 setDPID:v5];

  v6 = [*(a1 + 32) encryptedIDForClientType:0];
  [v2 setIAdID:v6];

  v7 = [MEMORY[0x277CE9638] sharedInstance];
  [v7 timezone];
  [v2 setTimezone:?];

  [v2 setOptedOutStatus:*(a1 + 64) == 0];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__2;
  v16[4] = __Block_byref_object_dispose__2;
  v17 = *(a1 + 40);
  v8 = [MEMORY[0x277CE9638] sharedInstance];
  v9 = [v8 defaultServerURL];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__ADPersonalizedAdsStatusManager_sendPersonalizedAdsStatusToAdPlatforms_completionHandler___block_invoke_37;
  v11[3] = &unk_278C58688;
  v11[4] = *(a1 + 48);
  v10 = *(a1 + 32);
  v15 = *(a1 + 64);
  v12 = v10;
  v14 = v16;
  v13 = *(a1 + 56);
  [v3 handleRequest:v2 serverURL:v9 responseHandler:v11];

  _Block_object_dispose(v16, 8);
}

void __91__ADPersonalizedAdsStatusManager_sendPersonalizedAdsStatusToAdPlatforms_completionHandler___block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = ClientTypeToString();
    v14 = [v8 code];
    v15 = [v8 localizedDescription];
    v16 = [v9 stringWithFormat:@"[%@] Error sending segments to AdPlatforms for %@ %@. Error %ld - %@", v11, v12, v13, v14, v15];
    _ADLog();
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CE9688]) initWithData:v21];
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Received opt-out response: %@", objc_opt_class(), v13];
    _ADLog();

    v19 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 40) setLastSentPersonalizedAdsTimestamp:{objc_msgSend(v19, "AD_toServerTime")}];

    [*(a1 + 40) setLastSentPersonalizedAdsStatus:*(a1 + 64)];
  }

  [*(a1 + 32) setSendingPersonalizedAdsToAdPlatforms:0];
  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v8, 1);
  }
}

@end