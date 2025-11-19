@interface _INPBPrivateMediaItemValueData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivateMediaItemValueData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAmpConfidenceLevel:(id)a3;
- (unint64_t)hash;
- (void)addInternalSignal:(id)a3;
- (void)addMediaSubItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAmpConfidenceLevel:(int)a3;
- (void)setAssetInfo:(id)a3;
- (void)setBundleId:(id)a3;
- (void)setHasAmpConfidenceScore:(BOOL)a3;
- (void)setHasIsAvailable:(BOOL)a3;
- (void)setHasIsHardBan:(BOOL)a3;
- (void)setHasRequiresSubscription:(BOOL)a3;
- (void)setInternalSignals:(id)a3;
- (void)setMediaSubItems:(id)a3;
- (void)setPegasusMetaData:(id)a3;
- (void)setProvider:(id)a3;
- (void)setProviderAppName:(id)a3;
- (void)setPunchoutURI:(id)a3;
- (void)setRecommendationId:(id)a3;
- (void)setSharedUserIdFromPlayableMusicAccount:(id)a3;
- (void)setUniversalResourceLink:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPrivateMediaItemValueData

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    v4 = [(_INPBPrivateMediaItemValueData *)self ampConfidenceLevel];
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
        [v3 setObject:v5 forKeyedSubscript:@"ampConfidenceLevel"];

        goto LABEL_13;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    goto LABEL_12;
  }

