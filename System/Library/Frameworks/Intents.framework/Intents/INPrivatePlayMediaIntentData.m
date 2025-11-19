@interface INPrivatePlayMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivatePlayMediaIntentData)initWithAppSelectionEnabled:(id)a3 appInferred:(id)a4 audioSearchResults:(id)a5 privateMediaIntentData:(id)a6 appSelectionSignalsEnabled:(id)a7 appSelectionSignalsFrequencyDenominator:(id)a8 shouldSuppressCommonWholeHouseAudioRoutes:(id)a9 immediatelyStartPlayback:(id)a10 isAmbiguousPlay:(id)a11 isPersonalizedRequest:(id)a12 internalSignals:(id)a13 entityConfidenceSignalsEnabled:(id)a14 entityConfidenceSignalsFrequencyDenominatorInternal:(id)a15 entityConfidenceSignalsFrequencyDenominatorProd:(id)a16 entityConfidenceSignalsMaxItemsToDisambiguate:(id)a17 alternativeProviderBundleIdentifier:(id)a18 ampPAFDataSetID:(id)a19 pegasusMetaData:(id)a20;
- (INPrivatePlayMediaIntentData)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivatePlayMediaIntentData

- (id)_dictionaryRepresentation
{
  v59[18] = *MEMORY[0x1E69E9840];
  v58[0] = @"appSelectionEnabled";
  appSelectionEnabled = self->_appSelectionEnabled;
  v3 = appSelectionEnabled;
  if (!appSelectionEnabled)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v59[0] = v3;
  v58[1] = @"appInferred";
  appInferred = self->_appInferred;
  v54 = appInferred;
  if (!appInferred)
  {
    appInferred = [MEMORY[0x1E695DFB0] null];
  }

  v59[1] = appInferred;
  v58[2] = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  v52 = audioSearchResults;
  if (!audioSearchResults)
  {
    audioSearchResults = [MEMORY[0x1E695DFB0] null];
  }

  v59[2] = audioSearchResults;
  v58[3] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  v50 = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    privateMediaIntentData = [MEMORY[0x1E695DFB0] null];
  }

  v59[3] = privateMediaIntentData;
  v58[4] = @"appSelectionSignalsEnabled";
  appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
  v48 = appSelectionSignalsEnabled;
  if (!appSelectionSignalsEnabled)
  {
    appSelectionSignalsEnabled = [MEMORY[0x1E695DFB0] null];
  }

  v59[4] = appSelectionSignalsEnabled;
  v58[5] = @"appSelectionSignalsFrequencyDenominator";
  appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
  v46 = appSelectionSignalsFrequencyDenominator;
  if (!appSelectionSignalsFrequencyDenominator)
  {
    appSelectionSignalsFrequencyDenominator = [MEMORY[0x1E695DFB0] null];
  }

  v59[5] = appSelectionSignalsFrequencyDenominator;
  v58[6] = @"shouldSuppressCommonWholeHouseAudioRoutes";
  shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
  v44 = shouldSuppressCommonWholeHouseAudioRoutes;
  if (!shouldSuppressCommonWholeHouseAudioRoutes)
  {
    shouldSuppressCommonWholeHouseAudioRoutes = [MEMORY[0x1E695DFB0] null];
  }

  v59[6] = shouldSuppressCommonWholeHouseAudioRoutes;
  v58[7] = @"immediatelyStartPlayback";
  immediatelyStartPlayback = self->_immediatelyStartPlayback;
  v42 = immediatelyStartPlayback;
  if (!immediatelyStartPlayback)
  {
    immediatelyStartPlayback = [MEMORY[0x1E695DFB0] null];
  }

  v59[7] = immediatelyStartPlayback;
  v58[8] = @"isAmbiguousPlay";
  isAmbiguousPlay = self->_isAmbiguousPlay;
  v40 = isAmbiguousPlay;
  if (!isAmbiguousPlay)
  {
    isAmbiguousPlay = [MEMORY[0x1E695DFB0] null];
  }

  v59[8] = isAmbiguousPlay;
  v58[9] = @"isPersonalizedRequest";
  isPersonalizedRequest = self->_isPersonalizedRequest;
  v39 = isPersonalizedRequest;
  if (!isPersonalizedRequest)
  {
    isPersonalizedRequest = [MEMORY[0x1E695DFB0] null];
  }

  v38 = isPersonalizedRequest;
  v59[9] = isPersonalizedRequest;
  v58[10] = @"internalSignals";
  internalSignals = self->_internalSignals;
  v37 = internalSignals;
  if (!internalSignals)
  {
    internalSignals = [MEMORY[0x1E695DFB0] null];
  }

  v49 = privateMediaIntentData;
  v57 = internalSignals;
  v59[10] = internalSignals;
  v58[11] = @"entityConfidenceSignalsEnabled";
  entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
  v36 = entityConfidenceSignalsEnabled;
  if (!entityConfidenceSignalsEnabled)
  {
    entityConfidenceSignalsEnabled = [MEMORY[0x1E695DFB0] null];
  }

  v47 = appSelectionSignalsEnabled;
  v34 = entityConfidenceSignalsEnabled;
  v59[11] = entityConfidenceSignalsEnabled;
  v58[12] = @"entityConfidenceSignalsFrequencyDenominatorInternal";
  entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
  v16 = entityConfidenceSignalsFrequencyDenominatorInternal;
  if (!entityConfidenceSignalsFrequencyDenominatorInternal)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = appSelectionSignalsFrequencyDenominator;
  v51 = audioSearchResults;
  v33 = v16;
  v59[12] = v16;
  v58[13] = @"entityConfidenceSignalsFrequencyDenominatorProd";
  entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
  v18 = entityConfidenceSignalsFrequencyDenominatorProd;
  if (!entityConfidenceSignalsFrequencyDenominatorProd)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = shouldSuppressCommonWholeHouseAudioRoutes;
  v55 = v3;
  v32 = v18;
  v59[13] = v18;
  v58[14] = @"entityConfidenceSignalsMaxItemsToDisambiguate";
  entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
  v20 = entityConfidenceSignalsMaxItemsToDisambiguate;
  if (!entityConfidenceSignalsMaxItemsToDisambiguate)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = immediatelyStartPlayback;
  v53 = appInferred;
  v31 = v20;
  v59[14] = v20;
  v58[15] = @"alternativeProviderBundleIdentifier";
  alternativeProviderBundleIdentifier = self->_alternativeProviderBundleIdentifier;
  v22 = alternativeProviderBundleIdentifier;
  if (!alternativeProviderBundleIdentifier)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = isAmbiguousPlay;
  v59[15] = v22;
  v58[16] = @"ampPAFDataSetID";
  ampPAFDataSetID = self->_ampPAFDataSetID;
  v25 = ampPAFDataSetID;
  if (!ampPAFDataSetID)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v59[16] = v25;
  v58[17] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  v27 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v59[17] = v27;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:18];
  if (!pegasusMetaData)
  {
  }

  v28 = v57;
  if (!ampPAFDataSetID)
  {

    v28 = v57;
  }

  if (!alternativeProviderBundleIdentifier)
  {

    v28 = v57;
  }

  if (!entityConfidenceSignalsMaxItemsToDisambiguate)
  {

    v28 = v57;
  }

  if (!entityConfidenceSignalsFrequencyDenominatorProd)
  {

    v28 = v57;
  }

  if (!entityConfidenceSignalsFrequencyDenominatorInternal)
  {

    v28 = v57;
  }

  if (!v36)
  {

    v28 = v57;
  }

  if (!v37)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v42)
  {
  }

  if (!v44)
  {
  }

  if (!v46)
  {
  }

  if (!v48)
  {
  }

  if (!v50)
  {
  }

  if (!v52)
  {
  }

  if (!v54)
  {
  }

  if (!appSelectionEnabled)
  {
  }

  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivatePlayMediaIntentData;
  v6 = [(INPrivatePlayMediaIntentData *)&v11 description];
  v7 = [(INPrivatePlayMediaIntentData *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_appSelectionEnabled];
  [v7 if_setObjectIfNonNil:v8 forKey:@"appSelectionEnabled"];

  v9 = [v6 encodeObject:self->_appInferred];
  [v7 if_setObjectIfNonNil:v9 forKey:@"appInferred"];

  v10 = [v6 encodeObject:self->_audioSearchResults];
  [v7 if_setObjectIfNonNil:v10 forKey:@"audioSearchResults"];

  v11 = [v6 encodeObject:self->_privateMediaIntentData];
  [v7 if_setObjectIfNonNil:v11 forKey:@"privateMediaIntentData"];

  v12 = [v6 encodeObject:self->_appSelectionSignalsEnabled];
  [v7 if_setObjectIfNonNil:v12 forKey:@"appSelectionSignalsEnabled"];

  v13 = [v6 encodeObject:self->_appSelectionSignalsFrequencyDenominator];
  [v7 if_setObjectIfNonNil:v13 forKey:@"appSelectionSignalsFrequencyDenominator"];

  v14 = [v6 encodeObject:self->_shouldSuppressCommonWholeHouseAudioRoutes];
  [v7 if_setObjectIfNonNil:v14 forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];

  v15 = [v6 encodeObject:self->_immediatelyStartPlayback];
  [v7 if_setObjectIfNonNil:v15 forKey:@"immediatelyStartPlayback"];

  v16 = [v6 encodeObject:self->_isAmbiguousPlay];
  [v7 if_setObjectIfNonNil:v16 forKey:@"isAmbiguousPlay"];

  v17 = [v6 encodeObject:self->_isPersonalizedRequest];
  [v7 if_setObjectIfNonNil:v17 forKey:@"isPersonalizedRequest"];

  v18 = [v6 encodeObject:self->_internalSignals];
  [v7 if_setObjectIfNonNil:v18 forKey:@"internalSignals"];

  v19 = [v6 encodeObject:self->_entityConfidenceSignalsEnabled];
  [v7 if_setObjectIfNonNil:v19 forKey:@"entityConfidenceSignalsEnabled"];

  v20 = [v6 encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorInternal];
  [v7 if_setObjectIfNonNil:v20 forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];

  v21 = [v6 encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorProd];
  [v7 if_setObjectIfNonNil:v21 forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];

  v22 = [v6 encodeObject:self->_entityConfidenceSignalsMaxItemsToDisambiguate];
  [v7 if_setObjectIfNonNil:v22 forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];

  v23 = [v6 encodeObject:self->_alternativeProviderBundleIdentifier];
  [v7 if_setObjectIfNonNil:v23 forKey:@"alternativeProviderBundleIdentifier"];

  v24 = [v6 encodeObject:self->_ampPAFDataSetID];
  [v7 if_setObjectIfNonNil:v24 forKey:@"ampPAFDataSetID"];

  v25 = [v6 encodeObject:self->_pegasusMetaData];

  [v7 if_setObjectIfNonNil:v25 forKey:@"pegasusMetaData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  appSelectionEnabled = self->_appSelectionEnabled;
  v5 = a3;
  [v5 encodeObject:appSelectionEnabled forKey:@"appSelectionEnabled"];
  [v5 encodeObject:self->_appInferred forKey:@"appInferred"];
  [v5 encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [v5 encodeObject:self->_privateMediaIntentData forKey:@"privateMediaIntentData"];
  [v5 encodeObject:self->_appSelectionSignalsEnabled forKey:@"appSelectionSignalsEnabled"];
  [v5 encodeObject:self->_appSelectionSignalsFrequencyDenominator forKey:@"appSelectionSignalsFrequencyDenominator"];
  [v5 encodeObject:self->_shouldSuppressCommonWholeHouseAudioRoutes forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  [v5 encodeObject:self->_immediatelyStartPlayback forKey:@"immediatelyStartPlayback"];
  [v5 encodeObject:self->_isAmbiguousPlay forKey:@"isAmbiguousPlay"];
  [v5 encodeObject:self->_isPersonalizedRequest forKey:@"isPersonalizedRequest"];
  [v5 encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [v5 encodeObject:self->_entityConfidenceSignalsEnabled forKey:@"entityConfidenceSignalsEnabled"];
  [v5 encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorInternal forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  [v5 encodeObject:self->_entityConfidenceSignalsFrequencyDenominatorProd forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  [v5 encodeObject:self->_entityConfidenceSignalsMaxItemsToDisambiguate forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  [v5 encodeObject:self->_alternativeProviderBundleIdentifier forKey:@"alternativeProviderBundleIdentifier"];
  [v5 encodeObject:self->_ampPAFDataSetID forKey:@"ampPAFDataSetID"];
  [v5 encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivatePlayMediaIntentData)initWithCoder:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionEnabled"];
  v30 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appInferred"];
  v4 = MEMORY[0x1E695DFD8];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v6 = [v4 setWithArray:v5];
  v29 = [v3 decodeObjectOfClasses:v6 forKey:@"audioSearchResults"];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionSignalsEnabled"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"appSelectionSignalsFrequencyDenominator"];
  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"immediatelyStartPlayback"];
  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isAmbiguousPlay"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"isPersonalizedRequest"];
  v7 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v9 = [v7 setWithArray:v8];
  v19 = [v3 decodeObjectOfClasses:v9 forKey:@"internalSignals"];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsEnabled"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"alternativeProviderBundleIdentifier"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ampPAFDataSetID"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v26 = [(INPrivatePlayMediaIntentData *)self initWithAppSelectionEnabled:v31 appInferred:v30 audioSearchResults:v29 privateMediaIntentData:v24 appSelectionSignalsEnabled:v23 appSelectionSignalsFrequencyDenominator:v22 shouldSuppressCommonWholeHouseAudioRoutes:v28 immediatelyStartPlayback:v21 isAmbiguousPlay:v27 isPersonalizedRequest:v20 internalSignals:v19 entityConfidenceSignalsEnabled:v18 entityConfidenceSignalsFrequencyDenominatorInternal:v17 entityConfidenceSignalsFrequencyDenominatorProd:v10 entityConfidenceSignalsMaxItemsToDisambiguate:v11 alternativeProviderBundleIdentifier:v12 ampPAFDataSetID:v13 pegasusMetaData:v14];
  v15 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      appSelectionEnabled = self->_appSelectionEnabled;
      if (appSelectionEnabled != v5->_appSelectionEnabled && ![(NSNumber *)appSelectionEnabled isEqual:?])
      {
        goto LABEL_42;
      }

      appInferred = self->_appInferred;
      if (appInferred != v5->_appInferred && ![(NSNumber *)appInferred isEqual:?])
      {
        goto LABEL_42;
      }

      audioSearchResults = self->_audioSearchResults;
      if (audioSearchResults != v5->_audioSearchResults && ![(NSArray *)audioSearchResults isEqual:?])
      {
        goto LABEL_42;
      }

      privateMediaIntentData = self->_privateMediaIntentData;
      if (privateMediaIntentData != v5->_privateMediaIntentData && ![(INPrivateMediaIntentData *)privateMediaIntentData isEqual:?])
      {
        goto LABEL_42;
      }

      appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
      if (appSelectionSignalsEnabled != v5->_appSelectionSignalsEnabled && ![(NSNumber *)appSelectionSignalsEnabled isEqual:?])
      {
        goto LABEL_42;
      }

      appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
      if (appSelectionSignalsFrequencyDenominator != v5->_appSelectionSignalsFrequencyDenominator && ![(NSNumber *)appSelectionSignalsFrequencyDenominator isEqual:?])
      {
        goto LABEL_42;
      }

      shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
      if (shouldSuppressCommonWholeHouseAudioRoutes != v5->_shouldSuppressCommonWholeHouseAudioRoutes && ![(NSNumber *)shouldSuppressCommonWholeHouseAudioRoutes isEqual:?])
      {
        goto LABEL_42;
      }

      immediatelyStartPlayback = self->_immediatelyStartPlayback;
      if (immediatelyStartPlayback != v5->_immediatelyStartPlayback && ![(NSNumber *)immediatelyStartPlayback isEqual:?])
      {
        goto LABEL_42;
      }

      isAmbiguousPlay = self->_isAmbiguousPlay;
      if (isAmbiguousPlay != v5->_isAmbiguousPlay && ![(NSNumber *)isAmbiguousPlay isEqual:?])
      {
        goto LABEL_42;
      }

      isPersonalizedRequest = self->_isPersonalizedRequest;
      if (isPersonalizedRequest != v5->_isPersonalizedRequest && ![(NSNumber *)isPersonalizedRequest isEqual:?])
      {
        goto LABEL_42;
      }

      internalSignals = self->_internalSignals;
      if (internalSignals != v5->_internalSignals && ![(NSArray *)internalSignals isEqual:?])
      {
        goto LABEL_42;
      }

      if (((entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled, entityConfidenceSignalsEnabled == v5->_entityConfidenceSignalsEnabled) || [(NSNumber *)entityConfidenceSignalsEnabled isEqual:?]) && ((entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal, entityConfidenceSignalsFrequencyDenominatorInternal == v5->_entityConfidenceSignalsFrequencyDenominatorInternal) || [(NSNumber *)entityConfidenceSignalsFrequencyDenominatorInternal isEqual:?]) && ((entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd, entityConfidenceSignalsFrequencyDenominatorProd == v5->_entityConfidenceSignalsFrequencyDenominatorProd) || [(NSNumber *)entityConfidenceSignalsFrequencyDenominatorProd isEqual:?]) && ((entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate, entityConfidenceSignalsMaxItemsToDisambiguate == v5->_entityConfidenceSignalsMaxItemsToDisambiguate) || [(NSNumber *)entityConfidenceSignalsMaxItemsToDisambiguate isEqual:?]) && ((alternativeProviderBundleIdentifier = self->_alternativeProviderBundleIdentifier, alternativeProviderBundleIdentifier == v5->_alternativeProviderBundleIdentifier) || [(NSString *)alternativeProviderBundleIdentifier isEqual:?]) && ((ampPAFDataSetID = self->_ampPAFDataSetID, ampPAFDataSetID == v5->_ampPAFDataSetID) || [(NSString *)ampPAFDataSetID isEqual:?]) && ((pegasusMetaData = self->_pegasusMetaData, pegasusMetaData == v5->_pegasusMetaData) || [(NSData *)pegasusMetaData isEqual:?]))
      {
        v24 = 1;
      }

      else
      {
LABEL_42:
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_appSelectionEnabled hash];
  v4 = [(NSNumber *)self->_appInferred hash]^ v3;
  v5 = [(NSArray *)self->_audioSearchResults hash];
  v6 = v4 ^ v5 ^ [(INPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  v7 = [(NSNumber *)self->_appSelectionSignalsEnabled hash];
  v8 = v7 ^ [(NSNumber *)self->_appSelectionSignalsFrequencyDenominator hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_shouldSuppressCommonWholeHouseAudioRoutes hash];
  v10 = [(NSNumber *)self->_immediatelyStartPlayback hash];
  v11 = v10 ^ [(NSNumber *)self->_isAmbiguousPlay hash];
  v12 = v11 ^ [(NSNumber *)self->_isPersonalizedRequest hash];
  v13 = v9 ^ v12 ^ [(NSArray *)self->_internalSignals hash];
  v14 = [(NSNumber *)self->_entityConfidenceSignalsEnabled hash];
  v15 = v14 ^ [(NSNumber *)self->_entityConfidenceSignalsFrequencyDenominatorInternal hash];
  v16 = v15 ^ [(NSNumber *)self->_entityConfidenceSignalsFrequencyDenominatorProd hash];
  v17 = v16 ^ [(NSNumber *)self->_entityConfidenceSignalsMaxItemsToDisambiguate hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_alternativeProviderBundleIdentifier hash];
  v19 = [(NSString *)self->_ampPAFDataSetID hash];
  return v18 ^ v19 ^ [(NSData *)self->_pegasusMetaData hash];
}

- (INPrivatePlayMediaIntentData)initWithAppSelectionEnabled:(id)a3 appInferred:(id)a4 audioSearchResults:(id)a5 privateMediaIntentData:(id)a6 appSelectionSignalsEnabled:(id)a7 appSelectionSignalsFrequencyDenominator:(id)a8 shouldSuppressCommonWholeHouseAudioRoutes:(id)a9 immediatelyStartPlayback:(id)a10 isAmbiguousPlay:(id)a11 isPersonalizedRequest:(id)a12 internalSignals:(id)a13 entityConfidenceSignalsEnabled:(id)a14 entityConfidenceSignalsFrequencyDenominatorInternal:(id)a15 entityConfidenceSignalsFrequencyDenominatorProd:(id)a16 entityConfidenceSignalsMaxItemsToDisambiguate:(id)a17 alternativeProviderBundleIdentifier:(id)a18 ampPAFDataSetID:(id)a19 pegasusMetaData:(id)a20
{
  v25 = a3;
  v81 = a4;
  v80 = a5;
  v79 = a6;
  v78 = a7;
  v77 = a8;
  v76 = a9;
  v75 = a10;
  v74 = a11;
  v73 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v30 = a17;
  v31 = a18;
  v32 = a19;
  v33 = a20;
  v82.receiver = self;
  v82.super_class = INPrivatePlayMediaIntentData;
  v34 = [(INPrivatePlayMediaIntentData *)&v82 init];
  if (v34)
  {
    v35 = [v25 copy];
    appSelectionEnabled = v34->_appSelectionEnabled;
    v34->_appSelectionEnabled = v35;

    v37 = [v81 copy];
    appInferred = v34->_appInferred;
    v34->_appInferred = v37;

    v39 = [v80 copy];
    audioSearchResults = v34->_audioSearchResults;
    v34->_audioSearchResults = v39;

    v41 = [v79 copy];
    privateMediaIntentData = v34->_privateMediaIntentData;
    v34->_privateMediaIntentData = v41;

    v43 = [v78 copy];
    appSelectionSignalsEnabled = v34->_appSelectionSignalsEnabled;
    v34->_appSelectionSignalsEnabled = v43;

    v45 = [v77 copy];
    appSelectionSignalsFrequencyDenominator = v34->_appSelectionSignalsFrequencyDenominator;
    v34->_appSelectionSignalsFrequencyDenominator = v45;

    v47 = [v76 copy];
    shouldSuppressCommonWholeHouseAudioRoutes = v34->_shouldSuppressCommonWholeHouseAudioRoutes;
    v34->_shouldSuppressCommonWholeHouseAudioRoutes = v47;

    v49 = [v75 copy];
    immediatelyStartPlayback = v34->_immediatelyStartPlayback;
    v34->_immediatelyStartPlayback = v49;

    v51 = [v74 copy];
    isAmbiguousPlay = v34->_isAmbiguousPlay;
    v34->_isAmbiguousPlay = v51;

    v53 = [v73 copy];
    isPersonalizedRequest = v34->_isPersonalizedRequest;
    v34->_isPersonalizedRequest = v53;

    v55 = [v26 copy];
    internalSignals = v34->_internalSignals;
    v34->_internalSignals = v55;

    v57 = [v27 copy];
    entityConfidenceSignalsEnabled = v34->_entityConfidenceSignalsEnabled;
    v34->_entityConfidenceSignalsEnabled = v57;

    v59 = [v28 copy];
    entityConfidenceSignalsFrequencyDenominatorInternal = v34->_entityConfidenceSignalsFrequencyDenominatorInternal;
    v34->_entityConfidenceSignalsFrequencyDenominatorInternal = v59;

    v61 = [v29 copy];
    entityConfidenceSignalsFrequencyDenominatorProd = v34->_entityConfidenceSignalsFrequencyDenominatorProd;
    v34->_entityConfidenceSignalsFrequencyDenominatorProd = v61;

    v63 = [v30 copy];
    entityConfidenceSignalsMaxItemsToDisambiguate = v34->_entityConfidenceSignalsMaxItemsToDisambiguate;
    v34->_entityConfidenceSignalsMaxItemsToDisambiguate = v63;

    v65 = [v31 copy];
    alternativeProviderBundleIdentifier = v34->_alternativeProviderBundleIdentifier;
    v34->_alternativeProviderBundleIdentifier = v65;

    v67 = [v32 copy];
    ampPAFDataSetID = v34->_ampPAFDataSetID;
    v34->_ampPAFDataSetID = v67;

    v69 = [v33 copy];
    pegasusMetaData = v34->_pegasusMetaData;
    v34->_pegasusMetaData = v69;
  }

  return v34;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = [v8 objectForKeyedSubscript:@"appSelectionEnabled"];
    v41 = [v8 objectForKeyedSubscript:@"appInferred"];
    v35 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"audioSearchResults"];
    v42 = [v7 decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"privateMediaIntentData"];
    v40 = [v7 decodeObjectOfClass:v11 from:v12];

    v39 = [v8 objectForKeyedSubscript:@"appSelectionSignalsEnabled"];
    v34 = [v8 objectForKeyedSubscript:@"appSelectionSignalsFrequencyDenominator"];
    v38 = [v8 objectForKeyedSubscript:@"shouldSuppressCommonWholeHouseAudioRoutes"];
    v37 = [v8 objectForKeyedSubscript:@"immediatelyStartPlayback"];
    v33 = [v8 objectForKeyedSubscript:@"isAmbiguousPlay"];
    v32 = [v8 objectForKeyedSubscript:@"isPersonalizedRequest"];
    v31 = [v8 objectForKeyedSubscript:@"internalSignals"];
    v28 = [v8 objectForKeyedSubscript:@"entityConfidenceSignalsEnabled"];
    v30 = [v8 objectForKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
    v13 = [v8 objectForKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorProd"];
    v27 = [v8 objectForKeyedSubscript:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"alternativeProviderBundleIdentifier"];
    v16 = [v7 decodeObjectOfClass:v14 from:v15];

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"ampPAFDataSetID"];
    v19 = v7;
    v20 = [v7 decodeObjectOfClass:v17 from:v18];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"pegasusMetaData"];
    v23 = [v7 decodeObjectOfClass:v21 from:v22];

    v24 = [v35 alloc];
    v36 = v19;
    v29 = [v24 initWithAppSelectionEnabled:v43 appInferred:v41 audioSearchResults:v42 privateMediaIntentData:v40 appSelectionSignalsEnabled:v39 appSelectionSignalsFrequencyDenominator:v34 shouldSuppressCommonWholeHouseAudioRoutes:v38 immediatelyStartPlayback:v37 isAmbiguousPlay:v33 isPersonalizedRequest:v32 internalSignals:v31 entityConfidenceSignalsEnabled:v28 entityConfidenceSignalsFrequencyDenominatorInternal:v30 entityConfidenceSignalsFrequencyDenominatorProd:v13 entityConfidenceSignalsMaxItemsToDisambiguate:v27 alternativeProviderBundleIdentifier:v16 ampPAFDataSetID:v20 pegasusMetaData:v23];

    v25 = v29;
    v7 = v36;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INPrivatePlayMediaIntentData *)self audioSearchResults];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(INPrivatePlayMediaIntentData *)self audioSearchResults];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end