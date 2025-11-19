@interface INPrivateMediaItemValueData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivateMediaItemValueData)initWithCoder:(id)a3;
- (INPrivateMediaItemValueData)initWithRecommendationId:(id)a3 assetInfo:(id)a4 sharedUserIdFromPlayableMusicAccount:(id)a5 punchoutURI:(id)a6 requiresSubscription:(id)a7 provider:(id)a8 isAvailable:(id)a9 isHardBan:(id)a10 bundleId:(id)a11 universalResourceLink:(id)a12 providerAppName:(id)a13 internalSignals:(id)a14 ampConfidenceScore:(id)a15 ampConfidenceLevel:(int64_t)a16 pegasusMetaData:(id)a17 mediaSubItems:(id)a18;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivateMediaItemValueData

- (id)_dictionaryRepresentation
{
  v51[16] = *MEMORY[0x1E69E9840];
  recommendationId = self->_recommendationId;
  v49 = recommendationId;
  v50[0] = @"recommendationId";
  if (!recommendationId)
  {
    recommendationId = [MEMORY[0x1E695DFB0] null];
  }

  v39 = recommendationId;
  v51[0] = recommendationId;
  v50[1] = @"assetInfo";
  assetInfo = self->_assetInfo;
  v48 = assetInfo;
  if (!assetInfo)
  {
    assetInfo = [MEMORY[0x1E695DFB0] null];
  }

  v38 = assetInfo;
  v51[1] = assetInfo;
  v50[2] = @"sharedUserIdFromPlayableMusicAccount";
  sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
  v47 = sharedUserIdFromPlayableMusicAccount;
  if (!sharedUserIdFromPlayableMusicAccount)
  {
    sharedUserIdFromPlayableMusicAccount = [MEMORY[0x1E695DFB0] null];
  }

  v37 = sharedUserIdFromPlayableMusicAccount;
  v51[2] = sharedUserIdFromPlayableMusicAccount;
  v50[3] = @"punchoutURI";
  punchoutURI = self->_punchoutURI;
  v46 = punchoutURI;
  if (!punchoutURI)
  {
    punchoutURI = [MEMORY[0x1E695DFB0] null];
  }

  v36 = punchoutURI;
  v51[3] = punchoutURI;
  v50[4] = @"requiresSubscription";
  requiresSubscription = self->_requiresSubscription;
  v45 = requiresSubscription;
  if (!requiresSubscription)
  {
    requiresSubscription = [MEMORY[0x1E695DFB0] null];
  }

  v35 = requiresSubscription;
  v51[4] = requiresSubscription;
  v50[5] = @"provider";
  provider = self->_provider;
  v44 = provider;
  if (!provider)
  {
    provider = [MEMORY[0x1E695DFB0] null];
  }

  v34 = provider;
  v51[5] = provider;
  v50[6] = @"isAvailable";
  isAvailable = self->_isAvailable;
  v43 = isAvailable;
  if (!isAvailable)
  {
    isAvailable = [MEMORY[0x1E695DFB0] null];
  }

  v33 = isAvailable;
  v51[6] = isAvailable;
  v50[7] = @"isHardBan";
  isHardBan = self->_isHardBan;
  v42 = isHardBan;
  if (!isHardBan)
  {
    isHardBan = [MEMORY[0x1E695DFB0] null];
  }

  v32 = isHardBan;
  v51[7] = isHardBan;
  v50[8] = @"bundleId";
  bundleId = self->_bundleId;
  v41 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x1E695DFB0] null];
  }

  v31 = bundleId;
  v51[8] = bundleId;
  v50[9] = @"universalResourceLink";
  universalResourceLink = self->_universalResourceLink;
  v13 = universalResourceLink;
  if (!universalResourceLink)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v13;
  v51[9] = v13;
  v50[10] = @"providerAppName";
  providerAppName = self->_providerAppName;
  v15 = providerAppName;
  if (!providerAppName)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v15;
  v51[10] = v15;
  v50[11] = @"internalSignals";
  internalSignals = self->_internalSignals;
  v17 = internalSignals;
  if (!internalSignals)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v17;
  v51[11] = v17;
  v50[12] = @"ampConfidenceScore";
  ampConfidenceScore = self->_ampConfidenceScore;
  v19 = ampConfidenceScore;
  if (!ampConfidenceScore)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v51[12] = v19;
  v50[13] = @"ampConfidenceLevel";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_ampConfidenceLevel, v27}];
  v51[13] = v20;
  v50[14] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  v22 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v51[14] = v22;
  v50[15] = @"mediaSubItems";
  mediaSubItems = self->_mediaSubItems;
  v24 = mediaSubItems;
  if (!mediaSubItems)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v51[15] = v24;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:16];
  if (mediaSubItems)
  {
    if (pegasusMetaData)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (pegasusMetaData)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (ampConfidenceScore)
  {
    if (internalSignals)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (internalSignals)
    {
LABEL_35:
      if (providerAppName)
      {
        goto LABEL_36;
      }

LABEL_62:

      if (universalResourceLink)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  if (!providerAppName)
  {
    goto LABEL_62;
  }

LABEL_36:
  if (universalResourceLink)
  {
    goto LABEL_37;
  }

LABEL_63:

LABEL_37:
  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  v25 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateMediaItemValueData;
  v6 = [(INPrivateMediaItemValueData *)&v11 description];
  v7 = [(INPrivateMediaItemValueData *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_recommendationId];
  [v7 if_setObjectIfNonNil:v8 forKey:@"recommendationId"];

  v9 = [v6 encodeObject:self->_assetInfo];
  [v7 if_setObjectIfNonNil:v9 forKey:@"assetInfo"];

  v10 = [v6 encodeObject:self->_sharedUserIdFromPlayableMusicAccount];
  [v7 if_setObjectIfNonNil:v10 forKey:@"sharedUserIdFromPlayableMusicAccount"];

  v11 = [v6 encodeObject:self->_punchoutURI];
  [v7 if_setObjectIfNonNil:v11 forKey:@"punchoutURI"];

  v12 = [v6 encodeObject:self->_requiresSubscription];
  [v7 if_setObjectIfNonNil:v12 forKey:@"requiresSubscription"];

  v13 = [v6 encodeObject:self->_provider];
  [v7 if_setObjectIfNonNil:v13 forKey:@"provider"];

  v14 = [v6 encodeObject:self->_isAvailable];
  [v7 if_setObjectIfNonNil:v14 forKey:@"isAvailable"];

  v15 = [v6 encodeObject:self->_isHardBan];
  [v7 if_setObjectIfNonNil:v15 forKey:@"isHardBan"];

  v16 = [v6 encodeObject:self->_bundleId];
  [v7 if_setObjectIfNonNil:v16 forKey:@"bundleId"];

  v17 = [v6 encodeObject:self->_universalResourceLink];
  [v7 if_setObjectIfNonNil:v17 forKey:@"universalResourceLink"];

  v18 = [v6 encodeObject:self->_providerAppName];
  [v7 if_setObjectIfNonNil:v18 forKey:@"providerAppName"];

  v19 = [v6 encodeObject:self->_internalSignals];
  [v7 if_setObjectIfNonNil:v19 forKey:@"internalSignals"];

  v20 = [v6 encodeObject:self->_ampConfidenceScore];
  [v7 if_setObjectIfNonNil:v20 forKey:@"ampConfidenceScore"];

  v21 = self->_ampConfidenceLevel - 1;
  if (v21 > 2)
  {
    v22 = @"unknown";
  }

  else
  {
    v22 = off_1E7287F98[v21];
  }

  v23 = v22;
  [v7 if_setObjectIfNonNil:v23 forKey:@"ampConfidenceLevel"];

  v24 = [v6 encodeObject:self->_pegasusMetaData];
  [v7 if_setObjectIfNonNil:v24 forKey:@"pegasusMetaData"];

  v25 = [v6 encodeObject:self->_mediaSubItems];

  [v7 if_setObjectIfNonNil:v25 forKey:@"mediaSubItems"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  recommendationId = self->_recommendationId;
  v5 = a3;
  [v5 encodeObject:recommendationId forKey:@"recommendationId"];
  [v5 encodeObject:self->_assetInfo forKey:@"assetInfo"];
  [v5 encodeObject:self->_sharedUserIdFromPlayableMusicAccount forKey:@"sharedUserIdFromPlayableMusicAccount"];
  [v5 encodeObject:self->_punchoutURI forKey:@"punchoutURI"];
  [v5 encodeObject:self->_requiresSubscription forKey:@"requiresSubscription"];
  [v5 encodeObject:self->_provider forKey:@"provider"];
  [v5 encodeObject:self->_isAvailable forKey:@"isAvailable"];
  [v5 encodeObject:self->_isHardBan forKey:@"isHardBan"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_universalResourceLink forKey:@"universalResourceLink"];
  [v5 encodeObject:self->_providerAppName forKey:@"providerAppName"];
  [v5 encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [v5 encodeObject:self->_ampConfidenceScore forKey:@"ampConfidenceScore"];
  [v5 encodeInteger:self->_ampConfidenceLevel forKey:@"ampConfidenceLevel"];
  [v5 encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
  [v5 encodeObject:self->_mediaSubItems forKey:@"mediaSubItems"];
}

- (INPrivateMediaItemValueData)initWithCoder:(id)a3
{
  v55[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v53 = [v4 decodeObjectOfClasses:v6 forKey:@"recommendationId"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v52 = [v4 decodeObjectOfClasses:v9 forKey:@"assetInfo"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v51 = [v4 decodeObjectOfClasses:v12 forKey:@"sharedUserIdFromPlayableMusicAccount"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v50 = [v4 decodeObjectOfClasses:v15 forKey:@"punchoutURI"];

  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresSubscription"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v46 = [v4 decodeObjectOfClasses:v18 forKey:@"provider"];

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAvailable"];
  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isHardBan"];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v43 = [v4 decodeObjectOfClasses:v21 forKey:@"bundleId"];

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v42 = [v4 decodeObjectOfClasses:v24 forKey:@"universalResourceLink"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v28 = [v4 decodeObjectOfClasses:v27 forKey:@"providerAppName"];

  v29 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v55[2] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  v31 = [v29 setWithArray:v30];
  v41 = [v4 decodeObjectOfClasses:v31 forKey:@"internalSignals"];

  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ampConfidenceScore"];
  v33 = [v4 decodeIntegerForKey:@"ampConfidenceLevel"];
  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];
  v35 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v37 = [v35 setWithArray:v36];
  v38 = [v4 decodeObjectOfClasses:v37 forKey:@"mediaSubItems"];

  v49 = [(INPrivateMediaItemValueData *)self initWithRecommendationId:v53 assetInfo:v52 sharedUserIdFromPlayableMusicAccount:v51 punchoutURI:v50 requiresSubscription:v47 provider:v46 isAvailable:v45 isHardBan:v44 bundleId:v43 universalResourceLink:v42 providerAppName:v28 internalSignals:v41 ampConfidenceScore:v32 ampConfidenceLevel:v33 pegasusMetaData:v34 mediaSubItems:v38];
  v39 = *MEMORY[0x1E69E9840];
  return v49;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      recommendationId = self->_recommendationId;
      if (recommendationId != v5->_recommendationId && ![(NSString *)recommendationId isEqual:?])
      {
        goto LABEL_37;
      }

      assetInfo = self->_assetInfo;
      if (assetInfo != v5->_assetInfo && ![(NSString *)assetInfo isEqual:?])
      {
        goto LABEL_37;
      }

      sharedUserIdFromPlayableMusicAccount = self->_sharedUserIdFromPlayableMusicAccount;
      if (sharedUserIdFromPlayableMusicAccount != v5->_sharedUserIdFromPlayableMusicAccount && ![(NSString *)sharedUserIdFromPlayableMusicAccount isEqual:?])
      {
        goto LABEL_37;
      }

      punchoutURI = self->_punchoutURI;
      if (punchoutURI != v5->_punchoutURI && ![(NSString *)punchoutURI isEqual:?])
      {
        goto LABEL_37;
      }

      requiresSubscription = self->_requiresSubscription;
      if (requiresSubscription != v5->_requiresSubscription && ![(NSNumber *)requiresSubscription isEqual:?])
      {
        goto LABEL_37;
      }

      provider = self->_provider;
      if (provider != v5->_provider && ![(NSString *)provider isEqual:?])
      {
        goto LABEL_37;
      }

      isAvailable = self->_isAvailable;
      if (isAvailable != v5->_isAvailable && ![(NSNumber *)isAvailable isEqual:?])
      {
        goto LABEL_37;
      }

      isHardBan = self->_isHardBan;
      if (isHardBan != v5->_isHardBan && ![(NSNumber *)isHardBan isEqual:?])
      {
        goto LABEL_37;
      }

      if (((bundleId = self->_bundleId, bundleId == v5->_bundleId) || [(NSString *)bundleId isEqual:?]) && ((universalResourceLink = self->_universalResourceLink, universalResourceLink == v5->_universalResourceLink) || [(NSString *)universalResourceLink isEqual:?]) && ((providerAppName = self->_providerAppName, providerAppName == v5->_providerAppName) || [(NSString *)providerAppName isEqual:?]) && ((internalSignals = self->_internalSignals, internalSignals == v5->_internalSignals) || [(NSArray *)internalSignals isEqual:?]) && ((ampConfidenceScore = self->_ampConfidenceScore, ampConfidenceScore == v5->_ampConfidenceScore) || [(NSNumber *)ampConfidenceScore isEqual:?]) && self->_ampConfidenceLevel == v5->_ampConfidenceLevel && ((pegasusMetaData = self->_pegasusMetaData, pegasusMetaData == v5->_pegasusMetaData) || [(NSData *)pegasusMetaData isEqual:?]) && ((mediaSubItems = self->_mediaSubItems, mediaSubItems == v5->_mediaSubItems) || [(NSArray *)mediaSubItems isEqual:?]))
      {
        v21 = 1;
      }

      else
      {
LABEL_37:
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recommendationId hash];
  v4 = [(NSString *)self->_assetInfo hash]^ v3;
  v5 = [(NSString *)self->_sharedUserIdFromPlayableMusicAccount hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_punchoutURI hash];
  v7 = [(NSNumber *)self->_requiresSubscription hash];
  v8 = v7 ^ [(NSString *)self->_provider hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_isAvailable hash];
  v10 = [(NSNumber *)self->_isHardBan hash];
  v11 = v10 ^ [(NSString *)self->_bundleId hash];
  v12 = v11 ^ [(NSString *)self->_universalResourceLink hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_providerAppName hash];
  v14 = [(NSArray *)self->_internalSignals hash];
  v15 = v14 ^ [(NSNumber *)self->_ampConfidenceScore hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_ampConfidenceLevel];
  v17 = v15 ^ [v16 hash];
  v18 = v13 ^ v17 ^ [(NSData *)self->_pegasusMetaData hash];
  v19 = [(NSArray *)self->_mediaSubItems hash];

  return v18 ^ v19;
}

- (INPrivateMediaItemValueData)initWithRecommendationId:(id)a3 assetInfo:(id)a4 sharedUserIdFromPlayableMusicAccount:(id)a5 punchoutURI:(id)a6 requiresSubscription:(id)a7 provider:(id)a8 isAvailable:(id)a9 isHardBan:(id)a10 bundleId:(id)a11 universalResourceLink:(id)a12 providerAppName:(id)a13 internalSignals:(id)a14 ampConfidenceScore:(id)a15 ampConfidenceLevel:(int64_t)a16 pegasusMetaData:(id)a17 mediaSubItems:(id)a18
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v73 = a7;
  v72 = a8;
  v27 = v26;
  v71 = a9;
  v28 = v25;
  v70 = a10;
  v29 = v24;
  v69 = a11;
  v68 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v33 = a17;
  v34 = a18;
  v74.receiver = self;
  v74.super_class = INPrivateMediaItemValueData;
  v35 = [(INPrivateMediaItemValueData *)&v74 init];
  if (v35)
  {
    v36 = [v23 copy];
    recommendationId = v35->_recommendationId;
    v35->_recommendationId = v36;

    v38 = [v29 copy];
    assetInfo = v35->_assetInfo;
    v35->_assetInfo = v38;

    v40 = [v28 copy];
    sharedUserIdFromPlayableMusicAccount = v35->_sharedUserIdFromPlayableMusicAccount;
    v35->_sharedUserIdFromPlayableMusicAccount = v40;

    v42 = [v27 copy];
    punchoutURI = v35->_punchoutURI;
    v35->_punchoutURI = v42;

    v44 = [v73 copy];
    requiresSubscription = v35->_requiresSubscription;
    v35->_requiresSubscription = v44;

    v46 = [v72 copy];
    provider = v35->_provider;
    v35->_provider = v46;

    v48 = [v71 copy];
    isAvailable = v35->_isAvailable;
    v35->_isAvailable = v48;

    v50 = [v70 copy];
    isHardBan = v35->_isHardBan;
    v35->_isHardBan = v50;

    v52 = [v69 copy];
    bundleId = v35->_bundleId;
    v35->_bundleId = v52;

    v54 = [v68 copy];
    universalResourceLink = v35->_universalResourceLink;
    v35->_universalResourceLink = v54;

    v56 = [v30 copy];
    providerAppName = v35->_providerAppName;
    v35->_providerAppName = v56;

    v58 = [v31 copy];
    internalSignals = v35->_internalSignals;
    v35->_internalSignals = v58;

    v60 = [v32 copy];
    ampConfidenceScore = v35->_ampConfidenceScore;
    v35->_ampConfidenceScore = v60;

    v35->_ampConfidenceLevel = a16;
    v62 = [v33 copy];
    pegasusMetaData = v35->_pegasusMetaData;
    v35->_pegasusMetaData = v62;

    v64 = [v34 copy];
    mediaSubItems = v35->_mediaSubItems;
    v35->_mediaSubItems = v64;
  }

  return v35;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v8 objectForKeyedSubscript:@"recommendationId"];
    v28 = [v8 objectForKeyedSubscript:@"assetInfo"];
    v30 = [v8 objectForKeyedSubscript:@"sharedUserIdFromPlayableMusicAccount"];
    v29 = [v8 objectForKeyedSubscript:@"punchoutURI"];
    v27 = [v8 objectForKeyedSubscript:@"requiresSubscription"];
    v25 = [v8 objectForKeyedSubscript:@"provider"];
    v26 = [v8 objectForKeyedSubscript:@"isAvailable"];
    v24 = [v8 objectForKeyedSubscript:@"isHardBan"];
    v23 = [v8 objectForKeyedSubscript:@"bundleId"];
    v22 = [v8 objectForKeyedSubscript:@"universalResourceLink"];
    v9 = [v8 objectForKeyedSubscript:@"providerAppName"];
    v10 = [v8 objectForKeyedSubscript:@"internalSignals"];
    v11 = [v8 objectForKeyedSubscript:@"ampConfidenceScore"];
    v12 = [v8 objectForKeyedSubscript:@"ampConfidenceLevel"];
    v13 = INMediaConfidenceLevelWithString(v12);

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"pegasusMetaData"];
    v21 = [v7 decodeObjectOfClass:v14 from:v15];

    v16 = objc_opt_class();
    v17 = [v8 objectForKeyedSubscript:@"mediaSubItems"];
    v18 = [v7 decodeObjectsOfClass:v16 from:v17];

    v19 = [[a1 alloc] initWithRecommendationId:v31 assetInfo:v28 sharedUserIdFromPlayableMusicAccount:v30 punchoutURI:v29 requiresSubscription:v27 provider:v25 isAvailable:v26 isHardBan:v24 bundleId:v23 universalResourceLink:v22 providerAppName:v9 internalSignals:v10 ampConfidenceScore:v11 ampConfidenceLevel:v13 pegasusMetaData:v21 mediaSubItems:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end