LABEL_13:
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaItemValueData *)self ampConfidenceScore];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"ampConfidenceScore"];
  }

  if (self->_assetInfo)
  {
    v8 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_bundleId)
  {
    v10 = [(_INPBPrivateMediaItemValueData *)self bundleId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"bundleId"];
  }

  if (self->_internalSignals)
  {
    v12 = [(_INPBPrivateMediaItemValueData *)self internalSignals];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"internalSignal"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData isAvailable](self, "isAvailable")}];
    [v3 setObject:v14 forKeyedSubscript:@"isAvailable"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData isHardBan](self, "isHardBan")}];
    [v3 setObject:v15 forKeyedSubscript:@"isHardBan"];
  }

  if ([(NSArray *)self->_mediaSubItems count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = self->_mediaSubItems;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"mediaSubItems"];
  }

  if (self->_pegasusMetaData)
  {
    v23 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"pegasusMetaData"];
  }

  if (self->_provider)
  {
    v25 = [(_INPBPrivateMediaItemValueData *)self provider];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"provider"];
  }

  if (self->_providerAppName)
  {
    v27 = [(_INPBPrivateMediaItemValueData *)self providerAppName];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"providerAppName"];
  }

  if (self->_punchoutURI)
  {
    v29 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutURI"];
  }

  if (self->_recommendationId)
  {
    v31 = [(_INPBPrivateMediaItemValueData *)self recommendationId];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"recommendationId"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData requiresSubscription](self, "requiresSubscription")}];
    [v3 setObject:v33 forKeyedSubscript:@"requiresSubscription"];
  }

  if (self->_sharedUserIdFromPlayableMusicAccount)
  {
    v34 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"sharedUserIdFromPlayableMusicAccount"];
  }

  if (self->_universalResourceLink)
  {
    v36 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"universalResourceLink"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    v25 = 2654435761 * self->_ampConfidenceLevel;
  }

  else
  {
    v25 = 0;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    ampConfidenceScore = self->_ampConfidenceScore;
    if (ampConfidenceScore >= 0.0)
    {
      v6 = ampConfidenceScore;
    }

    else
    {
      v6 = -ampConfidenceScore;
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

  v24 = v9;
  v23 = [(NSString *)self->_assetInfo hash];
  v22 = [(NSString *)self->_bundleId hash];
  v21 = [(NSArray *)self->_internalSignals hash];
  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    v10 = 2654435761 * self->_isAvailable;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    v11 = 2654435761 * self->_isHardBan;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSArray *)self->_mediaSubItems hash];
  v13 = [(NSData *)self->_pegasusMetaData hash];
  v14 = [(NSString *)self->_provider hash];
  v15 = [(NSString *)self->_providerAppName hash];
  v16 = [(NSString *)self->_punchoutURI hash];
  v17 = [(NSString *)self->_recommendationId hash];
  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    v18 = 2654435761 * self->_requiresSubscription;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 ^ [(NSString *)self->_sharedUserIdFromPlayableMusicAccount hash];
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ [(NSString *)self->_universalResourceLink hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel];
  if (v5 != [v4 hasAmpConfidenceLevel])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    if ([v4 hasAmpConfidenceLevel])
    {
      ampConfidenceLevel = self->_ampConfidenceLevel;
      if (ampConfidenceLevel != [v4 ampConfidenceLevel])
      {
        goto LABEL_77;
      }
    }
  }

  v7 = [(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore];
  if (v7 != [v4 hasAmpConfidenceScore])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    if ([v4 hasAmpConfidenceScore])
    {
      ampConfidenceScore = self->_ampConfidenceScore;
      [v4 ampConfidenceScore];
      if (ampConfidenceScore != v9)
      {
        goto LABEL_77;
      }
    }
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
  v11 = [v4 assetInfo];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
    v15 = [v4 assetInfo];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self bundleId];
  v11 = [v4 bundleId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(_INPBPrivateMediaItemValueData *)self bundleId];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPrivateMediaItemValueData *)self bundleId];
    v20 = [v4 bundleId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self internalSignals];
  v11 = [v4 internalSignals];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v22 = [(_INPBPrivateMediaItemValueData *)self internalSignals];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBPrivateMediaItemValueData *)self internalSignals];
    v25 = [v4 internalSignals];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v27 = [(_INPBPrivateMediaItemValueData *)self hasIsAvailable];
  if (v27 != [v4 hasIsAvailable])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    if ([v4 hasIsAvailable])
    {
      isAvailable = self->_isAvailable;
      if (isAvailable != [v4 isAvailable])
      {
        goto LABEL_77;
      }
    }
  }

  v29 = [(_INPBPrivateMediaItemValueData *)self hasIsHardBan];
  if (v29 != [v4 hasIsHardBan])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    if ([v4 hasIsHardBan])
    {
      isHardBan = self->_isHardBan;
      if (isHardBan != [v4 isHardBan])
      {
        goto LABEL_77;
      }
    }
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
  v11 = [v4 mediaSubItems];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v31 = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
  if (v31)
  {
    v32 = v31;
    v33 = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
    v34 = [v4 mediaSubItems];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
  v11 = [v4 pegasusMetaData];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v36 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
  if (v36)
  {
    v37 = v36;
    v38 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
    v39 = [v4 pegasusMetaData];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self provider];
  v11 = [v4 provider];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v41 = [(_INPBPrivateMediaItemValueData *)self provider];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBPrivateMediaItemValueData *)self provider];
    v44 = [v4 provider];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self providerAppName];
  v11 = [v4 providerAppName];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v46 = [(_INPBPrivateMediaItemValueData *)self providerAppName];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBPrivateMediaItemValueData *)self providerAppName];
    v49 = [v4 providerAppName];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
  v11 = [v4 punchoutURI];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v51 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
  if (v51)
  {
    v52 = v51;
    v53 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
    v54 = [v4 punchoutURI];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self recommendationId];
  v11 = [v4 recommendationId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v56 = [(_INPBPrivateMediaItemValueData *)self recommendationId];
  if (v56)
  {
    v57 = v56;
    v58 = [(_INPBPrivateMediaItemValueData *)self recommendationId];
    v59 = [v4 recommendationId];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v61 = [(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription];
  if (v61 != [v4 hasRequiresSubscription])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    if ([v4 hasRequiresSubscription])
    {
      requiresSubscription = self->_requiresSubscription;
      if (requiresSubscription != [v4 requiresSubscription])
      {
        goto LABEL_77;
      }
    }
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
  v11 = [v4 sharedUserIdFromPlayableMusicAccount];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_76;
  }

  v63 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
  if (v63)
  {
    v64 = v63;
    v65 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
    v66 = [v4 sharedUserIdFromPlayableMusicAccount];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v10 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
  v11 = [v4 universalResourceLink];
  if ((v10 != 0) != (v11 == 0))
  {
    v68 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    if (!v68)
    {

LABEL_80:
      v73 = 1;
      goto LABEL_78;
    }

    v69 = v68;
    v70 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    v71 = [v4 universalResourceLink];
    v72 = [v70 isEqual:v71];

    if (v72)
    {
      goto LABEL_80;
    }
  }

  else
  {
LABEL_76:
  }

LABEL_77:
  v73 = 0;
LABEL_78:

  return v73;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPrivateMediaItemValueData allocWithZone:](_INPBPrivateMediaItemValueData init];
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setAmpConfidenceLevel:[(_INPBPrivateMediaItemValueData *)self ampConfidenceLevel]];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    [(_INPBPrivateMediaItemValueData *)self ampConfidenceScore];
    [(_INPBPrivateMediaItemValueData *)v5 setAmpConfidenceScore:?];
  }

  v6 = [(NSString *)self->_assetInfo copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setAssetInfo:v6];

  v7 = [(NSString *)self->_bundleId copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setBundleId:v7];

  v8 = [(NSArray *)self->_internalSignals copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setInternalSignals:v8];

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setIsAvailable:[(_INPBPrivateMediaItemValueData *)self isAvailable]];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setIsHardBan:[(_INPBPrivateMediaItemValueData *)self isHardBan]];
  }

  v9 = [(NSArray *)self->_mediaSubItems copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setMediaSubItems:v9];

  v10 = [(NSData *)self->_pegasusMetaData copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setPegasusMetaData:v10];

  v11 = [(NSString *)self->_provider copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setProvider:v11];

  v12 = [(NSString *)self->_providerAppName copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setProviderAppName:v12];

  v13 = [(NSString *)self->_punchoutURI copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setPunchoutURI:v13];

  v14 = [(NSString *)self->_recommendationId copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setRecommendationId:v14];

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setRequiresSubscription:[(_INPBPrivateMediaItemValueData *)self requiresSubscription]];
  }

  v15 = [(NSString *)self->_sharedUserIdFromPlayableMusicAccount copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setSharedUserIdFromPlayableMusicAccount:v15];

  v16 = [(NSString *)self->_universalResourceLink copyWithZone:a3];
  [(_INPBPrivateMediaItemValueData *)v5 setUniversalResourceLink:v16];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivateMediaItemValueData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivateMediaItemValueData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivateMediaItemValueData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    ampConfidenceLevel = self->_ampConfidenceLevel;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    ampConfidenceScore = self->_ampConfidenceScore;
    PBDataWriterWriteFloatField();
  }

  v7 = [(_INPBPrivateMediaItemValueData *)self assetInfo];

  if (v7)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  v9 = [(_INPBPrivateMediaItemValueData *)self bundleId];

  if (v9)
  {
    bundleId = self->_bundleId;
    PBDataWriterWriteStringField();
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = self->_internalSignals;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    do
    {
      v15 = 0;
      do
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v13);
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    isAvailable = self->_isAvailable;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    isHardBan = self->_isHardBan;
    PBDataWriterWriteBOOLField();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = self->_mediaSubItems;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v21);
  }

  v25 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];

  if (v25)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  v27 = [(_INPBPrivateMediaItemValueData *)self provider];

  if (v27)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  v29 = [(_INPBPrivateMediaItemValueData *)self providerAppName];

  if (v29)
  {
    providerAppName = self->_providerAppName;
    PBDataWriterWriteStringField();
  }

  v31 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];

  if (v31)
  {
    punchoutURI = self->_punchoutURI;
    PBDataWriterWriteStringField();
  }

  v33 = [(_INPBPrivateMediaItemValueData *)self recommendationId];

  if (v33)
  {
    recommendationId = self->_recommendationId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    requiresSubscription = self->_requiresSubscription;
    PBDataWriterWriteBOOLField();
  }

  v36 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];

  if (v36)
  {
    sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
    PBDataWriterWriteStringField();
  }

  v38 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];

  if (v38)
  {
    universalResourceLink = self->_universalResourceLink;
    PBDataWriterWriteStringField();
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)setUniversalResourceLink:(id)a3
{
  v4 = [a3 copy];
  universalResourceLink = self->_universalResourceLink;
  self->_universalResourceLink = v4;

  MEMORY[0x1EEE66BB8](v4, universalResourceLink);
}

