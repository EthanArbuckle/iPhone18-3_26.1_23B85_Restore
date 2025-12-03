@interface DSIDRecord
- (BOOL)iAdIDRecordsDirty;
- (BOOL)isPlaceholderAccount;
- (BOOL)isRestrictedByApple;
- (BOOL)shouldSendNotification;
- (DSIDRecord)initWithDSID:(id)d serializedRecord:(id)record version:(int)version;
- (id)_parseItunesFlags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)encryptedIDForClientType:(int64_t)type;
- (id)idAccountsDictionaryRepresentation;
- (id)idForClientType:(int64_t)type;
- (void)setAccountAgeUnknown:(BOOL)unknown;
- (void)setAccountIsT13:(BOOL)t13;
- (void)setAccountIsU13:(BOOL)u13;
- (void)setAccountIsU18:(BOOL)u18;
- (void)setActualBirthYear:(int)year;
- (void)setDeviceIDRotationTimestamp:(int)timestamp;
- (void)setDirty:(BOOL)dirty;
- (void)setEffectiveBirthYear:(int)year;
- (void)setID:(id)d forClientType:(int64_t)type;
- (void)setIsDPIDLocal:(BOOL)local;
- (void)setIsDPIDManatee:(BOOL)manatee;
- (void)setIsProtoTeen:(BOOL)teen;
- (void)setIsProtoU13:(BOOL)u13;
- (void)setIso3166Code:(id)code;
- (void)setLastJingleAccountStatus:(int64_t)status;
- (void)setLastSegmentServedTimestamp:(int)timestamp;
- (void)setLastSentPersonalizedAdsStatus:(BOOL)status;
- (void)setLastSentPersonalizedAdsTimestamp:(int)timestamp;
- (void)setLastSentSegmentDataTimestamp:(int)timestamp;
- (void)setNextReconcileTimestamp:(int)timestamp;
- (void)setNoiseAppliedVersion:(int)version;
- (void)setPersonalizedAdsTimestamp:(int)timestamp;
- (void)setSegmentData:(id)data;
- (void)setSegmentDataTimestamp:(int)timestamp;
- (void)setSensitiveContentEligible:(BOOL)eligible;
@end

@implementation DSIDRecord

- (id)idAccountsDictionaryRepresentation
{
  v3 = [(DSIDRecord *)self idForClientType:6];
  v4 = [(DSIDRecord *)self idForClientType:2];
  v5 = [(DSIDRecord *)self idForClientType:3];
  v6 = [(DSIDRecord *)self idForClientType:4];
  v7 = [(DSIDRecord *)self idForClientType:5];
  v8 = [(DSIDRecord *)self idForClientType:0];
  _parseItunesFlags = [(DSIDRecord *)self _parseItunesFlags];
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:_parseItunesFlags];
  [v10 setValue:v3 forKey:@"deviceNewsPlusSubscriberID"];
  [v10 setValue:v4 forKey:@"anonymousDemandID"];
  [v10 setValue:v5 forKey:@"contentID"];
  [v10 setValue:v6 forKey:@"toroID"];
  [v10 setValue:v7 forKey:@"DPID"];
  [v10 setValue:v8 forKey:@"iAdID"];
  segmentData = [(DSIDRecord *)self segmentData];
  [v10 setValue:segmentData forKey:@"segmentData"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];

  return v12;
}

