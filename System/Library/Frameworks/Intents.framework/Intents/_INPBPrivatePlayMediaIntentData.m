@interface _INPBPrivatePlayMediaIntentData
- (BOOL)isEqual:(id)a3;
- (_INPBPrivatePlayMediaIntentData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAudioSearchResults:(id)a3;
- (void)addInternalSignal:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioSearchResults:(id)a3;
- (void)setHasAppSelectionEnabled:(BOOL)a3;
- (void)setHasAppSelectionSignalsEnabled:(BOOL)a3;
- (void)setHasAppSelectionSignalsFrequencyDenominator:(BOOL)a3;
- (void)setHasEntityConfidenceSignalsEnabled:(BOOL)a3;
- (void)setHasEntityConfidenceSignalsFrequencyDenominatorInternal:(BOOL)a3;
- (void)setHasEntityConfidenceSignalsFrequencyDenominatorProd:(BOOL)a3;
- (void)setHasEntityConfidenceSignalsMaxItemsToDisambiguate:(BOOL)a3;
- (void)setHasImmediatelyStartPlayback:(BOOL)a3;
- (void)setHasIsAmbiguousPlay:(BOOL)a3;
- (void)setHasIsPersonalizedRequest:(BOOL)a3;
- (void)setHasShouldSuppressCommonWholeHouseAudioRoutes:(BOOL)a3;
- (void)setInternalSignals:(id)a3;
- (void)setPegasusMetaData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPrivatePlayMediaIntentData

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"alternativeProviderBundleIdentifier"];

  v6 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"ampPAFDataSetID"];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appInferred](self, "appInferred")}];
    [v3 setObject:v8 forKeyedSubscript:@"appInferred"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appSelectionEnabled](self, "appSelectionEnabled")}];
    [v3 setObject:v9 forKeyedSubscript:@"appSelectionEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData appSelectionSignalsEnabled](self, "appSelectionSignalsEnabled")}];
    [v3 setObject:v10 forKeyedSubscript:@"appSelectionSignalsEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData appSelectionSignalsFrequencyDenominator](self, "appSelectionSignalsFrequencyDenominator")}];
    [v3 setObject:v11 forKeyedSubscript:@"appSelectionSignalsFrequencyDenominator"];
  }

  if ([(NSArray *)self->_audioSearchResults count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"audioSearchResults"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsEnabled](self, "entityConfidenceSignalsEnabled")}];
    [v3 setObject:v19 forKeyedSubscript:@"entityConfidenceSignalsEnabled"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorInternal](self, "entityConfidenceSignalsFrequencyDenominatorInternal")}];
    [v3 setObject:v20 forKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorInternal"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsFrequencyDenominatorProd](self, "entityConfidenceSignalsFrequencyDenominatorProd")}];
    [v3 setObject:v21 forKeyedSubscript:@"entityConfidenceSignalsFrequencyDenominatorProd"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBPrivatePlayMediaIntentData entityConfidenceSignalsMaxItemsToDisambiguate](self, "entityConfidenceSignalsMaxItemsToDisambiguate")}];
    [v3 setObject:v22 forKeyedSubscript:@"entityConfidenceSignalsMaxItemsToDisambiguate"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData immediatelyStartPlayback](self, "immediatelyStartPlayback")}];
    [v3 setObject:v23 forKeyedSubscript:@"immediatelyStartPlayback"];
  }

  if (self->_internalSignals)
  {
    v24 = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"internalSignal"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData isAmbiguousPlay](self, "isAmbiguousPlay")}];
    [v3 setObject:v26 forKeyedSubscript:@"isAmbiguousPlay"];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData isPersonalizedRequest](self, "isPersonalizedRequest")}];
    [v3 setObject:v27 forKeyedSubscript:@"isPersonalizedRequest"];
  }

  if (self->_pegasusMetaData)
  {
    v28 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"pegasusMetaData"];
  }

  v30 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"privateMediaIntentData"];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPrivatePlayMediaIntentData shouldSuppressCommonWholeHouseAudioRoutes](self, "shouldSuppressCommonWholeHouseAudioRoutes")}];
    [v3 setObject:v32 forKeyedSubscript:@"shouldSuppressCommonWholeHouseAudioRoutes"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  v6 = [v4 alternativeProviderBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v7 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
    v10 = [v4 alternativeProviderBundleIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  v6 = [v4 ampPAFDataSetID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v12 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
    v15 = [v4 ampPAFDataSetID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v17 = [(_INPBPrivatePlayMediaIntentData *)self hasAppInferred];
  if (v17 != [v4 hasAppInferred])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppInferred])
  {
    if ([v4 hasAppInferred])
    {
      appInferred = self->_appInferred;
      if (appInferred != [v4 appInferred])
      {
        goto LABEL_76;
      }
    }
  }

  v19 = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled];
  if (v19 != [v4 hasAppSelectionEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionEnabled])
  {
    if ([v4 hasAppSelectionEnabled])
    {
      appSelectionEnabled = self->_appSelectionEnabled;
      if (appSelectionEnabled != [v4 appSelectionEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  v21 = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled];
  if (v21 != [v4 hasAppSelectionSignalsEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsEnabled])
  {
    if ([v4 hasAppSelectionSignalsEnabled])
    {
      appSelectionSignalsEnabled = self->_appSelectionSignalsEnabled;
      if (appSelectionSignalsEnabled != [v4 appSelectionSignalsEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  v23 = [(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator];
  if (v23 != [v4 hasAppSelectionSignalsFrequencyDenominator])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasAppSelectionSignalsFrequencyDenominator])
  {
    if ([v4 hasAppSelectionSignalsFrequencyDenominator])
    {
      appSelectionSignalsFrequencyDenominator = self->_appSelectionSignalsFrequencyDenominator;
      if (appSelectionSignalsFrequencyDenominator != [v4 appSelectionSignalsFrequencyDenominator])
      {
        goto LABEL_76;
      }
    }
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
  v6 = [v4 audioSearchResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v25 = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
  if (v25)
  {
    v26 = v25;
    v27 = [(_INPBPrivatePlayMediaIntentData *)self audioSearchResults];
    v28 = [v4 audioSearchResults];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v30 = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled];
  if (v30 != [v4 hasEntityConfidenceSignalsEnabled])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsEnabled])
  {
    if ([v4 hasEntityConfidenceSignalsEnabled])
    {
      entityConfidenceSignalsEnabled = self->_entityConfidenceSignalsEnabled;
      if (entityConfidenceSignalsEnabled != [v4 entityConfidenceSignalsEnabled])
      {
        goto LABEL_76;
      }
    }
  }

  v32 = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal];
  if (v32 != [v4 hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorInternal])
  {
    if ([v4 hasEntityConfidenceSignalsFrequencyDenominatorInternal])
    {
      entityConfidenceSignalsFrequencyDenominatorInternal = self->_entityConfidenceSignalsFrequencyDenominatorInternal;
      if (entityConfidenceSignalsFrequencyDenominatorInternal != [v4 entityConfidenceSignalsFrequencyDenominatorInternal])
      {
        goto LABEL_76;
      }
    }
  }

  v34 = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd];
  if (v34 != [v4 hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsFrequencyDenominatorProd])
  {
    if ([v4 hasEntityConfidenceSignalsFrequencyDenominatorProd])
    {
      entityConfidenceSignalsFrequencyDenominatorProd = self->_entityConfidenceSignalsFrequencyDenominatorProd;
      if (entityConfidenceSignalsFrequencyDenominatorProd != [v4 entityConfidenceSignalsFrequencyDenominatorProd])
      {
        goto LABEL_76;
      }
    }
  }

  v36 = [(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate];
  if (v36 != [v4 hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasEntityConfidenceSignalsMaxItemsToDisambiguate])
  {
    if ([v4 hasEntityConfidenceSignalsMaxItemsToDisambiguate])
    {
      entityConfidenceSignalsMaxItemsToDisambiguate = self->_entityConfidenceSignalsMaxItemsToDisambiguate;
      if (entityConfidenceSignalsMaxItemsToDisambiguate != [v4 entityConfidenceSignalsMaxItemsToDisambiguate])
      {
        goto LABEL_76;
      }
    }
  }

  v38 = [(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback];
  if (v38 != [v4 hasImmediatelyStartPlayback])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasImmediatelyStartPlayback])
  {
    if ([v4 hasImmediatelyStartPlayback])
    {
      immediatelyStartPlayback = self->_immediatelyStartPlayback;
      if (immediatelyStartPlayback != [v4 immediatelyStartPlayback])
      {
        goto LABEL_76;
      }
    }
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
  v6 = [v4 internalSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v40 = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
  if (v40)
  {
    v41 = v40;
    v42 = [(_INPBPrivatePlayMediaIntentData *)self internalSignals];
    v43 = [v4 internalSignals];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v45 = [(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay];
  if (v45 != [v4 hasIsAmbiguousPlay])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    if ([v4 hasIsAmbiguousPlay])
    {
      isAmbiguousPlay = self->_isAmbiguousPlay;
      if (isAmbiguousPlay != [v4 isAmbiguousPlay])
      {
        goto LABEL_76;
      }
    }
  }

  v47 = [(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest];
  if (v47 != [v4 hasIsPersonalizedRequest])
  {
    goto LABEL_76;
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    if ([v4 hasIsPersonalizedRequest])
    {
      isPersonalizedRequest = self->_isPersonalizedRequest;
      if (isPersonalizedRequest != [v4 isPersonalizedRequest])
      {
        goto LABEL_76;
      }
    }
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
  v6 = [v4 pegasusMetaData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_75;
  }

  v49 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
  if (v49)
  {
    v50 = v49;
    v51 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];
    v52 = [v4 pegasusMetaData];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v5 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  v6 = [v4 privateMediaIntentData];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_75:

    goto LABEL_76;
  }

  v54 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
  if (v54)
  {
    v55 = v54;
    v56 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
    v57 = [v4 privateMediaIntentData];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_76;
    }
  }

  else
  {
  }

  v61 = [(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes];
  if (v61 == [v4 hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    if (!-[_INPBPrivatePlayMediaIntentData hasShouldSuppressCommonWholeHouseAudioRoutes](self, "hasShouldSuppressCommonWholeHouseAudioRoutes") || ![v4 hasShouldSuppressCommonWholeHouseAudioRoutes] || (shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes, shouldSuppressCommonWholeHouseAudioRoutes == objc_msgSend(v4, "shouldSuppressCommonWholeHouseAudioRoutes")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPrivatePlayMediaIntentData allocWithZone:](_INPBPrivatePlayMediaIntentData init];
  v6 = [(_INPBString *)self->_alternativeProviderBundleIdentifier copyWithZone:a3];
  [(_INPBPrivatePlayMediaIntentData *)v5 setAlternativeProviderBundleIdentifier:v6];

  v7 = [(_INPBString *)self->_ampPAFDataSetID copyWithZone:a3];
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

  v8 = [(NSArray *)self->_audioSearchResults copyWithZone:a3];
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

  v9 = [(NSArray *)self->_internalSignals copyWithZone:a3];
  [(_INPBPrivatePlayMediaIntentData *)v5 setInternalSignals:v9];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsAmbiguousPlay])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setIsAmbiguousPlay:[(_INPBPrivatePlayMediaIntentData *)self isAmbiguousPlay]];
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasIsPersonalizedRequest])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setIsPersonalizedRequest:[(_INPBPrivatePlayMediaIntentData *)self isPersonalizedRequest]];
  }

  v10 = [(NSData *)self->_pegasusMetaData copyWithZone:a3];
  [(_INPBPrivatePlayMediaIntentData *)v5 setPegasusMetaData:v10];

  v11 = [(_INPBPrivateMediaIntentData *)self->_privateMediaIntentData copyWithZone:a3];
  [(_INPBPrivatePlayMediaIntentData *)v5 setPrivateMediaIntentData:v11];

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    [(_INPBPrivatePlayMediaIntentData *)v5 setShouldSuppressCommonWholeHouseAudioRoutes:[(_INPBPrivatePlayMediaIntentData *)self shouldSuppressCommonWholeHouseAudioRoutes]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPrivatePlayMediaIntentData *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPrivatePlayMediaIntentData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPrivatePlayMediaIntentData *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];

  if (v5)
  {
    v6 = [(_INPBPrivatePlayMediaIntentData *)self alternativeProviderBundleIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];

  if (v7)
  {
    v8 = [(_INPBPrivatePlayMediaIntentData *)self ampPAFDataSetID];
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

  v32 = [(_INPBPrivatePlayMediaIntentData *)self pegasusMetaData];

  if (v32)
  {
    pegasusMetaData = self->_pegasusMetaData;
    PBDataWriterWriteDataField();
  }

  v34 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];

  if (v34)
  {
    v35 = [(_INPBPrivatePlayMediaIntentData *)self privateMediaIntentData];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPrivatePlayMediaIntentData *)self hasShouldSuppressCommonWholeHouseAudioRoutes])
  {
    shouldSuppressCommonWholeHouseAudioRoutes = self->_shouldSuppressCommonWholeHouseAudioRoutes;
    PBDataWriterWriteBOOLField();
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldSuppressCommonWholeHouseAudioRoutes:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setPegasusMetaData:(id)a3
{
  v4 = [a3 copy];
  pegasusMetaData = self->_pegasusMetaData;
  self->_pegasusMetaData = v4;

  MEMORY[0x1EEE66BB8](v4, pegasusMetaData);
}

- (void)setHasIsPersonalizedRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsAmbiguousPlay:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

- (void)setHasImmediatelyStartPlayback:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEntityConfidenceSignalsMaxItemsToDisambiguate:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEntityConfidenceSignalsFrequencyDenominatorProd:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasEntityConfidenceSignalsFrequencyDenominatorInternal:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEntityConfidenceSignalsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addAudioSearchResults:(id)a3
{
  v4 = a3;
  audioSearchResults = self->_audioSearchResults;
  v8 = v4;
  if (!audioSearchResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_audioSearchResults;
    self->_audioSearchResults = v6;

    v4 = v8;
    audioSearchResults = self->_audioSearchResults;
  }

  [(NSArray *)audioSearchResults addObject:v4];
}

- (void)setAudioSearchResults:(id)a3
{
  v4 = [a3 mutableCopy];
  audioSearchResults = self->_audioSearchResults;
  self->_audioSearchResults = v4;

  MEMORY[0x1EEE66BB8](v4, audioSearchResults);
}

- (void)setHasAppSelectionSignalsFrequencyDenominator:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAppSelectionSignalsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAppSelectionEnabled:(BOOL)a3
{
  if (a3)
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