- (void)setSharedUserIdFromPlayableMusicAccount:(id)a3
{
  v4 = [a3 copy];
  sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
  self->_sharedUserIdFromPlayableMusicAccount = v4;

  MEMORY[0x1EEE66BB8](v4, sharedUserIdFromPlayableMusicAccount);
}

- (void)setHasRequiresSubscription:(BOOL)a3
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

- (void)setRecommendationId:(id)a3
{
  v4 = [a3 copy];
  recommendationId = self->_recommendationId;
  self->_recommendationId = v4;

  MEMORY[0x1EEE66BB8](v4, recommendationId);
}

- (void)setPunchoutURI:(id)a3
{
  v4 = [a3 copy];
  punchoutURI = self->_punchoutURI;
  self->_punchoutURI = v4;

  MEMORY[0x1EEE66BB8](v4, punchoutURI);
}

- (void)setProviderAppName:(id)a3
{
  v4 = [a3 copy];
  providerAppName = self->_providerAppName;
  self->_providerAppName = v4;

  MEMORY[0x1EEE66BB8](v4, providerAppName);
}

- (void)setProvider:(id)a3
{
  v4 = [a3 copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setPegasusMetaData:(id)a3
{
  v4 = [a3 copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)addMediaSubItems:(id)a3
{
  v4 = a3;
  mediaSubItems = self->_mediaSubItems;
  v8 = v4;
  if (!mediaSubItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaSubItems;
    self->_mediaSubItems = v6;

    v4 = v8;
    mediaSubItems = self->_mediaSubItems;
  }

  [(NSArray *)mediaSubItems addObject:v4];
}

- (void)setMediaSubItems:(id)a3
{
  v4 = [a3 mutableCopy];
  mediaSubItems = self->_mediaSubItems;
  self->_mediaSubItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaSubItems);
}

- (void)setHasIsHardBan:(BOOL)a3
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

- (void)setHasIsAvailable:(BOOL)a3
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

- (void)addInternalSignal:(id)a3
{
  v4 = a3;
  internalSignals = self->_internalSignals;
  v8 = v4;
  if (!internalSignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_internalSignals;
    self->_internalSignals = v6;

    v4 = v8;
    internalSignals = self->_internalSignals;
  }

  [(NSArray *)internalSignals addObject:v4];
}

- (void)setInternalSignals:(id)a3
{
  v4 = [a3 mutableCopy];
  internalSignals = self->_internalSignals;
  self->_internalSignals = v4;

  MEMORY[0x1EEE66BB8](v4, internalSignals);
}

- (void)setBundleId:(id)a3
{
  v4 = [a3 copy];
  bundleId = self->_bundleId;
  self->_bundleId = v4;

  MEMORY[0x1EEE66BB8](v4, bundleId);
}

- (void)setAssetInfo:(id)a3
{
  v4 = [a3 copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

- (void)setHasAmpConfidenceScore:(BOOL)a3
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

- (int)StringAsAmpConfidenceLevel:(id)a3
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

- (void)setAmpConfidenceLevel:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_ampConfidenceLevel = a3;
  }
}

@end