- (id)_parseItunesFlags
{
  v34[14] = *MEMORY[0x277D85DE8];
  dSID = [(DSIDRecord *)self DSID];
  iCloudDSID = [(DSIDRecord *)self iCloudDSID];
  v32 = dSID;
  v4 = [dSID isEqualToString:?];
  accountAgeUnknown = [(DSIDRecord *)self accountAgeUnknown];
  if (accountAgeUnknown)
  {
    v6 = 0;
    v7 = 0;
    accountIsU13 = 0;
  }

  else
  {
    accountIsU13 = [(DSIDRecord *)self accountIsU13];
    if ([(DSIDRecord *)self accountIsU18]&& [(DSIDRecord *)self accountIsT13])
    {
      v7 = 1;
    }

    else if ([(DSIDRecord *)self accountIsU18]&& ![(DSIDRecord *)self accountIsT13])
    {
      v7 = [(DSIDRecord *)self accountIsU13]^ 1;
    }

    else
    {
      v7 = 0;
    }

    if ([(DSIDRecord *)self accountAgeUnknown]|| [(DSIDRecord *)self accountIsU13])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(DSIDRecord *)self accountIsU18]^ 1;
    }
  }

  v23 = +[ADCoreSettings sharedInstance];
  v33[0] = @"iTunesDSID";
  dSID2 = [(DSIDRecord *)self DSID];
  v34[0] = dSID2;
  v33[1] = @"isChild";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:accountIsU13];
  v34[1] = v29;
  v33[2] = @"isAdolescent";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v34[2] = v28;
  v33[3] = @"isAdult";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v34[3] = v27;
  v33[4] = @"ageUnknown";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:accountAgeUnknown];
  v34[4] = v26;
  v33[5] = @"isiCloudLoggedIn";
  v9 = MEMORY[0x277CCABB0];
  iCloudDSID2 = [(DSIDRecord *)self iCloudDSID];
  v24 = [v9 numberWithInt:iCloudDSID2 != 0];
  v34[5] = v24;
  v33[6] = @"isiTunesLoggedIn";
  v10 = MEMORY[0x277CCABB0];
  dSID3 = [(DSIDRecord *)self DSID];
  v11 = [v10 numberWithInt:dSID3 != 0];
  v34[6] = v11;
  v33[7] = @"isiCloudSameAsiTunes";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  v34[7] = v12;
  v33[8] = @"isNoServicesRegion";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v23, "isRestrictedRegion")}];
  v34[8] = v13;
  v33[9] = @"sensitiveContentEligible";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord sensitiveContentEligible](self, "sensitiveContentEligible")}];
  v34[9] = v14;
  v33[10] = @"effectiveBirthYear";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord effectiveBirthYear](self, "effectiveBirthYear")}];
  v34[10] = v15;
  v33[11] = @"isProtoU13";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isProtoU13](self, "isProtoU13")}];
  v34[11] = v16;
  v33[12] = @"isProtoTeen";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isProtoTeen](self, "isProtoTeen")}];
  v34[12] = v17;
  v33[13] = @"actualBirthYear";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord actualBirthYear](self, "actualBirthYear")}];
  v34[13] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:14];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (DSIDRecord)initWithDSID:(id)d serializedRecord:(id)record version:(int)version
{
  dCopy = d;
  recordCopy = record;
  if (dCopy)
  {
    v58.receiver = self;
    v58.super_class = DSIDRecord;
    v10 = [(DSIDRecord *)&v58 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_DSID, d);
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      ADIDRecords = v11->_ADIDRecords;
      v11->_ADIDRecords = v12;

      v11->_lastJingleAccountStatus = -1;
      if (recordCopy)
      {
        v14 = [recordCopy valueForKey:@"kADDSIDRecord_AccountIs13Key"];
        v11->_accountIsT13 = [v14 BOOLValue];

        v15 = [recordCopy valueForKey:@"kADDSIDRecord_AccountIsU13Key"];
        v11->_accountIsU13 = [v15 BOOLValue];

        v16 = [recordCopy valueForKey:@"kADDSIDRecord_AccountIsU18Key"];
        v11->_accountIsU18 = [v16 BOOLValue];

        v17 = [recordCopy valueForKey:@"kADDSIDRecord_AccountAgeUnknownKey"];
        v11->_accountAgeUnknown = [v17 BOOLValue];

        v18 = [recordCopy valueForKey:@"kADDSIDRecord_SensitiveContentEligibleKey"];
        v11->_sensitiveContentEligible = [v18 BOOLValue];

        v19 = [recordCopy valueForKey:@"kADDSIDRecord_AccountIsProtoU13Key"];
        v11->_isProtoU13 = [v19 BOOLValue];

        v20 = [recordCopy valueForKey:@"kADDSIDRecord_AccountIsProtoTeenKey"];
        v11->_isProtoTeen = [v20 BOOLValue];

        v21 = [recordCopy valueForKey:@"kADDSIDRecord_EffectiveBirthYearKey"];
        v11->_effectiveBirthYear = [v21 intValue];

        v22 = [recordCopy valueForKey:@"kADDSIDRecord_ActualBirthYearKey"];
        v11->_actualBirthYear = [v22 intValue];

        v23 = [recordCopy valueForKey:@"kADDSIDRecord_ISO3166CodeKey"];
        iso3166Code = v11->_iso3166Code;
        v11->_iso3166Code = v23;

        v25 = [recordCopy valueForKey:@"kADDSIDRecord_NoiseAppliedVersionKey"];
        v11->_noiseAppliedVersion = [v25 intValue];

        v26 = [recordCopy valueForKey:@"kADDSIDRecord_IsDPIDManatee"];
        v11->_isDPIDManatee = [v26 BOOLValue];

        v27 = [recordCopy valueForKey:@"kADDSIDRecord_IsDPIDLocal"];
        v11->_isDPIDLocal = [v27 BOOLValue];

        v28 = [recordCopy valueForKey:@"kADDSIDRecord_PersonalizedAdsTimestampKey"];
        v11->_personalizedAdsTimestamp = [v28 intValue];

        v29 = [recordCopy valueForKey:@"kADDSIDRecord_LastJingleAccountStatusKey"];
        v11->_lastJingleAccountStatus = [v29 integerValue];

        v30 = [recordCopy valueForKey:@"kADiAdIDRecord_LastSentPersonalizedAdsStatusKey"];
        v11->_lastSentPersonalizedAdsStatus = [v30 BOOLValue];

        v31 = [recordCopy valueForKey:@"kADiAdIDRecord_LastSentPersonalizedAdsTimestampKey"];
        v11->_lastSentPersonalizedAdsTimestamp = [v31 intValue];

        v32 = [recordCopy valueForKey:@"kADDSIDRecord_SegmentDataTimestampKey"];
        v11->_segmentDataTimestamp = [v32 intValue];

        v33 = [recordCopy valueForKey:@"kADiAdIDRecord_LastSentSegmentDataTimestampKey"];
        v11->_lastSentSegmentDataTimestamp = [v33 intValue];

        v34 = [recordCopy valueForKey:@"kADiAdIDRecord_LastSegmentServedTimestampKey"];
        v11->_lastSegmentServedTimestamp = [v34 intValue];

        v35 = [recordCopy valueForKey:@"kADiAdIDRecord_NextReconcileTimestamp"];
        v11->_nextReconcileTimestamp = [v35 intValue];

        v36 = [recordCopy valueForKey:@"kADDSIDRecord_DeviceIDRotationTimestampKey"];
        v11->_deviceIDRotationTimestamp = [v36 intValue];

        v37 = +[ADCoreDefaults sharedInstance];
        v38 = [v37 BOOLForKey:@"EnableCustomPayload"];

        if (v38)
        {
          v39 = +[ADCoreSettings sharedInstance];
          customJinglePayload = [v39 customJinglePayload];
          segmentData = v11->_segmentData;
          v11->_segmentData = customJinglePayload;

          v42 = @"CUSTOM";
        }

        else
        {
          v44 = [recordCopy valueForKey:@"kADDSIDRecord_SegmentDataKey"];
          v39 = v11->_segmentData;
          v11->_segmentData = v44;
          v42 = @"ACTUAL";
        }

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving the %@ segment payload with data: %@", v42, v11->_segmentData];
        _ADLog(@"iAdIDLogging", v45, 0);

        v46 = [recordCopy valueForKey:@"kADDSIDRecord_iAdIDRecordsKey"];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __52__DSIDRecord_initWithDSID_serializedRecord_version___block_invoke;
        v56[3] = &unk_278C55098;
        v47 = v11;
        v57 = v47;
        [v46 enumerateKeysAndObjectsUsingBlock:v56];
        v55 = 0;
        v48 = GetKeychainPropertyListForKey(@"_ADClientDPIDStorageContainerKey", &v55);
        v49 = v48;
        if (!v55 && v48)
        {
          v50 = [v48 valueForKey:v11->_DSID];
          v51 = v50;
          if (v50)
          {
            v52 = [v50 valueForKey:@"ADClientDPIDRecordKey"];
            if (v52)
            {
              if ([(NSString *)v11->_DSID isEqualToString:@"0"])
              {
                v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found a DPID record for DSID 0 in keychain. Please file a radar."];
                _ADLog(@"iAdIDLogging", v53, 0);
              }

              else
              {
                [(DSIDRecord *)v47 setID:v52 forClientType:5];
              }
            }
          }
        }
      }

      [(DSIDRecord *)v11 setDirty:1];
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __52__DSIDRecord_initWithDSID_serializedRecord_version___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 valueForKey:@"kADiAdIDRecord_iAdIDKey"];
  if (v5)
  {
    [*(a1 + 32) setID:v5 forClientType:{objc_msgSend(v6, "integerValue")}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    dSID = [(DSIDRecord *)selfCopy DSID];
    v8 = [dSID copyWithZone:zone];
    [v5 setDSID:v8];

    [v5 setAccountIsT13:{-[DSIDRecord accountIsT13](selfCopy, "accountIsT13")}];
    [v5 setAccountIsU13:{-[DSIDRecord accountIsU13](selfCopy, "accountIsU13")}];
    [v5 setAccountIsU18:{-[DSIDRecord accountIsU18](selfCopy, "accountIsU18")}];
    [v5 setAccountAgeUnknown:{-[DSIDRecord accountAgeUnknown](selfCopy, "accountAgeUnknown")}];
    [v5 setSensitiveContentEligible:{-[DSIDRecord sensitiveContentEligible](selfCopy, "sensitiveContentEligible")}];
    [v5 setIsProtoU13:{-[DSIDRecord isProtoU13](selfCopy, "isProtoU13")}];
    [v5 setIsProtoTeen:{-[DSIDRecord isProtoTeen](selfCopy, "isProtoTeen")}];
    [v5 setEffectiveBirthYear:{-[DSIDRecord effectiveBirthYear](selfCopy, "effectiveBirthYear")}];
    [v5 setActualBirthYear:{-[DSIDRecord actualBirthYear](selfCopy, "actualBirthYear")}];
    iso3166Code = [(DSIDRecord *)selfCopy iso3166Code];
    [v5 setIso3166Code:iso3166Code];

    [v5 setNoiseAppliedVersion:{-[DSIDRecord noiseAppliedVersion](selfCopy, "noiseAppliedVersion")}];
    aDIDRecords = [(DSIDRecord *)selfCopy ADIDRecords];
    v11 = [aDIDRecords mutableCopyWithZone:zone];
    [v5 setADIDRecords:v11];

    [v5 setLastJingleAccountStatus:{-[DSIDRecord lastJingleAccountStatus](selfCopy, "lastJingleAccountStatus")}];
    [v5 setPersonalizedAdsTimestamp:{-[DSIDRecord personalizedAdsTimestamp](selfCopy, "personalizedAdsTimestamp")}];
    [v5 setLastSentPersonalizedAdsStatus:{-[DSIDRecord lastSentPersonalizedAdsStatus](selfCopy, "lastSentPersonalizedAdsStatus")}];
    segmentData = [(DSIDRecord *)selfCopy segmentData];
    v13 = [segmentData copyWithZone:zone];
    [v5 setSegmentData:v13];

    [v5 setSegmentDataTimestamp:{-[DSIDRecord segmentDataTimestamp](selfCopy, "segmentDataTimestamp")}];
    [v5 setLastSentPersonalizedAdsTimestamp:{-[DSIDRecord lastSentPersonalizedAdsTimestamp](selfCopy, "lastSentPersonalizedAdsTimestamp")}];
    [v5 setLastSentSegmentDataTimestamp:{-[DSIDRecord lastSentSegmentDataTimestamp](selfCopy, "lastSentSegmentDataTimestamp")}];
    [v5 setLastSegmentServedTimestamp:{-[DSIDRecord lastSegmentServedTimestamp](selfCopy, "lastSegmentServedTimestamp")}];
    [v5 setNextReconcileTimestamp:{-[DSIDRecord nextReconcileTimestamp](selfCopy, "nextReconcileTimestamp")}];
    [v5 setDeviceIDRotationTimestamp:{-[DSIDRecord deviceIDRotationTimestamp](selfCopy, "deviceIDRotationTimestamp")}];
    objc_sync_exit(selfCopy);
  }

  return v5;
}

- (id)idForClientType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ADIDRecords = selfCopy->_ADIDRecords;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)ADIDRecords objectForKeyedSubscript:v6];
  v8 = [v7 ID];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)setID:(id)d forClientType:(int64_t)type
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [[ADIDRecord alloc] initWithID:dCopy];
  aDIDRecords = [(DSIDRecord *)selfCopy ADIDRecords];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [aDIDRecords setObject:v7 forKeyedSubscript:v9];

  objc_sync_exit(selfCopy);
}

