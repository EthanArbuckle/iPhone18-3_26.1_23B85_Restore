@interface DSIDRecord
- (BOOL)iAdIDRecordsDirty;
- (BOOL)isPlaceholderAccount;
- (BOOL)isRestrictedByApple;
- (BOOL)shouldSendNotification;
- (DSIDRecord)initWithDSID:(id)a3 serializedRecord:(id)a4 version:(int)a5;
- (id)_parseItunesFlags;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)encryptedIDForClientType:(int64_t)a3;
- (id)idAccountsDictionaryRepresentation;
- (id)idForClientType:(int64_t)a3;
- (void)setAccountAgeUnknown:(BOOL)a3;
- (void)setAccountIsT13:(BOOL)a3;
- (void)setAccountIsU13:(BOOL)a3;
- (void)setAccountIsU18:(BOOL)a3;
- (void)setActualBirthYear:(int)a3;
- (void)setDeviceIDRotationTimestamp:(int)a3;
- (void)setDirty:(BOOL)a3;
- (void)setEffectiveBirthYear:(int)a3;
- (void)setID:(id)a3 forClientType:(int64_t)a4;
- (void)setIsDPIDLocal:(BOOL)a3;
- (void)setIsDPIDManatee:(BOOL)a3;
- (void)setIsProtoTeen:(BOOL)a3;
- (void)setIsProtoU13:(BOOL)a3;
- (void)setIso3166Code:(id)a3;
- (void)setLastJingleAccountStatus:(int64_t)a3;
- (void)setLastSegmentServedTimestamp:(int)a3;
- (void)setLastSentPersonalizedAdsStatus:(BOOL)a3;
- (void)setLastSentPersonalizedAdsTimestamp:(int)a3;
- (void)setLastSentSegmentDataTimestamp:(int)a3;
- (void)setNextReconcileTimestamp:(int)a3;
- (void)setNoiseAppliedVersion:(int)a3;
- (void)setPersonalizedAdsTimestamp:(int)a3;
- (void)setSegmentData:(id)a3;
- (void)setSegmentDataTimestamp:(int)a3;
- (void)setSensitiveContentEligible:(BOOL)a3;
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
  v9 = [(DSIDRecord *)self _parseItunesFlags];
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v9];
  [v10 setValue:v3 forKey:@"deviceNewsPlusSubscriberID"];
  [v10 setValue:v4 forKey:@"anonymousDemandID"];
  [v10 setValue:v5 forKey:@"contentID"];
  [v10 setValue:v6 forKey:@"toroID"];
  [v10 setValue:v7 forKey:@"DPID"];
  [v10 setValue:v8 forKey:@"iAdID"];
  v11 = [(DSIDRecord *)self segmentData];
  [v10 setValue:v11 forKey:@"segmentData"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];

  return v12;
}

