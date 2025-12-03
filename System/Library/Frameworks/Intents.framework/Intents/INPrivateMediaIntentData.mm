@interface INPrivateMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivateMediaIntentData)initWithCoder:(id)coder;
- (INPrivateMediaIntentData)initWithSpeakerIDInfo:(id)info proxiedThirdPartyAppInfo:(id)appInfo isAppAttributionRequired:(id)required useDialogMemoryForAttribution:(id)attribution isAppCorrection:(id)correction fallbackUsername:(id)username wholeHouseAudioMetadata:(id)metadata nlConfidenceScore:(id)self0 nlConfidenceLevel:(int64_t)self1 asrConfidenceScore:(id)self2 asrConfidenceLevel:(int64_t)self3 resolvedSharedUserID:(id)self4 homeAutomationEntityProvider:(id)self5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = wholeHouseAudioMetadata;
  if (!wholeHouseAudioMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v39[6] = null;
  v38[7] = @"nlConfidenceScore";
  nlConfidenceScore = self->_nlConfidenceScore;
  null2 = nlConfidenceScore;
  if (!nlConfidenceScore)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null2;
  v39[7] = null2;
  v38[8] = @"nlConfidenceLevel";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_nlConfidenceLevel];
  v39[8] = v13;
  v38[9] = @"asrConfidenceScore";
  asrConfidenceScore = self->_asrConfidenceScore;
  null3 = asrConfidenceScore;
  if (!asrConfidenceScore)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null3;
  v38[10] = @"asrConfidenceLevel";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_asrConfidenceLevel];
  v39[10] = v16;
  v38[11] = @"resolvedSharedUserID";
  resolvedSharedUserID = self->_resolvedSharedUserID;
  null4 = resolvedSharedUserID;
  if (!resolvedSharedUserID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39[11] = null4;
  v38[12] = @"homeAutomationEntityProvider";
  homeAutomationEntityProvider = self->_homeAutomationEntityProvider;
  null5 = homeAutomationEntityProvider;
  if (!homeAutomationEntityProvider)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39[12] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateMediaIntentData;
  v6 = [(INPrivateMediaIntentData *)&v11 description];
  _dictionaryRepresentation = [(INPrivateMediaIntentData *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_speakerIDInfo];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"speakerIDInfo"];

  v9 = [encoderCopy encodeObject:self->_proxiedThirdPartyAppInfo];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"proxiedThirdPartyAppInfo"];

  v10 = [encoderCopy encodeObject:self->_isAppAttributionRequired];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"isAppAttributionRequired"];

  v11 = [encoderCopy encodeObject:self->_useDialogMemoryForAttribution];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"useDialogMemoryForAttribution"];

  v12 = [encoderCopy encodeObject:self->_isAppCorrection];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"isAppCorrection"];

  v13 = [encoderCopy encodeObject:self->_fallbackUsername];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"fallbackUsername"];

  v14 = [encoderCopy encodeObject:self->_wholeHouseAudioMetadata];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"wholeHouseAudioMetadata"];

  v15 = [encoderCopy encodeObject:self->_nlConfidenceScore];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"nlConfidenceScore"];

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
  [dictionary if_setObjectIfNonNil:v18 forKey:@"nlConfidenceLevel"];

  v19 = [encoderCopy encodeObject:self->_asrConfidenceScore];
  [dictionary if_setObjectIfNonNil:v19 forKey:@"asrConfidenceScore"];

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
  [dictionary if_setObjectIfNonNil:v22 forKey:@"asrConfidenceLevel"];

  v23 = [encoderCopy encodeObject:self->_resolvedSharedUserID];
  [dictionary if_setObjectIfNonNil:v23 forKey:@"resolvedSharedUserID"];

  v24 = [encoderCopy encodeObject:self->_homeAutomationEntityProvider];

  [dictionary if_setObjectIfNonNil:v24 forKey:@"homeAutomationEntityProvider"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  speakerIDInfo = self->_speakerIDInfo;
  coderCopy = coder;
  [coderCopy encodeObject:speakerIDInfo forKey:@"speakerIDInfo"];
  [coderCopy encodeObject:self->_proxiedThirdPartyAppInfo forKey:@"proxiedThirdPartyAppInfo"];
  [coderCopy encodeObject:self->_isAppAttributionRequired forKey:@"isAppAttributionRequired"];
  [coderCopy encodeObject:self->_useDialogMemoryForAttribution forKey:@"useDialogMemoryForAttribution"];
  [coderCopy encodeObject:self->_isAppCorrection forKey:@"isAppCorrection"];
  [coderCopy encodeObject:self->_fallbackUsername forKey:@"fallbackUsername"];
  [coderCopy encodeObject:self->_wholeHouseAudioMetadata forKey:@"wholeHouseAudioMetadata"];
  [coderCopy encodeObject:self->_nlConfidenceScore forKey:@"nlConfidenceScore"];
  [coderCopy encodeInteger:self->_nlConfidenceLevel forKey:@"nlConfidenceLevel"];
  [coderCopy encodeObject:self->_asrConfidenceScore forKey:@"asrConfidenceScore"];
  [coderCopy encodeInteger:self->_asrConfidenceLevel forKey:@"asrConfidenceLevel"];
  [coderCopy encodeObject:self->_resolvedSharedUserID forKey:@"resolvedSharedUserID"];
  [coderCopy encodeObject:self->_homeAutomationEntityProvider forKey:@"homeAutomationEntityProvider"];
}