- (id)encryptedIDForClientType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ADIDRecords = selfCopy->_ADIDRecords;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [(NSMutableDictionary *)ADIDRecords objectForKeyedSubscript:v6];

  encryptedID = [v7 encryptedID];

  objc_sync_exit(selfCopy);

  return encryptedID;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DSIDRecord;
  v4 = [(DSIDRecord *)&v8 description];
  v5 = dumpObject(self);
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord accountIsU13](self, "accountIsU13")}];
  [v3 setObject:v4 forKeyedSubscript:@"kADDSIDRecord_AccountIsU13Key"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord accountIsT13](self, "accountIsT13")}];
  [v3 setObject:v5 forKeyedSubscript:@"kADDSIDRecord_AccountIs13Key"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord accountIsU18](self, "accountIsU18")}];
  [v3 setObject:v6 forKeyedSubscript:@"kADDSIDRecord_AccountIsU18Key"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord accountAgeUnknown](self, "accountAgeUnknown")}];
  [v3 setObject:v7 forKeyedSubscript:@"kADDSIDRecord_AccountAgeUnknownKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord sensitiveContentEligible](self, "sensitiveContentEligible")}];
  [v3 setObject:v8 forKeyedSubscript:@"kADDSIDRecord_SensitiveContentEligibleKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isProtoU13](self, "isProtoU13")}];
  [v3 setObject:v9 forKeyedSubscript:@"kADDSIDRecord_AccountIsProtoU13Key"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isProtoTeen](self, "isProtoTeen")}];
  [v3 setObject:v10 forKeyedSubscript:@"kADDSIDRecord_AccountIsProtoTeenKey"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord effectiveBirthYear](self, "effectiveBirthYear")}];
  [v3 setObject:v11 forKeyedSubscript:@"kADDSIDRecord_EffectiveBirthYearKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord actualBirthYear](self, "actualBirthYear")}];
  [v3 setObject:v12 forKeyedSubscript:@"kADDSIDRecord_ActualBirthYearKey"];

  iso3166Code = [(DSIDRecord *)self iso3166Code];
  [v3 setObject:iso3166Code forKeyedSubscript:@"kADDSIDRecord_ISO3166CodeKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord noiseAppliedVersion](self, "noiseAppliedVersion")}];
  [v3 setObject:v14 forKeyedSubscript:@"kADDSIDRecord_NoiseAppliedVersionKey"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isDPIDManatee](self, "isDPIDManatee")}];
  [v3 setObject:v15 forKeyedSubscript:@"kADDSIDRecord_IsDPIDManatee"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord isDPIDLocal](self, "isDPIDLocal")}];
  [v3 setObject:v16 forKeyedSubscript:@"kADDSIDRecord_IsDPIDLocal"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord personalizedAdsTimestamp](self, "personalizedAdsTimestamp")}];
  [v3 setObject:v17 forKeyedSubscript:@"kADDSIDRecord_PersonalizedAdsTimestampKey"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[DSIDRecord lastSentPersonalizedAdsStatus](self, "lastSentPersonalizedAdsStatus")}];
  [v3 setObject:v18 forKeyedSubscript:@"kADiAdIDRecord_LastSentPersonalizedAdsStatusKey"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord lastSentPersonalizedAdsTimestamp](self, "lastSentPersonalizedAdsTimestamp")}];
  [v3 setObject:v19 forKeyedSubscript:@"kADiAdIDRecord_LastSentPersonalizedAdsTimestampKey"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DSIDRecord lastJingleAccountStatus](self, "lastJingleAccountStatus")}];
  [v3 setObject:v20 forKeyedSubscript:@"kADDSIDRecord_LastJingleAccountStatusKey"];

  segmentData = [(DSIDRecord *)self segmentData];
  [v3 setObject:segmentData forKeyedSubscript:@"kADDSIDRecord_SegmentDataKey"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord segmentDataTimestamp](self, "segmentDataTimestamp")}];
  [v3 setObject:v22 forKeyedSubscript:@"kADDSIDRecord_SegmentDataTimestampKey"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord lastSentSegmentDataTimestamp](self, "lastSentSegmentDataTimestamp")}];
  [v3 setObject:v23 forKeyedSubscript:@"kADiAdIDRecord_LastSentSegmentDataTimestampKey"];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord lastSegmentServedTimestamp](self, "lastSegmentServedTimestamp")}];
  [v3 setObject:v24 forKeyedSubscript:@"kADiAdIDRecord_LastSegmentServedTimestampKey"];

  v25 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord nextReconcileTimestamp](self, "nextReconcileTimestamp")}];
  [v3 setObject:v25 forKeyedSubscript:@"kADiAdIDRecord_NextReconcileTimestamp"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:{-[DSIDRecord deviceIDRotationTimestamp](self, "deviceIDRotationTimestamp")}];
  [v3 setObject:v26 forKeyedSubscript:@"kADDSIDRecord_DeviceIDRotationTimestampKey"];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ADIDRecords = selfCopy->_ADIDRecords;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __38__DSIDRecord_dictionaryRepresentation__block_invoke;
  v30[3] = &unk_278C550C0;
  v30[4] = &v31;
  [(NSMutableDictionary *)ADIDRecords enumerateKeysAndObjectsUsingBlock:v30];
  objc_sync_exit(selfCopy);

  [v3 setObject:v32[5] forKeyedSubscript:@"kADDSIDRecord_iAdIDRecordsKey"];
  _Block_object_dispose(&v31, 8);

  return v3;
}