- (id)_parseItunesFlags
{
  v34[14] = *MEMORY[0x277D85DE8];
  v3 = [(DSIDRecord *)self DSID];
  v31 = [(DSIDRecord *)self iCloudDSID];
  v32 = v3;
  v4 = [v3 isEqualToString:?];
  v5 = [(DSIDRecord *)self accountAgeUnknown];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = [(DSIDRecord *)self accountIsU13];
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
  v30 = [(DSIDRecord *)self DSID];
  v34[0] = v30;
  v33[1] = @"isChild";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v34[1] = v29;
  v33[2] = @"isAdolescent";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v34[2] = v28;
  v33[3] = @"isAdult";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v34[3] = v27;
  v33[4] = @"ageUnknown";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v34[4] = v26;
  v33[5] = @"isiCloudLoggedIn";
  v9 = MEMORY[0x277CCABB0];
  v25 = [(DSIDRecord *)self iCloudDSID];
  v24 = [v9 numberWithInt:v25 != 0];
  v34[5] = v24;
  v33[6] = @"isiTunesLoggedIn";
  v10 = MEMORY[0x277CCABB0];
  v22 = [(DSIDRecord *)self DSID];
  v11 = [v10 numberWithInt:v22 != 0];
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

- (DSIDRecord)initWithDSID:(id)a3 serializedRecord:(id)a4 version:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v58.receiver = self;
    v58.super_class = DSIDRecord;
    v10 = [(DSIDRecord *)&v58 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_DSID, a3);
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      ADIDRecords = v11->_ADIDRecords;
      v11->_ADIDRecords = v12;

      v11->_lastJingleAccountStatus = -1;
      if (v9)
      {
        v14 = [v9 valueForKey:@"kADDSIDRecord_AccountIs13Key"];
        v11->_accountIsT13 = [v14 BOOLValue];

        v15 = [v9 valueForKey:@"kADDSIDRecord_AccountIsU13Key"];
        v11->_accountIsU13 = [v15 BOOLValue];

        v16 = [v9 valueForKey:@"kADDSIDRecord_AccountIsU18Key"];
        v11->_accountIsU18 = [v16 BOOLValue];

        v17 = [v9 valueForKey:@"kADDSIDRecord_AccountAgeUnknownKey"];
        v11->_accountAgeUnknown = [v17 BOOLValue];

        v18 = [v9 valueForKey:@"kADDSIDRecord_SensitiveContentEligibleKey"];
        v11->_sensitiveContentEligible = [v18 BOOLValue];

        v19 = [v9 valueForKey:@"kADDSIDRecord_AccountIsProtoU13Key"];
        v11->_isProtoU13 = [v19 BOOLValue];

        v20 = [v9 valueForKey:@"kADDSIDRecord_AccountIsProtoTeenKey"];
        v11->_isProtoTeen = [v20 BOOLValue];

        v21 = [v9 valueForKey:@"kADDSIDRecord_EffectiveBirthYearKey"];
        v11->_effectiveBirthYear = [v21 intValue];

        v22 = [v9 valueForKey:@"kADDSIDRecord_ActualBirthYearKey"];
        v11->_actualBirthYear = [v22 intValue];

        v23 = [v9 valueForKey:@"kADDSIDRecord_ISO3166CodeKey"];
        iso3166Code = v11->_iso3166Code;
        v11->_iso3166Code = v23;

        v25 = [v9 valueForKey:@"kADDSIDRecord_NoiseAppliedVersionKey"];
        v11->_noiseAppliedVersion = [v25 intValue];

        v26 = [v9 valueForKey:@"kADDSIDRecord_IsDPIDManatee"];
        v11->_isDPIDManatee = [v26 BOOLValue];

        v27 = [v9 valueForKey:@"kADDSIDRecord_IsDPIDLocal"];
        v11->_isDPIDLocal = [v27 BOOLValue];

        v28 = [v9 valueForKey:@"kADDSIDRecord_PersonalizedAdsTimestampKey"];
        v11->_personalizedAdsTimestamp = [v28 intValue];

        v29 = [v9 valueForKey:@"kADDSIDRecord_LastJingleAccountStatusKey"];
        v11->_lastJingleAccountStatus = [v29 integerValue];

        v30 = [v9 valueForKey:@"kADiAdIDRecord_LastSentPersonalizedAdsStatusKey"];
        v11->_lastSentPersonalizedAdsStatus = [v30 BOOLValue];

        v31 = [v9 valueForKey:@"kADiAdIDRecord_LastSentPersonalizedAdsTimestampKey"];
        v11->_lastSentPersonalizedAdsTimestamp = [v31 intValue];

        v32 = [v9 valueForKey:@"kADDSIDRecord_SegmentDataTimestampKey"];
        v11->_segmentDataTimestamp = [v32 intValue];

        v33 = [v9 valueForKey:@"kADiAdIDRecord_LastSentSegmentDataTimestampKey"];
        v11->_lastSentSegmentDataTimestamp = [v33 intValue];

        v34 = [v9 valueForKey:@"kADiAdIDRecord_LastSegmentServedTimestampKey"];
        v11->_lastSegmentServedTimestamp = [v34 intValue];

        v35 = [v9 valueForKey:@"kADiAdIDRecord_NextReconcileTimestamp"];
        v11->_nextReconcileTimestamp = [v35 intValue];

        v36 = [v9 valueForKey:@"kADDSIDRecord_DeviceIDRotationTimestampKey"];
        v11->_deviceIDRotationTimestamp = [v36 intValue];

        v37 = +[ADCoreDefaults sharedInstance];
        v38 = [v37 BOOLForKey:@"EnableCustomPayload"];

        if (v38)
        {
          v39 = +[ADCoreSettings sharedInstance];
          v40 = [v39 customJinglePayload];
          segmentData = v11->_segmentData;
          v11->_segmentData = v40;

          v42 = @"CUSTOM";
        }

        else
        {
          v44 = [v9 valueForKey:@"kADDSIDRecord_SegmentDataKey"];
          v39 = v11->_segmentData;
          v11->_segmentData = v44;
          v42 = @"ACTUAL";
        }

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving the %@ segment payload with data: %@", v42, v11->_segmentData];
        _ADLog(@"iAdIDLogging", v45, 0);

        v46 = [v9 valueForKey:@"kADDSIDRecord_iAdIDRecordsKey"];
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
    v43 = self;
  }

  else
  {
    v43 = 0;
  }

  return v43;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(DSIDRecord *)v6 DSID];
    v8 = [v7 copyWithZone:a3];
    [v5 setDSID:v8];

    [v5 setAccountIsT13:{-[DSIDRecord accountIsT13](v6, "accountIsT13")}];
    [v5 setAccountIsU13:{-[DSIDRecord accountIsU13](v6, "accountIsU13")}];
    [v5 setAccountIsU18:{-[DSIDRecord accountIsU18](v6, "accountIsU18")}];
    [v5 setAccountAgeUnknown:{-[DSIDRecord accountAgeUnknown](v6, "accountAgeUnknown")}];
    [v5 setSensitiveContentEligible:{-[DSIDRecord sensitiveContentEligible](v6, "sensitiveContentEligible")}];
    [v5 setIsProtoU13:{-[DSIDRecord isProtoU13](v6, "isProtoU13")}];
    [v5 setIsProtoTeen:{-[DSIDRecord isProtoTeen](v6, "isProtoTeen")}];
    [v5 setEffectiveBirthYear:{-[DSIDRecord effectiveBirthYear](v6, "effectiveBirthYear")}];
    [v5 setActualBirthYear:{-[DSIDRecord actualBirthYear](v6, "actualBirthYear")}];
    v9 = [(DSIDRecord *)v6 iso3166Code];
    [v5 setIso3166Code:v9];

    [v5 setNoiseAppliedVersion:{-[DSIDRecord noiseAppliedVersion](v6, "noiseAppliedVersion")}];
    v10 = [(DSIDRecord *)v6 ADIDRecords];
    v11 = [v10 mutableCopyWithZone:a3];
    [v5 setADIDRecords:v11];

    [v5 setLastJingleAccountStatus:{-[DSIDRecord lastJingleAccountStatus](v6, "lastJingleAccountStatus")}];
    [v5 setPersonalizedAdsTimestamp:{-[DSIDRecord personalizedAdsTimestamp](v6, "personalizedAdsTimestamp")}];
    [v5 setLastSentPersonalizedAdsStatus:{-[DSIDRecord lastSentPersonalizedAdsStatus](v6, "lastSentPersonalizedAdsStatus")}];
    v12 = [(DSIDRecord *)v6 segmentData];
    v13 = [v12 copyWithZone:a3];
    [v5 setSegmentData:v13];

    [v5 setSegmentDataTimestamp:{-[DSIDRecord segmentDataTimestamp](v6, "segmentDataTimestamp")}];
    [v5 setLastSentPersonalizedAdsTimestamp:{-[DSIDRecord lastSentPersonalizedAdsTimestamp](v6, "lastSentPersonalizedAdsTimestamp")}];
    [v5 setLastSentSegmentDataTimestamp:{-[DSIDRecord lastSentSegmentDataTimestamp](v6, "lastSentSegmentDataTimestamp")}];
    [v5 setLastSegmentServedTimestamp:{-[DSIDRecord lastSegmentServedTimestamp](v6, "lastSegmentServedTimestamp")}];
    [v5 setNextReconcileTimestamp:{-[DSIDRecord nextReconcileTimestamp](v6, "nextReconcileTimestamp")}];
    [v5 setDeviceIDRotationTimestamp:{-[DSIDRecord deviceIDRotationTimestamp](v6, "deviceIDRotationTimestamp")}];
    objc_sync_exit(v6);
  }

  return v5;
}

