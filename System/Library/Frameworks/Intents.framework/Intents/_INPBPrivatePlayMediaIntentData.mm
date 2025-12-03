@interface _INPBPrivatePlayMediaIntentData
- (BOOL)isEqual:(id)equal;
- (_INPBPrivatePlayMediaIntentData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudioSearchResults:(id)results;
- (void)addInternalSignal:(id)signal;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioSearchResults:(id)results;
- (void)setHasAppSelectionEnabled:(BOOL)enabled;
- (void)setHasAppSelectionSignalsEnabled:(BOOL)enabled;
- (void)setHasAppSelectionSignalsFrequencyDenominator:(BOOL)denominator;
- (void)setHasEntityConfidenceSignalsEnabled:(BOOL)enabled;
- (void)setHasEntityConfidenceSignalsFrequencyDenominatorInternal:(BOOL)internal;
- (void)setHasEntityConfidenceSignalsFrequencyDenominatorProd:(BOOL)prod;
- (void)setHasEntityConfidenceSignalsMaxItemsToDisambiguate:(BOOL)disambiguate;
- (void)setHasImmediatelyStartPlayback:(BOOL)playback;
- (void)setHasIsAmbiguousPlay:(BOOL)play;
- (void)setHasIsPersonalizedRequest:(BOOL)request;
- (void)setHasShouldSuppressCommonWholeHouseAudioRoutes:(BOOL)routes;
- (void)setInternalSignals:(id)signals;
- (void)setPegasusMetaData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation _INPBPrivatePlayMediaIntentData

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  dictionaryRepresentation = [alternativeProviderBundleIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alternativeProviderBundleIdentifier"];

  ampPAFDataSetID = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  dictionaryRepresentation2 = [ampPAFDataSetID dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ampPAFDataSetID"];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appInferred](self, "appInferred")}];
    [dictionary setObject:v8 forKeyedSubscript:@"appInferred"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appSelectionEnabled](self, "appSelectionEnabled")}];
    [dictionary setObject:v9 forKeyedSubscript:@"appSelectionEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appSelectionSignalsEnabled](self, "appSelectionSignalsEnabled")}];
    [dictionary setObject:v10 forKeyedSubscript:@"appSelectionSignalsEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData appSelectionSignalsFrequencyDenominator](self, "appSelectionSignalsFrequencyDenominator")}];
    [dictionary setObject:v11 forKeyedSubscript:@"appSelectionSignalsFrequencyDenominator"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = self->_audioSearchResults;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"audioSearchResults"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsEnabled](self, "entityConfidenceSignalsEnabled")}];
    [dictionary setObject:v19 forKeyedSubscript:@"entityConfidenceSignalsEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorInternal](self, "entityConfidenceSignalsFrequencyDenominatorInternal")}];
    [dictionary setObject:v20 forKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorProd](self, "entityConfidenceSignalsFrequencyDenominatorProd")}];
    [dictionary setObject:v21 forKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsMaxItemsToDisambiguate](self, "entityConfidenceSignalsMaxItemsToDisambiguate")}];
    [dictionary setObject:v22 forKeyedSubscript:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData immediatelyStartPlayback](self, "immediatelyStartPlayback")}];
    [dictionary setObject:v23 forKeyedSubscript:@"immediatelyStartPlayback"];
  }

  if (self->_internalSignals)
  {
    internalSignals = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
    v25 = [internalSignals copy];
    [dictionary setObject:v25 forKeyedSubscript:@"internalSignal"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData isAmbiguousPlay](self, "isAmbiguousPlay")}];
    [dictionary setObject:v26 forKeyedSubscript:@"isAmbiguousPlay"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData isPersonalizedRequest](self, "isPersonalizedRequest")}];
    [dictionary setObject:v27 forKeyedSubscript:@"isPersonalizedRequest"];
  }

  if (self->_pegasusMetaData)
  {
    pegasusMetaData = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
    v29 = [pegasusMetaData copy];
    [dictionary setObject:v29 forKeyedSubscript:@"pegasusMetaData"];
  }

  privateMediaIntentData = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  dictionaryRepresentation4 = [privateMediaIntentData dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"privateMediaIntentData"];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData shouldSuppressCommonWholeHouseAudioRoutes](self, "shouldSuppressCommonWholeHouseAudioRoutes")}];
    [dictionary setObject:v32 forKeyedSubscript:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v21 = [(_INPBString *)self->_alternativeProviderBundleIdentifier hash];
  v20 = [(_INPBString *)self->_ampPAFDataSetID hash];
  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    v19 = 2654435761 * self->_appInferred;
  }

  else
  {
    v19 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    v18 = 2654435761 * self->_appSelectionEnabled;
  }

  else
  {
    v18 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    v17 = 2654435761 * self->_appSelectionSignalsEnabled;
  }

  else
  {
    v17 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    v16 = 2654435761 * self->_appSelectionSignalsFrequencyDenominator;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSArray *)self->_audioSearchResults hash];
  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    v14 = 2654435761 * self->_entityConfidenceSignalsEnabled;
  }

  else
  {
    v14 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    v13 = 2654435761 * self->_entityConfidenceSignalsFrequencyDenominatorInternal;
  }

  else
  {
    v13 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    v3 = 2654435761 * self->_entityConfidenceSignalsFrequencyDenominatorProd;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    v4 = 2654435761 * self->_entityConfidenceSignalsMaxItemsToDisambiguate;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    v5 = 2654435761 * self->_immediatelyStartPlayback;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSArray *)self->_internalSignals hash];
  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    v7 = 2654435761 * self->_isAmbiguousPlay;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    v8 = 2654435761 * self->_isPersonalizedRequest;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSData *)self->_pegasusMetaData hash];
  v10 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    v11 = 2654435761 * self->_shouldSuppressCommonWholeHouseAudioRoutes;
  }

  else
  {
    v11 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  alternativeProviderBundleIdentifier2 = [equalCopy alternativeProviderBundleIdentifier];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
    goto LABEL_75;
  }

  alternativeProviderBundleIdentifier3 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  if (alternativeProviderBundleIdentifier3)
  {
    v8 = alternativeProviderBundleIdentifier3;
    alternativeProviderBundleIdentifier4 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
    alternativeProviderBundleIdentifier5 = [equalCopy alternativeProviderBundleIdentifier];
    v11 = [alternativeProviderBundleIdentifier4 isEqual:alternativeProviderBundleIdentifier5];

    if (!v11)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  alternativeProviderBundleIdentifier2 = [equalCopy ampPAFDataSetID];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
    goto LABEL_75;
  }

  ampPAFDataSetID = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  if (ampPAFDataSetID)
  {
    v13 = ampPAFDataSetID;
    ampPAFDataSetID2 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
    ampPAFDataSetID3 = [equalCopy ampPAFDataSetID];
    v16 = [ampPAFDataSetID2 isEqual:ampPAFDataSetID3];

    if (!v16)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  hasAppInferred = [(_INPBPrivatePlayMediaIntentData *)self hasAppInferred];
  if (hasAppInferred != [equalCopy hasAppInferred])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    if ([equalCopy hasAppInferred])
    {
      appInferred = self->_appInferred;
      if (appInferred != [equalCopy appInferred])
      {
        goto LABEL_76;
      }
    }
  }

  hasAppSelectionEnabled = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled];
  if (hasAppSelectionEnabled != [equalCopy hasAppSelectionEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    if ([equalCopy hasAppSelectionEnabled])
    {
      appSelectionEnabled = self->_appSelectionEnabled;
      if (appSelectionEnabled != [equalCopy appSelectionEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  hasAppSelectionSignalsEnabled = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled];
  if (hasAppSelectionSignalsEnabled != [equalCopy hasAppSelectionSignalsEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    if ([equalCopy hasAppSelectionSignalsEnabled])
    {
      appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
      if (appSelectionSignalsEnabled != [equalCopy appSelectionSignalsEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  hasAppSelectionSignalsFrequencyDenominator = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator];
  if (hasAppSelectionSignalsFrequencyDenominator != [equalCopy hasAppSelectionSignalsFrequencyDenominator])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    if ([equalCopy hasAppSelectionSignalsFrequencyDenominator])
    {
      appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
      if (appSelectionSignalsFrequencyDenominator != [equalCopy appSelectionSignalsFrequencyDenominator])
      {
        goto LABEL_76;
      }
    }
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
  alternativeProviderBundleIdentifier2 = [equalCopy audioSearchResults];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
    goto LABEL_75;
  }

  audioSearchResults = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
  if (audioSearchResults)
  {
    v26 = audioSearchResults;
    audioSearchResults2 = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
    audioSearchResults3 = [equalCopy audioSearchResults];
    v29 = [audioSearchResults2 isEqual:audioSearchResults3];

    if (!v29)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  hasEntityConfidenceSignalsEnabled = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled];
  if (hasEntityConfidenceSignalsEnabled != [equalCopy hasEntityConfidenceSignalsEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    if ([equalCopy hasEntityConfidenceSignalsEnabled])
    {
      entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
      if (entityConfidenceSignalsEnabled != [equalCopy entityConfidenceSignalsEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  hasEntityConfidenceSignalsFrequencyDenominatorInternal = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal];
  if (hasEntityConfidenceSignalsFrequencyDenominatorInternal != [equalCopy hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    if ([equalCopy hasEntityConfidenceSignalsFrequencyDenominatorInternal])
    {
      entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
      if (entityConfidenceSignalsFrequencyDenominatorInternal != [equalCopy entityConfidenceSignalsFrequencyDenominatorInternal])
      {
        goto LABEL_76;
      }
    }
  }

  hasEntityConfidenceSignalsFrequencyDenominatorProd = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd];
  if (hasEntityConfidenceSignalsFrequencyDenominatorProd != [equalCopy hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    if ([equalCopy hasEntityConfidenceSignalsFrequencyDenominatorProd])
    {
      entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
      if (entityConfidenceSignalsFrequencyDenominatorProd != [equalCopy entityConfidenceSignalsFrequencyDenominatorProd])
      {
        goto LABEL_76;
      }
    }
  }

  hasEntityConfidenceSignalsMaxItemsToDisambiguate = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate];
  if (hasEntityConfidenceSignalsMaxItemsToDisambiguate != [equalCopy hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    if ([equalCopy hasEntityConfidenceSignalsMaxItemsToDisambiguate])
    {
      entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
      if (entityConfidenceSignalsMaxItemsToDisambiguate != [equalCopy entityConfidenceSignalsMaxItemsToDisambiguate])
      {
        goto LABEL_76;
      }
    }
  }

  hasImmediatelyStartPlayback = [(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback];
  if (hasImmediatelyStartPlayback != [equalCopy hasImmediatelyStartPlayback])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    if ([equalCopy hasImmediatelyStartPlayback])
    {
      immediatelyStartPlayback = self->_immediatelyStartPlayback;
      if (immediatelyStartPlayback != [equalCopy immediatelyStartPlayback])
      {
        goto LABEL_76;
      }
    }
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
  alternativeProviderBundleIdentifier2 = [equalCopy internalSignals];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
    goto LABEL_75;
  }

  internalSignals = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
  if (internalSignals)
  {
    v41 = internalSignals;
    internalSignals2 = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
    internalSignals3 = [equalCopy internalSignals];
    v44 = [internalSignals2 isEqual:internalSignals3];

    if (!v44)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  hasIsAmbiguousPlay = [(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay];
  if (hasIsAmbiguousPlay != [equalCopy hasIsAmbiguousPlay])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    if ([equalCopy hasIsAmbiguousPlay])
    {
      isAmbiguousPlay = self->_isAmbiguousPlay;
      if (isAmbiguousPlay != [equalCopy isAmbiguousPlay])
      {
        goto LABEL_76;
      }
    }
  }

  hasIsPersonalizedRequest = [(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest];
  if (hasIsPersonalizedRequest != [equalCopy hasIsPersonalizedRequest])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    if ([equalCopy hasIsPersonalizedRequest])
    {
      isPersonalizedRequest = self->_isPersonalizedRequest;
      if (isPersonalizedRequest != [equalCopy isPersonalizedRequest])
      {
        goto LABEL_76;
      }
    }
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
  alternativeProviderBundleIdentifier2 = [equalCopy pegasusMetaData];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
    goto LABEL_75;
  }

  pegasusMetaData = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
  if (pegasusMetaData)
  {
    v50 = pegasusMetaData;
    pegasusMetaData2 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
    pegasusMetaData3 = [equalCopy pegasusMetaData];
    v53 = [pegasusMetaData2 isEqual:pegasusMetaData3];

    if (!v53)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  alternativeProviderBundleIdentifier2 = [equalCopy privateMediaIntentData];
  if ((alternativeProviderBundleIdentifier != 0) == (alternativeProviderBundleIdentifier2 == 0))
  {
LABEL_75:

    goto LABEL_76;
  }

  privateMediaIntentData = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  if (privateMediaIntentData)
  {
    v55 = privateMediaIntentData;
    privateMediaIntentData2 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
    privateMediaIntentData3 = [equalCopy privateMediaIntentData];
    v58 = [privateMediaIntentData2 isEqual:privateMediaIntentData3];

    if (!v58)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  hasShouldSuppressCommonWholeHouseAudioRoutes = [(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes];
  if (hasShouldSuppressCommonWholeHouseAudioRoutes == [equalCopy hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    if (!-[_INPBPrivatePlayMediaIntentData hasShouldSuppressCommonWholeHouseAudioRoutes](self, "hasShouldSuppressCommonWholeHouseAudioRoutes") || ![equalCopy hasShouldSuppressCommonWholeHouseAudioRoutes] || (shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes, shouldSuppressCommonWholeHouseAudioRoutes == objc_msgSend(equalCopy, "shouldSuppressCommonWholeHouseAudioRoutes")))
    {
      v59 = 1;
      goto LABEL_77;
    }
  }

LABEL_76:
  v59 = 0;
LABEL_77:

  return v59;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBPrivatePlayMediaIntentData allocWithZone:](_INPBPrivatePlayMediaIntentData init];
  v6 = [(_INPBString *)self->_alternativeProviderBundleIdentifier copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setAlternativeProviderBundleIdentifier:v6];

  v7 = [(_INPBString *)self->_ampPAFDataSetID copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setAmpPAFDataSetID:v7];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setAppInferred:[(_INPBPrivatePlayMediaIntentData *)self appInferred]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setAppSelectionEnabled:[(_INPBPrivatePlayMediaIntentData *)self appSelectionEnabled]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setAppSelectionSignalsEnabled:[(_INPBPrivatePlayMediaIntentData *)self appSelectionSignalsEnabled]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setAppSelectionSignalsFrequencyDenominator:[(_INPBPrivatePlayMediaIntentData *)self appSelectionSignalsFrequencyDenominator]];
  }

  v8 = [(NSArray *)self->_audioSearchResults copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setAudioSearchResults:v8];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setEntityConfidenceSignalsEnabled:[(_INPBPrivatePlayMediaIntentData *)self entityConfidenceSignalsEnabled]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setEntityConfidenceSignalsFrequencyDenominatorInternal:[(_INPBPrivatePlayMediaIntentData *)self entityConfidenceSignalsFrequencyDenominatorInternal]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setEntityConfidenceSignalsFrequencyDenominatorProd:[(_INPBPrivatePlayMediaIntentData *)self entityConfidenceSignalsFrequencyDenominatorProd]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setEntityConfidenceSignalsMaxItemsToDisambiguate:[(_INPBPrivatePlayMediaIntentData *)self entityConfidenceSignalsMaxItemsToDisambiguate]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setImmediatelyStartPlayback:[(_INPBPrivatePlayMediaIntentData *)self immediatelyStartPlayback]];
  }

  v9 = [(NSArray *)self->_internalSignals copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setInternalSignals:v9];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setIsAmbiguousPlay:[(_INPBPrivatePlayMediaIntentData *)self isAmbiguousPlay]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setIsPersonalizedRequest:[(_INPBPrivatePlayMediaIntentData *)self isPersonalizedRequest]];
  }

  v10 = [(NSData *)self->_pegasusMetaData copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setPegasusMetaData:v10];

  v11 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:zone];
  [(_INPBPrivatePlayMediaIntentData *)v5 setPrivateMediaIntentData:v11];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setShouldSuppressCommonWholeHouseAudioRoutes:[(_INPBPrivatePlayMediaIntentData *)self shouldSuppressCommonWholeHouseAudioRoutes]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBPrivatePlayMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBPrivatePlayMediaIntentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBPrivatePlayMediaIntentData *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x1E69E9840];
  toCopy = to;
  alternativeProviderBundleIdentifier = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];

  if (alternativeProviderBundleIdentifier)
  {
    alternativeProviderBundleIdentifier2 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
    PBDataWriterWriteSubmessage();
  }

  ampPAFDataSetID = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];

  if (ampPAFDataSetID)
  {
    ampPAFDataSetID2 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    appInferred = self->_appInferred;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    appSelectionEnabled = self->_appSelectionEnabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
    PBDataWriterWriteInt32Field();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = self->_audioSearchResults;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      v17 = 0;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v15);
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    immediatelyStartPlayback = self->_immediatelyStartPlayback;
    PBDataWriterWriteBOOLField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = self->_internalSignals;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      v28 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v38 + 1) + 8 * v28);
        PBDataWriterWriteStringField();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    isAmbiguousPlay = self->_isAmbiguousPlay;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    isPersonalizedRequest = self->_isPersonalizedRequest;
    PBDataWriterWriteBOOLField();
  }

  pegasusMetaData = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];

  if (pegasusMetaData)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  privateMediaIntentData = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];

  if (privateMediaIntentData)
  {
    privateMediaIntentData2 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
    PBDataWriterWriteBOOLField();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldSuppressCommonWholeHouseAudioRoutes:(BOOL)routes
{
  if (routes)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setPegasusMetaData:(id)data
{
  v4 = [data copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)setHasIsPersonalizedRequest:(BOOL)request
{
  if (request)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsAmbiguousPlay:(BOOL)play
{
  if (play)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

- (void)setHasImmediatelyStartPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEntityConfidenceSignalsMaxItemsToDisambiguate:(BOOL)disambiguate
{
  if (disambiguate)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEntityConfidenceSignalsFrequencyDenominatorProd:(BOOL)prod
{
  if (prod)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasEntityConfidenceSignalsFrequencyDenominatorInternal:(BOOL)internal
{
  if (internal)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEntityConfidenceSignalsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addAudioSearchResults:(id)results
{
  resultsCopy = results;
  audioSearchResults = self->_audioSearchResults;
  v8 = resultsCopy;
  if (!audioSearchResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = array;

    resultsCopy = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:resultsCopy];
}

- (void)setAudioSearchResults:(id)results
{
  v4 = [results mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

- (void)setHasAppSelectionSignalsFrequencyDenominator:(BOOL)denominator
{
  if (denominator)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAppSelectionSignalsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAppSelectionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

@end