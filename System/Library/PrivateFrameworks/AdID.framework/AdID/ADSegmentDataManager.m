@interface ADSegmentDataManager
+ (id)sharedInstance;
- (BOOL)isEligibleForSensitiveContent:(int64_t)a3;
- (BOOL)isSegmentReductionEnabled;
- (BOOL)shouldSendSegmentDataToAdPlatforms:(id)a3;
- (BOOL)shouldSendSegmentRequest:(id)a3 ignoreTimestamps:(BOOL)a4;
- (BOOL)verifyGenderInSegmentData:(id)a3;
- (id)_ageDistributionOverrides;
- (id)checkTokenAndDSID:(id)a3;
- (id)noiseAppliedBirthYearFromActual:(id)a3;
- (id)parseBirthYearFromSegmentData:(id)a3;
- (id)parseISO3166CodeFromSegmentData:(id)a3;
- (void)handleJingleSegmentResponse:(id)a3 activeRecord:(id)a4 completionHandler:(id)a5;
- (void)handleSegmentUpdateResponse:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)handleSuccessfulJingleSegmentResponse:(id)a3 dsidRecord:(id)a4 completionHandler:(id)a5;
- (void)populateAccountTypeFields:(id)a3;
- (void)sendSegmentDataToAdPlatforms:(id)a3 completionHandler:(id)a4;
@end

@implementation ADSegmentDataManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ADSegmentDataManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_3, block);
  }

  v2 = sharedInstance__instance_3;

  return v2;
}

