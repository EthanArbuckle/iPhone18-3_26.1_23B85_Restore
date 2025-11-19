@interface DSIDRecord(Private)
- (BOOL)isEqual:()Private;
- (BOOL)resetDeviceNewsPlusSubscriberIDIfNeeded;
- (uint64_t)hasIDForClientType:()Private;
- (uint64_t)isActiveRecord;
- (void)ensureiAdIDs;
- (void)removeIDForClientType:()Private;
- (void)retrieveSegmentDataFromiTunes:()Private;
- (void)sendPersonalizedAdsStatusToAdPlatforms:()Private;
- (void)sendSegmentDataToAdPlatforms:()Private;
@end

@implementation DSIDRecord(Private)

- (uint64_t)hasIDForClientType:()Private
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [v4 ADIDRecords];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v4 idForClientType:a3];
  v9 = StringIsFromUUID();

  if ((v9 & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generating IDs due to client type %ld not being in UUID format", a3];
    _ADLog();

    v16 = @"ClientIDType";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    AnalyticsSendEvent();

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  objc_sync_exit(v4);

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)removeIDForClientType:()Private
{
  obj = a1;
  objc_sync_enter(obj);
  v4 = [obj ADIDRecords];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [obj ADIDRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v7 removeObjectForKey:v8];

    [obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)ensureiAdIDs
{
  obj = a1;
  objc_sync_enter(obj);
  v1 = 0;
  for (i = 0; i != 5; ++i)
  {
    if (i != 1)
    {
      v1 |= [obj hasIDForClientType:i] ^ 1;
    }
  }

  if (v1 & 1 | (([obj hasIDForClientType:6] & 1) == 0))
  {
    for (j = 0; j != 5; ++j)
    {
      v4 = objc_alloc_init(MEMORY[0x277CE9660]);
      v5 = [obj ADIDRecords];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:j];
      [v5 setObject:v4 forKeyedSubscript:v6];

      v7 = MEMORY[0x277CCACA8];
      v8 = [obj ADIDRecords];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:j];
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = [obj DSID];
      v12 = ClientTypeToString();
      v13 = [v7 stringWithFormat:@"Generated ID %@ for DSID %@ and client type %ld(%@)", v10, v11, j, v12];
      _ADLog();
    }

    [obj setLastSentSegmentDataTimestamp:0];
    v14 = objc_alloc_init(MEMORY[0x277CE9660]);
    v15 = [obj ADIDRecords];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    [v15 setObject:v14 forKeyedSubscript:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = [obj ADIDRecords];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    v20 = [v18 objectForKeyedSubscript:v19];
    v21 = [obj DSID];
    v22 = ClientTypeToString();
    v23 = [v17 stringWithFormat:@"Generated ID %@ for DSID %@ and client type %ld(%@)", v20, v21, 6, v22];
    _ADLog();

    v24 = [MEMORY[0x277CBEAA8] date];
    [obj setDeviceIDRotationTimestamp:{objc_msgSend(v24, "AD_toSinceReferenceTime")}];
  }

  objc_sync_exit(obj);
}

- (BOOL)resetDeviceNewsPlusSubscriberIDIfNeeded
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [v2 AD_toSinceReferenceTime];

  v4 = v3 - [a1 deviceIDRotationTimestamp];
  if (v4 <= 86399)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"It has not yet been 24 hours since deviceID was rotated. Last rotated at %d", objc_msgSend(a1, "deviceIDRotationTimestamp")];
    _ADLog();
  }

  else
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 DSID];
    v8 = [v6 stringWithFormat:@"Resetting deviceNewsPlusSubscriberID at time %d for DSID record %@.", v3, v7];
    _ADLog();

    v9 = [v5 ADIDRecords];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__DSIDRecord_Private__resetDeviceNewsPlusSubscriberIDIfNeeded__block_invoke;
    v12[3] = &unk_278C582E0;
    v12[4] = v5;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];

    [v5 setDeviceIDRotationTimestamp:v3];
    objc_sync_exit(v5);
  }

  return v4 > 86399;
}

- (uint64_t)isActiveRecord
{
  v1 = [a1 DSID];
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v3 = [v2 activeDSIDRecord];
  v4 = [v3 DSID];
  v5 = [v1 isEqualToString:v4];

  return v5;
}

