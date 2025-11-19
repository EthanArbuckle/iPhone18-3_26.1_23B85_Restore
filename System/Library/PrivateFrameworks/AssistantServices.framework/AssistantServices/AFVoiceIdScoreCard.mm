@interface AFVoiceIdScoreCard
+ (id)newWithBuilder:(id)a3;
- (AFVoiceIdScoreCard)initWithBuilder:(id)a3;
- (AFVoiceIdScoreCard)initWithCoder:(id)a3;
- (AFVoiceIdScoreCard)initWithDictionaryRepresentation:(id)a3;
- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)a3 spIdUnknownUserScore:(id)a4 spIdKnownUserScores:(id)a5 spIdUserScoresVersion:(id)a6 spIdScoreThresholdingType:(id)a7 spIdAssetVersion:(id)a8 userClassified:(id)a9 userIdentityClassification:(int64_t)a10;
- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)a3 spIdUnknownUserScore:(id)a4 spIdKnownUserScores:(id)a5 spIdUserScoresVersion:(id)a6 spIdScoreThresholdingType:(id)a7 spIdAssetVersion:(id)a8 userClassified:(id)a9 userIdentityClassification:(int64_t)a10 lowScoreThreshold:(id)a11 highScoreThreshold:(id)a12 confidentScoreThreshold:(id)a13 deltaScoreThreshold:(id)a14 hasSufficientAudioProcessed:(int64_t)a15;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFVoiceIdScoreCard

