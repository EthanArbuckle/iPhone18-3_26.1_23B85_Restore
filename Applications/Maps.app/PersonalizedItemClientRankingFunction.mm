@interface PersonalizedItemClientRankingFunction
+ (id)clientRankingFunctionForGEOClientRankingModel:(id)model;
- (PersonalizedItemClientRankingFunction)initWithModel:(id)model;
- (double)clientRankingScoreForPersonalizedItemSignalPack:(id)pack withServerScore:(id)score hasContributionsFromDiscreteFeaturesResult:(BOOL *)result;
- (double)weightedScoreForModelFeatureIdentifier:(id)identifier function:(id)function personalizedItemSignalPack:(id)pack;
- (void)describeInLog:(id)log withType:(unsigned __int8)type;
@end

@implementation PersonalizedItemClientRankingFunction

- (void)describeInLog:(id)log withType:(unsigned __int8)type
{
  logCopy = log;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  model = [(PersonalizedItemClientRankingFunction *)self model];
  features = [model features];

  obj = features;
  v50 = [features countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v50)
  {
    v49 = *v57;
    typeCopy = type;
    v45 = logCopy;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        featureIdentifier = [v10 featureIdentifier];
        featureIdentifierType = [featureIdentifier featureIdentifierType];

        if (featureIdentifierType != 3)
        {
          if (featureIdentifierType == 2)
          {
            v51 = i;
            featureIdentifier2 = [v10 featureIdentifier];
            v14 = sub_100ECC484(featureIdentifier2);
          }

          else
          {
            if (featureIdentifierType != 1)
            {
              v15 = 0;
              goto LABEL_28;
            }

            v51 = i;
            featureIdentifier2 = [v10 featureIdentifier];
            v14 = sub_100ECC364(featureIdentifier2);
          }

          v15 = v14;
          goto LABEL_26;
        }

        v51 = i;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        featureIdentifier3 = [v10 featureIdentifier];
        featureIdentifier2 = [featureIdentifier3 unitExponentPairs];

        v15 = [featureIdentifier2 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (!v15)
        {
          goto LABEL_26;
        }

        v47 = v10;
        v17 = *v53;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v53 != v17)
            {
              objc_enumerationMutation(featureIdentifier2);
            }

            v19 = *(*(&v52 + 1) + 8 * j);
            exponent = [v19 exponent];
            unit = [v19 unit];
            featureType = [unit featureType];

            if (featureType == 2)
            {
              unit2 = [v19 unit];
              feature = [unit2 feature];
              v25 = sub_100ECC484(feature);
              goto LABEL_21;
            }

            if (featureType == 1)
            {
              unit2 = [v19 unit];
              feature = [unit2 source];
              v25 = sub_100ECC364(feature);
LABEL_21:
              v26 = v25;

              goto LABEL_23;
            }

            v26 = 0;
LABEL_23:
            v27 = [@"Composite:" stringByAppendingFormat:@"[Exp:%u, Desc:%@], ", exponent, v26];
          }

          v15 = [featureIdentifier2 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v15);
        type = typeCopy;
        logCopy = v45;
        v10 = v47;
LABEL_26:

        i = v51;
LABEL_28:
        function = [v10 function];
        functionType = [function functionType];

        if (functionType == 2)
        {
          function2 = [v10 function];
          [function2 valueThresholdLow];
          v37 = v36;
          [function2 weightLow];
          v39 = v38;
          [function2 valueThresholdHigh];
          v41 = v40;
          [function2 weightHigh];
          [NSString stringWithFormat:@"Discrete: ThresholdLow=%f, WeightLow=%f, ThresholdHigh=%f, WeightHigh=%f", *&v37, *&v39, *&v41, v42];
          v43 = LABEL_32:;
        }

        else
        {
          if (functionType == 1)
          {
            function2 = [v10 function];
            [function2 weight];
            v32 = v31;
            [function2 meanValue];
            v34 = v33;
            [function2 maxRelativeValue];
            [NSString stringWithFormat:@"Weight=%f, Mean=%f, MaxRelative=%f", *&v32, *&v34, v35, v44];
            goto LABEL_32;
          }

          v43 = 0;
        }

        if (os_log_type_enabled(logCopy, type))
        {
          *buf = 138412546;
          v61 = v15;
          v62 = 2112;
          v63 = v43;
          _os_log_impl(&_mh_execute_header, logCopy, type, "Client ranking model feature: %@ -> %@", buf, 0x16u);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v50);
  }
}