uint64_t __38__ADSegmentDataManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_3 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldSendSegmentRequest:(id)a3 ignoreTimestamps:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CE9658] sharedInstance];
  v8 = [v7 activeDSIDRecord];

  if (![(ADSegmentDataManager *)self segmentRetrievalInProgress])
  {
    if ([v8 isPlaceholderAccount])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. DSID %@ is not logged into iTunes.", objc_opt_class(), v6];
      goto LABEL_5;
    }

    v12 = [v8 DSID];
    v13 = [v12 isEqualToString:v6];

    if ((v13 & 1) == 0)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = objc_opt_class();
      v9 = [v8 DSID];
      v19 = [v17 stringWithFormat:@"[%@]: Skipping segment retrieval request. Current active record DSID %@ does not match request DSID %@.", v18, v9, v6];
      _ADLog();

      goto LABEL_6;
    }

    v14 = [MEMORY[0x277CE9658] sharedInstance];
    v15 = [v14 reconcileOperations];
    v16 = [v15 isSet:1];

    if (v16)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Forcing segment retrieval request for DSID %@ because ADReconcileOp_RetrieveSegments flag is set", objc_opt_class(), v6];
    }

    else if (a4)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Forcing segment retrieval request for DSID %@ because 'ignoreTimestamps' was specified.", objc_opt_class(), v6];
    }

    else
    {
      v20 = [v8 segmentDataTimestamp];
      v21 = [MEMORY[0x277CE9638] sharedInstance];
      v22 = [v21 segmentRetrievalInterval] + v20;
      v23 = [MEMORY[0x277CBEAA8] date];
      v24 = v22 - [v23 AD_toServerTime];

      if (v24 >= 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. Segment data for DSID %@ has not expired.", objc_opt_class(), v6];
        goto LABEL_5;
      }

      if ([v8 segmentDataTimestamp] || (objc_msgSend(v8, "segmentData"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = objc_opt_class();
        v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v24];
        v28 = [v9 AD_doubleDateTimeAsString];
        v29 = [v26 stringWithFormat:@"[%@]: Segments for DSID %@ expired %d seconds ago (%@). Asking Jingle for new segments.", v27, v6, v24, v28];
        _ADLog();

        goto LABEL_15;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Retrieving segment data for DSID %@ because we don't have any.", objc_opt_class(), v6];
    }
    v9 = ;
    _ADLog();
LABEL_15:
    v10 = 1;
    goto LABEL_7;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. Request for %@ already in-flight.", objc_opt_class(), v6];
  v9 = LABEL_5:;
  _ADLog();
LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

- (id)checkTokenAndDSID:(id)a3
{
  v4 = a3;
  v5 = [v4 token];
  v6 = [v5 isEqual:self->_pendingJingleRequestToken];

  if (v6)
  {
    v7 = [v4 DSID];
    v8 = [MEMORY[0x277CE9658] sharedInstance];
    v9 = [v8 activeDSIDRecord];
    v10 = [v9 DSID];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v16 = [v4 DSID];
    v17 = [MEMORY[0x277CE9658] sharedInstance];
    v21 = [v17 activeDSIDRecord];
    v22 = [v21 DSID];
    v23 = [v19 stringWithFormat:@"[%@]: Segment update response has DSID %@, but current DSID is %@. Ignoring.", v20, v16, v22];
    v12 = [v18 initWithAdCode:5 andDescription:v23];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = [v4 token];
    v17 = [v14 stringWithFormat:@"[%@]: Segment update response has token %@, but was expecting token %@.", v15, v16, self->_pendingJingleRequestToken];
    v12 = [v13 initWithAdCode:4 andDescription:v17];
  }

  [v12 AD_Log:@"iAdIDLogging"];
LABEL_7:

  return v12;
}

- (void)handleJingleSegmentResponse:(id)a3 activeRecord:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (v8)
  {
    v12 = [v8 error];

    if (v12)
    {
      if (v10)
      {
        v13 = [v8 error];
        v10[2](v10, v13, 1);
      }

      [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
      v14 = 0;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = [v8 DSID];
    v20 = [v17 stringWithFormat:@"[%@ retrieveSegmentData]: Received segment update response for DSID %@", v18, v19];
    _ADLog();

    v14 = [(ADSegmentDataManager *)self checkTokenAndDSID:v8];
    [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
    if (v14)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData] Error making segment request: %@", objc_opt_class(), v14];
      _ADLog();

      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_10:
      v10[2](v10, v14, 1);
      goto LABEL_11;
    }

    v22 = [v8 responseBody];

    if (!v22)
    {
      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Segment update returned empty response body. Segments not updated.", objc_opt_class()];
      v14 = [v31 initWithAdCode:3 andDescription:v32];

      [v14 AD_Log:@"iAdIDLogging"];
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v23 = MEMORY[0x277CCAAA0];
    v24 = [v8 responseBody];
    v49 = 0;
    v25 = [v23 JSONObjectWithData:v24 options:0 error:&v49];
    v14 = v49;

    v26 = MEMORY[0x277CCACA8];
    v27 = objc_opt_class();
    if (v14)
    {
      v28 = [v14 code];
      v29 = [v14 localizedDescription];
      v30 = [v26 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment update response: %@", v27, v28, v29];
      _ADLog();

      if (!v10)
      {
LABEL_31:

        goto LABEL_11;
      }

LABEL_15:
      v10[2](v10, v14, 1);
      goto LABEL_31;
    }

    v33 = [v8 DSID];
    v34 = [v25 AD_jsonString];
    v35 = [v26 stringWithFormat:@"[%@ retrieveSegmentData]: Successfully decoded segment update response for DSID %@:\n%@", v27, v33, v34];
    _ADLog();

    if (!v9)
    {
      v38 = objc_alloc(MEMORY[0x277CCA9B8]);
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"activeRecord == nil. Please file a Radar!"];
      v14 = [v38 initWithAdCode:13 andDescription:v39];

      v40 = MEMORY[0x277CCACA8];
      v41 = objc_opt_class();
      v42 = [v14 localizedDescription];
      v43 = [v40 stringWithFormat:@"[%@ retrieveSegmentData]: %@", v41, v42];
      _ADLog();

      if (!v10)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }

    v36 = [v25 objectForKeyedSubscript:@"status"];
    v37 = [v36 intValue];

    if (v37 != 1602)
    {
      if (v37 == 1601)
      {
        if ([v9 lastJingleAccountStatus] == 1 && objc_msgSend(v9, "accountAgeUnknown"))
        {
          [v9 setAccountAgeUnknown:0];
        }

        [v9 setLastJingleAccountStatus:1];
        v44 = [MEMORY[0x277CBEAA8] date];
        [v9 setSegmentDataTimestamp:{objc_msgSend(v44, "AD_toServerTime")}];

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: The Jingle Weak Token for this user has expired. No action is possible by iAd, the user must log into the account.", objc_opt_class()];
        _ADLog();

        if (v10)
        {
          v10[2](v10, 0, 1);
        }

        goto LABEL_30;
      }

      if (v37)
      {
        if ((v37 & 0x80000000) != 0)
        {
          v46 = @"[%@ retrieveSegmentData]: Jingle response code %d indicates a malformed request. Please file a Radar!";
        }

        else
        {
          [v9 setLastJingleAccountStatus:-1];
          v46 = @"[%@ retrieveSegmentData]: Unhandled Jingle response code %d. Please file a Radar!";
        }

        v47 = objc_alloc(MEMORY[0x277CCA9B8]);
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:v46, objc_opt_class(), v37];
        v14 = [v47 initWithAdCode:3 andDescription:v48];

        [v14 AD_Log:@"iAdIDLogging"];
        if (!v10)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }
    }

    [v9 setLastJingleAccountStatus:0];
    [(ADSegmentDataManager *)self handleSuccessfulJingleSegmentResponse:v25 dsidRecord:v9 completionHandler:v10];
LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Segment update returned nil request. An update was not even attempted.", objc_opt_class()];
  v14 = [v15 initWithAdCode:11 andDescription:v16];

  [v14 AD_Log:@"iAdIDLogging"];
  [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
  if (v10)
  {
    v10[2](v10, v14, 0);
  }

LABEL_11:

  objc_autoreleasePoolPop(v11);
}

- (BOOL)verifyGenderInSegmentData:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"it"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"dm"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 objectForKeyedSubscript:@"14"];
        v7 = [v5 objectForKeyedSubscript:@"17"];
        v8 = [v5 objectForKeyedSubscript:@"18"];
        v9 = v8;
        if (v6 || v7 || v8)
        {
          if (v6 || !(v7 | v8))
          {
            v11 = MEMORY[0x277CCACA8];
            v12 = objc_opt_class();
            if (!v6 || v7 || v9)
            {
              v15 = [v11 stringWithFormat:@"[%@]: Both old and new gender data is present in segmentData. This is an error.", v12];
              _ADLog();

              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Demographic data is: %@", objc_opt_class(), v5];
              _ADLog();
              v10 = 0;
              goto LABEL_20;
            }

            [v11 stringWithFormat:@"[%@]: Only old gender data present.", v12];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Only new gender data present.", objc_opt_class()];
          }
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No gender data present.", objc_opt_class()];
        }
        v13 = ;
        _ADLog();
        v10 = 1;
LABEL_20:

        goto LABEL_21;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: demographicData returned is not a dictionary!", objc_opt_class(), v16];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: %@ key not present in segmentData", objc_opt_class(), @"dm"];
    }
    v6 = ;
    _ADLog();
    v10 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: %@ key not present in segmentData", objc_opt_class(), @"it"];
  _ADLog();
  v10 = 1;
LABEL_22:

  return v10;
}