- (id)buildDictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
  if (spIdAudioProcessedDuration)
  {
    [v3 setObject:spIdAudioProcessedDuration forKey:@"spIdAudioProcessedDuration"];
  }

  spIdUnknownUserScore = self->_spIdUnknownUserScore;
  if (spIdUnknownUserScore)
  {
    [v4 setObject:spIdUnknownUserScore forKey:@"spIdUnknownUserScore"];
  }

  if (self->_spIdKnownUserScores)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_spIdKnownUserScores, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = self->_spIdKnownUserScores;
    v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_spIdKnownUserScores objectForKey:v13, v33];
          [v7 setObject:v14 forKey:v13];
        }

        v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    v15 = [v7 copy];
    [v4 setObject:v15 forKey:@"spIdKnownUserScores"];
  }

  spIdUserScoresVersion = self->_spIdUserScoresVersion;
  if (spIdUserScoresVersion)
  {
    [v4 setObject:spIdUserScoresVersion forKey:@"spIdUserScoresVersion"];
  }

  spIdScoreThresholdingType = self->_spIdScoreThresholdingType;
  if (spIdScoreThresholdingType)
  {
    [v4 setObject:spIdScoreThresholdingType forKey:@"spIdScoreThresholdingType"];
  }

  spIdAssetVersion = self->_spIdAssetVersion;
  if (spIdAssetVersion)
  {
    [v4 setObject:spIdAssetVersion forKey:@"spIdAssetVersion"];
  }

  userClassified = self->_userClassified;
  if (userClassified)
  {
    [v4 setObject:userClassified forKey:@"userClassified"];
  }

  userIdentityClassification = self->_userIdentityClassification;
  if (userIdentityClassification > 4)
  {
    v21 = @"(unknown)";
  }

  else
  {
    v21 = off_1E7346048[userIdentityClassification];
  }

  v22 = v21;
  [v4 setObject:v22 forKey:@"userIdentityClassification"];

  lowScoreThreshold = self->_lowScoreThreshold;
  if (lowScoreThreshold)
  {
    [v4 setObject:lowScoreThreshold forKey:@"lowScoreThreshold"];
  }

  highScoreThreshold = self->_highScoreThreshold;
  if (highScoreThreshold)
  {
    [v4 setObject:highScoreThreshold forKey:@"highScoreThreshold"];
  }

  confidentScoreThreshold = self->_confidentScoreThreshold;
  if (confidentScoreThreshold)
  {
    [v4 setObject:confidentScoreThreshold forKey:@"confidentScoreThreshold"];
  }

  deltaScoreThreshold = self->_deltaScoreThreshold;
  if (deltaScoreThreshold)
  {
    [v4 setObject:deltaScoreThreshold forKey:@"deltaScoreThreshold"];
  }

  hasSufficientAudioProcessed = self->_hasSufficientAudioProcessed;
  if (hasSufficientAudioProcessed > 2)
  {
    v28 = @"(unknown)";
  }

  else
  {
    v28 = off_1E7347958[hasSufficientAudioProcessed];
  }

  v29 = v28;
  [v4 setObject:v29 forKey:@"hasSufficientAudioProcessed"];

  v30 = [v4 copy];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (AFVoiceIdScoreCard)initWithDictionaryRepresentation:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"spIdAudioProcessedDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v6;
    }

    else
    {
      v45 = 0;
    }

    v8 = [v5 objectForKey:@"spIdUnknownUserScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v8;
    }

    else
    {
      v43 = 0;
    }

    v9 = [v5 objectForKey:@"spIdKnownUserScores"];
    objc_opt_class();
    v44 = v5;
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v40 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v47;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v47 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v11 objectForKey:v16];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;

                if (v18)
                {
                  [v10 setObject:v18 forKey:v16];
                }
              }

              else
              {

                v18 = 0;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v13);
      }

      v42 = [v10 copy];
      v5 = v44;
      v9 = v40;
    }

    else
    {
      v42 = 0;
    }

    v19 = [v5 objectForKey:@"spIdUserScoresVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v19;
    }

    else
    {
      v41 = 0;
    }

    v20 = [v5 objectForKey:@"spIdScoreThresholdingType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v20;
    }

    else
    {
      v39 = 0;
    }

    v21 = [v5 objectForKey:@"spIdAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v21;
    }

    else
    {
      v38 = 0;
    }

    v22 = [v5 objectForKey:@"userClassified"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v5 objectForKey:@"userIdentityClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = AFUserIdentityClassficationGetFromName(v24);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v5 objectForKey:@"lowScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v5 objectForKey:@"highScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = [v5 objectForKey:@"confidentScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v5 objectForKey:@"deltaScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = [v5 objectForKey:@"hasSufficientAudioProcessed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = AFBooleanGetFromName(v34);
    }

    else
    {
      v35 = 0;
    }

    self = [(AFVoiceIdScoreCard *)self initWithSpIdAudioProcessedDuration:v45 spIdUnknownUserScore:v43 spIdKnownUserScores:v42 spIdUserScoresVersion:v41 spIdScoreThresholdingType:v39 spIdAssetVersion:v38 userClassified:v23 userIdentityClassification:v25 lowScoreThreshold:v27 highScoreThreshold:v29 confidentScoreThreshold:v31 deltaScoreThreshold:v33 hasSufficientAudioProcessed:v35];
    v7 = self;
    v5 = v44;
  }

  else
  {
    v7 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
  v5 = a3;
  [v5 encodeObject:spIdAudioProcessedDuration forKey:@"AFVoiceIdScoreCard::spIdAudioProcessedDuration"];
  [v5 encodeObject:self->_spIdUnknownUserScore forKey:@"AFVoiceIdScoreCard::spIdUnknownUserScore"];
  [v5 encodeObject:self->_spIdKnownUserScores forKey:@"AFVoiceIdScoreCard::spIdKnownUserScores"];
  [v5 encodeObject:self->_spIdUserScoresVersion forKey:@"AFVoiceIdScoreCard::spIdUserScoresVersion"];
  [v5 encodeObject:self->_spIdScoreThresholdingType forKey:@"AFVoiceIdScoreCard::spIdScoreThresholdingType"];
  [v5 encodeObject:self->_spIdAssetVersion forKey:@"AFVoiceIdScoreCard::spIdAssetVersion"];
  [v5 encodeObject:self->_userClassified forKey:@"AFVoiceIdScoreCard::userClassified"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_userIdentityClassification];
  [v5 encodeObject:v6 forKey:@"AFVoiceIdScoreCard::userIdentityClassification"];

  [v5 encodeObject:self->_lowScoreThreshold forKey:@"AFVoiceIdScoreCard::lowScoreThreshold"];
  [v5 encodeObject:self->_highScoreThreshold forKey:@"AFVoiceIdScoreCard::highScoreThreshold"];
  [v5 encodeObject:self->_confidentScoreThreshold forKey:@"AFVoiceIdScoreCard::confidentScoreThreshold"];
  [v5 encodeObject:self->_deltaScoreThreshold forKey:@"AFVoiceIdScoreCard::deltaScoreThreshold"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_hasSufficientAudioProcessed];
  [v5 encodeObject:v7 forKey:@"AFVoiceIdScoreCard::hasSufficientAudioProcessed"];
}