- (void)retrieveSegmentDataFromiTunes:()Private
{
  v4 = a3;
  v6 = +[ADSegmentDataManager sharedInstance];
  v5 = [a1 DSID];
  [v6 retrieveSegmentData:v5 forceSegments:0 completionHandler:v4];
}

- (void)sendSegmentDataToAdPlatforms:()Private
{
  v4 = a3;
  v6 = +[ADSegmentDataManager sharedInstance];
  v5 = [a1 DSID];
  [v6 sendSegmentDataToAdPlatforms:v5 completionHandler:v4];
}

- (void)sendPersonalizedAdsStatusToAdPlatforms:()Private
{
  v4 = a3;
  v6 = +[ADPersonalizedAdsStatusManager sharedInstance];
  v5 = [a1 DSID];
  [v6 sendPersonalizedAdsStatusToAdPlatforms:v5 completionHandler:v4];
}

- (BOOL)isEqual:()Private
{
  v4 = a3;
  if (v4 == a1)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [a1 DSID];
      v7 = [v5 DSID];
      v8 = [v6 isEqualToString:v7];

      if (!v8)
      {
        goto LABEL_33;
      }

      v9 = [a1 ADIDRecords];
      v10 = [v5 ADIDRecords];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }

      v12 = [a1 segmentData];
      if (v12)
      {
        v13 = v12;
        v14 = [v5 segmentData];
        if (v14)
        {
          v15 = v14;
          v16 = [a1 segmentData];
          v17 = [v5 segmentData];
          v18 = [v16 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v20 = [a1 accountIsT13];
      if (v20 != [v5 accountIsT13])
      {
        goto LABEL_33;
      }

      v21 = [a1 accountIsU18];
      if (v21 != [v5 accountIsU18])
      {
        goto LABEL_33;
      }

      v22 = [a1 accountIsU13];
      if (v22 != [v5 accountIsU13])
      {
        goto LABEL_33;
      }

      v23 = [a1 sensitiveContentEligible];
      if (v23 != [v5 sensitiveContentEligible])
      {
        goto LABEL_33;
      }

      v24 = [a1 isProtoU13];
      if (v24 != [v5 isProtoU13])
      {
        goto LABEL_33;
      }

      v25 = [a1 isProtoTeen];
      if (v25 != [v5 isProtoTeen])
      {
        goto LABEL_33;
      }

      v26 = [a1 effectiveBirthYear];
      if (v26 != [v5 effectiveBirthYear])
      {
        goto LABEL_33;
      }

      v27 = [a1 actualBirthYear];
      if (v27 != [v5 actualBirthYear])
      {
        goto LABEL_33;
      }

      v28 = [a1 iso3166Code];
      if (v28)
      {
        v29 = v28;
        v30 = [v5 iso3166Code];
        if (v30)
        {
          v31 = v30;
          v32 = [a1 iso3166Code];
          v33 = [v5 iso3166Code];
          v34 = [v32 isEqualToString:v33];

          if (!v34)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v35 = [a1 noiseAppliedVersion];
      if (v35 == [v5 noiseAppliedVersion])
      {
        v36 = [a1 lastSentPersonalizedAdsStatus];
        if (v36 == [v5 lastSentPersonalizedAdsStatus])
        {
          v37 = [a1 personalizedAdsTimestamp];
          if (v37 == [v5 personalizedAdsTimestamp])
          {
            v38 = [a1 lastSentSegmentDataTimestamp];
            if (v38 == [v5 lastSentSegmentDataTimestamp])
            {
              v39 = [a1 segmentDataTimestamp];
              if (v39 == [v5 segmentDataTimestamp])
              {
                v40 = [a1 lastSentPersonalizedAdsTimestamp];
                if (v40 == [v5 lastSentPersonalizedAdsTimestamp])
                {
                  v41 = [a1 lastSegmentServedTimestamp];
                  if (v41 == [v5 lastSegmentServedTimestamp])
                  {
                    v42 = [a1 deviceIDRotationTimestamp];
                    v19 = v42 == [v5 deviceIDRotationTimestamp];
LABEL_34:

                    goto LABEL_35;
                  }
                }
              }
            }
          }
        }
      }

LABEL_33:
      v19 = 0;
      goto LABEL_34;
    }

    v19 = 0;
  }

LABEL_35:

  return v19;
}

@end