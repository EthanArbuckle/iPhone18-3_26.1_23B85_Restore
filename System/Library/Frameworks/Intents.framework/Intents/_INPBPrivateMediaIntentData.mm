@interface _INPBPrivateMediaIntentData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivateMediaIntentData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAsrConfidenceLevel:(id)level;
- (int)StringAsNlConfidenceLevel:(id)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAsrConfidenceLevel:(int)level;
- (void)setHasAsrConfidenceScore:(BOOL)score;
- (void)setHasIsAppAttributionRequired:(BOOL)required;
- (void)setHasIsAppCorrection:(BOOL)correction;
- (void)setHasNlConfidenceLevel:(BOOL)level;
- (void)setHasNlConfidenceScore:(BOOL)score;
- (void)setHasUseDialogMemoryForAttribution:(BOOL)attribution;
- (void)setNlConfidenceLevel:(int)level;
- (void)writeTo:(id)to;
@end

@implementation _INPBPrivateMediaIntentData

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    asrConfidenceLevel = [(_INPBPrivateMediaIntentData *)self asrConfidenceLevel];
    if (asrConfidenceLevel > 19)
    {
      if (asrConfidenceLevel == 20)
      {
        v5 = @"MEDIUM";
        goto LABEL_12;
      }

      if (asrConfidenceLevel == 30)
      {
        v5 = @"HIGH";
        goto LABEL_12;
      }
    }

    else
    {
      if (!asrConfidenceLevel)
      {
        v5 = @"UNKNOWN_CONFIDENCE_LEVEL";
        goto LABEL_12;
      }

      if (asrConfidenceLevel == 10)
      {
        v5 = @"LOW";
LABEL_12:
        [dictionary setObject:v5 forKeyedSubscript:@"asrConfidenceLevel"];

        goto LABEL_13;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", asrConfidenceLevel];
    goto LABEL_12;
  }

LABEL_13:
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaIntentData *)self asrConfidenceScore];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"asrConfidenceScore"];
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  dictionaryRepresentation = [fallbackUsername dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fallbackUsername"];

  homeAutomationEntityProvider = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  dictionaryRepresentation2 = [homeAutomationEntityProvider dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"homeAutomationEntityProvider"];

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData isAppAttributionRequired](self, "isAppAttributionRequired")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isAppAttributionRequired"];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData isAppCorrection](self, "isAppCorrection")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isAppCorrection"];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    nlConfidenceLevel = [(_INPBPrivateMediaIntentData *)self nlConfidenceLevel];
    if (nlConfidenceLevel > 19)
    {
      if (nlConfidenceLevel == 20)
      {
        v15 = @"MEDIUM";
        goto LABEL_30;
      }

      if (nlConfidenceLevel == 30)
      {
        v15 = @"HIGH";
        goto LABEL_30;
      }
    }

    else
    {
      if (!nlConfidenceLevel)
      {
        v15 = @"UNKNOWN_CONFIDENCE_LEVEL";
        goto LABEL_30;
      }

      if (nlConfidenceLevel == 10)
      {
        v15 = @"LOW";
LABEL_30:
        [dictionary setObject:v15 forKeyedSubscript:@"nlConfidenceLevel"];

        goto LABEL_31;
      }
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", nlConfidenceLevel];
    goto LABEL_30;
  }

