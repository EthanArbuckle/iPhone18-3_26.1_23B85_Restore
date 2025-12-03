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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aDIDRecords = [selfCopy ADIDRecords];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [aDIDRecords objectForKeyedSubscript:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [selfCopy idForClientType:a3];
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
  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)removeIDForClientType:()Private
{
  obj = self;
  objc_sync_enter(obj);
  aDIDRecords = [obj ADIDRecords];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [aDIDRecords objectForKeyedSubscript:v5];

  if (v6)
  {
    aDIDRecords2 = [obj ADIDRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [aDIDRecords2 removeObjectForKey:v8];

    [obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)ensureiAdIDs
{
  obj = self;
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
      aDIDRecords = [obj ADIDRecords];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:j];
      [aDIDRecords setObject:v4 forKeyedSubscript:v6];

      v7 = MEMORY[0x277CCACA8];
      aDIDRecords2 = [obj ADIDRecords];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:j];
      v10 = [aDIDRecords2 objectForKeyedSubscript:v9];
      dSID = [obj DSID];
      v12 = ClientTypeToString();
      v13 = [v7 stringWithFormat:@"Generated ID %@ for DSID %@ and client type %ld(%@)", v10, dSID, j, v12];
      _ADLog();
    }

    [obj setLastSentSegmentDataTimestamp:0];
    v14 = objc_alloc_init(MEMORY[0x277CE9660]);
    aDIDRecords3 = [obj ADIDRecords];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    [aDIDRecords3 setObject:v14 forKeyedSubscript:v16];

    v17 = MEMORY[0x277CCACA8];
    aDIDRecords4 = [obj ADIDRecords];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:6];
    v20 = [aDIDRecords4 objectForKeyedSubscript:v19];
    dSID2 = [obj DSID];
    v22 = ClientTypeToString();
    v23 = [v17 stringWithFormat:@"Generated ID %@ for DSID %@ and client type %ld(%@)", v20, dSID2, 6, v22];
    _ADLog();

    date = [MEMORY[0x277CBEAA8] date];
    [obj setDeviceIDRotationTimestamp:{objc_msgSend(date, "AD_toSinceReferenceTime")}];
  }

  objc_sync_exit(obj);
}

- (BOOL)resetDeviceNewsPlusSubscriberIDIfNeeded
{
  date = [MEMORY[0x277CBEAA8] date];
  aD_toSinceReferenceTime = [date AD_toSinceReferenceTime];

  v4 = aD_toSinceReferenceTime - [self deviceIDRotationTimestamp];
  if (v4 <= 86399)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"It has not yet been 24 hours since deviceID was rotated. Last rotated at %d", objc_msgSend(self, "deviceIDRotationTimestamp")];
    _ADLog();
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = MEMORY[0x277CCACA8];
    dSID = [selfCopy DSID];
    v8 = [v6 stringWithFormat:@"Resetting deviceNewsPlusSubscriberID at time %d for DSID record %@.", aD_toSinceReferenceTime, dSID];
    _ADLog();

    aDIDRecords = [selfCopy ADIDRecords];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__DSIDRecord_Private__resetDeviceNewsPlusSubscriberIDIfNeeded__block_invoke;
    v12[3] = &unk_278C582E0;
    v12[4] = selfCopy;
    [aDIDRecords enumerateKeysAndObjectsUsingBlock:v12];

    [selfCopy setDeviceIDRotationTimestamp:aD_toSinceReferenceTime];
    objc_sync_exit(selfCopy);
  }

  return v4 > 86399;
}

- (uint64_t)isActiveRecord
{
  dSID = [self DSID];
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
  dSID2 = [activeDSIDRecord DSID];
  v5 = [dSID isEqualToString:dSID2];

  return v5;
}

- (void)retrieveSegmentDataFromiTunes:()Private
{
  v4 = a3;
  v6 = +[ADSegmentDataManager sharedInstance];
  dSID = [self DSID];
  [v6 retrieveSegmentData:dSID forceSegments:0 completionHandler:v4];
}

- (void)sendSegmentDataToAdPlatforms:()Private
{
  v4 = a3;
  v6 = +[ADSegmentDataManager sharedInstance];
  dSID = [self DSID];
  [v6 sendSegmentDataToAdPlatforms:dSID completionHandler:v4];
}

