@interface INPrivateMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivateMediaIntentData)initWithCoder:(id)a3;
- (INPrivateMediaIntentData)initWithSpeakerIDInfo:(id)a3 proxiedThirdPartyAppInfo:(id)a4 isAppAttributionRequired:(id)a5 useDialogMemoryForAttribution:(id)a6 isAppCorrection:(id)a7 fallbackUsername:(id)a8 wholeHouseAudioMetadata:(id)a9 nlConfidenceScore:(id)a10 nlConfidenceLevel:(int64_t)a11 asrConfidenceScore:(id)a12 asrConfidenceLevel:(int64_t)a13 resolvedSharedUserID:(id)a14 homeAutomationEntityProvider:(id)a15;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivateMediaIntentData

- (id)_dictionaryRepresentation
{
  v39[13] = *MEMORY[0x1E69E9840];
  speakerIDInfo = self->_speakerIDInfo;
  v37 = speakerIDInfo;
  v38[0] = @"speakerIDInfo";
  if (!speakerIDInfo)
  {
    speakerIDInfo = [MEMORY[0x1E695DFB0] null];
  }

  v30 = speakerIDInfo;
  v39[0] = speakerIDInfo;
  v38[1] = @"proxiedThirdPartyAppInfo";
  proxiedThirdPartyAppInfo = self->_proxiedThirdPartyAppInfo;
  v36 = proxiedThirdPartyAppInfo;
  if (!proxiedThirdPartyAppInfo)
  {
    proxiedThirdPartyAppInfo = [MEMORY[0x1E695DFB0] null];
  }

  v29 = proxiedThirdPartyAppInfo;
  v39[1] = proxiedThirdPartyAppInfo;
  v38[2] = @"isAppAttributionRequired";
  isAppAttributionRequired = self->_isAppAttributionRequired;
  v35 = isAppAttributionRequired;
  if (!isAppAttributionRequired)
  {
    isAppAttributionRequired = [MEMORY[0x1E695DFB0] null];
  }

  v28 = isAppAttributionRequired;
  v39[2] = isAppAttributionRequired;
  v38[3] = @"useDialogMemoryForAttribution";
  useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
  v34 = useDialogMemoryForAttribution;
  if (!useDialogMemoryForAttribution)
  {
    useDialogMemoryForAttribution = [MEMORY[0x1E695DFB0] null];
  }

  v27 = useDialogMemoryForAttribution;
  v39[3] = useDialogMemoryForAttribution;
  v38[4] = @"isAppCorrection";
  isAppCorrection = self->_isAppCorrection;
  v33 = isAppCorrection;
  if (!isAppCorrection)
  {
    isAppCorrection = [MEMORY[0x1E695DFB0] null];
  }

  v26 = isAppCorrection;
  v39[4] = isAppCorrection;
  v38[5] = @"fallbackUsername";
  fallbackUsername = self->_fallbackUsername;
  v32 = fallbackUsername;
  if (!fallbackUsername)
  {
    fallbackUsername = [MEMORY[0x1E695DFB0] null];
  }

  v25 = fallbackUsername;
  v39[5] = fallbackUsername;
  v38[6] = @"wholeHouseAudioMetadata";
  wholeHouseAudioMetadata = self->_wholeHouseAudioMetadata;
  v10 = wholeHouseAudioMetadata;
  if (!wholeHouseAudioMetadata)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v10;
  v39[6] = v10;
  v38[7] = @"nlConfidenceScore";
  nlConfidenceScore = self->_nlConfidenceScore;
  v12 = nlConfidenceScore;
  if (!nlConfidenceScore)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v39[7] = v12;
  v38[8] = @"nlConfidenceLevel";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_nlConfidenceLevel];
  v39[8] = v13;
  v38[9] = @"asrConfidenceScore";
  asrConfidenceScore = self->_asrConfidenceScore;
  v15 = asrConfidenceScore;
  if (!asrConfidenceScore)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = v15;
  v38[10] = @"asrConfidenceLevel";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_asrConfidenceLevel];
  v39[10] = v16;
  v38[11] = @"resolvedSharedUserID";
  resolvedSharedUserID = self->_resolvedSharedUserID;
  v18 = resolvedSharedUserID;
  if (!resolvedSharedUserID)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v39[11] = v18;
  v38[12] = @"homeAutomationEntityProvider";
  homeAutomationEntityProvider = self->_homeAutomationEntityProvider;
  v20 = homeAutomationEntityProvider;
  if (!homeAutomationEntityProvider)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39[12] = v20;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:13];
  if (homeAutomationEntityProvider)
  {
    if (resolvedSharedUserID)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (resolvedSharedUserID)
    {
      goto LABEL_25;
    }
  }