- (void)handleSuccessfulJingleSegmentResponse:(id)a3 dsidRecord:(id)a4 completionHandler:(id)a5
{
  v108[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  v11 = [v8 objectForKeyedSubscript:@"last-served"];
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLForKey:", @"adForceConsumerStatus"), v12, (v13 & 1) != 0))
  {
    v14 = 1;
    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = [v9 isRestrictedByApple] ^ 1;
  }

  v16 = [MEMORY[0x277CE9638] sharedInstance];
  v17 = v16;
  v103 = self;
  v99 = v15;
  v101 = v10;
  if ((v15 & 1) == 0)
  {
    if (([v16 isManagedAppleID] & 1) == 0)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      v25 = [v9 DSID];
      v26 = [v23 stringWithFormat:@"[%@ retrieveSegmentData]: %@ is a restricted account, ignoring segments from Jingle.", v24, v25];
      _ADLog();

      goto LABEL_24;
    }

LABEL_10:
    v22 = [MEMORY[0x277CBEAA8] date];
    [v9 setSegmentDataTimestamp:{objc_msgSend(v22, "AD_toServerTime")}];

    v96 = v17;
    if ([v17 isPersonalizedAdsEnabled])
    {
      [v9 setLastSegmentServedTimestamp:{objc_msgSend(v9, "segmentDataTimestamp")}];
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Segments have changed for opted-in user. Updating lastSegmentServedTimestamp to %d", objc_opt_class(), objc_msgSend(v9, "lastSegmentServedTimestamp")];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ignoring segment change for opted-out user.", objc_opt_class(), v95];
    }
    v27 = ;
    v28 = v11;
    _ADLog();

    v29 = [v8 objectForKeyedSubscript:@"payload"];
    if (v29)
    {
      if ([(ADSegmentDataManager *)self verifyGenderInSegmentData:v29])
      {
        v104 = 0;
        v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v29 options:0 error:&v104];
        v31 = v104;
        v32 = MEMORY[0x277CCACA8];
        if (v31)
        {
          v33 = objc_opt_class();
          v34 = [v31 code];
          [v31 localizedDescription];
          v35 = v97 = v30;
          v36 = [v32 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment dictionary %@: %@", v33, v34, v29, v35];
          _ADLog();

          v37 = MEMORY[0x277CCACA8];
          v38 = objc_opt_class();
          v39 = [v31 code];
          v40 = [v31 localizedDescription];
          v41 = [v37 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment dictionary %@: %@", v38, v39, v29, v40];

          v42 = v97;
          ADSimulateCrash();
        }

        else
        {
          v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v30 encoding:4];
          [v9 setSegmentData:v41];
          v50 = [(ADSegmentDataManager *)self parseISO3166CodeFromSegmentData:v41];
          [v9 setIso3166Code:v50];

          v42 = v30;
        }

        v11 = v28;

        goto LABEL_23;
      }

      v47 = MEMORY[0x277CCACA8];
      v48 = [v9 DSID];
      v49 = [v47 stringWithFormat:@"For DSID: %@ both old and new gender data is present in segmentData: %@. This is an error.", v48, v29];

      ADSimulateCrash();
    }

    else
    {
      v43 = MEMORY[0x277CCACA8];
      v44 = objc_opt_class();
      v45 = [v9 DSID];
      v46 = [v43 stringWithFormat:@"[%@ retrieveSegmentData]: Jingle did not return segment payload for DSID %@", v44, v45];
      _ADLog();
    }

    v11 = v28;
LABEL_23:
    v17 = v96;

    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  [v9 setLastSegmentServedTimestamp:{objc_msgSend(v11, "intValue")}];
  v18 = [v9 segmentDataTimestamp];
  if (v18 < [v9 lastSegmentServedTimestamp])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Overriding unchanged segments - local segment timestamp (%d) is older than last-served timestamp (%d)", objc_opt_class(), objc_msgSend(v9, "segmentDataTimestamp"), objc_msgSend(v9, "lastSegmentServedTimestamp")];
    _ADLog();

    v20 = [v9 DSID];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __91__ADSegmentDataManager_handleSuccessfulJingleSegmentResponse_dsidRecord_completionHandler___block_invoke;
    v105[3] = &unk_278C58728;
    v106 = v10;
    [(ADSegmentDataManager *)self retrieveSegmentData:v20 forceSegments:1 completionHandler:v105];

    v21 = v106;
    goto LABEL_51;
  }