- (AFVoiceIdScoreCard)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdAudioProcessedDuration"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdUnknownUserScore"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v20 = [v3 decodeObjectOfClasses:v7 forKey:@"AFVoiceIdScoreCard::spIdKnownUserScores"];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdUserScoresVersion"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdScoreThresholdingType"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdAssetVersion"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::userClassified"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::userIdentityClassification"];
  v12 = [v11 integerValue];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::lowScoreThreshold"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::highScoreThreshold"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::confidentScoreThreshold"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::deltaScoreThreshold"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::hasSufficientAudioProcessed"];

  v17 = [v16 integerValue];
  v25 = [(AFVoiceIdScoreCard *)self initWithSpIdAudioProcessedDuration:v23 spIdUnknownUserScore:v22 spIdKnownUserScores:v20 spIdUserScoresVersion:v8 spIdScoreThresholdingType:v9 spIdAssetVersion:v21 userClassified:v10 userIdentityClassification:v12 lowScoreThreshold:v19 highScoreThreshold:v13 confidentScoreThreshold:v14 deltaScoreThreshold:v15 hasSufficientAudioProcessed:v17];

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      userIdentityClassification = self->_userIdentityClassification;
      if (userIdentityClassification == [(AFVoiceIdScoreCard *)v5 userIdentityClassification]&& (hasSufficientAudioProcessed = self->_hasSufficientAudioProcessed, hasSufficientAudioProcessed == [(AFVoiceIdScoreCard *)v5 hasSufficientAudioProcessed]))
      {
        v8 = [(AFVoiceIdScoreCard *)v5 spIdAudioProcessedDuration];
        spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
        if (spIdAudioProcessedDuration == v8 || [(NSNumber *)spIdAudioProcessedDuration isEqual:v8])
        {
          v10 = [(AFVoiceIdScoreCard *)v5 spIdUnknownUserScore];
          spIdUnknownUserScore = self->_spIdUnknownUserScore;
          if (spIdUnknownUserScore == v10 || [(NSNumber *)spIdUnknownUserScore isEqual:v10])
          {
            v12 = [(AFVoiceIdScoreCard *)v5 spIdKnownUserScores];
            spIdKnownUserScores = self->_spIdKnownUserScores;
            if (spIdKnownUserScores == v12 || [(NSDictionary *)spIdKnownUserScores isEqual:v12])
            {
              v14 = [(AFVoiceIdScoreCard *)v5 spIdUserScoresVersion];
              spIdUserScoresVersion = self->_spIdUserScoresVersion;
              if (spIdUserScoresVersion == v14 || [(NSNumber *)spIdUserScoresVersion isEqual:v14])
              {
                v16 = [(AFVoiceIdScoreCard *)v5 spIdScoreThresholdingType];
                spIdScoreThresholdingType = self->_spIdScoreThresholdingType;
                if (spIdScoreThresholdingType == v16 || [(NSString *)spIdScoreThresholdingType isEqual:v16])
                {
                  v18 = [(AFVoiceIdScoreCard *)v5 spIdAssetVersion];
                  spIdAssetVersion = self->_spIdAssetVersion;
                  if (spIdAssetVersion == v18 || [(NSString *)spIdAssetVersion isEqual:v18])
                  {
                    v20 = [(AFVoiceIdScoreCard *)v5 userClassified];
                    userClassified = self->_userClassified;
                    if (userClassified == v20 || [(NSString *)userClassified isEqual:v20])
                    {
                      v36 = v20;
                      v22 = [(AFVoiceIdScoreCard *)v5 lowScoreThreshold];
                      lowScoreThreshold = self->_lowScoreThreshold;
                      if (lowScoreThreshold == v22 || [(NSNumber *)lowScoreThreshold isEqual:v22])
                      {
                        v35 = v22;
                        v24 = [(AFVoiceIdScoreCard *)v5 highScoreThreshold];
                        highScoreThreshold = self->_highScoreThreshold;
                        if (highScoreThreshold == v24 || [(NSNumber *)highScoreThreshold isEqual:v24])
                        {
                          v34 = v24;
                          v26 = [(AFVoiceIdScoreCard *)v5 confidentScoreThreshold];
                          confidentScoreThreshold = self->_confidentScoreThreshold;
                          if (confidentScoreThreshold == v26 || [(NSNumber *)confidentScoreThreshold isEqual:v26])
                          {
                            v28 = [(AFVoiceIdScoreCard *)v5 deltaScoreThreshold];
                            deltaScoreThreshold = self->_deltaScoreThreshold;
                            v32 = 1;
                            if (deltaScoreThreshold != v28)
                            {
                              v30 = v28;
                              v31 = [(NSNumber *)deltaScoreThreshold isEqual:v28];
                              v28 = v30;
                              if (!v31)
                              {
                                v32 = 0;
                              }
                            }
                          }

                          else
                          {
                            v32 = 0;
                          }

                          v24 = v34;
                        }

                        else
                        {
                          v32 = 0;
                        }

                        v22 = v35;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      v20 = v36;
                    }

                    else
                    {
                      v32 = 0;
                    }
                  }

                  else
                  {
                    v32 = 0;
                  }
                }

                else
                {
                  v32 = 0;
                }
              }

              else
              {
                v32 = 0;
              }
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_spIdAudioProcessedDuration hash];
  v4 = [(NSNumber *)self->_spIdUnknownUserScore hash]^ v3;
  v5 = [(NSDictionary *)self->_spIdKnownUserScores hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_spIdUserScoresVersion hash];
  v7 = [(NSString *)self->_spIdScoreThresholdingType hash];
  v8 = v7 ^ [(NSString *)self->_spIdAssetVersion hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_userClassified hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_userIdentityClassification];
  v11 = [v10 hash];
  v12 = v9 ^ v11 ^ [(NSNumber *)self->_lowScoreThreshold hash];
  v13 = [(NSNumber *)self->_highScoreThreshold hash];
  v14 = v13 ^ [(NSNumber *)self->_confidentScoreThreshold hash];
  v15 = v14 ^ [(NSNumber *)self->_deltaScoreThreshold hash];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_hasSufficientAudioProcessed];
  v17 = v15 ^ [v16 hash];

  return v12 ^ v17;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25.receiver = self;
  v25.super_class = AFVoiceIdScoreCard;
  v23 = [(AFVoiceIdScoreCard *)&v25 description];
  userIdentityClassification = self->_userIdentityClassification;
  if (userIdentityClassification > 4)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E7346048[userIdentityClassification];
  }

  spIdUnknownUserScore = self->_spIdUnknownUserScore;
  spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
  spIdUserScoresVersion = self->_spIdUserScoresVersion;
  spIdKnownUserScores = self->_spIdKnownUserScores;
  spIdScoreThresholdingType = self->_spIdScoreThresholdingType;
  spIdAssetVersion = self->_spIdAssetVersion;
  userClassified = self->_userClassified;
  v10 = v5;
  lowScoreThreshold = self->_lowScoreThreshold;
  highScoreThreshold = self->_highScoreThreshold;
  confidentScoreThreshold = self->_confidentScoreThreshold;
  deltaScoreThreshold = self->_deltaScoreThreshold;
  hasSufficientAudioProcessed = self->_hasSufficientAudioProcessed;
  if (hasSufficientAudioProcessed > 2)
  {
    v16 = @"(unknown)";
  }

  else
  {
    v16 = off_1E7347958[hasSufficientAudioProcessed];
  }

  v17 = v16;
  v18 = [v24 initWithFormat:@"%@ {spIdAudioProcessedDuration = %@, spIdUnknownUserScore = %@, spIdKnownUserScores = %@, spIdUserScoresVersion = %@, spIdScoreThresholdingType = %@, spIdAssetVersion = %@, userClassified = %@, userIdentityClassification = %@, lowScoreThreshold = %@, highScoreThreshold = %@, confidentScoreThreshold = %@, deltaScoreThreshold = %@, hasSufficientAudioProcessed = %@}", v23, spIdAudioProcessedDuration, spIdUnknownUserScore, spIdKnownUserScores, spIdUserScoresVersion, spIdScoreThresholdingType, spIdAssetVersion, userClassified, v10, lowScoreThreshold, highScoreThreshold, confidentScoreThreshold, deltaScoreThreshold, v17];

  return v18;
}

- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)a3 spIdUnknownUserScore:(id)a4 spIdKnownUserScores:(id)a5 spIdUserScoresVersion:(id)a6 spIdScoreThresholdingType:(id)a7 spIdAssetVersion:(id)a8 userClassified:(id)a9 userIdentityClassification:(int64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __205__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification___block_invoke;
  v32[3] = &unk_1E7346280;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = a10;
  v23 = v22;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v29 = v16;
  v30 = [(AFVoiceIdScoreCard *)self initWithBuilder:v32];

  return v30;
}

