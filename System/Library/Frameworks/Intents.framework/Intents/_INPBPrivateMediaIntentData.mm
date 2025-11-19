@interface _INPBPrivateMediaIntentData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivateMediaIntentData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAsrConfidenceLevel:(id)a3;
- (int)StringAsNlConfidenceLevel:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAsrConfidenceLevel:(int)a3;
- (void)setHasAsrConfidenceScore:(BOOL)a3;
- (void)setHasIsAppAttributionRequired:(BOOL)a3;
- (void)setHasIsAppCorrection:(BOOL)a3;
- (void)setHasNlConfidenceLevel:(BOOL)a3;
- (void)setHasNlConfidenceScore:(BOOL)a3;
- (void)setHasUseDialogMemoryForAttribution:(BOOL)a3;
- (void)setNlConfidenceLevel:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPrivateMediaIntentData

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    v4 = [(_INPBPrivateMediaIntentData *)self asrConfidenceLevel];
    if (v4 > 19)
    {
      if (v4 == 20)
      {
        v5 = @"MEDIUM";
        goto LABEL_12;
      }

      if (v4 == 30)
      {
        v5 = @"HIGH";
        goto LABEL_12;
      }
    }

    else
    {
      if (!v4)
      {
        v5 = @"UNKNOWN_CONFIDENCE_LEVEL";
        goto LABEL_12;
      }

      if (v4 == 10)
      {
        v5 = @"LOW";
LABEL_12:
        [v3 setObject:v5 forKeyedSubscript:@"asrConfidenceLevel"];

        goto LABEL_13;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    goto LABEL_12;
  }

LABEL_13:
  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaIntentData *)self asrConfidenceScore];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"asrConfidenceScore"];
  }

  v8 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"fallbackUsername"];

  v10 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"homeAutomationEntityProvider"];

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData isAppAttributionRequired](self, "isAppAttributionRequired")}];
    [v3 setObject:v12 forKeyedSubscript:@"isAppAttributionRequired"];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData isAppCorrection](self, "isAppCorrection")}];
    [v3 setObject:v13 forKeyedSubscript:@"isAppCorrection"];
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    v14 = [(_INPBPrivateMediaIntentData *)self nlConfidenceLevel];
    if (v14 > 19)
    {
      if (v14 == 20)
      {
        v15 = @"MEDIUM";
        goto LABEL_30;
      }

      if (v14 == 30)
      {
        v15 = @"HIGH";
        goto LABEL_30;
      }
    }

    else
    {
      if (!v14)
      {
        v15 = @"UNKNOWN_CONFIDENCE_LEVEL";
        goto LABEL_30;
      }

      if (v14 == 10)
      {
        v15 = @"LOW";
LABEL_30:
        [v3 setObject:v15 forKeyedSubscript:@"nlConfidenceLevel"];

        goto LABEL_31;
      }
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    goto LABEL_30;
  }