LABEL_31:
  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    v16 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaIntentData *)self nlConfidenceScore];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"nlConfidenceScore"];
  }

  proxiedThirdPartyAppInfo = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  dictionaryRepresentation3 = [proxiedThirdPartyAppInfo dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"proxiedThirdPartyAppInfo"];

  resolvedSharedUserID = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  dictionaryRepresentation4 = [resolvedSharedUserID dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"resolvedSharedUserID"];

  speakerIDInfo = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  dictionaryRepresentation5 = [speakerIDInfo dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"speakerIDInfo"];

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData useDialogMemoryForAttribution](self, "useDialogMemoryForAttribution")}];
    [dictionary setObject:v24 forKeyedSubscript:@"useDialogMemoryForAttribution"];
  }

  wholeHouseAudioMetadata = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
  dictionaryRepresentation6 = [wholeHouseAudioMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"wholeHouseAudioMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    v27 = 2654435761 * self->_asrConfidenceLevel;
  }

  else
  {
    v27 = 0;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    asrConfidenceScore = self->_asrConfidenceScore;
    if (asrConfidenceScore >= 0.0)
    {
      v6 = asrConfidenceScore;
    }

    else
    {
      v6 = -asrConfidenceScore;
    }

    *v3.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  v26 = [(_INPBString *)self->_fallbackUsername hash];
  v25 = [(_INPBHomeAutomationEntityProvider *)self->_homeAutomationEntityProvider hash];
  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    v10 = 2654435761 * self->_isAppAttributionRequired;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    v11 = 2654435761 * self->_isAppCorrection;
  }

  else
  {
    v11 = 0;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    v12 = 2654435761 * self->_nlConfidenceLevel;
  }

  else
  {
    v12 = 0;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    nlConfidenceScore = self->_nlConfidenceScore;
    if (nlConfidenceScore >= 0.0)
    {
      v16 = nlConfidenceScore;
    }

    else
    {
      v16 = -nlConfidenceScore;
    }

    *v13.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v19 += v17;
      }
    }

    else
    {
      v19 -= fabs(v17);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = [(_INPBAppIdentifier *)self->_proxiedThirdPartyAppInfo hash];
  v21 = [(_INPBString *)self->_resolvedSharedUserID hash];
  v22 = [(_INPBSpeakerIDInfo *)self->_speakerIDInfo hash];
  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    v23 = 2654435761 * self->_useDialogMemoryForAttribution;
  }

  else
  {
    v23 = 0;
  }

  return v9 ^ v27 ^ v26 ^ v25 ^ v10 ^ v11 ^ v12 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(_INPBWholeHouseAudioMetadata *)self->_wholeHouseAudioMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  hasAsrConfidenceLevel = [(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel];
  if (hasAsrConfidenceLevel != [equalCopy hasAsrConfidenceLevel])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    if ([equalCopy hasAsrConfidenceLevel])
    {
      asrConfidenceLevel = self->_asrConfidenceLevel;
      if (asrConfidenceLevel != [equalCopy asrConfidenceLevel])
      {
        goto LABEL_60;
      }
    }
  }

  hasAsrConfidenceScore = [(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore];
  if (hasAsrConfidenceScore != [equalCopy hasAsrConfidenceScore])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    if ([equalCopy hasAsrConfidenceScore])
    {
      asrConfidenceScore = self->_asrConfidenceScore;
      [equalCopy asrConfidenceScore];
      if (asrConfidenceScore != v9)
      {
        goto LABEL_60;
      }
    }
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  fallbackUsername2 = [equalCopy fallbackUsername];
  if ((fallbackUsername != 0) == (fallbackUsername2 == 0))
  {
    goto LABEL_59;
  }

  fallbackUsername3 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  if (fallbackUsername3)
  {
    v13 = fallbackUsername3;
    fallbackUsername4 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
    fallbackUsername5 = [equalCopy fallbackUsername];
    v16 = [fallbackUsername4 isEqual:fallbackUsername5];

    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  fallbackUsername2 = [equalCopy homeAutomationEntityProvider];
  if ((fallbackUsername != 0) == (fallbackUsername2 == 0))
  {
    goto LABEL_59;
  }

  homeAutomationEntityProvider = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  if (homeAutomationEntityProvider)
  {
    v18 = homeAutomationEntityProvider;
    homeAutomationEntityProvider2 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
    homeAutomationEntityProvider3 = [equalCopy homeAutomationEntityProvider];
    v21 = [homeAutomationEntityProvider2 isEqual:homeAutomationEntityProvider3];

    if (!v21)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  hasIsAppAttributionRequired = [(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired];
  if (hasIsAppAttributionRequired != [equalCopy hasIsAppAttributionRequired])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    if ([equalCopy hasIsAppAttributionRequired])
    {
      isAppAttributionRequired = self->_isAppAttributionRequired;
      if (isAppAttributionRequired != [equalCopy isAppAttributionRequired])
      {
        goto LABEL_60;
      }
    }
  }

  hasIsAppCorrection = [(_INPBPrivateMediaIntentData *)self hasIsAppCorrection];
  if (hasIsAppCorrection != [equalCopy hasIsAppCorrection])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    if ([equalCopy hasIsAppCorrection])
    {
      isAppCorrection = self->_isAppCorrection;
      if (isAppCorrection != [equalCopy isAppCorrection])
      {
        goto LABEL_60;
      }
    }
  }

  hasNlConfidenceLevel = [(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel];
  if (hasNlConfidenceLevel != [equalCopy hasNlConfidenceLevel])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    if ([equalCopy hasNlConfidenceLevel])
    {
      nlConfidenceLevel = self->_nlConfidenceLevel;
      if (nlConfidenceLevel != [equalCopy nlConfidenceLevel])
      {
        goto LABEL_60;
      }
    }
  }

  hasNlConfidenceScore = [(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore];
  if (hasNlConfidenceScore != [equalCopy hasNlConfidenceScore])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    if ([equalCopy hasNlConfidenceScore])
    {
      nlConfidenceScore = self->_nlConfidenceScore;
      [equalCopy nlConfidenceScore];
      if (nlConfidenceScore != v30)
      {
        goto LABEL_60;
      }
    }
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  fallbackUsername2 = [equalCopy proxiedThirdPartyAppInfo];
  if ((fallbackUsername != 0) == (fallbackUsername2 == 0))
  {
    goto LABEL_59;
  }

  proxiedThirdPartyAppInfo = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  if (proxiedThirdPartyAppInfo)
  {
    v32 = proxiedThirdPartyAppInfo;
    proxiedThirdPartyAppInfo2 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
    proxiedThirdPartyAppInfo3 = [equalCopy proxiedThirdPartyAppInfo];
    v35 = [proxiedThirdPartyAppInfo2 isEqual:proxiedThirdPartyAppInfo3];

    if (!v35)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  fallbackUsername2 = [equalCopy resolvedSharedUserID];
  if ((fallbackUsername != 0) == (fallbackUsername2 == 0))
  {
    goto LABEL_59;
  }

  resolvedSharedUserID = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  if (resolvedSharedUserID)
  {
    v37 = resolvedSharedUserID;
    resolvedSharedUserID2 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
    resolvedSharedUserID3 = [equalCopy resolvedSharedUserID];
    v40 = [resolvedSharedUserID2 isEqual:resolvedSharedUserID3];

    if (!v40)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  fallbackUsername2 = [equalCopy speakerIDInfo];
  if ((fallbackUsername != 0) == (fallbackUsername2 == 0))
  {
    goto LABEL_59;
  }

  speakerIDInfo = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  if (speakerIDInfo)
  {
    v42 = speakerIDInfo;
    speakerIDInfo2 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
    speakerIDInfo3 = [equalCopy speakerIDInfo];
    v45 = [speakerIDInfo2 isEqual:speakerIDInfo3];

    if (!v45)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  hasUseDialogMemoryForAttribution = [(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution];
  if (hasUseDialogMemoryForAttribution != [equalCopy hasUseDialogMemoryForAttribution])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    if ([equalCopy hasUseDialogMemoryForAttribution])
    {
      useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
      if (useDialogMemoryForAttribution != [equalCopy useDialogMemoryForAttribution])
      {
        goto LABEL_60;
      }
    }
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
  fallbackUsername2 = [equalCopy wholeHouseAudioMetadata];
  if ((fallbackUsername != 0) != (fallbackUsername2 == 0))
  {
    wholeHouseAudioMetadata = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    if (!wholeHouseAudioMetadata)
    {

LABEL_63:
      v53 = 1;
      goto LABEL_61;
    }

    v49 = wholeHouseAudioMetadata;
    wholeHouseAudioMetadata2 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    wholeHouseAudioMetadata3 = [equalCopy wholeHouseAudioMetadata];
    v52 = [wholeHouseAudioMetadata2 isEqual:wholeHouseAudioMetadata3];

    if (v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_59:
  }

LABEL_60:
  v53 = 0;
LABEL_61:

  return v53;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPrivateMediaIntentData allocWithZone:](_INPBPrivateMediaIntentData init];
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    [(_INPBPrivateMediaIntentData *)v5 setAsrConfidenceLevel:[(_INPBPrivateMediaIntentData *)self asrConfidenceLevel]];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    [(_INPBPrivateMediaIntentData *)self asrConfidenceScore];
    [(_INPBPrivateMediaIntentData *)v5 setAsrConfidenceScore:?];
  }

  v6 = [(_INPBString *)self->_fallbackUsername copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setFallbackUsername:v6];

  v7 = [(_INPBHomeAutomationEntityProvider *)self->_homeAutomationEntityProvider copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setHomeAutomationEntityProvider:v7];

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    [(_INPBPrivateMediaIntentData *)v5 setIsAppAttributionRequired:[(_INPBPrivateMediaIntentData *)self isAppAttributionRequired]];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    [(_INPBPrivateMediaIntentData *)v5 setIsAppCorrection:[(_INPBPrivateMediaIntentData *)self isAppCorrection]];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    [(_INPBPrivateMediaIntentData *)v5 setNlConfidenceLevel:[(_INPBPrivateMediaIntentData *)self nlConfidenceLevel]];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    [(_INPBPrivateMediaIntentData *)self nlConfidenceScore];
    [(_INPBPrivateMediaIntentData *)v5 setNlConfidenceScore:?];
  }

  v8 = [(_INPBAppIdentifier *)self->_proxiedThirdPartyAppInfo copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setProxiedThirdPartyAppInfo:v8];

  v9 = [(_INPBString *)self->_resolvedSharedUserID copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setResolvedSharedUserID:v9];

  v10 = [(_INPBSpeakerIDInfo *)self->_speakerIDInfo copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setSpeakerIDInfo:v10];

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    [(_INPBPrivateMediaIntentData *)v5 setUseDialogMemoryForAttribution:[(_INPBPrivateMediaIntentData *)self useDialogMemoryForAttribution]];
  }

  v11 = [(_INPBWholeHouseAudioMetadata *)self->_wholeHouseAudioMetadata copyWithZone:zone];
  [(_INPBPrivateMediaIntentData *)v5 setWholeHouseAudioMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivateMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivateMediaIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivateMediaIntentData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    asrConfidenceLevel = self->_asrConfidenceLevel;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    asrConfidenceScore = self->_asrConfidenceScore;
    PBDataWriterWriteFloatField();
  }

  fallbackUsername = [(_INPBPrivateMediaIntentData *)self fallbackUsername];

  if (fallbackUsername)
  {
    fallbackUsername2 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
    PBDataWriterWriteSubmessage();
  }

  homeAutomationEntityProvider = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];

  if (homeAutomationEntityProvider)
  {
    homeAutomationEntityProvider2 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    isAppAttributionRequired = self->_isAppAttributionRequired;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    isAppCorrection = self->_isAppCorrection;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    nlConfidenceLevel = self->_nlConfidenceLevel;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    nlConfidenceScore = self->_nlConfidenceScore;
    PBDataWriterWriteFloatField();
  }

  proxiedThirdPartyAppInfo = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];

  if (proxiedThirdPartyAppInfo)
  {
    proxiedThirdPartyAppInfo2 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
    PBDataWriterWriteSubmessage();
  }

  resolvedSharedUserID = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];

  if (resolvedSharedUserID)
  {
    resolvedSharedUserID2 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
    PBDataWriterWriteSubmessage();
  }

  speakerIDInfo = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];

  if (speakerIDInfo)
  {
    speakerIDInfo2 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
    PBDataWriterWriteBOOLField();
  }

  wholeHouseAudioMetadata = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];

  v22 = toCopy;
  if (wholeHouseAudioMetadata)
  {
    wholeHouseAudioMetadata2 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    PBDataWriterWriteSubmessage();

    v22 = toCopy;
  }
}