void __205__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSpIdAudioProcessedDuration:v3];
  [v4 setSpIdUnknownUserScore:a1[5]];
  [v4 setSpIdKnownUserScores:a1[6]];
  [v4 setSpIdUserScoresVersion:a1[7]];
  [v4 setSpIdScoreThresholdingType:a1[8]];
  [v4 setSpIdAssetVersion:a1[9]];
  [v4 setUserClassified:a1[10]];
  [v4 setUserIdentityClassification:a1[11]];
}

- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)a3 spIdUnknownUserScore:(id)a4 spIdKnownUserScores:(id)a5 spIdUserScoresVersion:(id)a6 spIdScoreThresholdingType:(id)a7 spIdAssetVersion:(id)a8 userClassified:(id)a9 userIdentityClassification:(int64_t)a10 lowScoreThreshold:(id)a11 highScoreThreshold:(id)a12 confidentScoreThreshold:(id)a13 deltaScoreThreshold:(id)a14 hasSufficientAudioProcessed:(int64_t)a15
{
  v41 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __314__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification_lowScoreThreshold_highScoreThreshold_confidentScoreThreshold_deltaScoreThreshold_hasSufficientAudioProcessed___block_invoke;
  v45[3] = &unk_1E7346258;
  v46 = v41;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v25;
  v53 = v26;
  v54 = v27;
  v55 = v28;
  v56 = v29;
  v57 = a10;
  v58 = a15;
  v43 = v29;
  v42 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  v38 = v41;
  v39 = [(AFVoiceIdScoreCard *)self initWithBuilder:v45];

  return v39;
}