LABEL_24:
  v98 = v11;
  if (v14)
  {
    [v9 setAccountIsU13:0];
    v51 = [v8 objectForKeyedSubscript:@"t13flag"];
    [v9 setAccountIsT13:{objc_msgSend(v51, "intValue") > 0}];

    [v9 setAccountIsU18:0];
    [v9 setAccountAgeUnknown:0];
  }

  else
  {
    v52 = [v8 objectForKeyedSubscript:@"u13flag"];
    [v9 setAccountIsU13:{objc_msgSend(v52, "intValue") > 0}];

    v53 = [v8 objectForKeyedSubscript:@"t13flag"];
    [v9 setAccountIsT13:{objc_msgSend(v53, "intValue") > 0}];

    v54 = [v8 objectForKeyedSubscript:@"u18flag"];
    [v9 setAccountIsU18:{objc_msgSend(v54, "intValue") > 0}];

    v55 = [v8 objectForKeyedSubscript:@"no-segment"];
    [v9 setAccountAgeUnknown:{objc_msgSend(v55, "BOOLValue")}];
  }

  [v9 setIsProtoU13:{objc_msgSend(v17, "isProtoU13state")}];
  [v9 setIsProtoTeen:{objc_msgSend(v17, "isProtoTeenState")}];
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: The current account is: EDU: %d. Managed: %d. U13: %d. T13: %d. U18: %d. Unknown Age: %d. Proto U13: %d. Proto Teen: %d", objc_opt_class(), objc_msgSend(v17, "educationModeEnabled"), objc_msgSend(v17, "isManagedAppleID"), objc_msgSend(v9, "accountIsU13"), objc_msgSend(v9, "accountIsT13"), objc_msgSend(v9, "accountIsU18"), objc_msgSend(v9, "accountAgeUnknown"), objc_msgSend(v17, "isProtoU13state"), objc_msgSend(v17, "isProtoTeenState")];
  _ADLog();

  if (v99)
  {
    v57 = v103;
    v58 = 0x277CBE000;
    if ([v9 accountIsU13] & 1) != 0 || (objc_msgSend(v9, "accountIsU18") & 1) != 0 || (objc_msgSend(v9, "accountAgeUnknown") & 1) != 0 || (objc_msgSend(v9, "isProtoU13"))
    {
      v59 = 0;
    }

    else
    {
      v59 = [v9 isProtoTeen] ^ 1;
    }
  }

  else
  {
    v59 = 0;
    v57 = v103;
    v58 = 0x277CBE000uLL;
  }

  [v17 setIdentifierForAdvertisingAllowed:v59];
  v21 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v60 = [*(v58 + 2728) date];
  v61 = [v21 component:4 fromDate:v60];

  v62 = [v9 segmentData];
  v63 = [(ADSegmentDataManager *)v57 parseBirthYearFromSegmentData:v62];

  if ([v9 isPlaceholderAccount] & 1) != 0 || (objc_msgSend(v9, "accountAgeUnknown"))
  {
    v64 = 0;
    if (!v63)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v64 = [v9 isRestrictedByApple] ^ 1;
    if (!v63)
    {
LABEL_45:
      v68 = 0;
      goto LABEL_46;
    }
  }

  [v9 setActualBirthYear:{objc_msgSend(v63, "intValue")}];
  if (!v64)
  {
    goto LABEL_45;
  }

  v65 = [MEMORY[0x277CE9638] sharedInstance];
  v66 = [v65 isPersonalizedAdsEnabled];

  if (v66)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads is ON. We must use actual birth year.", objc_opt_class()];
  }

  else
  {
    if ([v9 noiseAppliedVersion] == 10)
    {
      v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads is OFF and we have already applied noise before. Checking if basel year is younger than noised.", objc_opt_class()];
      _ADLog();

      LODWORD(v75) = [v63 intValue];
      if (v75 <= [v9 effectiveBirthYear])
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v76 = [v9 noiseAppliedVersion];
    v77 = MEMORY[0x277CCACA8];
    v78 = objc_opt_class();
    if (v76 != 20)
    {
      v79 = [v77 stringWithFormat:@"[%@]: Personalized Ads is OFF and we have not applied noise before. Running noise calculation now.", v78];
      _ADLog();

      if (v61 - [v63 integerValue] < 21)
      {
        v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: User INELIGIBLE to be treated with noise.", objc_opt_class()];
        _ADLog();

        [v9 setEffectiveBirthYear:{objc_msgSend(v63, "intValue")}];
        [v9 setNoiseAppliedVersion:20];
      }

      else
      {
        v80 = [(ADSegmentDataManager *)v57 noiseAppliedBirthYearFromActual:v63];
        v81 = [v63 isEqualToNumber:v80];
        v82 = MEMORY[0x277CCACA8];
        v83 = objc_opt_class();
        if (v81)
        {
          v84 = [v82 stringWithFormat:@"[%@]: User IS NOT being treated with noise.", v83];
          _ADLog();

          v85 = [v63 intValue];
          v86 = 20;
        }

        else
        {
          v88 = [v82 stringWithFormat:@"[%@]: User IS being treated with noise.", v83];
          _ADLog();

          v85 = [v80 intValue];
          v86 = 10;
        }

        [v9 setEffectiveBirthYear:v85];
        [v9 setNoiseAppliedVersion:v86];
        v89 = [MEMORY[0x277CE9638] sharedInstance];
        v90 = [v89 iTunesStorefront];

        v100 = v80;
        if (v90 && [v90 length] >= 6)
        {
          v91 = [v90 substringToIndex:6];

          v90 = v91;
        }

        v92 = [v9 effectiveBirthYear];
        v107[0] = @"EffectiveAge";
        v93 = [MEMORY[0x277CCABB0] numberWithInteger:v61 + ~v92];
        v107[1] = @"Storefront";
        v108[0] = v93;
        v108[1] = v90;
        v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
        AnalyticsSendEvent();
      }

      goto LABEL_44;
    }

    [v77 stringWithFormat:@"[%@]: Personalized Ads is OFF and we have already calculated noise before. No noise applied and basel year is honored.", v78];
  }
  v67 = ;
  _ADLog();

LABEL_43:
  [v9 setEffectiveBirthYear:{objc_msgSend(v63, "intValue")}];
LABEL_44:
  v68 = -[ADSegmentDataManager isEligibleForSensitiveContent:](v57, "isEligibleForSensitiveContent:", [v9 effectiveBirthYear]);
LABEL_46:
  v10 = v101;
  [v9 setSensitiveContentEligible:v68];
  v69 = MEMORY[0x277CCACA8];
  v70 = objc_opt_class();
  v71 = [v9 sensitiveContentEligible];
  v72 = @"NOT eligible";
  if (v71)
  {
    v72 = @"eligible";
  }

  v73 = [v69 stringWithFormat:@"[%@]: This user is %@ for sensitive content.", v70, v72];
  _ADLog();

  if (v101)
  {
    (*(v101 + 2))(v101, 0, 1);
  }

  v11 = v98;
LABEL_51:

  objc_autoreleasePoolPop(context);
  v74 = *MEMORY[0x277D85DE8];
}

uint64_t __91__ADSegmentDataManager_handleSuccessfulJingleSegmentResponse_dsidRecord_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)parseISO3166CodeFromSegmentData:(id)a3
{
  v3 = MEMORY[0x277CCAAA0];
  v4 = [a3 dataUsingEncoding:4];
  v11 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"segmentData is not in JSON format. Unable to parse segmentData."];
    _ADLog();
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"it"];
    v9 = [v7 objectForKeyedSubscript:@"xa"];
    v8 = [v9 objectForKeyedSubscript:@"93"];
  }

  return v8;
}

- (id)parseBirthYearFromSegmentData:(id)a3
{
  v3 = MEMORY[0x277CCAAA0];
  v4 = [a3 dataUsingEncoding:4];
  v12 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"segmentData is not in JSON format. Unable to parse segmentData."];
    _ADLog();
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"it"];
    v9 = [v7 objectForKeyedSubscript:@"dm"];
    v10 = [v9 objectForKeyedSubscript:@"13"];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue")}];
  }

  return v8;
}