- (void)setHasUseDialogMemoryForAttribution:(BOOL)attribution
{
  if (attribution)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNlConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsNlConfidenceLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"UNKNOWN_CONFIDENCE_LEVEL"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"LOW"])
  {
    v4 = 10;
  }

  else if ([levelCopy isEqualToString:@"MEDIUM"])
  {
    v4 = 20;
  }

  else if ([levelCopy isEqualToString:@"HIGH"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNlConfidenceLevel:(BOOL)level
{
  if (level)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setNlConfidenceLevel:(int)level
{
  has = self->_has;
  if (level == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_nlConfidenceLevel = level;
  }
}

- (void)setHasIsAppCorrection:(BOOL)correction
{
  if (correction)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAppAttributionRequired:(BOOL)required
{
  if (required)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAsrConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAsrConfidenceLevel:(id)level
{
  levelCopy = level;
  if ([levelCopy isEqualToString:@"UNKNOWN_CONFIDENCE_LEVEL"])
  {
    v4 = 0;
  }

  else if ([levelCopy isEqualToString:@"LOW"])
  {
    v4 = 10;
  }

  else if ([levelCopy isEqualToString:@"MEDIUM"])
  {
    v4 = 20;
  }

  else if ([levelCopy isEqualToString:@"HIGH"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAsrConfidenceLevel:(int)level
{
  has = self->_has;
  if (level == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_asrConfidenceLevel = level;
  }
}

@end