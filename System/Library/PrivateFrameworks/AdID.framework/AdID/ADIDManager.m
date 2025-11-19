@interface ADIDManager
@end

@implementation ADIDManager

void __28__ADIDManager_Private__init__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Received clear monthly reset count notification", objc_opt_class()];
  _ADLog();

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setMonthlyResetArray:v6];

  objc_sync_exit(v5);
  v7 = [*(a1 + 32) save];
}

void __50__ADIDManager_Private__setDSID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  [v2 reloadNoServicesRestrictions];

  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CE9638] sharedInstance];
  v7 = [v3 stringWithFormat:@"[%@]: Reloaded no services regional restriction: %d", v5, objc_msgSend(v6, "isRestrictedRegion")];
  _ADLog();

  if (ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID)
  {
    goto LABEL_3;
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [*(a1 + 32) activeDSIDRecord];
  v10 = [v9 DSID];
  LODWORD(v8) = [v8 isEqualToString:v10];

  if (v8)
  {
LABEL_3:
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ setDSID]: DSID already set to %@.", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
    _ADLog();

    [*(a1 + 32) saveDataForPCD];
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 16);

      v14();
    }

    return;
  }

  ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID = 1;
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  if (v16)
  {
    if ([v16 length])
    {
      goto LABEL_12;
    }

    v15 = *(*(a1 + 48) + 8);
  }

  v17 = *(v15 + 40);
  *(v15 + 40) = @"0";

LABEL_12:
  v37 = [*(a1 + 32) save];
  if (v37)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v21 = [*(a1 + 32) activeDSIDRecord];
    v22 = [v21 DSID];
    v23 = [v18 stringWithFormat:@"[%@]: Failed to save record for current DSID %@", v20, v22];
    _ADLog();
  }

  v24 = *(a1 + 32);
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Request to set DSID to %@", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
  _ADLog();

  v26 = *(*(*(a1 + 48) + 8) + 40);
  v27 = [*(a1 + 32) activeDSIDRecord];
  v28 = [v27 DSID];
  LOBYTE(v26) = [v26 isEqualToString:v28];

  if (v26)
  {
    v29 = *(a1 + 32);
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: DSID already set to %@, skipping.", objc_opt_class(), *(*(*(a1 + 48) + 8) + 40)];
    _ADLog();
LABEL_18:

    goto LABEL_19;
  }

  v31 = [*(a1 + 32) reloadRecords:*(*(*(a1 + 48) + 8) + 40)];
  v32 = [*(a1 + 32) activeDSIDRecord];

  if (!v32)
  {
    v30 = [objc_alloc(MEMORY[0x277CE96F0]) initWithDSID:*(*(*(a1 + 48) + 8) + 40) serializedRecord:0 version:3];
    [*(a1 + 32) setActiveDSIDRecord:v30];
    goto LABEL_18;
  }

LABEL_19:
  v33 = [*(a1 + 32) activeDSIDRecord];
  v34 = [MEMORY[0x277CBEAA8] date];
  [v33 setPersonalizedAdsTimestamp:{objc_msgSend(v34, "AD_toServerTime")}];

  v35 = [*(a1 + 32) activeDSIDRecord];
  [v35 ensureiAdIDs];

  ADSimulatedCrashKillCode_InternalInconsistency_block_invoke_settingDSID = 0;
  v36 = *(a1 + 40);
  if (v36)
  {
    (*(v36 + 16))();
  }
}