- (id)noiseAppliedBirthYearFromActual:(id)a3
{
  v4 = a3;
  if (MGGetBoolAnswer())
  {
    v5 = [MEMORY[0x277CE9630] sharedInstance];
    v6 = [v5 BOOLForKey:@"EnableCustomPayload"];

    if (v6)
    {
      v7 = [MEMORY[0x277CE9630] sharedInstance];
      v8 = [v7 stringForKey:@"SegmentAge"];

      v9 = [v8 integerValue];
      if (v9)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];

        v4 = v10;
      }
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v11 = v4;
  v35 = v11;
  v12 = objc_autoreleasePoolPush();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = MEMORY[0x277D42D10];
  v15 = objc_opt_class();
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __56__ADSegmentDataManager_noiseAppliedBirthYearFromActual___block_invoke;
  v25 = &unk_278C58750;
  v16 = v11;
  v26 = v16;
  v27 = self;
  v29 = &v30;
  v17 = v13;
  v28 = v17;
  [v14 fetchConfigurationForClass:v15 completion:&v22];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v17, v18))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the noise config in time.", v22, v23, v24, v25, v26, v27];
    _ADLog();
  }

  objc_autoreleasePoolPop(v12);
  v20 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v20;
}

void __56__ADSegmentDataManager_noiseAppliedBirthYearFromActual___block_invoke(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = [a2 lowerAgeLimits];
  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] There is an issue with the config payload."];
    _ADLog();

    v5 = [@"{noiseRange:{startAge:18 endAge:{adolescentNoise:0, noise:[{age:18, percentage:0.78}, {age:19, percentage:0.97}, {age:20, percentage:1.15}]}", "dataUsingEncoding:", 4}20}];
    v77 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v77];
  }

  v6 = [v3 objectForKey:@"noiseRange"];
  v7 = [v6 objectForKey:@"startAge"];
  v8 = [v6 objectForKey:@"endAge"];
  v62 = v6;
  if ([v7 intValue] <= 12)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:13];

    v7 = v9;
  }

  if ([v7 intValue] >= 19)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:18];

    v7 = v10;
  }

  v65 = a1;
  if ([v8 intValue] <= 19)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:20];

    v8 = v11;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v64 = v7;
  v13 = [v7 intValue];
  if (v13 <= [v8 intValue])
  {
    do
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      [v12 addObject:v14];

      v15 = v13 < [v8 intValue];
      v13 = (v13 + 1);
    }

    while (v15);
  }

  v63 = v8;
  v66 = v3;
  v16 = [v3 objectForKey:@"noise"];
  v17 = [v16 mutableCopy];

  v67 = v17;
  v18 = [v17 valueForKey:@"age"];
  v19 = [v18 mutableCopy];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v73 + 1) + 8 * i);
        if (([v19 containsObject:v24] & 1) == 0)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is a broken config for age noise where (%d) is missing.", objc_msgSend(v24, "intValue")];
          _ADLog();

          v81[0] = @"age";
          v81[1] = @"percentage";
          v82[0] = v24;
          v82[1] = &unk_28510BE40;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
          [v67 addObject:v26];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v21);
  }

  v27 = [v66 objectForKey:@"adolescentNoise"];
  [v27 floatValue];
  v28 = v64;
  if (v29 > 0.0)
  {
    v30 = [v64 intValue];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:(v30 - 1)];
    v79[0] = @"age";
    v79[1] = @"percentage";
    v80[0] = v31;
    v80[1] = v27;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
    [v67 addObject:v32];
  }

  v33 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v34 = [MEMORY[0x277CBEAA8] date];
  v35 = [v33 component:4 fromDate:v34];

  v36 = v65;
  v37 = v35 + ~[*(v65 + 32) integerValue];
  if (v37 <= [v8 integerValue])
  {
    v44 = v37;
  }

  else
  {
    v60 = v35;
    if (MGGetBoolAnswer())
    {
      v38 = v37;
      v39 = [*(v65 + 40) _ageDistributionOverrides];
      v40 = v39;
      if (v39)
      {
        v41 = v39;

        v67 = v41;
      }

      v37 = v38;
    }

    v42 = arc4random_uniform(0x2710u);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v67 = v67;
    v43 = [v67 countByEnumeratingWithState:&v69 objects:v78 count:16];
    v61 = v37;
    v44 = v37;
    if (v43)
    {
      v45 = v43;
      v59 = v33;
      v46 = 0;
      v47 = *v70;
      while (2)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v67);
          }

          v49 = *(*(&v69 + 1) + 8 * j);
          v50 = [v49 objectForKey:@"percentage"];
          v51 = [v49 objectForKey:@"age"];
          [v50 floatValue];
          v53 = (v52 * 100.0);
          if (v53 <= 50)
          {
            v53 = 50;
          }

          v46 += v53;
          if (v42 < v46)
          {
            v44 = [v51 integerValue];

            goto LABEL_40;
          }
        }

        v45 = [v67 countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }

      v44 = v61;