LABEL_25:
  if (!asrConfidenceScore)
  {
  }

  if (nlConfidenceScore)
  {
    if (wholeHouseAudioMetadata)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (wholeHouseAudioMetadata)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateMediaIntentData;
  v6 = [(INPrivateMediaIntentData *)&v11 description];
  v7 = [(INPrivateMediaIntentData *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_speakerIDInfo];
  [v7 if_setObjectIfNonNil:v8 forKey:@"speakerIDInfo"];

  v9 = [v6 encodeObject:self->_proxiedThirdPartyAppInfo];
  [v7 if_setObjectIfNonNil:v9 forKey:@"proxiedThirdPartyAppInfo"];

  v10 = [v6 encodeObject:self->_isAppAttributionRequired];
  [v7 if_setObjectIfNonNil:v10 forKey:@"isAppAttributionRequired"];

  v11 = [v6 encodeObject:self->_useDialogMemoryForAttribution];
  [v7 if_setObjectIfNonNil:v11 forKey:@"useDialogMemoryForAttribution"];

  v12 = [v6 encodeObject:self->_isAppCorrection];
  [v7 if_setObjectIfNonNil:v12 forKey:@"isAppCorrection"];

  v13 = [v6 encodeObject:self->_fallbackUsername];
  [v7 if_setObjectIfNonNil:v13 forKey:@"fallbackUsername"];

  v14 = [v6 encodeObject:self->_wholeHouseAudioMetadata];
  [v7 if_setObjectIfNonNil:v14 forKey:@"wholeHouseAudioMetadata"];

  v15 = [v6 encodeObject:self->_nlConfidenceScore];
  [v7 if_setObjectIfNonNil:v15 forKey:@"nlConfidenceScore"];

  v16 = self->_nlConfidenceLevel - 1;
  if (v16 > 2)
  {
    v17 = @"unknown";
  }

  else
  {
    v17 = off_1E7287F98[v16];
  }

  v18 = v17;
  [v7 if_setObjectIfNonNil:v18 forKey:@"nlConfidenceLevel"];

  v19 = [v6 encodeObject:self->_asrConfidenceScore];
  [v7 if_setObjectIfNonNil:v19 forKey:@"asrConfidenceScore"];

  v20 = self->_asrConfidenceLevel - 1;
  if (v20 > 2)
  {
    v21 = @"unknown";
  }

  else
  {
    v21 = off_1E7287F98[v20];
  }

  v22 = v21;
  [v7 if_setObjectIfNonNil:v22 forKey:@"asrConfidenceLevel"];

  v23 = [v6 encodeObject:self->_resolvedSharedUserID];
  [v7 if_setObjectIfNonNil:v23 forKey:@"resolvedSharedUserID"];

  v24 = [v6 encodeObject:self->_homeAutomationEntityProvider];

  [v7 if_setObjectIfNonNil:v24 forKey:@"homeAutomationEntityProvider"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  speakerIDInfo = self->_speakerIDInfo;
  v5 = a3;
  [v5 encodeObject:speakerIDInfo forKey:@"speakerIDInfo"];
  [v5 encodeObject:self->_proxiedThirdPartyAppInfo forKey:@"proxiedThirdPartyAppInfo"];
  [v5 encodeObject:self->_isAppAttributionRequired forKey:@"isAppAttributionRequired"];
  [v5 encodeObject:self->_useDialogMemoryForAttribution forKey:@"useDialogMemoryForAttribution"];
  [v5 encodeObject:self->_isAppCorrection forKey:@"isAppCorrection"];
  [v5 encodeObject:self->_fallbackUsername forKey:@"fallbackUsername"];
  [v5 encodeObject:self->_wholeHouseAudioMetadata forKey:@"wholeHouseAudioMetadata"];
  [v5 encodeObject:self->_nlConfidenceScore forKey:@"nlConfidenceScore"];
  [v5 encodeInteger:self->_nlConfidenceLevel forKey:@"nlConfidenceLevel"];
  [v5 encodeObject:self->_asrConfidenceScore forKey:@"asrConfidenceScore"];
  [v5 encodeInteger:self->_asrConfidenceLevel forKey:@"asrConfidenceLevel"];
  [v5 encodeObject:self->_resolvedSharedUserID forKey:@"resolvedSharedUserID"];
  [v5 encodeObject:self->_homeAutomationEntityProvider forKey:@"homeAutomationEntityProvider"];
}

- (INPrivateMediaIntentData)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"speakerIDInfo"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"proxiedThirdPartyAppInfo"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isAppAttributionRequired"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"useDialogMemoryForAttribution"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isAppCorrection"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackUsername"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"wholeHouseAudioMetadata"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nlConfidenceScore"];
  v8 = [v3 decodeIntegerForKey:@"nlConfidenceLevel"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"asrConfidenceScore"];
  v10 = [v3 decodeIntegerForKey:@"asrConfidenceLevel"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedSharedUserID"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"homeAutomationEntityProvider"];

  v18 = [(INPrivateMediaIntentData *)self initWithSpeakerIDInfo:v19 proxiedThirdPartyAppInfo:v14 isAppAttributionRequired:v4 useDialogMemoryForAttribution:v16 isAppCorrection:v5 fallbackUsername:v15 wholeHouseAudioMetadata:v6 nlConfidenceScore:v7 nlConfidenceLevel:v8 asrConfidenceScore:v9 asrConfidenceLevel:v10 resolvedSharedUserID:v11 homeAutomationEntityProvider:v12];
  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      speakerIDInfo = self->_speakerIDInfo;
      if (speakerIDInfo != v5->_speakerIDInfo && ![(INSpeakerIDInfo *)speakerIDInfo isEqual:?])
      {
        goto LABEL_30;
      }

      proxiedThirdPartyAppInfo = self->_proxiedThirdPartyAppInfo;
      if (proxiedThirdPartyAppInfo != v5->_proxiedThirdPartyAppInfo && ![(INAppIdentifier *)proxiedThirdPartyAppInfo isEqual:?])
      {
        goto LABEL_30;
      }

      isAppAttributionRequired = self->_isAppAttributionRequired;
      if (isAppAttributionRequired != v5->_isAppAttributionRequired && ![(NSNumber *)isAppAttributionRequired isEqual:?])
      {
        goto LABEL_30;
      }

      useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
      if (useDialogMemoryForAttribution != v5->_useDialogMemoryForAttribution && ![(NSNumber *)useDialogMemoryForAttribution isEqual:?])
      {
        goto LABEL_30;
      }

      if (((isAppCorrection = self->_isAppCorrection, isAppCorrection == v5->_isAppCorrection) || [(NSNumber *)isAppCorrection isEqual:?]) && ((fallbackUsername = self->_fallbackUsername, fallbackUsername == v5->_fallbackUsername) || [(NSString *)fallbackUsername isEqual:?]) && ((wholeHouseAudioMetadata = self->_wholeHouseAudioMetadata, wholeHouseAudioMetadata == v5->_wholeHouseAudioMetadata) || [(INWholeHouseAudioMetadata *)wholeHouseAudioMetadata isEqual:?]) && ((nlConfidenceScore = self->_nlConfidenceScore, nlConfidenceScore == v5->_nlConfidenceScore) || [(NSNumber *)nlConfidenceScore isEqual:?]) && self->_nlConfidenceLevel == v5->_nlConfidenceLevel && ((asrConfidenceScore = self->_asrConfidenceScore, asrConfidenceScore == v5->_asrConfidenceScore) || [(NSNumber *)asrConfidenceScore isEqual:?]) && self->_asrConfidenceLevel == v5->_asrConfidenceLevel && ((resolvedSharedUserID = self->_resolvedSharedUserID, resolvedSharedUserID == v5->_resolvedSharedUserID) || [(NSString *)resolvedSharedUserID isEqual:?]) && ((homeAutomationEntityProvider = self->_homeAutomationEntityProvider, homeAutomationEntityProvider == v5->_homeAutomationEntityProvider) || [(INHomeAutomationEntityProvider *)homeAutomationEntityProvider isEqual:?]))
      {
        v17 = 1;
      }

      else
      {
LABEL_30:
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(INSpeakerIDInfo *)self->_speakerIDInfo hash];
  v4 = [(INAppIdentifier *)self->_proxiedThirdPartyAppInfo hash]^ v3;
  v5 = [(NSNumber *)self->_isAppAttributionRequired hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_useDialogMemoryForAttribution hash];
  v7 = [(NSNumber *)self->_isAppCorrection hash];
  v8 = v7 ^ [(NSString *)self->_fallbackUsername hash];
  v9 = v6 ^ v8 ^ [(INWholeHouseAudioMetadata *)self->_wholeHouseAudioMetadata hash];
  v10 = [(NSNumber *)self->_nlConfidenceScore hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_nlConfidenceLevel];
  v12 = v9 ^ v10 ^ [v11 hash];
  v13 = [(NSNumber *)self->_asrConfidenceScore hash];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_asrConfidenceLevel];
  v15 = v13 ^ [v14 hash];
  v16 = v12 ^ v15 ^ [(NSString *)self->_resolvedSharedUserID hash];
  v17 = [(INHomeAutomationEntityProvider *)self->_homeAutomationEntityProvider hash];

  return v16 ^ v17;
}