- (void)sendPersonalizedAdsStatusToAdPlatforms:()Private
{
  v4 = a3;
  v6 = +[ADPersonalizedAdsStatusManager sharedInstance];
  dSID = [self DSID];
  [v6 sendPersonalizedAdsStatusToAdPlatforms:dSID completionHandler:v4];
}

- (BOOL)isEqual:()Private
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      dSID = [self DSID];
      dSID2 = [v5 DSID];
      v8 = [dSID isEqualToString:dSID2];

      if (!v8)
      {
        goto LABEL_33;
      }

      aDIDRecords = [self ADIDRecords];
      aDIDRecords2 = [v5 ADIDRecords];
      v11 = [aDIDRecords isEqual:aDIDRecords2];

      if (!v11)
      {
        goto LABEL_33;
      }

      segmentData = [self segmentData];
      if (segmentData)
      {
        v13 = segmentData;
        segmentData2 = [v5 segmentData];
        if (segmentData2)
        {
          v15 = segmentData2;
          segmentData3 = [self segmentData];
          segmentData4 = [v5 segmentData];
          v18 = [segmentData3 isEqualToString:segmentData4];

          if (!v18)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      accountIsT13 = [self accountIsT13];
      if (accountIsT13 != [v5 accountIsT13])
      {
        goto LABEL_33;
      }

      accountIsU18 = [self accountIsU18];
      if (accountIsU18 != [v5 accountIsU18])
      {
        goto LABEL_33;
      }

      accountIsU13 = [self accountIsU13];
      if (accountIsU13 != [v5 accountIsU13])
      {
        goto LABEL_33;
      }

      sensitiveContentEligible = [self sensitiveContentEligible];
      if (sensitiveContentEligible != [v5 sensitiveContentEligible])
      {
        goto LABEL_33;
      }

      isProtoU13 = [self isProtoU13];
      if (isProtoU13 != [v5 isProtoU13])
      {
        goto LABEL_33;
      }

      isProtoTeen = [self isProtoTeen];
      if (isProtoTeen != [v5 isProtoTeen])
      {
        goto LABEL_33;
      }

      effectiveBirthYear = [self effectiveBirthYear];
      if (effectiveBirthYear != [v5 effectiveBirthYear])
      {
        goto LABEL_33;
      }

      actualBirthYear = [self actualBirthYear];
      if (actualBirthYear != [v5 actualBirthYear])
      {
        goto LABEL_33;
      }

      iso3166Code = [self iso3166Code];
      if (iso3166Code)
      {
        v29 = iso3166Code;
        iso3166Code2 = [v5 iso3166Code];
        if (iso3166Code2)
        {
          v31 = iso3166Code2;
          iso3166Code3 = [self iso3166Code];
          iso3166Code4 = [v5 iso3166Code];
          v34 = [iso3166Code3 isEqualToString:iso3166Code4];

          if (!v34)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      noiseAppliedVersion = [self noiseAppliedVersion];
      if (noiseAppliedVersion == [v5 noiseAppliedVersion])
      {
        lastSentPersonalizedAdsStatus = [self lastSentPersonalizedAdsStatus];
        if (lastSentPersonalizedAdsStatus == [v5 lastSentPersonalizedAdsStatus])
        {
          personalizedAdsTimestamp = [self personalizedAdsTimestamp];
          if (personalizedAdsTimestamp == [v5 personalizedAdsTimestamp])
          {
            lastSentSegmentDataTimestamp = [self lastSentSegmentDataTimestamp];
            if (lastSentSegmentDataTimestamp == [v5 lastSentSegmentDataTimestamp])
            {
              segmentDataTimestamp = [self segmentDataTimestamp];
              if (segmentDataTimestamp == [v5 segmentDataTimestamp])
              {
                lastSentPersonalizedAdsTimestamp = [self lastSentPersonalizedAdsTimestamp];
                if (lastSentPersonalizedAdsTimestamp == [v5 lastSentPersonalizedAdsTimestamp])
                {
                  lastSegmentServedTimestamp = [self lastSegmentServedTimestamp];
                  if (lastSegmentServedTimestamp == [v5 lastSegmentServedTimestamp])
                  {
                    deviceIDRotationTimestamp = [self deviceIDRotationTimestamp];
                    v19 = deviceIDRotationTimestamp == [v5 deviceIDRotationTimestamp];
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