uint64_t __38__ADIDManager_Private__deleteRecords___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActiveDSIDRecord:0];
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  [v2 clearDSIDRecords];

  v3 = ADWriteDataToKeychain();
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting APIDAccountsSettings: %d", v3];
    _ADLog();
  }

  v5 = ADWriteDataToKeychain();
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting DPID: %d", v5];
    _ADLog();
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __50__ADIDManager_Private__incrementMonthlyResetCount__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 doubleValue];
  if (v3 > *(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __54__ADIDManager_Private__finishedReconciling_withError___block_invoke()
{
  v0 = +[ADAdTrackingSchedulingManager sharedInstance];
  [v0 handleAccountChange];
}

void __42__ADIDManager_Private__updateAccountData___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v3)
    {
LABEL_3:
      v5 = a1[5];
      v6 = WeakRetained;
      v7 = v3;
LABEL_8:
      [v6 finishedReconciling:v5 withError:v7];
      goto LABEL_9;
    }
  }

  else
  {
    ADSimulateCrash();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v8 = +[ADAdTrackingSchedulingManager sharedInstance];
  v9 = [v8 isAdEnabledLocality];

  if ((v9 & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = a1[4];
    v13 = objc_opt_class();
    v14 = [a1[4] activeDSIDRecord];
    v15 = [v14 DSID];
    v16 = [MEMORY[0x277CE9638] sharedInstance];
    v17 = [v16 iTunesStorefront];
    v18 = [v11 stringWithFormat:@"[%@]: Not reconciling DPID nor sending segments to Ad Platforms. This is not an Ad-enabled locality (dsid: %@ storefront: %@)", v13, v15, v17];
    _ADLog();

    v6 = a1[4];
    v5 = a1[5];
    v7 = 0;
    goto LABEL_8;
  }

  v10 = +[ADClientDPIDManager sharedInstance];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_2;
  v19[3] = &unk_278C58468;
  objc_copyWeak(&v21, a1 + 6);
  v20 = a1[5];
  [v10 reconcileDPID:v19];

  objc_destroyWeak(&v21);
LABEL_9:
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    ADSimulateCrash();
  }

  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Error reconciling DPID - %@", objc_opt_class(), v3];
    _ADLog();
  }

  v6 = [WeakRetained activeDSIDRecord];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_3;
  v8[3] = &unk_278C58440;
  v7 = v3;
  v9 = v7;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  [v6 sendPersonalizedAdsStatusToAdPlatforms:v8];

  objc_destroyWeak(&v11);
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = a1[4];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    ADSimulateCrash();
  }

  v5 = [WeakRetained activeDSIDRecord];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ADIDManager_Private__updateAccountData___block_invoke_4;
  v7[3] = &unk_278C58440;
  v6 = v3;
  v8 = v6;
  objc_copyWeak(&v10, a1 + 6);
  v9 = a1[5];
  [v5 sendSegmentDataToAdPlatforms:v7];

  objc_destroyWeak(&v10);
}

void __42__ADIDManager_Private__updateAccountData___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(a1 + 32);
  }

  v5 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained finishedReconciling:*(a1 + 40) withError:v5];
}

void __34__ADIDManager_Private__reconcile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activeDSIDRecord];

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = v6;
    if (v4)
    {
      v8 = [v3 activeDSIDRecord];
      v9 = [v8 DSID];
      v10 = [v5 stringWithFormat:@"[%@]: Set current DSID to %@. Beginning reconciliation process.", v7, v9];
      _ADLog();

      v11 = [MEMORY[0x277CE9638] sharedInstance];
      v12 = [v11 iTunesStorefront];

      if (!v12 || ([v12 isEqualToString:@"NONE"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"ERROR"))
      {
        v13 = [MEMORY[0x277CE9638] sharedInstance];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __34__ADIDManager_Private__reconcile___block_invoke_2;
        v20[3] = &unk_278C584B8;
        objc_copyWeak(&v23, (a1 + 56));
        v22 = *(a1 + 40);
        v21 = v12;
        [v13 reloadStorefront:v20];

        objc_destroyWeak(&v23);
      }

      else
      {
        [v3 updateAccountData:*(a1 + 40)];
        if (([v12 isEqualToString:@"NONE"] & 1) == 0)
        {
          ADSaveToPromotedContentKeychain();
        }
      }
    }

    else
    {
      v12 = [v5 stringWithFormat:@"[%@]: Failed to get or create record for DSID %@", v6, *(a1 + 32)];
      v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:0 andDescription:v12];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [*(*(*(a1 + 48) + 8) + 40) AD_Log:@"iAdInternalLogging"];
      [v3 finishedReconciling:*(a1 + 40) withError:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"weakSelf is nil in setDSID completionHandler"];
    _ADLog();

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: weakSelf was nil in reconcile", objc_opt_class()];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithAdCode:13 andDescription:v12];
    [v15 AD_Log:@"iAdInternalLogging"];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15);
    }
  }
}

uint64_t __34__ADIDManager_Private__reconcile___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateAccountData:*(a1 + 40)];

  result = *(a1 + 32);
  if (result)
  {
    result = [result isEqualToString:@"NONE"];
    if ((result & 1) == 0)
    {
      v4 = *(a1 + 32);

      return ADSaveToPromotedContentKeychain();
    }
  }

  return result;
}

