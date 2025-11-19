@interface PersonalizedItemClientRankingFunction
+ (id)clientRankingFunctionForGEOClientRankingModel:(id)a3;
- (PersonalizedItemClientRankingFunction)initWithModel:(id)a3;
- (double)clientRankingScoreForPersonalizedItemSignalPack:(id)a3 withServerScore:(id)a4 hasContributionsFromDiscreteFeaturesResult:(BOOL *)a5;
- (double)weightedScoreForModelFeatureIdentifier:(id)a3 function:(id)a4 personalizedItemSignalPack:(id)a5;
- (void)describeInLog:(id)a3 withType:(unsigned __int8)a4;
@end

@implementation PersonalizedItemClientRankingFunction

- (void)describeInLog:(id)a3 withType:(unsigned __int8)a4
{
  v6 = a3;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [(PersonalizedItemClientRankingFunction *)self model];
  v8 = [v7 features];

  obj = v8;
  v50 = [v8 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v50)
  {
    v49 = *v57;
    v46 = a4;
    v45 = v6;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [v10 featureIdentifier];
        v12 = [v11 featureIdentifierType];

        if (v12 != 3)
        {
          if (v12 == 2)
          {
            v51 = i;
            v13 = [v10 featureIdentifier];
            v14 = sub_100ECC484(v13);
          }

          else
          {
            if (v12 != 1)
            {
              v15 = 0;
              goto LABEL_28;
            }

            v51 = i;
            v13 = [v10 featureIdentifier];
            v14 = sub_100ECC364(v13);
          }

          v15 = v14;
          goto LABEL_26;
        }

        v51 = i;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v16 = [v10 featureIdentifier];
        v13 = [v16 unitExponentPairs];

        v15 = [v13 countByEnumeratingWithState:&v52 objects:v64 count:16];
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
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v52 + 1) + 8 * j);
            v20 = [v19 exponent];
            v21 = [v19 unit];
            v22 = [v21 featureType];

            if (v22 == 2)
            {
              v23 = [v19 unit];
              v24 = [v23 feature];
              v25 = sub_100ECC484(v24);
              goto LABEL_21;
            }

            if (v22 == 1)
            {
              v23 = [v19 unit];
              v24 = [v23 source];
              v25 = sub_100ECC364(v24);
LABEL_21:
              v26 = v25;

              goto LABEL_23;
            }

            v26 = 0;
LABEL_23:
            v27 = [@"Composite:" stringByAppendingFormat:@"[Exp:%u, Desc:%@], ", v20, v26];
          }

          v15 = [v13 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v15);
        a4 = v46;
        v6 = v45;
        v10 = v47;
LABEL_26:

        i = v51;
LABEL_28:
        v28 = [v10 function];
        v29 = [v28 functionType];

        if (v29 == 2)
        {
          v30 = [v10 function];
          [v30 valueThresholdLow];
          v37 = v36;
          [v30 weightLow];
          v39 = v38;
          [v30 valueThresholdHigh];
          v41 = v40;
          [v30 weightHigh];
          [NSString stringWithFormat:@"Discrete: ThresholdLow=%f, WeightLow=%f, ThresholdHigh=%f, WeightHigh=%f", *&v37, *&v39, *&v41, v42];
          v43 = LABEL_32:;
        }

        else
        {
          if (v29 == 1)
          {
            v30 = [v10 function];
            [v30 weight];
            v32 = v31;
            [v30 meanValue];
            v34 = v33;
            [v30 maxRelativeValue];
            [NSString stringWithFormat:@"Weight=%f, Mean=%f, MaxRelative=%f", *&v32, *&v34, v35, v44];
            goto LABEL_32;
          }

          v43 = 0;
        }

        if (os_log_type_enabled(v6, a4))
        {
          *buf = 138412546;
          v61 = v15;
          v62 = 2112;
          v63 = v43;
          _os_log_impl(&_mh_execute_header, v6, a4, "Client ranking model feature: %@ -> %@", buf, 0x16u);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v50);
  }
}

- (double)weightedScoreForModelFeatureIdentifier:(id)a3 function:(id)a4 personalizedItemSignalPack:(id)a5
{
  v8 = a3;
  v9 = a4;
  v56 = a5;
  v10 = [v8 featureIdentifierType];
  if (v10 == 3)
  {
    v53 = v9;
    v54 = v8;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v52 = v8;
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
        v24 = [v23 unit];
        v25 = [v24 featureType];

        if (v25 == 2)
        {
          v27 = [v23 unit];
          v28 = [v27 feature];
        }

        else
        {
          v26 = 0.0;
          if (v25 != 1)
          {
            goto LABEL_20;
          }

          v27 = [v23 unit];
          v28 = [v27 source];
        }

        v29 = v28;
        v30 = [v23 unit];
        v31 = [v30 function];
        [(PersonalizedItemClientRankingFunction *)self weightedScoreForModelFeatureIdentifier:v29 function:v31 personalizedItemSignalPack:v56];
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

        v9 = v53;
        v8 = v54;
        goto LABEL_39;
      }
    }
  }

  v11 = 0.0;
  if (v10 == 2)
  {
    v16 = [v8 featureType];
    if (![v56 hasValueForFeatureType:v16])
    {
      goto LABEL_39;
    }

    [v56 valueForFeatureType:v16];
    v15 = v17;
LABEL_29:
    v40 = [v9 functionType];
    if (v40 != 2)
    {
      if (v40 != 1)
      {
        goto LABEL_39;
      }

      v41 = v9;
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

    v41 = v9;
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

  if (v10 != 1)
  {
    goto LABEL_39;
  }

  v12 = [v8 suggestionType];
  v13 = [v8 serverEntryType];
  v14 = [v8 sourceType];
  if (v14 == 1)
  {
    v15 = 1.0;
    if (v13 != [v56 itemServerEntryTypeSource])
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (!v14)
  {
    v15 = 1.0;
    if (v12 == [v56 itemSuggestionTypeSource])
    {
      goto LABEL_29;
    }
  }

LABEL_39:

  return v11;
}

- (double)clientRankingScoreForPersonalizedItemSignalPack:(id)a3 withServerScore:(id)a4 hasContributionsFromDiscreteFeaturesResult:(BOOL *)a5
{
  v8 = a3;
  [a4 normalizedScore];
  if (a5)
  {
    *a5 = 0;
  }

  v10 = v9;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [(PersonalizedItemClientRankingFunction *)self model];
  v12 = [v11 features];

  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 featureIdentifier];
        v19 = [v17 function];
        [(PersonalizedItemClientRankingFunction *)self weightedScoreForModelFeatureIdentifier:v18 function:v19 personalizedItemSignalPack:v8];
        v21 = v20;

        if (a5)
        {
          if (v21 != 0.0)
          {
            v22 = [v17 function];
            v23 = [v22 functionType];

            if (v23 == 2)
            {
              *a5 = 1;
            }
          }
        }

        v10 = v21 + v10;
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v24 = exp(-v10);
  return 1.0 / (v24 + 1.0);
}

- (PersonalizedItemClientRankingFunction)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PersonalizedItemClientRankingFunction;
  v6 = [(PersonalizedItemClientRankingFunction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

+ (id)clientRankingFunctionForGEOClientRankingModel:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithModel:v4];

  return v5;
}

@end