LABEL_40:
      v28 = v64;
      v36 = v65;
      v8 = v63;
      v33 = v59;
    }

    v35 = v60;
    v37 = v61;
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"User with age %ld being treated with effective age of %ld.", v37, v44];
  _ADLog();

  if (v37 != v44)
  {
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:v35 + ~v44];
    v56 = *(*(v36 + 56) + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;
  }

  dispatch_group_leave(*(v36 + 48));

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEligibleForSensitiveContent:(int64_t)a3
{
  if (a3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v4 = objc_autoreleasePoolPush();
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = MEMORY[0x277D42D10];
    v7 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__ADSegmentDataManager_isEligibleForSensitiveContent___block_invoke;
    v13[3] = &unk_278C58778;
    v15 = &v17;
    v16 = a3;
    v8 = v5;
    v14 = v8;
    [v6 fetchConfigurationForClass:v7 completion:v13];
    v9 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v8, v9))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the storefront threshold config in time."];
      _ADLog();
    }

    objc_autoreleasePoolPop(v4);
    v11 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __54__ADSegmentDataManager_isEligibleForSensitiveContent___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 enabled];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v19 sensitiveContentEligibilityThreshold];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKey:@"default"];
      v8 = [MEMORY[0x277CE9638] sharedInstance];
      v9 = [v8 iTunesStorefront];

      if (v9 && [v9 length] >= 6)
      {
        v10 = [v9 substringToIndex:6];

        v9 = v10;
      }

      v11 = v6;
      v12 = [v11 objectForKey:v9];

      if (v12)
      {
        v13 = [v11 objectForKey:v9];

        v7 = v13;
      }

      v14 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = [v14 component:4 fromDate:v15];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16 + ~*(a1 + 48)];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The storefront: %@ has a threshold of: %d. The user's age is: %d", v9, objc_msgSend(v7, "intValue"), objc_msgSend(v17, "intValue")];
      _ADLog();

      LODWORD(v18) = [v17 intValue];
      if (v18 >= [v7 intValue])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_ageDistributionOverrides
{
  v29[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v4 = [v3 objectForKey:@"enableAgeDistributionOverrides"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  if ([v5 BOOLValue])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v23 = [v3 objectForKey:@"ageDistribution18"];
    v7 = [v3 objectForKey:@"ageDistribution19"];
    v22 = [v3 objectForKey:@"ageDistribution20"];
    v28[0] = @"age";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v28[1] = @"percentage";
    v29[0] = v8;
    v9 = MEMORY[0x277CCABB0];
    [v23 floatValue];
    v10 = [v9 numberWithFloat:?];
    v29[1] = v10;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    [v6 addObject:v21];
    v26[0] = @"age";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:19];
    v26[1] = @"percentage";
    v27[0] = v11;
    v12 = MEMORY[0x277CCABB0];
    [v7 floatValue];
    v13 = [v12 numberWithFloat:?];
    v27[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

    [v6 addObject:v14];
    v24[0] = @"age";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:20];
    v24[1] = @"percentage";
    v25[0] = v15;
    v16 = MEMORY[0x277CCABB0];
    [v22 floatValue];
    v17 = [v16 numberWithFloat:?];
    v25[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    [v6 addObject:v18];
  }

  else
  {
    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)populateAccountTypeFields:(id)a3
{
  v11 = a3;
  v3 = [MEMORY[0x277CE9638] sharedInstance];
  v4 = [MEMORY[0x277CE9658] sharedInstance];
  v5 = [v4 activeDSIDRecord];

  v6 = [v3 iTunesStoreAccount];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (([v5 accountAgeUnknown] & 1) != 0 || objc_msgSend(v5, "lastJingleAccountStatus") == 1)
  {
    v7 = 6;
LABEL_6:
    [v11 addAccountType:v7];
    goto LABEL_7;
  }

  v8 = [v3 isManagedAppleID];
  if (v8)
  {
    [v11 addAccountType:2];
  }

  if ([v5 accountIsU13])
  {
    [v11 addAccountType:3];
    v9 = 0;
  }

  else
  {
    v9 = v8 ^ 1;
  }

  [v5 accountIsT13];
  v10 = [v5 accountIsU18];
  if (v10)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  if ((v10 & 1) != 0 || v9)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)isSegmentReductionEnabled
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = MEMORY[0x277D42D10];
  v4 = objc_opt_class();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__ADSegmentDataManager_isSegmentReductionEnabled__block_invoke;
  v13 = &unk_278C587A0;
  v15 = &v16;
  v5 = v2;
  v14 = v5;
  [v3 fetchConfigurationForClass:v4 completion:&v10];
  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v5, v6))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the segments config in time.", v10, v11, v12, v13];
    _ADLog();
  }

  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __49__ADSegmentDataManager_isSegmentReductionEnabled__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 segmentReductionEnabled];

  if (v3)
  {
    v4 = [v5 segmentReductionEnabled];
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)shouldSendSegmentDataToAdPlatforms:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE9630] sharedInstance];
  v6 = [v5 BOOLForKey:@"EnableCustomPayload"];

  if (!v6)
  {
    v9 = [MEMORY[0x277CE9658] sharedInstance];
    v7 = [v9 activeDSIDRecord];

    if ([(ADSegmentDataManager *)self isSegmentReductionEnabled])
    {
      if ([v7 isRestrictedByApple])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Account %@ is a restricted account (U13, U18, MAID, EDU or Proto U13).", objc_opt_class(), v4];
        v15 = LABEL_19:;
        _ADLog();

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Segment update request should NOT be sent.", objc_opt_class()];
LABEL_20:
        _ADLog();
LABEL_21:
        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v13 = [MEMORY[0x277CE9638] sharedInstance];
      v14 = [v13 isPersonalizedAdsEnabled];

      if ((v14 & 1) == 0)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. PA is set to OFF", objc_opt_class(), v47];
        goto LABEL_19;
      }

LABEL_16:
      if ([(ADSegmentDataManager *)self segmentUpdateInProgress])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment update for %@ is in-flight.", objc_opt_class(), v4, v48];
        v16 = LABEL_26:;
        goto LABEL_20;
      }

      if ([(ADSegmentDataManager *)self segmentRetrievalInProgress])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment retrieval request to Jingle for %@ is in-flight.", objc_opt_class(), v4, v48];
        goto LABEL_26;
      }

      v18 = [v7 DSID];
      v19 = [v18 isEqualToString:v4];

      if (v19)
      {
        v20 = [MEMORY[0x277CE9638] sharedInstance];
        if (![v20 isPersonalizedAdsEnabled])
        {
LABEL_31:

          goto LABEL_32;
        }

        v21 = [v7 encryptedIDForClientType:5];
        if (v21)
        {

          goto LABEL_31;
        }

        v40 = [v7 isPlaceholderAccount];

        if (v40)
        {
LABEL_32:
          v22 = [MEMORY[0x277CBEAA8] date];
          v23 = [v22 AD_toServerTime];
          v24 = v23 - [v7 lastSentSegmentDataTimestamp];
          v25 = [MEMORY[0x277CE9638] sharedInstance];
          v26 = [v25 maxSegmentSendInterval];

          if (v24 > v26)
          {
            v27 = [v7 lastSentSegmentDataTimestamp];
            v28 = MEMORY[0x277CCACA8];
            v29 = objc_opt_class();
            if (v27)
            {
              v16 = [MEMORY[0x277CE9638] sharedInstance];
              [v28 stringWithFormat:@"[%@]: Sending segment data to AdPlatforms - maximum update interval of %d seconds exceeded.", v29, objc_msgSend(v16, "maxSegmentSendInterval")];
            }

            else
            {
              v16 = [v7 DSID];
              [v28 stringWithFormat:@"[%@]: Sending segment data to AdPlatforms - we have not sent segments before for DSID %@.", v29, v16];
            }
            v43 = ;
            _ADLog();

            goto LABEL_56;
          }

          v35 = [MEMORY[0x277CE9658] sharedInstance];
          v36 = [v35 reconcileOperations];
          if ([v36 isSet:4])
          {
            v37 = [MEMORY[0x277CE9638] sharedInstance];
            v38 = [v37 isPersonalizedAdsEnabled];

            if (v38)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because ADReconcileOp_SendSegmentUpdate is set.", objc_opt_class(), v47, v48];
              v16 = LABEL_55:;
              _ADLog();
LABEL_56:
              v8 = 1;
              goto LABEL_22;
            }
          }

          else
          {
          }

          v39 = [v7 lastSegmentServedTimestamp];
          if (v39 < [v7 lastSentSegmentDataTimestamp])
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment data has not changed (lastSegmentServedTimestamp = %d < lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(v7, "lastSegmentServedTimestamp"), objc_msgSend(v7, "lastSentSegmentDataTimestamp")];
            goto LABEL_26;
          }

          v44 = [v7 segmentDataTimestamp];
          if (v44 <= [v7 lastSentSegmentDataTimestamp])
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms, it was previously sent at %d and hasn't changed since %d.", objc_opt_class(), objc_msgSend(v7, "lastSentSegmentDataTimestamp"), objc_msgSend(v7, "segmentDataTimestamp")];
            goto LABEL_26;
          }

          v45 = [v7 lastSegmentServedTimestamp];
          if (v45 <= [v7 lastSentSegmentDataTimestamp])
          {
            v46 = [v7 segmentDataTimestamp];
            if (v46 <= [v7 lastSentSegmentDataTimestamp])
            {
              goto LABEL_3;
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because segment data changed (segmentDataTimestamp = %d > lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(v7, "segmentDataTimestamp"), objc_msgSend(v7, "lastSentSegmentDataTimestamp")];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because segment data changed (lastSegmentServedTimestamp = %d > lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(v7, "lastSegmentServedTimestamp"), objc_msgSend(v7, "lastSentSegmentDataTimestamp")];
          }

          goto LABEL_55;
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = objc_opt_class();
        v16 = [v7 DSID];
        [v41 stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Device is opted-in but DPID for %@ is NULL.", v42, v16, v48];
      }

      else
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = objc_opt_class();
        v16 = [v7 DSID];
        [v32 stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Current active record DSID %@ does not match request DSID %@.", v33, v16, v4];
      }
      v34 = ;
      _ADLog();

      goto LABEL_21;
    }

    if (([v7 accountIsU13] & 1) == 0)
    {
      v10 = [MEMORY[0x277CE9638] sharedInstance];
      if ([v10 isManagedAppleID])
      {
LABEL_13:

        goto LABEL_14;
      }

      v11 = [MEMORY[0x277CE9638] sharedInstance];
      if ([v11 educationModeEnabled])
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = [MEMORY[0x277CE9638] sharedInstance];
      if ([v12 isProtoU13state])
      {

        goto LABEL_12;
      }

      v30 = [MEMORY[0x277CE9638] sharedInstance];
      v31 = [v30 isProtoTeenState];

      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Account %@ is a U13 or MAID or EDU or Proto U13/Teen account.", objc_opt_class(), v4];
    goto LABEL_19;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because AD_ENABLE_CUSTOM_SEGMENT_PAYLOAD is enabled.", objc_opt_class()];
  _ADLog();
LABEL_3:
  v8 = 1;
LABEL_23:

  return v8;
}

