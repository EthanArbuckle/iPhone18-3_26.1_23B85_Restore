@interface _INPBPrivateMediaItemValueData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivateMediaItemValueData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAmpConfidenceLevel:(id)level;
- (unint64_t)hash;
- (void)addInternalSignal:(id)signal;
- (void)addMediaSubItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)setAmpConfidenceLevel:(int)level;
- (void)setAssetInfo:(id)info;
- (void)setBundleId:(id)id;
- (void)setHasAmpConfidenceScore:(BOOL)score;
- (void)setHasIsAvailable:(BOOL)available;
- (void)setHasIsHardBan:(BOOL)ban;
- (void)setHasRequiresSubscription:(BOOL)subscription;
- (void)setInternalSignals:(id)signals;
- (void)setMediaSubItems:(id)items;
- (void)setPegasusMetaData:(id)data;
- (void)setProvider:(id)provider;
- (void)setProviderAppName:(id)name;
- (void)setPunchoutURI:(id)i;
- (void)setRecommendationId:(id)id;
- (void)setSharedUserIdFromPlayableMusicAccount:(id)account;
- (void)setUniversalResourceLink:(id)link;
- (void)writeTo:(id)to;
@end

@implementation _INPBPrivateMediaItemValueData

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    ampConfidenceLevel = [(_INPBPrivateMediaItemValueData *)self ampConfidenceLevel];
    if (ampConfidenceLevel > 19)
    {
      if (ampConfidenceLevel == 20)
      {
        v5 = @"MEDIUM";
        goto LABEL_12;
      }

      if (ampConfidenceLevel == 30)
      {
        v5 = @"HIGH";
        goto LABEL_12;
      }
    }

    else
    {
      if (!ampConfidenceLevel)
      {
        v5 = @"UNKNOWN_CONFIDENCE_LEVEL";
        goto LABEL_12;
      }

      if (ampConfidenceLevel == 10)
      {
        v5 = @"LOW";
LABEL_12:
        [dictionary setObject:v5 forKeyedSubscript:@"ampConfidenceLevel"];

        goto LABEL_13;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", ampConfidenceLevel];
    goto LABEL_12;
  }

LABEL_13:
  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    v6 = MEMORY[0x1E696AD98];
    [(_INPBPrivateMediaItemValueData *)self ampConfidenceScore];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"ampConfidenceScore"];
  }

  if (self->_assetInfo)
  {
    assetInfo = [(_INPBPrivateMediaItemValueData *)self assetInfo];
    v9 = [assetInfo copy];
    [dictionary setObject:v9 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_bundleId)
  {
    bundleId = [(_INPBPrivateMediaItemValueData *)self bundleId];
    v11 = [bundleId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"bundleId"];
  }

  if (self->_internalSignals)
  {
    internalSignals = [(_INPBPrivateMediaItemValueData *)self internalSignals];
    v13 = [internalSignals copy];
    [dictionary setObject:v13 forKeyedSubscript:@"internalSignal"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData isAvailable](self, "isAvailable")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isAvailable"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData isHardBan](self, "isHardBan")}];
    [dictionary setObject:v15 forKeyedSubscript:@"isHardBan"];
  }

  if ([(NSArray *)self->_mediaSubItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaSubItems"];
  }

  if (self->_pegasusMetaData)
  {
    pegasusMetaData = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
    v24 = [pegasusMetaData copy];
    [dictionary setObject:v24 forKeyedSubscript:@"pegasusMetaData"];
  }

  if (self->_provider)
  {
    provider = [(_INPBPrivateMediaItemValueData *)self provider];
    v26 = [provider copy];
    [dictionary setObject:v26 forKeyedSubscript:@"provider"];
  }

  if (self->_providerAppName)
  {
    providerAppName = [(_INPBPrivateMediaItemValueData *)self providerAppName];
    v28 = [providerAppName copy];
    [dictionary setObject:v28 forKeyedSubscript:@"providerAppName"];
  }

  if (self->_punchoutURI)
  {
    punchoutURI = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
    v30 = [punchoutURI copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutURI"];
  }

  if (self->_recommendationId)
  {
    recommendationId = [(_INPBPrivateMediaItemValueData *)self recommendationId];
    v32 = [recommendationId copy];
    [dictionary setObject:v32 forKeyedSubscript:@"recommendationId"];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivateMediaItemValueData requiresSubscription](self, "requiresSubscription")}];
    [dictionary setObject:v33 forKeyedSubscript:@"requiresSubscription"];
  }

  if (self->_sharedUserIdFromPlayableMusicAccount)
  {
    sharedUserIdFromPlayableMusicAccount = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
    v35 = [sharedUserIdFromPlayableMusicAccount copy];
    [dictionary setObject:v35 forKeyedSubscript:@"sharedUserIdFromPlayableMusicAccount"];
  }

  if (self->_universalResourceLink)
  {
    universalResourceLink = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    v37 = [universalResourceLink copy];
    [dictionary setObject:v37 forKeyedSubscript:@"universalResourceLink"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  hasAmpConfidenceLevel = [(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel];
  if (hasAmpConfidenceLevel != [equalCopy hasAmpConfidenceLevel])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceLevel])
  {
    if ([equalCopy hasAmpConfidenceLevel])
    {
      ampConfidenceLevel = self->_ampConfidenceLevel;
      if (ampConfidenceLevel != [equalCopy ampConfidenceLevel])
      {
        goto LABEL_77;
      }
    }
  }

  hasAmpConfidenceScore = [(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore];
  if (hasAmpConfidenceScore != [equalCopy hasAmpConfidenceScore])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasAmpConfidenceScore])
  {
    if ([equalCopy hasAmpConfidenceScore])
    {
      ampConfidenceScore = self->_ampConfidenceScore;
      [equalCopy ampConfidenceScore];
      if (ampConfidenceScore != v9)
      {
        goto LABEL_77;
      }
    }
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self assetInfo];
  assetInfo2 = [equalCopy assetInfo];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  assetInfo3 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
  if (assetInfo3)
  {
    v13 = assetInfo3;
    assetInfo4 = [(_INPBPrivateMediaItemValueData *)self assetInfo];
    assetInfo5 = [equalCopy assetInfo];
    v16 = [assetInfo4 isEqual:assetInfo5];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self bundleId];
  assetInfo2 = [equalCopy bundleId];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  bundleId = [(_INPBPrivateMediaItemValueData *)self bundleId];
  if (bundleId)
  {
    v18 = bundleId;
    bundleId2 = [(_INPBPrivateMediaItemValueData *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v21 = [bundleId2 isEqual:bundleId3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self internalSignals];
  assetInfo2 = [equalCopy internalSignals];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  internalSignals = [(_INPBPrivateMediaItemValueData *)self internalSignals];
  if (internalSignals)
  {
    v23 = internalSignals;
    internalSignals2 = [(_INPBPrivateMediaItemValueData *)self internalSignals];
    internalSignals3 = [equalCopy internalSignals];
    v26 = [internalSignals2 isEqual:internalSignals3];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  hasIsAvailable = [(_INPBPrivateMediaItemValueData *)self hasIsAvailable];
  if (hasIsAvailable != [equalCopy hasIsAvailable])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    if ([equalCopy hasIsAvailable])
    {
      isAvailable = self->_isAvailable;
      if (isAvailable != [equalCopy isAvailable])
      {
        goto LABEL_77;
      }
    }
  }

  hasIsHardBan = [(_INPBPrivateMediaItemValueData *)self hasIsHardBan];
  if (hasIsHardBan != [equalCopy hasIsHardBan])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    if ([equalCopy hasIsHardBan])
    {
      isHardBan = self->_isHardBan;
      if (isHardBan != [equalCopy isHardBan])
      {
        goto LABEL_77;
      }
    }
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
  assetInfo2 = [equalCopy mediaSubItems];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  mediaSubItems = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
  if (mediaSubItems)
  {
    v32 = mediaSubItems;
    mediaSubItems2 = [(_INPBPrivateMediaItemValueData *)self mediaSubItems];
    mediaSubItems3 = [equalCopy mediaSubItems];
    v35 = [mediaSubItems2 isEqual:mediaSubItems3];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
  assetInfo2 = [equalCopy pegasusMetaData];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  pegasusMetaData = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
  if (pegasusMetaData)
  {
    v37 = pegasusMetaData;
    pegasusMetaData2 = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];
    pegasusMetaData3 = [equalCopy pegasusMetaData];
    v40 = [pegasusMetaData2 isEqual:pegasusMetaData3];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self provider];
  assetInfo2 = [equalCopy provider];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  provider = [(_INPBPrivateMediaItemValueData *)self provider];
  if (provider)
  {
    v42 = provider;
    provider2 = [(_INPBPrivateMediaItemValueData *)self provider];
    provider3 = [equalCopy provider];
    v45 = [provider2 isEqual:provider3];

    if (!v45)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self providerAppName];
  assetInfo2 = [equalCopy providerAppName];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  providerAppName = [(_INPBPrivateMediaItemValueData *)self providerAppName];
  if (providerAppName)
  {
    v47 = providerAppName;
    providerAppName2 = [(_INPBPrivateMediaItemValueData *)self providerAppName];
    providerAppName3 = [equalCopy providerAppName];
    v50 = [providerAppName2 isEqual:providerAppName3];

    if (!v50)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
  assetInfo2 = [equalCopy punchoutURI];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  punchoutURI = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
  if (punchoutURI)
  {
    v52 = punchoutURI;
    punchoutURI2 = [(_INPBPrivateMediaItemValueData *)self punchoutURI];
    punchoutURI3 = [equalCopy punchoutURI];
    v55 = [punchoutURI2 isEqual:punchoutURI3];

    if (!v55)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self recommendationId];
  assetInfo2 = [equalCopy recommendationId];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  recommendationId = [(_INPBPrivateMediaItemValueData *)self recommendationId];
  if (recommendationId)
  {
    v57 = recommendationId;
    recommendationId2 = [(_INPBPrivateMediaItemValueData *)self recommendationId];
    recommendationId3 = [equalCopy recommendationId];
    v60 = [recommendationId2 isEqual:recommendationId3];

    if (!v60)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  hasRequiresSubscription = [(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription];
  if (hasRequiresSubscription != [equalCopy hasRequiresSubscription])
  {
    goto LABEL_77;
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    if ([equalCopy hasRequiresSubscription])
    {
      requiresSubscription = self->_requiresSubscription;
      if (requiresSubscription != [equalCopy requiresSubscription])
      {
        goto LABEL_77;
      }
    }
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
  assetInfo2 = [equalCopy sharedUserIdFromPlayableMusicAccount];
  if ((assetInfo != 0) == (assetInfo2 == 0))
  {
    goto LABEL_76;
  }

  sharedUserIdFromPlayableMusicAccount = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
  if (sharedUserIdFromPlayableMusicAccount)
  {
    v64 = sharedUserIdFromPlayableMusicAccount;
    sharedUserIdFromPlayableMusicAccount2 = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];
    sharedUserIdFromPlayableMusicAccount3 = [equalCopy sharedUserIdFromPlayableMusicAccount];
    v67 = [sharedUserIdFromPlayableMusicAccount2 isEqual:sharedUserIdFromPlayableMusicAccount3];

    if (!v67)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  assetInfo = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
  assetInfo2 = [equalCopy universalResourceLink];
  if ((assetInfo != 0) != (assetInfo2 == 0))
  {
    universalResourceLink = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    if (!universalResourceLink)
    {

LABEL_80:
      v73 = 1;
      goto LABEL_78;
    }

    v69 = universalResourceLink;
    universalResourceLink2 = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];
    universalResourceLink3 = [equalCopy universalResourceLink];
    v72 = [universalResourceLink2 isEqual:universalResourceLink3];

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

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(NSString *)self->_assetInfo copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setAssetInfo:v6];

  v7 = [(NSString *)self->_bundleId copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setBundleId:v7];

  v8 = [(NSArray *)self->_internalSignals copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setInternalSignals:v8];

  if ([(_INPBPrivateMediaItemValueData *)self hasIsAvailable])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setIsAvailable:[(_INPBPrivateMediaItemValueData *)self isAvailable]];
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasIsHardBan])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setIsHardBan:[(_INPBPrivateMediaItemValueData *)self isHardBan]];
  }

  v9 = [(NSArray *)self->_mediaSubItems copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setMediaSubItems:v9];

  v10 = [(NSData *)self->_pegasusMetaData copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setPegasusMetaData:v10];

  v11 = [(NSString *)self->_provider copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setProvider:v11];

  v12 = [(NSString *)self->_providerAppName copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setProviderAppName:v12];

  v13 = [(NSString *)self->_punchoutURI copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setPunchoutURI:v13];

  v14 = [(NSString *)self->_recommendationId copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setRecommendationId:v14];

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    [(_INPBPrivateMediaItemValueData *)v5 setRequiresSubscription:[(_INPBPrivateMediaItemValueData *)self requiresSubscription]];
  }

  v15 = [(NSString *)self->_sharedUserIdFromPlayableMusicAccount copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setSharedUserIdFromPlayableMusicAccount:v15];

  v16 = [(NSString *)self->_universalResourceLink copyWithZone:zone];
  [(_INPBPrivateMediaItemValueData *)v5 setUniversalResourceLink:v16];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivateMediaItemValueData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivateMediaItemValueData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivateMediaItemValueData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v51 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  assetInfo = [(_INPBPrivateMediaItemValueData *)self assetInfo];

  if (assetInfo)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  bundleId = [(_INPBPrivateMediaItemValueData *)self bundleId];

  if (bundleId)
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

  pegasusMetaData = [(_INPBPrivateMediaItemValueData *)self pegasusMetaData];

  if (pegasusMetaData)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  provider = [(_INPBPrivateMediaItemValueData *)self provider];

  if (provider)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  providerAppName = [(_INPBPrivateMediaItemValueData *)self providerAppName];

  if (providerAppName)
  {
    providerAppName = self->_providerAppName;
    PBDataWriterWriteStringField();
  }

  punchoutURI = [(_INPBPrivateMediaItemValueData *)self punchoutURI];

  if (punchoutURI)
  {
    punchoutURI = self->_punchoutURI;
    PBDataWriterWriteStringField();
  }

  recommendationId = [(_INPBPrivateMediaItemValueData *)self recommendationId];

  if (recommendationId)
  {
    recommendationId = self->_recommendationId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPrivateMediaItemValueData *)self hasRequiresSubscription])
  {
    requiresSubscription = self->_requiresSubscription;
    PBDataWriterWriteBOOLField();
  }

  sharedUserIdFromPlayableMusicAccount = [(_INPBPrivateMediaItemValueData *)self sharedUserIdFromPlayableMusicAccount];

  if (sharedUserIdFromPlayableMusicAccount)
  {
    sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
    PBDataWriterWriteStringField();
  }

  universalResourceLink = [(_INPBPrivateMediaItemValueData *)self universalResourceLink];

  if (universalResourceLink)
  {
    universalResourceLink = self->_universalResourceLink;
    PBDataWriterWriteStringField();
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)setUniversalResourceLink:(id)link
{
  v4 = [link copy];
  universalResourceLink = self->_universalResourceLink;
  self->_universalResourceLink = v4;

  MEMORY[0x1EEE66BB8](v4, universalResourceLink);
}