void __44__ADIDManager_Private__handleAccountChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeDSIDRecord];
  v3 = [v2 DSID];

  v4 = [MEMORY[0x277CE9638] sharedInstance];
  v5 = [v4 iTunesAccountDSID];

  v6 = [*(a1 + 32) activeDSIDRecord];
  v7 = [v6 iCloudDSID];

  v8 = [MEMORY[0x277CE9638] sharedInstance];
  v9 = [v8 iCloudDSID];

  v10 = [*(a1 + 32) activeDSIDRecord];
  v11 = [v10 lastJingleAccountStatus];

  if (v3 && ![v5 isEqualToString:v3])
  {
    v13 = 1;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v3)
    {
      v12 = 1;
    }

    else
    {
      v12 = v5 == 0;
    }

    v13 = !v12;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (![v9 isEqualToString:v7])
  {
    v15 = 1;
    goto LABEL_20;
  }

LABEL_13:
  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  v15 = !v14;
LABEL_20:
  v16 = MEMORY[0x277CCACA8];
  v17 = *(a1 + 32);
  v18 = objc_opt_class();
  v19 = &stru_285107440;
  if (v11 == -1)
  {
    v19 = @"not ";
  }

  v40 = v5;
  v20 = [v16 stringWithFormat:@"[%@ handleAccountChange]: iTunesAccountDSID is %@, current DSID is %@. iCloudAccountDSID is %@, current iCloud DSID is %@. Account has %@been reconciled once.", v18, v5, v3, v9, v7, v19];
  _ADLog();

  v21 = [MEMORY[0x277CE9638] sharedInstance];
  v22 = [v21 isProtoU13state];

  v23 = [MEMORY[0x277CE9638] sharedInstance];
  v24 = [v23 isProtoTeenState];

  if (((v13 | v15) & 1) != 0 || v11 == -1 || (v22 & 1) != 0 || v24)
  {
    [*(a1 + 32) rotateAccountToken];
    if (v13)
    {
      v29 = *(a1 + 32);
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current iTunes account has changed from %@ to %@.", objc_opt_class(), v3, v40];
      _ADLog();
    }

    if (v15)
    {
      v31 = *(a1 + 32);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current iCloud account has changed from %@ to %@.", objc_opt_class(), v7, v9];
      _ADLog();
    }

    if (v11 == -1)
    {
      v36 = *(a1 + 32);
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Current DSID record has never been through reconcile.", objc_opt_class()];
      _ADLog();

      if (!v22)
      {
LABEL_34:
        if (!v24)
        {
LABEL_36:
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __44__ADIDManager_Private__handleAccountChange___block_invoke_2;
          v41[3] = &unk_278C57FA0;
          v35 = *(a1 + 32);
          v42 = *(a1 + 40);
          [v35 reconcile:v41];

          v26 = v40;
          goto LABEL_37;
        }

LABEL_35:
        v33 = *(a1 + 32);
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Device is Proto Teen State.", objc_opt_class()];
        _ADLog();

        goto LABEL_36;
      }
    }

    else if (!v22)
    {
      goto LABEL_34;
    }

    v38 = *(a1 + 32);
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ handleAccountChange]: Device is Proto U13 State.", objc_opt_class()];
    _ADLog();

    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v25 = *(a1 + 32);
  v26 = v40;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] handleAccountChange: Current accounts (iTunes: %@, iCloud: %@) have not changed.", objc_opt_class(), v40, v9];
  _ADLog();

  v28 = *(a1 + 40);
  if (v28)
  {
    (*(v28 + 16))(v28, 0);
  }

LABEL_37:
}

uint64_t __44__ADIDManager_Private__handleAccountChange___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __32__ADIDManager_Private__runTask___block_invoke(uint64_t a1)
{
  [*(a1 + 32) checkForLateReconcile];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__ADIDManager_Private__runTask___block_invoke_2;
  v3[3] = &unk_278C58508;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 reconcile:v3];
}

void __32__ADIDManager_Private__runTask___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [*(a1 + 40) requestIdentifier];
  v8 = [v3 stringWithFormat:@"[%@]: Finished task %@ with error %@", v6, v7, v5];

  _ADLog();
  if (([*(a1 + 40) finishTask] & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: Unable to mark the task as finished. Please file a radar...", objc_opt_class()];
    _ADLog();
  }
}

@end