- (INPrivateMediaIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakerIDInfo"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxiedThirdPartyAppInfo"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAppAttributionRequired"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useDialogMemoryForAttribution"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAppCorrection"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackUsername"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wholeHouseAudioMetadata"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nlConfidenceScore"];
  v8 = [coderCopy decodeIntegerForKey:@"nlConfidenceLevel"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asrConfidenceScore"];
  v10 = [coderCopy decodeIntegerForKey:@"asrConfidenceLevel"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedSharedUserID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeAutomationEntityProvider"];

  v18 = [(INPrivateMediaIntentData *)self initWithSpeakerIDInfo:v19 proxiedThirdPartyAppInfo:v14 isAppAttributionRequired:v4 useDialogMemoryForAttribution:v16 isAppCorrection:v5 fallbackUsername:v15 wholeHouseAudioMetadata:v6 nlConfidenceScore:v7 nlConfidenceLevel:v8 asrConfidenceScore:v9 asrConfidenceLevel:v10 resolvedSharedUserID:v11 homeAutomationEntityProvider:v12];
  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INPrivateMediaIntentData)initWithSpeakerIDInfo:(id)info proxiedThirdPartyAppInfo:(id)appInfo isAppAttributionRequired:(id)required useDialogMemoryForAttribution:(id)attribution isAppCorrection:(id)correction fallbackUsername:(id)username wholeHouseAudioMetadata:(id)metadata nlConfidenceScore:(id)self0 nlConfidenceLevel:(int64_t)self1 asrConfidenceScore:(id)self2 asrConfidenceLevel:(int64_t)self3 resolvedSharedUserID:(id)self4 homeAutomationEntityProvider:(id)self5
{
  infoCopy = info;
  appInfoCopy = appInfo;
  requiredCopy = required;
  attributionCopy = attribution;
  correctionCopy = correction;
  usernameCopy = username;
  metadataCopy = metadata;
  scoreCopy = score;
  confidenceScoreCopy = confidenceScore;
  dCopy = d;
  providerCopy = provider;
  v56.receiver = self;
  v56.super_class = INPrivateMediaIntentData;
  v28 = [(INPrivateMediaIntentData *)&v56 init];
  if (v28)
  {
    v29 = [infoCopy copy];
    speakerIDInfo = v28->_speakerIDInfo;
    v28->_speakerIDInfo = v29;

    v31 = [appInfoCopy copy];
    proxiedThirdPartyAppInfo = v28->_proxiedThirdPartyAppInfo;
    v28->_proxiedThirdPartyAppInfo = v31;

    v33 = [requiredCopy copy];
    isAppAttributionRequired = v28->_isAppAttributionRequired;
    v28->_isAppAttributionRequired = v33;

    v35 = [attributionCopy copy];
    useDialogMemoryForAttribution = v28->_useDialogMemoryForAttribution;
    v28->_useDialogMemoryForAttribution = v35;

    v37 = [correctionCopy copy];
    isAppCorrection = v28->_isAppCorrection;
    v28->_isAppCorrection = v37;

    v39 = [usernameCopy copy];
    fallbackUsername = v28->_fallbackUsername;
    v28->_fallbackUsername = v39;

    v41 = [metadataCopy copy];
    wholeHouseAudioMetadata = v28->_wholeHouseAudioMetadata;
    v28->_wholeHouseAudioMetadata = v41;

    v43 = [scoreCopy copy];
    nlConfidenceScore = v28->_nlConfidenceScore;
    v28->_nlConfidenceScore = v43;

    v28->_nlConfidenceLevel = level;
    v45 = [confidenceScoreCopy copy];
    asrConfidenceScore = v28->_asrConfidenceScore;
    v28->_asrConfidenceScore = v45;

    v28->_asrConfidenceLevel = confidenceLevel;
    v47 = [dCopy copy];
    resolvedSharedUserID = v28->_resolvedSharedUserID;
    v28->_resolvedSharedUserID = v47;

    v49 = [providerCopy copy];
    homeAutomationEntityProvider = v28->_homeAutomationEntityProvider;
    v28->_homeAutomationEntityProvider = v49;
  }

  return v28;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"speakerIDInfo"];
    v38 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"proxiedThirdPartyAppInfo"];
    v37 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v36 = [fromCopy objectForKeyedSubscript:@"isAppAttributionRequired"];
    v35 = [fromCopy objectForKeyedSubscript:@"useDialogMemoryForAttribution"];
    v34 = [fromCopy objectForKeyedSubscript:@"isAppCorrection"];
    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"fallbackUsername"];
    v33 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"wholeHouseAudioMetadata"];
    v30 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v31 = [fromCopy objectForKeyedSubscript:@"nlConfidenceScore"];
    v17 = [fromCopy objectForKeyedSubscript:@"nlConfidenceLevel"];
    v18 = INMediaConfidenceLevelWithString(v17);

    v29 = [fromCopy objectForKeyedSubscript:@"asrConfidenceScore"];
    v19 = [fromCopy objectForKeyedSubscript:@"asrConfidenceLevel"];
    v20 = INMediaConfidenceLevelWithString(v19);

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"resolvedSharedUserID"];
    v23 = [decoderCopy decodeObjectOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [fromCopy objectForKeyedSubscript:@"homeAutomationEntityProvider"];
    v26 = [decoderCopy decodeObjectOfClass:v24 from:v25];

    v27 = [[selfCopy alloc] initWithSpeakerIDInfo:v38 proxiedThirdPartyAppInfo:v37 isAppAttributionRequired:v36 useDialogMemoryForAttribution:v35 isAppCorrection:v34 fallbackUsername:v33 wholeHouseAudioMetadata:v30 nlConfidenceScore:v31 nlConfidenceLevel:v18 asrConfidenceScore:v29 asrConfidenceLevel:v20 resolvedSharedUserID:v23 homeAutomationEntityProvider:v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end