- (void)setSharedUserIdFromPlayableMusicAccount:(id)account
{
  v4 = [account copy];
  sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
  self->_sharedUserIdFromPlayableMusicAccount = v4;

  MEMORY[0x1EEE66BB8](v4, sharedUserIdFromPlayableMusicAccount);
}

- (void)setHasRequiresSubscription:(BOOL)subscription
{
  if (subscription)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setRecommendationId:(id)id
{
  v4 = [id copy];
  recommendationId = self->_recommendationId;
  self->_recommendationId = v4;

  MEMORY[0x1EEE66BB8](v4, recommendationId);
}

- (void)setPunchoutURI:(id)i
{
  v4 = [i copy];
  punchoutURI = self->_punchoutURI;
  self->_punchoutURI = v4;

  MEMORY[0x1EEE66BB8](v4, punchoutURI);
}

- (void)setProviderAppName:(id)name
{
  v4 = [name copy];
  providerAppName = self->_providerAppName;
  self->_providerAppName = v4;

  MEMORY[0x1EEE66BB8](v4, providerAppName);
}

- (void)setProvider:(id)provider
{
  v4 = [provider copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setPegasusMetaData:(id)data
{
  v4 = [data copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)addMediaSubItems:(id)items
{
  itemsCopy = items;
  mediaSubItems = self->_mediaSubItems;
  v8 = itemsCopy;
  if (!mediaSubItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaSubItems;
    self->_mediaSubItems = array;

    itemsCopy = v8;
    mediaSubItems = self->_mediaSubItems;
  }

  [(NSArray *)mediaSubItems addObject:itemsCopy];
}

- (void)setMediaSubItems:(id)items
{
  v4 = [items mutableCopy];
  mediaSubItems = self->_mediaSubItems;
  self->_mediaSubItems = v4;

  MEMORY[0x1EEE66BB8](v4, mediaSubItems);
}

- (void)setHasIsHardBan:(BOOL)ban
{
  if (ban)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addInternalSignal:(id)signal
{
  signalCopy = signal;
  internalSignals = self->_internalSignals;
  v8 = signalCopy;
  if (!internalSignals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_internalSignals;
    self->_internalSignals = array;

    signalCopy = v8;
    internalSignals = self->_internalSignals;
  }

  [(NSArray *)internalSignals addObject:signalCopy];
}

- (void)setInternalSignals:(id)signals
{
  v4 = [signals mutableCopy];
  internalSignals = self->_internalSignals;
  self->_internalSignals = v4;

  MEMORY[0x1EEE66BB8](v4, internalSignals);
}

- (void)setBundleId:(id)id
{
  v4 = [id copy];
  bundleId = self->_bundleId;
  self->_bundleId = v4;

  MEMORY[0x1EEE66BB8](v4, bundleId);
}

- (void)setAssetInfo:(id)info
{
  v4 = [info copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

- (void)setHasAmpConfidenceScore:(BOOL)score
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

- (int)StringAsAmpConfidenceLevel:(id)level
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

- (void)setAmpConfidenceLevel:(int)level
{
  has = self->_has;
  if (level == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_ampConfidenceLevel = level;
  }
}

@end