void __38__DSIDRecord_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 dictionaryRepresentation];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v5 stringValue];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)isPlaceholderAccount
{
  DSID = self->_DSID;
  if (DSID)
  {

    return [(NSString *)DSID isEqualToString:@"0"];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Current DSID is null!"];
    _ADLog(@"iAdIDLogging", v5, 0);

    return 1;
  }
}

- (BOOL)isRestrictedByApple
{
  if ([(DSIDRecord *)self accountIsU13]|| [(DSIDRecord *)self accountIsU18])
  {
    return 1;
  }

  v4 = +[ADCoreSettings sharedInstance];
  if ([v4 isManagedAppleID])
  {
    isProtoTeenState = 1;
  }

  else
  {
    v5 = +[ADCoreSettings sharedInstance];
    if ([v5 educationModeEnabled])
    {
      isProtoTeenState = 1;
    }

    else
    {
      v6 = +[ADCoreSettings sharedInstance];
      if ([v6 isProtoU13state])
      {
        isProtoTeenState = 1;
      }

      else
      {
        v7 = +[ADCoreSettings sharedInstance];
        isProtoTeenState = [v7 isProtoTeenState];
      }
    }
  }

  return isProtoTeenState;
}

- (void)setDirty:(BOOL)dirty
{
  self->_dirty = dirty;
  if (!dirty)
  {
    aDIDRecords = [(DSIDRecord *)self ADIDRecords];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __23__DSIDRecord_setDirty___block_invoke;
    v5[3] = &__block_descriptor_33_e37_v32__0__NSNumber_8__ADIDRecord_16_B24l;
    dirtyCopy = dirty;
    [aDIDRecords enumerateKeysAndObjectsUsingBlock:v5];
  }
}