void __314__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification_lowScoreThreshold_highScoreThreshold_confidentScoreThreshold_deltaScoreThreshold_hasSufficientAudioProcessed___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSpIdAudioProcessedDuration:v3];
  [v4 setSpIdUnknownUserScore:a1[5]];
  [v4 setSpIdKnownUserScores:a1[6]];
  [v4 setSpIdUserScoresVersion:a1[7]];
  [v4 setSpIdScoreThresholdingType:a1[8]];
  [v4 setSpIdAssetVersion:a1[9]];
  [v4 setUserClassified:a1[10]];
  [v4 setUserIdentityClassification:a1[15]];
  [v4 setLowScoreThreshold:a1[11]];
  [v4 setHighScoreThreshold:a1[12]];
  [v4 setConfidentScoreThreshold:a1[13]];
  [v4 setDeltaScoreThreshold:a1[14]];
  [v4 setHasSufficientAudioProcessed:a1[16]];
}

- (AFVoiceIdScoreCard)initWithBuilder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = AFVoiceIdScoreCard;
  v5 = [(AFVoiceIdScoreCard *)&v42 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFVoiceIdScoreCardMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFVoiceIdScoreCardMutation *)v7 isDirty])
    {
      v8 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdAudioProcessedDuration];
      v9 = [v8 copy];
      spIdAudioProcessedDuration = v6->_spIdAudioProcessedDuration;
      v6->_spIdAudioProcessedDuration = v9;

      v11 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdUnknownUserScore];
      v12 = [v11 copy];
      spIdUnknownUserScore = v6->_spIdUnknownUserScore;
      v6->_spIdUnknownUserScore = v12;

      v14 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdKnownUserScores];
      v15 = [v14 copy];
      spIdKnownUserScores = v6->_spIdKnownUserScores;
      v6->_spIdKnownUserScores = v15;

      v17 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdUserScoresVersion];
      v18 = [v17 copy];
      spIdUserScoresVersion = v6->_spIdUserScoresVersion;
      v6->_spIdUserScoresVersion = v18;

      v20 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdScoreThresholdingType];
      v21 = [v20 copy];
      spIdScoreThresholdingType = v6->_spIdScoreThresholdingType;
      v6->_spIdScoreThresholdingType = v21;

      v23 = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdAssetVersion];
      v24 = [v23 copy];
      spIdAssetVersion = v6->_spIdAssetVersion;
      v6->_spIdAssetVersion = v24;

      v26 = [(_AFVoiceIdScoreCardMutation *)v7 getUserClassified];
      v27 = [v26 copy];
      userClassified = v6->_userClassified;
      v6->_userClassified = v27;

      v6->_userIdentityClassification = [(_AFVoiceIdScoreCardMutation *)v7 getUserIdentityClassification];
      v29 = [(_AFVoiceIdScoreCardMutation *)v7 getLowScoreThreshold];
      v30 = [v29 copy];
      lowScoreThreshold = v6->_lowScoreThreshold;
      v6->_lowScoreThreshold = v30;

      v32 = [(_AFVoiceIdScoreCardMutation *)v7 getHighScoreThreshold];
      v33 = [v32 copy];
      highScoreThreshold = v6->_highScoreThreshold;
      v6->_highScoreThreshold = v33;

      v35 = [(_AFVoiceIdScoreCardMutation *)v7 getConfidentScoreThreshold];
      v36 = [v35 copy];
      confidentScoreThreshold = v6->_confidentScoreThreshold;
      v6->_confidentScoreThreshold = v36;

      v38 = [(_AFVoiceIdScoreCardMutation *)v7 getDeltaScoreThreshold];
      v39 = [v38 copy];
      deltaScoreThreshold = v6->_deltaScoreThreshold;
      v6->_deltaScoreThreshold = v39;

      v6->_hasSufficientAudioProcessed = [(_AFVoiceIdScoreCardMutation *)v7 getHasSufficientAudioProcessed];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFVoiceIdScoreCardMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFVoiceIdScoreCardMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFVoiceIdScoreCard);
      v7 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdAudioProcessedDuration];
      v8 = [v7 copy];
      spIdAudioProcessedDuration = v6->_spIdAudioProcessedDuration;
      v6->_spIdAudioProcessedDuration = v8;

      v10 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdUnknownUserScore];
      v11 = [v10 copy];
      spIdUnknownUserScore = v6->_spIdUnknownUserScore;
      v6->_spIdUnknownUserScore = v11;

      v13 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdKnownUserScores];
      v14 = [v13 copy];
      spIdKnownUserScores = v6->_spIdKnownUserScores;
      v6->_spIdKnownUserScores = v14;

      v16 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdUserScoresVersion];
      v17 = [v16 copy];
      spIdUserScoresVersion = v6->_spIdUserScoresVersion;
      v6->_spIdUserScoresVersion = v17;

      v19 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdScoreThresholdingType];
      v20 = [v19 copy];
      spIdScoreThresholdingType = v6->_spIdScoreThresholdingType;
      v6->_spIdScoreThresholdingType = v20;

      v22 = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdAssetVersion];
      v23 = [v22 copy];
      spIdAssetVersion = v6->_spIdAssetVersion;
      v6->_spIdAssetVersion = v23;

      v25 = [(_AFVoiceIdScoreCardMutation *)v5 getUserClassified];
      v26 = [v25 copy];
      userClassified = v6->_userClassified;
      v6->_userClassified = v26;

      v6->_userIdentityClassification = [(_AFVoiceIdScoreCardMutation *)v5 getUserIdentityClassification];
      v28 = [(_AFVoiceIdScoreCardMutation *)v5 getLowScoreThreshold];
      v29 = [v28 copy];
      lowScoreThreshold = v6->_lowScoreThreshold;
      v6->_lowScoreThreshold = v29;

      v31 = [(_AFVoiceIdScoreCardMutation *)v5 getHighScoreThreshold];
      v32 = [v31 copy];
      highScoreThreshold = v6->_highScoreThreshold;
      v6->_highScoreThreshold = v32;

      v34 = [(_AFVoiceIdScoreCardMutation *)v5 getConfidentScoreThreshold];
      v35 = [v34 copy];
      confidentScoreThreshold = v6->_confidentScoreThreshold;
      v6->_confidentScoreThreshold = v35;

      v37 = [(_AFVoiceIdScoreCardMutation *)v5 getDeltaScoreThreshold];
      v38 = [v37 copy];
      deltaScoreThreshold = v6->_deltaScoreThreshold;
      v6->_deltaScoreThreshold = v38;

      v6->_hasSufficientAudioProcessed = [(_AFVoiceIdScoreCardMutation *)v5 getHasSufficientAudioProcessed];
    }

    else
    {
      v6 = [(AFVoiceIdScoreCard *)self copy];
    }
  }

  else
  {
    v6 = [(AFVoiceIdScoreCard *)self copy];
  }

  return v6;
}

@end