- (id)idForClientType:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  ADIDRecords = v4->_ADIDRecords;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)ADIDRecords objectForKeyedSubscript:v6];
  v8 = [v7 ID];

  objc_sync_exit(v4);

  return v8;
}

- (void)setID:(id)a3 forClientType:(int64_t)a4
{
  v10 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [[ADIDRecord alloc] initWithID:v10];
  v8 = [(DSIDRecord *)v6 ADIDRecords];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v8 setObject:v7 forKeyedSubscript:v9];

  objc_sync_exit(v6);
}

- (id)encryptedIDForClientType:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  ADIDRecords = v4->_ADIDRecords;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)ADIDRecords objectForKeyedSubscript:v6];

  v8 = [v7 encryptedID];

  objc_sync_exit(v4);

  return v8;
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

  v13 = [(DSIDRecord *)self iso3166Code];
  [v3 setObject:v13 forKeyedSubscript:@"kADDSIDRecord_ISO3166CodeKey"];

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

  v21 = [(DSIDRecord *)self segmentData];
  [v3 setObject:v21 forKeyedSubscript:@"kADDSIDRecord_SegmentDataKey"];

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
  v27 = self;
  objc_sync_enter(v27);
  ADIDRecords = v27->_ADIDRecords;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __38__DSIDRecord_dictionaryRepresentation__block_invoke;
  v30[3] = &unk_278C550C0;
  v30[4] = &v31;
  [(NSMutableDictionary *)ADIDRecords enumerateKeysAndObjectsUsingBlock:v30];
  objc_sync_exit(v27);

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
    v3 = 1;
  }

  else
  {
    v5 = +[ADCoreSettings sharedInstance];
    if ([v5 educationModeEnabled])
    {
      v3 = 1;
    }

    else
    {
      v6 = +[ADCoreSettings sharedInstance];
      if ([v6 isProtoU13state])
      {
        v3 = 1;
      }

      else
      {
        v7 = +[ADCoreSettings sharedInstance];
        v3 = [v7 isProtoTeenState];
      }
    }
  }

  return v3;
}