uint64_t __23__DSIDRecord_setDirty___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 setDirty:*(a1 + 32)];
  *a4 = 0;
  return result;
}

- (BOOL)iAdIDRecordsDirty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  aDIDRecords = [(DSIDRecord *)self ADIDRecords];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DSIDRecord_iAdIDRecordsDirty__block_invoke;
  v4[3] = &unk_278C550C0;
  v4[4] = &v5;
  [aDIDRecords enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(aDIDRecords) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return aDIDRecords;
}

uint64_t __31__DSIDRecord_iAdIDRecordsDirty__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 dirty];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (BOOL)shouldSendNotification
{
  if ([(DSIDRecord *)self notificationRequired])
  {
    return 1;
  }

  return [(DSIDRecord *)self iAdIDRecordsDirty];
}

- (void)setAccountIsU13:(BOOL)u13
{
  if (self->_accountIsU13 != u13)
  {
    self->_accountIsU13 = u13;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountIsT13:(BOOL)t13
{
  if (self->_accountIsT13 != t13)
  {
    self->_accountIsT13 = t13;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountIsU18:(BOOL)u18
{
  if (self->_accountIsU18 != u18)
  {
    self->_accountIsU18 = u18;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountAgeUnknown:(BOOL)unknown
{
  if (self->_accountAgeUnknown != unknown)
  {
    self->_accountAgeUnknown = unknown;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setSensitiveContentEligible:(BOOL)eligible
{
  if (self->_sensitiveContentEligible != eligible)
  {
    self->_sensitiveContentEligible = eligible;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsProtoU13:(BOOL)u13
{
  if (self->_isProtoU13 != u13)
  {
    self->_isProtoU13 = u13;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsProtoTeen:(BOOL)teen
{
  if (self->_isProtoTeen != teen)
  {
    self->_isProtoTeen = teen;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setEffectiveBirthYear:(int)year
{
  if (self->_effectiveBirthYear != year)
  {
    self->_effectiveBirthYear = year;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setActualBirthYear:(int)year
{
  if (self->_actualBirthYear != year)
  {
    self->_actualBirthYear = year;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIso3166Code:(id)code
{
  codeCopy = code;
  if (![(NSString *)self->_iso3166Code isEqualToString:?])
  {
    objc_storeStrong(&self->_iso3166Code, code);
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setNoiseAppliedVersion:(int)version
{
  if (self->_noiseAppliedVersion != version)
  {
    self->_noiseAppliedVersion = version;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsDPIDManatee:(BOOL)manatee
{
  if (self->_isDPIDManatee != manatee)
  {
    self->_isDPIDManatee = manatee;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsDPIDLocal:(BOOL)local
{
  if (self->_isDPIDLocal != local)
  {
    self->_isDPIDLocal = local;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentPersonalizedAdsStatus:(BOOL)status
{
  if (self->_lastSentPersonalizedAdsStatus != status)
  {
    self->_lastSentPersonalizedAdsStatus = status;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentPersonalizedAdsTimestamp:(int)timestamp
{
  if (self->_lastSentPersonalizedAdsTimestamp != timestamp)
  {
    self->_lastSentPersonalizedAdsTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastJingleAccountStatus:(int64_t)status
{
  if (self->_lastJingleAccountStatus != status)
  {
    self->_lastJingleAccountStatus = status;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setSegmentData:(id)data
{
  dataCopy = data;
  if (![(NSString *)self->_segmentData isEqualToString:?])
  {
    objc_storeStrong(&self->_segmentData, data);
    [(DSIDRecord *)self setDirty:1];
    [(DSIDRecord *)self setNotificationRequired:1];
  }
}

- (void)setSegmentDataTimestamp:(int)timestamp
{
  if (self->_segmentDataTimestamp != timestamp)
  {
    self->_segmentDataTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentSegmentDataTimestamp:(int)timestamp
{
  if (self->_lastSentSegmentDataTimestamp != timestamp)
  {
    self->_lastSentSegmentDataTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSegmentServedTimestamp:(int)timestamp
{
  if (self->_lastSegmentServedTimestamp != timestamp)
  {
    self->_lastSegmentServedTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setPersonalizedAdsTimestamp:(int)timestamp
{
  if (self->_personalizedAdsTimestamp != timestamp)
  {
    self->_personalizedAdsTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setDeviceIDRotationTimestamp:(int)timestamp
{
  if (self->_deviceIDRotationTimestamp != timestamp)
  {
    self->_deviceIDRotationTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setNextReconcileTimestamp:(int)timestamp
{
  if (self->_nextReconcileTimestamp != timestamp)
  {
    self->_nextReconcileTimestamp = timestamp;
    [(DSIDRecord *)self setDirty:1];
  }
}

@end