- (void)sendSegmentDataToAdPlatforms:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if ([(ADSegmentDataManager *)self shouldSendSegmentDataToAdPlatforms:v6])
  {
    self->_segmentUpdateInProgress = 1;
    v9 = [MEMORY[0x277CE96B8] workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke;
    v10[3] = &unk_278C57E60;
    v10[4] = self;
    v11 = v7;
    [v9 addOperationWithBlock:v10];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  objc_autoreleasePoolPop(v8);
}

void __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v50 = [MEMORY[0x277CE96B8] sharedInstance];
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = objc_alloc_init(MEMORY[0x277CE96A8]);
  v5 = [v3 activeDSIDRecord];
  v48 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v6 = [v48 UUIDString];
  [v4 setAdvertisingIdentifier:v6];

  v49 = v3;
  v7 = [v3 monthlyResetArray];
  [v4 setAdvertisingIdentifierMonthResetCount:{objc_msgSend(v7, "count")}];

  v8 = [v5 encryptedIDForClientType:0];
  [v4 setIAdID:v8];

  v9 = [v5 encryptedIDForClientType:5];
  [v4 setDPID:v9];

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v47 = [v10 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v11 = [v47 objectForKey:@"acknowledgedPersonalizedAdsVersion"];

  if (([v5 isRestrictedByApple] & 1) != 0 || !objc_msgSend(v2, "isPersonalizedAdsEnabled"))
  {
    v12 = 1;
  }

  else
  {
    v12 = [v5 isPlaceholderAccount];
    if ((v12 & 1) == 0 && v11)
    {
      if ([v5 lastJingleAccountStatus] != 1)
      {
LABEL_24:
        v22 = [v5 segmentData];
        [v4 setSegmentInfo:v22];
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  v46 = v12;
  v13 = MEMORY[0x277CCACA8];
  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  if ([v5 isRestrictedByApple])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([v2 isPersonalizedAdsEnabled])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([v5 isPlaceholderAccount])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (v11)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [v13 stringWithFormat:@"[%@ sendSegmentDataToAdPlatforms]: NOT including segment data in ADSegmentUpdateRequest because -\nisRestrictedByApple: %@\npersonalizedAdsEnabled: %@\nisPlaceholderAccount: %@\nconsentedToPA: %@", v15, v16, v17, v18, v19];
  _ADLog();

  if ([v5 lastJingleAccountStatus] != 1)
  {
    if (v46)
    {
      [v4 setSegmentInfo:0];
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_21:
  [v4 setSegmentInfo:{@"{t:6, o:0}"}];
  v21 = *(a1 + 32);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ sendSegmentDataToAdPlatforms]: Forcing segment data to %@", objc_opt_class(), @"{t:6, o:0}"];
  _ADLog();
LABEL_25:

LABEL_26:
  v23 = [MEMORY[0x277CE9630] sharedInstance];
  v24 = [v23 BOOLForKey:@"EnableCustomPayload"];

  if (v24)
  {
    v25 = [v2 customJinglePayload];
    v26 = [v2 isPersonalizedAdsEnabled];
    v27 = MEMORY[0x277CCACA8];
    v28 = *(a1 + 32);
    v29 = objc_opt_class();
    v30 = @"nil (LAT Enabled)";
    if (v26)
    {
      v30 = v25;
      v31 = v25;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v27 stringWithFormat:@"[%@] Using Custom Segment Payload from Internal Settings: %@", v29, v30];
    _ADLog();

    [v4 setSegmentInfo:v31];
    [v5 setSegmentData:v25];
    v33 = MEMORY[0x277CCACA8];
    v34 = [v5 segmentData];
    v35 = [v33 stringWithFormat:@"Active DSID record segments set to: %@", v34];
    _ADLog();
  }

  [v4 setIsFirstPartyIdentifier:0];
  [v4 setITunesRefreshTime:{objc_msgSend(v5, "segmentDataTimestamp")}];
  v36 = [MEMORY[0x277CBEAA8] date];
  [v4 setUpdateSentTime:{objc_msgSend(v36, "AD_toServerTime")}];

  [v2 timezone];
  [v4 setTimezone:?];
  v37 = [v2 osVersionAndBuild];
  [v4 setOsVersionAndBuild:v37];

  v38 = [v2 localeIdentifier];
  [v4 setLocaleIdentifier:v38];

  [v4 addDeviceMode:{objc_msgSend(v2, "educationModeEnabled")}];
  [*(a1 + 32) populateAccountTypeFields:v4];
  v39 = [v2 iCloudDSID];

  if (v39)
  {
    v40 = [v2 iCloudDSID];
    v41 = [v2 iTunesAccountDSID];
    v42 = [v40 isEqualToString:v41];

    if (v42)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }
  }

  else
  {
    v43 = 0;
  }

  [v4 addAccountState:v43];
  v44 = [v2 defaultServerURL];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke_2;
  v51[3] = &unk_278C587C8;
  v45 = *(a1 + 40);
  v51[4] = *(a1 + 32);
  v52 = v45;
  [v50 handleRequest:v4 serverURL:v44 responseHandler:v51];
}

void __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277CE96B0];
  v7 = a4;
  v8 = a2;
  v9 = [[v6 alloc] initWithData:v8];

  [*(a1 + 32) handleSegmentUpdateResponse:v9 error:v7 completionHandler:*(a1 + 40)];
}

- (void)handleSegmentUpdateResponse:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CE9658] sharedInstance];
  v11 = [v10 activeDSIDRecord];

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  if (v8)
  {
    v14 = [v11 DSID];
    v15 = ClientTypeToString();
    v16 = [v8 code];
    v17 = [v8 localizedDescription];
    v18 = [v12 stringWithFormat:@"[%@] Error sending segments to AdPlatforms for %@ %@. Error %ld - %@", v13, v14, v15, v16, v17];
    _ADLog();

LABEL_3:
    goto LABEL_10;
  }

  v19 = [v29 AD_jsonString];
  v20 = [v12 stringWithFormat:@"[%@] Received segment update response: %@", v13, v19];
  _ADLog();

  v21 = [MEMORY[0x277CBEAA8] date];
  [v11 setLastSentSegmentDataTimestamp:{objc_msgSend(v21, "AD_toServerTime")}];

  if ([v29 hasSegmentRefreshIntervalInSeconds])
  {
    [v29 segmentRefreshIntervalInSeconds];
    if (v22 > 0.0)
    {
      [v29 segmentRefreshIntervalInSeconds];
      v24 = v23;
      v25 = [MEMORY[0x277CE9638] sharedInstance];
      [v25 setSegmentRetrievalInterval:v24];
    }
  }

  if ([v29 hasMaxSegmentUpdateIntervalInSeconds])
  {
    [v29 maxSegmentUpdateIntervalInSeconds];
    if (v26 > 0.0)
    {
      [v29 maxSegmentUpdateIntervalInSeconds];
      v28 = v27;
      v14 = [MEMORY[0x277CE9638] sharedInstance];
      [v14 setMaxSegmentSendInterval:v28];
      goto LABEL_3;
    }
  }

LABEL_10:
  self->_segmentUpdateInProgress = 0;
  if (v9)
  {
    v9[2](v9, v8, 1);
  }
}

@end