LABEL_31:
  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    v16 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaIntentData *)self nlConfidenceScore];
    v17 = [v16 numberWithFloat:?];
    [v3 setObject:v17 forKeyedSubscript:@"nlConfidenceScore"];
  }

  v18 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"proxiedThirdPartyAppInfo"];

  v20 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"resolvedSharedUserID"];

  v22 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"speakerIDInfo"];

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaIntentData useDialogMemoryForAttribution](self, "useDialogMemoryForAttribution")}];
    [v3 setObject:v24 forKeyedSubscript:@"useDialogMemoryForAttribution"];
  }

  v25 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
  v26 = [v25 dictionaryRepresentation];
  [v3 setObject:v26 forKeyedSubscript:@"wholeHouseAudioMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  v5 = [(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel];
  if (v5 != [v4 hasAsrConfidenceLevel])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceLevel])
  {
    if ([v4 hasAsrConfidenceLevel])
    {
      asrConfidenceLevel = self->_asrConfidenceLevel;
      if (asrConfidenceLevel != [v4 asrConfidenceLevel])
      {
        goto LABEL_60;
      }
    }
  }

  v7 = [(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore];
  if (v7 != [v4 hasAsrConfidenceScore])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasAsrConfidenceScore])
  {
    if ([v4 hasAsrConfidenceScore])
    {
      asrConfidenceScore = self->_asrConfidenceScore;
      [v4 asrConfidenceScore];
      if (asrConfidenceScore != v9)
      {
        goto LABEL_60;
      }
    }
  }

  v10 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  v11 = [v4 fallbackUsername];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_59;
  }

  v12 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
    v15 = [v4 fallbackUsername];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  v11 = [v4 homeAutomationEntityProvider];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_59;
  }

  v17 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
    v20 = [v4 homeAutomationEntityProvider];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v22 = [(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired];
  if (v22 != [v4 hasIsAppAttributionRequired])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppAttributionRequired])
  {
    if ([v4 hasIsAppAttributionRequired])
    {
      isAppAttributionRequired = self->_isAppAttributionRequired;
      if (isAppAttributionRequired != [v4 isAppAttributionRequired])
      {
        goto LABEL_60;
      }
    }
  }

  v24 = [(_INPBPrivateMediaIntentData *)self hasIsAppCorrection];
  if (v24 != [v4 hasIsAppCorrection])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasIsAppCorrection])
  {
    if ([v4 hasIsAppCorrection])
    {
      isAppCorrection = self->_isAppCorrection;
      if (isAppCorrection != [v4 isAppCorrection])
      {
        goto LABEL_60;
      }
    }
  }

  v26 = [(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel];
  if (v26 != [v4 hasNlConfidenceLevel])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceLevel])
  {
    if ([v4 hasNlConfidenceLevel])
    {
      nlConfidenceLevel = self->_nlConfidenceLevel;
      if (nlConfidenceLevel != [v4 nlConfidenceLevel])
      {
        goto LABEL_60;
      }
    }
  }

  v28 = [(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore];
  if (v28 != [v4 hasNlConfidenceScore])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasNlConfidenceScore])
  {
    if ([v4 hasNlConfidenceScore])
    {
      nlConfidenceScore = self->_nlConfidenceScore;
      [v4 nlConfidenceScore];
      if (nlConfidenceScore != v30)
      {
        goto LABEL_60;
      }
    }
  }

  v10 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  v11 = [v4 proxiedThirdPartyAppInfo];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_59;
  }

  v31 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
    v34 = [v4 proxiedThirdPartyAppInfo];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  v11 = [v4 resolvedSharedUserID];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_59;
  }

  v36 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
  if (v36)
  {
    v37 = v36;
    v38 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
    v39 = [v4 resolvedSharedUserID];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  v11 = [v4 speakerIDInfo];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_59;
  }

  v41 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
    v44 = [v4 speakerIDInfo];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v46 = [(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution];
  if (v46 != [v4 hasUseDialogMemoryForAttribution])
  {
    goto LABEL_60;
  }

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    if ([v4 hasUseDialogMemoryForAttribution])
    {
      useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
      if (useDialogMemoryForAttribution != [v4 useDialogMemoryForAttribution])
      {
        goto LABEL_60;
      }
    }
  }

  v10 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
  v11 = [v4 wholeHouseAudioMetadata];
  if ((v10 != 0) != (v11 == 0))
  {
    v48 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    if (!v48)
    {

LABEL_63:
      v53 = 1;
      goto LABEL_61;
    }

    v49 = v48;
    v50 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    v51 = [v4 wholeHouseAudioMetadata];
    v52 = [v50 isEqual:v51];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBString *)self->_fallbackUsername copyWithZone:a3];
  [(_INPBPrivateMediaIntentData *)v5 setFallbackUsername:v6];

  v7 = [(_INPBHomeAutomationEntityProvider *)self->_homeAutomationEntityProvider copyWithZone:a3];
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

  v8 = [(_INPBAppIdentifier *)self->_proxiedThirdPartyAppInfo copyWithZone:a3];
  [(_INPBPrivateMediaIntentData *)v5 setProxiedThirdPartyAppInfo:v8];

  v9 = [(_INPBString *)self->_resolvedSharedUserID copyWithZone:a3];
  [(_INPBPrivateMediaIntentData *)v5 setResolvedSharedUserID:v9];

  v10 = [(_INPBSpeakerIDInfo *)self->_speakerIDInfo copyWithZone:a3];
  [(_INPBPrivateMediaIntentData *)v5 setSpeakerIDInfo:v10];

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    [(_INPBPrivateMediaIntentData *)v5 setUseDialogMemoryForAttribution:[(_INPBPrivateMediaIntentData *)self useDialogMemoryForAttribution]];
  }

  v11 = [(_INPBWholeHouseAudioMetadata *)self->_wholeHouseAudioMetadata copyWithZone:a3];
  [(_INPBPrivateMediaIntentData *)v5 setWholeHouseAudioMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivateMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivateMediaIntentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivateMediaIntentData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v24 = a3;
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

  v6 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];

  if (v6)
  {
    v7 = [(_INPBPrivateMediaIntentData *)self fallbackUsername];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];

  if (v8)
  {
    v9 = [(_INPBPrivateMediaIntentData *)self homeAutomationEntityProvider];
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

  v14 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];

  if (v14)
  {
    v15 = [(_INPBPrivateMediaIntentData *)self proxiedThirdPartyAppInfo];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];

  if (v16)
  {
    v17 = [(_INPBPrivateMediaIntentData *)self resolvedSharedUserID];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];

  if (v18)
  {
    v19 = [(_INPBPrivateMediaIntentData *)self speakerIDInfo];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivateMediaIntentData *)self hasUseDialogMemoryForAttribution])
  {
    useDialogMemoryForAttribution = self->_useDialogMemoryForAttribution;
    PBDataWriterWriteBOOLField();
  }

  v21 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];

  v22 = v24;
  if (v21)
  {
    v23 = [(_INPBPrivateMediaIntentData *)self wholeHouseAudioMetadata];
    PBDataWriterWriteSubmessage();

    v22 = v24;
  }
}

- (void)setHasUseDialogMemoryForAttribution:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNlConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsNlConfidenceLevel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CONFIDENCE_LEVEL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LOW"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"MEDIUM"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"HIGH"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNlConfidenceLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setNlConfidenceLevel:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_nlConfidenceLevel = a3;
  }
}

- (void)setHasIsAppCorrection:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAppAttributionRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAsrConfidenceScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsAsrConfidenceLevel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CONFIDENCE_LEVEL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LOW"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"MEDIUM"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"HIGH"])
  {
    v4 = 30;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAsrConfidenceLevel:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_asrConfidenceLevel = a3;
  }
}

@end