- (void)setDirty:(BOOL)a3
{
  self->_dirty = a3;
  if (!a3)
  {
    v4 = [(DSIDRecord *)self ADIDRecords];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __23__DSIDRecord_setDirty___block_invoke;
    v5[3] = &__block_descriptor_33_e37_v32__0__NSNumber_8__ADIDRecord_16_B24l;
    v6 = a3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
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
  v2 = [(DSIDRecord *)self ADIDRecords];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DSIDRecord_iAdIDRecordsDirty__block_invoke;
  v4[3] = &unk_278C550C0;
  v4[4] = &v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
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

- (void)setAccountIsU13:(BOOL)a3
{
  if (self->_accountIsU13 != a3)
  {
    self->_accountIsU13 = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountIsT13:(BOOL)a3
{
  if (self->_accountIsT13 != a3)
  {
    self->_accountIsT13 = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountIsU18:(BOOL)a3
{
  if (self->_accountIsU18 != a3)
  {
    self->_accountIsU18 = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setAccountAgeUnknown:(BOOL)a3
{
  if (self->_accountAgeUnknown != a3)
  {
    self->_accountAgeUnknown = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setSensitiveContentEligible:(BOOL)a3
{
  if (self->_sensitiveContentEligible != a3)
  {
    self->_sensitiveContentEligible = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsProtoU13:(BOOL)a3
{
  if (self->_isProtoU13 != a3)
  {
    self->_isProtoU13 = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsProtoTeen:(BOOL)a3
{
  if (self->_isProtoTeen != a3)
  {
    self->_isProtoTeen = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setEffectiveBirthYear:(int)a3
{
  if (self->_effectiveBirthYear != a3)
  {
    self->_effectiveBirthYear = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setActualBirthYear:(int)a3
{
  if (self->_actualBirthYear != a3)
  {
    self->_actualBirthYear = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIso3166Code:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_iso3166Code isEqualToString:?])
  {
    objc_storeStrong(&self->_iso3166Code, a3);
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setNoiseAppliedVersion:(int)a3
{
  if (self->_noiseAppliedVersion != a3)
  {
    self->_noiseAppliedVersion = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsDPIDManatee:(BOOL)a3
{
  if (self->_isDPIDManatee != a3)
  {
    self->_isDPIDManatee = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setIsDPIDLocal:(BOOL)a3
{
  if (self->_isDPIDLocal != a3)
  {
    self->_isDPIDLocal = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentPersonalizedAdsStatus:(BOOL)a3
{
  if (self->_lastSentPersonalizedAdsStatus != a3)
  {
    self->_lastSentPersonalizedAdsStatus = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentPersonalizedAdsTimestamp:(int)a3
{
  if (self->_lastSentPersonalizedAdsTimestamp != a3)
  {
    self->_lastSentPersonalizedAdsTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastJingleAccountStatus:(int64_t)a3
{
  if (self->_lastJingleAccountStatus != a3)
  {
    self->_lastJingleAccountStatus = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setSegmentData:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_segmentData isEqualToString:?])
  {
    objc_storeStrong(&self->_segmentData, a3);
    [(DSIDRecord *)self setDirty:1];
    [(DSIDRecord *)self setNotificationRequired:1];
  }
}

- (void)setSegmentDataTimestamp:(int)a3
{
  if (self->_segmentDataTimestamp != a3)
  {
    self->_segmentDataTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSentSegmentDataTimestamp:(int)a3
{
  if (self->_lastSentSegmentDataTimestamp != a3)
  {
    self->_lastSentSegmentDataTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setLastSegmentServedTimestamp:(int)a3
{
  if (self->_lastSegmentServedTimestamp != a3)
  {
    self->_lastSegmentServedTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setPersonalizedAdsTimestamp:(int)a3
{
  if (self->_personalizedAdsTimestamp != a3)
  {
    self->_personalizedAdsTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setDeviceIDRotationTimestamp:(int)a3
{
  if (self->_deviceIDRotationTimestamp != a3)
  {
    self->_deviceIDRotationTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

- (void)setNextReconcileTimestamp:(int)a3
{
  if (self->_nextReconcileTimestamp != a3)
  {
    self->_nextReconcileTimestamp = a3;
    [(DSIDRecord *)self setDirty:1];
  }
}

@end