- (double)weightedScoreForModelFeatureIdentifier:(id)identifier function:(id)function personalizedItemSignalPack:(id)pack
{
  identifierCopy = identifier;
  functionCopy = function;
  packCopy = pack;
  featureIdentifierType = [identifierCopy featureIdentifierType];
  if (featureIdentifierType == 3)
  {
    v53 = functionCopy;
    v54 = identifierCopy;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v52 = identifierCopy;
    obj = [v52 unitExponentPairs];
    v18 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (!v18)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v19 = v18;
    v20 = 0;
    v21 = *v58;
    while (1)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v57 + 1) + 8 * i);
        unit = [v23 unit];
        featureType = [unit featureType];

        if (featureType == 2)
        {
          unit2 = [v23 unit];
          feature = [unit2 feature];
        }

        else
        {
          v26 = 0.0;
          if (featureType != 1)
          {
            goto LABEL_20;
          }

          unit2 = [v23 unit];
          feature = [unit2 source];
        }

        v29 = feature;
        unit3 = [v23 unit];
        function = [unit3 function];
        [(PersonalizedItemClientRankingFunction *)self weightedScoreForModelFeatureIdentifier:v29 function:function personalizedItemSignalPack:packCopy];
        v26 = v32;

LABEL_20:
        v33 = pow(v26, [v23 exponent]);
        v34 = v33;
        if (v20)
        {
          [v20 doubleValue];
          v36 = [NSNumber numberWithDouble:v35 * v34];

          v20 = v36;
        }

        else
        {
          v20 = [NSNumber numberWithDouble:v33];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v19)
      {
LABEL_27:

        [v20 doubleValue];
        v38 = v37;
        [v52 featureWeight];
        v11 = v38 * v39;

        functionCopy = v53;
        identifierCopy = v54;
        goto LABEL_39;
      }
    }
  }

  v11 = 0.0;
  if (featureIdentifierType == 2)
  {
    featureType2 = [identifierCopy featureType];
    if (![packCopy hasValueForFeatureType:featureType2])
    {
      goto LABEL_39;
    }

    [packCopy valueForFeatureType:featureType2];
    v15 = v17;
LABEL_29:
    functionType = [functionCopy functionType];
    if (functionType != 2)
    {
      if (functionType != 1)
      {
        goto LABEL_39;
      }

      v41 = functionCopy;
      [v41 maxRelativeValue];
      v11 = 0.0;
      if (v42 != 0.0)
      {
        [v41 meanValue];
        v44 = v15 - v43;
        [v41 maxRelativeValue];
        v46 = v44 / v45;
        [v41 weight];
        v11 = fmin(fmax(v46, -1.0), 1.0) * v47;
      }

LABEL_38:

      goto LABEL_39;
    }

    v41 = functionCopy;
    [v41 valueThresholdLow];
    if (v15 <= v48)
    {
      [v41 weightLow];
    }

    else
    {
      [v41 valueThresholdHigh];
      if (v15 < v49)
      {
        goto LABEL_38;
      }

      [v41 weightHigh];
    }

    v11 = v50;
    goto LABEL_38;
  }

  if (featureIdentifierType != 1)
  {
    goto LABEL_39;
  }

  suggestionType = [identifierCopy suggestionType];
  serverEntryType = [identifierCopy serverEntryType];
  sourceType = [identifierCopy sourceType];
  if (sourceType == 1)
  {
    v15 = 1.0;
    if (serverEntryType != [packCopy itemServerEntryTypeSource])
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (!sourceType)
  {
    v15 = 1.0;
    if (suggestionType == [packCopy itemSuggestionTypeSource])
    {
      goto LABEL_29;
    }
  }

LABEL_39:

  return v11;
}

- (double)clientRankingScoreForPersonalizedItemSignalPack:(id)pack withServerScore:(id)score hasContributionsFromDiscreteFeaturesResult:(BOOL *)result
{
  packCopy = pack;
  [score normalizedScore];
  if (result)
  {
    *result = 0;
  }

  v10 = v9;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  model = [(PersonalizedItemClientRankingFunction *)self model];
  features = [model features];

  v13 = [features countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(features);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        featureIdentifier = [v17 featureIdentifier];
        function = [v17 function];
        [(PersonalizedItemClientRankingFunction *)self weightedScoreForModelFeatureIdentifier:featureIdentifier function:function personalizedItemSignalPack:packCopy];
        v21 = v20;

        if (result)
        {
          if (v21 != 0.0)
          {
            function2 = [v17 function];
            functionType = [function2 functionType];

            if (functionType == 2)
            {
              *result = 1;
            }
          }
        }

        v10 = v21 + v10;
      }

      v14 = [features countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v24 = exp(-v10);
  return 1.0 / (v24 + 1.0);
}

- (PersonalizedItemClientRankingFunction)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PersonalizedItemClientRankingFunction;
  v6 = [(PersonalizedItemClientRankingFunction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

+ (id)clientRankingFunctionForGEOClientRankingModel:(id)model
{
  modelCopy = model;
  v5 = [[self alloc] initWithModel:modelCopy];

  return v5;
}

@end