- (INPrivateMediaIntentData)initWithSpeakerIDInfo:(id)a3 proxiedThirdPartyAppInfo:(id)a4 isAppAttributionRequired:(id)a5 useDialogMemoryForAttribution:(id)a6 isAppCorrection:(id)a7 fallbackUsername:(id)a8 wholeHouseAudioMetadata:(id)a9 nlConfidenceScore:(id)a10 nlConfidenceLevel:(int64_t)a11 asrConfidenceScore:(id)a12 asrConfidenceLevel:(int64_t)a13 resolvedSharedUserID:(id)a14 homeAutomationEntityProvider:(id)a15
{
  v20 = a3;
  v55 = a4;
  v54 = a5;
  v53 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v26 = a14;
  v27 = a15;
  v56.receiver = self;
  v56.super_class = INPrivateMediaIntentData;
  v28 = [(INPrivateMediaIntentData *)&v56 init];
  if (v28)
  {
    v29 = [v20 copy];
    speakerIDInfo = v28->_speakerIDInfo;
    v28->_speakerIDInfo = v29;

    v31 = [v55 copy];
    proxiedThirdPartyAppInfo = v28->_proxiedThirdPartyAppInfo;
    v28->_proxiedThirdPartyAppInfo = v31;

    v33 = [v54 copy];
    isAppAttributionRequired = v28->_isAppAttributionRequired;
    v28->_isAppAttributionRequired = v33;

    v35 = [v53 copy];
    useDialogMemoryForAttribution = v28->_useDialogMemoryForAttribution;
    v28->_useDialogMemoryForAttribution = v35;

    v37 = [v21 copy];
    isAppCorrection = v28->_isAppCorrection;
    v28->_isAppCorrection = v37;

    v39 = [v22 copy];
    fallbackUsername = v28->_fallbackUsername;
    v28->_fallbackUsername = v39;

    v41 = [v23 copy];
    wholeHouseAudioMetadata = v28->_wholeHouseAudioMetadata;
    v28->_wholeHouseAudioMetadata = v41;

    v43 = [v24 copy];
    nlConfidenceScore = v28->_nlConfidenceScore;
    v28->_nlConfidenceScore = v43;

    v28->_nlConfidenceLevel = a11;
    v45 = [v25 copy];
    asrConfidenceScore = v28->_asrConfidenceScore;
    v28->_asrConfidenceScore = v45;

    v28->_asrConfidenceLevel = a13;
    v47 = [v26 copy];
    resolvedSharedUserID = v28->_resolvedSharedUserID;
    v28->_resolvedSharedUserID = v47;

    v49 = [v27 copy];
    homeAutomationEntityProvider = v28->_homeAutomationEntityProvider;
    v28->_homeAutomationEntityProvider = v49;
  }

  return v28;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"speakerIDInfo"];
    v38 = [v7 decodeObjectOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"proxiedThirdPartyAppInfo"];
    v37 = [v7 decodeObjectOfClass:v11 from:v12];

    v36 = [v8 objectForKeyedSubscript:@"isAppAttributionRequired"];
    v35 = [v8 objectForKeyedSubscript:@"useDialogMemoryForAttribution"];
    v34 = [v8 objectForKeyedSubscript:@"isAppCorrection"];
    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"fallbackUsername"];
    v33 = [v7 decodeObjectOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"wholeHouseAudioMetadata"];
    v30 = [v7 decodeObjectOfClass:v15 from:v16];

    v31 = [v8 objectForKeyedSubscript:@"nlConfidenceScore"];
    v17 = [v8 objectForKeyedSubscript:@"nlConfidenceLevel"];
    v18 = INMediaConfidenceLevelWithString(v17);

    v29 = [v8 objectForKeyedSubscript:@"asrConfidenceScore"];
    v19 = [v8 objectForKeyedSubscript:@"asrConfidenceLevel"];
    v20 = INMediaConfidenceLevelWithString(v19);

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"resolvedSharedUserID"];
    v23 = [v7 decodeObjectOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [v8 objectForKeyedSubscript:@"homeAutomationEntityProvider"];
    v26 = [v7 decodeObjectOfClass:v24 from:v25];

    v27 = [[v32 alloc] initWithSpeakerIDInfo:v38 proxiedThirdPartyAppInfo:v37 isAppAttributionRequired:v36 useDialogMemoryForAttribution:v35 isAppCorrection:v34 fallbackUsername:v33 wholeHouseAudioMetadata:v30 nlConfidenceScore:v31 nlConfidenceLevel:v18 asrConfidenceScore:v29 asrConfidenceLevel:v20 resolvedSharedUserID:v23 homeAutomationEntityProvider:v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end