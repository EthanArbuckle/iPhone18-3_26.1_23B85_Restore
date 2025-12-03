@interface AFVoiceIdScoreCard
+ (id)newWithBuilder:(id)builder;
- (AFVoiceIdScoreCard)initWithBuilder:(id)builder;
- (AFVoiceIdScoreCard)initWithCoder:(id)coder;
- (AFVoiceIdScoreCard)initWithDictionaryRepresentation:(id)representation;
- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)duration spIdUnknownUserScore:(id)score spIdKnownUserScores:(id)scores spIdUserScoresVersion:(id)version spIdScoreThresholdingType:(id)type spIdAssetVersion:(id)assetVersion userClassified:(id)classified userIdentityClassification:(int64_t)self0;
- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)duration spIdUnknownUserScore:(id)score spIdKnownUserScores:(id)scores spIdUserScoresVersion:(id)version spIdScoreThresholdingType:(id)type spIdAssetVersion:(id)assetVersion userClassified:(id)classified userIdentityClassification:(int64_t)self0 lowScoreThreshold:(id)self1 highScoreThreshold:(id)self2 confidentScoreThreshold:(id)self3 deltaScoreThreshold:(id)self4 hasSufficientAudioProcessed:(int64_t)self5;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFVoiceIdScoreCard)initWithDictionaryRepresentation:(id)representation
{
  v51 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"spIdAudioProcessedDuration"];
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
    selfCopy = self;
    v5 = v44;
  }

  else
  {
    selfCopy = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
  coderCopy = coder;
  [coderCopy encodeObject:spIdAudioProcessedDuration forKey:@"AFVoiceIdScoreCard::spIdAudioProcessedDuration"];
  [coderCopy encodeObject:self->_spIdUnknownUserScore forKey:@"AFVoiceIdScoreCard::spIdUnknownUserScore"];
  [coderCopy encodeObject:self->_spIdKnownUserScores forKey:@"AFVoiceIdScoreCard::spIdKnownUserScores"];
  [coderCopy encodeObject:self->_spIdUserScoresVersion forKey:@"AFVoiceIdScoreCard::spIdUserScoresVersion"];
  [coderCopy encodeObject:self->_spIdScoreThresholdingType forKey:@"AFVoiceIdScoreCard::spIdScoreThresholdingType"];
  [coderCopy encodeObject:self->_spIdAssetVersion forKey:@"AFVoiceIdScoreCard::spIdAssetVersion"];
  [coderCopy encodeObject:self->_userClassified forKey:@"AFVoiceIdScoreCard::userClassified"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_userIdentityClassification];
  [coderCopy encodeObject:v6 forKey:@"AFVoiceIdScoreCard::userIdentityClassification"];

  [coderCopy encodeObject:self->_lowScoreThreshold forKey:@"AFVoiceIdScoreCard::lowScoreThreshold"];
  [coderCopy encodeObject:self->_highScoreThreshold forKey:@"AFVoiceIdScoreCard::highScoreThreshold"];
  [coderCopy encodeObject:self->_confidentScoreThreshold forKey:@"AFVoiceIdScoreCard::confidentScoreThreshold"];
  [coderCopy encodeObject:self->_deltaScoreThreshold forKey:@"AFVoiceIdScoreCard::deltaScoreThreshold"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_hasSufficientAudioProcessed];
  [coderCopy encodeObject:v7 forKey:@"AFVoiceIdScoreCard::hasSufficientAudioProcessed"];
}

- (AFVoiceIdScoreCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdAudioProcessedDuration"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdUnknownUserScore"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v7 forKey:@"AFVoiceIdScoreCard::spIdKnownUserScores"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdUserScoresVersion"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdScoreThresholdingType"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::spIdAssetVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::userClassified"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::userIdentityClassification"];
  integerValue = [v11 integerValue];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::lowScoreThreshold"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::highScoreThreshold"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::confidentScoreThreshold"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::deltaScoreThreshold"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFVoiceIdScoreCard::hasSufficientAudioProcessed"];

  integerValue2 = [v16 integerValue];
  v25 = [(AFVoiceIdScoreCard *)self initWithSpIdAudioProcessedDuration:v23 spIdUnknownUserScore:v22 spIdKnownUserScores:v20 spIdUserScoresVersion:v8 spIdScoreThresholdingType:v9 spIdAssetVersion:v21 userClassified:v10 userIdentityClassification:integerValue lowScoreThreshold:v19 highScoreThreshold:v13 confidentScoreThreshold:v14 deltaScoreThreshold:v15 hasSufficientAudioProcessed:integerValue2];

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userIdentityClassification = self->_userIdentityClassification;
      if (userIdentityClassification == [(AFVoiceIdScoreCard *)v5 userIdentityClassification]&& (hasSufficientAudioProcessed = self->_hasSufficientAudioProcessed, hasSufficientAudioProcessed == [(AFVoiceIdScoreCard *)v5 hasSufficientAudioProcessed]))
      {
        spIdAudioProcessedDuration = [(AFVoiceIdScoreCard *)v5 spIdAudioProcessedDuration];
        spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
        if (spIdAudioProcessedDuration == spIdAudioProcessedDuration || [(NSNumber *)spIdAudioProcessedDuration isEqual:spIdAudioProcessedDuration])
        {
          spIdUnknownUserScore = [(AFVoiceIdScoreCard *)v5 spIdUnknownUserScore];
          spIdUnknownUserScore = self->_spIdUnknownUserScore;
          if (spIdUnknownUserScore == spIdUnknownUserScore || [(NSNumber *)spIdUnknownUserScore isEqual:spIdUnknownUserScore])
          {
            spIdKnownUserScores = [(AFVoiceIdScoreCard *)v5 spIdKnownUserScores];
            spIdKnownUserScores = self->_spIdKnownUserScores;
            if (spIdKnownUserScores == spIdKnownUserScores || [(NSDictionary *)spIdKnownUserScores isEqual:spIdKnownUserScores])
            {
              spIdUserScoresVersion = [(AFVoiceIdScoreCard *)v5 spIdUserScoresVersion];
              spIdUserScoresVersion = self->_spIdUserScoresVersion;
              if (spIdUserScoresVersion == spIdUserScoresVersion || [(NSNumber *)spIdUserScoresVersion isEqual:spIdUserScoresVersion])
              {
                spIdScoreThresholdingType = [(AFVoiceIdScoreCard *)v5 spIdScoreThresholdingType];
                spIdScoreThresholdingType = self->_spIdScoreThresholdingType;
                if (spIdScoreThresholdingType == spIdScoreThresholdingType || [(NSString *)spIdScoreThresholdingType isEqual:spIdScoreThresholdingType])
                {
                  spIdAssetVersion = [(AFVoiceIdScoreCard *)v5 spIdAssetVersion];
                  spIdAssetVersion = self->_spIdAssetVersion;
                  if (spIdAssetVersion == spIdAssetVersion || [(NSString *)spIdAssetVersion isEqual:spIdAssetVersion])
                  {
                    userClassified = [(AFVoiceIdScoreCard *)v5 userClassified];
                    userClassified = self->_userClassified;
                    if (userClassified == userClassified || [(NSString *)userClassified isEqual:userClassified])
                    {
                      v36 = userClassified;
                      lowScoreThreshold = [(AFVoiceIdScoreCard *)v5 lowScoreThreshold];
                      lowScoreThreshold = self->_lowScoreThreshold;
                      if (lowScoreThreshold == lowScoreThreshold || [(NSNumber *)lowScoreThreshold isEqual:lowScoreThreshold])
                      {
                        v35 = lowScoreThreshold;
                        highScoreThreshold = [(AFVoiceIdScoreCard *)v5 highScoreThreshold];
                        highScoreThreshold = self->_highScoreThreshold;
                        if (highScoreThreshold == highScoreThreshold || [(NSNumber *)highScoreThreshold isEqual:highScoreThreshold])
                        {
                          v34 = highScoreThreshold;
                          confidentScoreThreshold = [(AFVoiceIdScoreCard *)v5 confidentScoreThreshold];
                          confidentScoreThreshold = self->_confidentScoreThreshold;
                          if (confidentScoreThreshold == confidentScoreThreshold || [(NSNumber *)confidentScoreThreshold isEqual:confidentScoreThreshold])
                          {
                            deltaScoreThreshold = [(AFVoiceIdScoreCard *)v5 deltaScoreThreshold];
                            deltaScoreThreshold = self->_deltaScoreThreshold;
                            v32 = 1;
                            if (deltaScoreThreshold != deltaScoreThreshold)
                            {
                              v30 = deltaScoreThreshold;
                              v31 = [(NSNumber *)deltaScoreThreshold isEqual:deltaScoreThreshold];
                              deltaScoreThreshold = v30;
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

                          highScoreThreshold = v34;
                        }

                        else
                        {
                          v32 = 0;
                        }

                        lowScoreThreshold = v35;
                      }

                      else
                      {
                        v32 = 0;
                      }

                      userClassified = v36;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)duration spIdUnknownUserScore:(id)score spIdKnownUserScores:(id)scores spIdUserScoresVersion:(id)version spIdScoreThresholdingType:(id)type spIdAssetVersion:(id)assetVersion userClassified:(id)classified userIdentityClassification:(int64_t)self0
{
  durationCopy = duration;
  scoreCopy = score;
  scoresCopy = scores;
  versionCopy = version;
  typeCopy = type;
  assetVersionCopy = assetVersion;
  classifiedCopy = classified;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __205__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification___block_invoke;
  v32[3] = &unk_1E7346280;
  v33 = durationCopy;
  v34 = scoreCopy;
  v35 = scoresCopy;
  v36 = versionCopy;
  v37 = typeCopy;
  v38 = assetVersionCopy;
  v39 = classifiedCopy;
  classificationCopy = classification;
  v23 = classifiedCopy;
  v24 = assetVersionCopy;
  v25 = typeCopy;
  v26 = versionCopy;
  v27 = scoresCopy;
  v28 = scoreCopy;
  v29 = durationCopy;
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

- (AFVoiceIdScoreCard)initWithSpIdAudioProcessedDuration:(id)duration spIdUnknownUserScore:(id)score spIdKnownUserScores:(id)scores spIdUserScoresVersion:(id)version spIdScoreThresholdingType:(id)type spIdAssetVersion:(id)assetVersion userClassified:(id)classified userIdentityClassification:(int64_t)self0 lowScoreThreshold:(id)self1 highScoreThreshold:(id)self2 confidentScoreThreshold:(id)self3 deltaScoreThreshold:(id)self4 hasSufficientAudioProcessed:(int64_t)self5
{
  durationCopy = duration;
  scoreCopy = score;
  scoresCopy = scores;
  versionCopy = version;
  typeCopy = type;
  assetVersionCopy = assetVersion;
  classifiedCopy = classified;
  thresholdCopy = threshold;
  scoreThresholdCopy = scoreThreshold;
  confidentScoreThresholdCopy = confidentScoreThreshold;
  deltaScoreThresholdCopy = deltaScoreThreshold;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __314__AFVoiceIdScoreCard_initWithSpIdAudioProcessedDuration_spIdUnknownUserScore_spIdKnownUserScores_spIdUserScoresVersion_spIdScoreThresholdingType_spIdAssetVersion_userClassified_userIdentityClassification_lowScoreThreshold_highScoreThreshold_confidentScoreThreshold_deltaScoreThreshold_hasSufficientAudioProcessed___block_invoke;
  v45[3] = &unk_1E7346258;
  v46 = durationCopy;
  v47 = scoreCopy;
  v48 = scoresCopy;
  v49 = versionCopy;
  v50 = typeCopy;
  v51 = assetVersionCopy;
  v52 = classifiedCopy;
  v53 = thresholdCopy;
  v54 = scoreThresholdCopy;
  v55 = confidentScoreThresholdCopy;
  v56 = deltaScoreThresholdCopy;
  classificationCopy = classification;
  processedCopy = processed;
  v43 = deltaScoreThresholdCopy;
  v42 = confidentScoreThresholdCopy;
  v30 = scoreThresholdCopy;
  v31 = thresholdCopy;
  v32 = classifiedCopy;
  v33 = assetVersionCopy;
  v34 = typeCopy;
  v35 = versionCopy;
  v36 = scoresCopy;
  v37 = scoreCopy;
  v38 = durationCopy;
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

- (AFVoiceIdScoreCard)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v42.receiver = self;
  v42.super_class = AFVoiceIdScoreCard;
  v5 = [(AFVoiceIdScoreCard *)&v42 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFVoiceIdScoreCardMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFVoiceIdScoreCardMutation *)v7 isDirty])
    {
      getSpIdAudioProcessedDuration = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdAudioProcessedDuration];
      v9 = [getSpIdAudioProcessedDuration copy];
      spIdAudioProcessedDuration = v6->_spIdAudioProcessedDuration;
      v6->_spIdAudioProcessedDuration = v9;

      getSpIdUnknownUserScore = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdUnknownUserScore];
      v12 = [getSpIdUnknownUserScore copy];
      spIdUnknownUserScore = v6->_spIdUnknownUserScore;
      v6->_spIdUnknownUserScore = v12;

      getSpIdKnownUserScores = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdKnownUserScores];
      v15 = [getSpIdKnownUserScores copy];
      spIdKnownUserScores = v6->_spIdKnownUserScores;
      v6->_spIdKnownUserScores = v15;

      getSpIdUserScoresVersion = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdUserScoresVersion];
      v18 = [getSpIdUserScoresVersion copy];
      spIdUserScoresVersion = v6->_spIdUserScoresVersion;
      v6->_spIdUserScoresVersion = v18;

      getSpIdScoreThresholdingType = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdScoreThresholdingType];
      v21 = [getSpIdScoreThresholdingType copy];
      spIdScoreThresholdingType = v6->_spIdScoreThresholdingType;
      v6->_spIdScoreThresholdingType = v21;

      getSpIdAssetVersion = [(_AFVoiceIdScoreCardMutation *)v7 getSpIdAssetVersion];
      v24 = [getSpIdAssetVersion copy];
      spIdAssetVersion = v6->_spIdAssetVersion;
      v6->_spIdAssetVersion = v24;

      getUserClassified = [(_AFVoiceIdScoreCardMutation *)v7 getUserClassified];
      v27 = [getUserClassified copy];
      userClassified = v6->_userClassified;
      v6->_userClassified = v27;

      v6->_userIdentityClassification = [(_AFVoiceIdScoreCardMutation *)v7 getUserIdentityClassification];
      getLowScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v7 getLowScoreThreshold];
      v30 = [getLowScoreThreshold copy];
      lowScoreThreshold = v6->_lowScoreThreshold;
      v6->_lowScoreThreshold = v30;

      getHighScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v7 getHighScoreThreshold];
      v33 = [getHighScoreThreshold copy];
      highScoreThreshold = v6->_highScoreThreshold;
      v6->_highScoreThreshold = v33;

      getConfidentScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v7 getConfidentScoreThreshold];
      v36 = [getConfidentScoreThreshold copy];
      confidentScoreThreshold = v6->_confidentScoreThreshold;
      v6->_confidentScoreThreshold = v36;

      getDeltaScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v7 getDeltaScoreThreshold];
      v39 = [getDeltaScoreThreshold copy];
      deltaScoreThreshold = v6->_deltaScoreThreshold;
      v6->_deltaScoreThreshold = v39;

      v6->_hasSufficientAudioProcessed = [(_AFVoiceIdScoreCardMutation *)v7 getHasSufficientAudioProcessed];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFVoiceIdScoreCardMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFVoiceIdScoreCardMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFVoiceIdScoreCard);
      getSpIdAudioProcessedDuration = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdAudioProcessedDuration];
      v8 = [getSpIdAudioProcessedDuration copy];
      spIdAudioProcessedDuration = v6->_spIdAudioProcessedDuration;
      v6->_spIdAudioProcessedDuration = v8;

      getSpIdUnknownUserScore = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdUnknownUserScore];
      v11 = [getSpIdUnknownUserScore copy];
      spIdUnknownUserScore = v6->_spIdUnknownUserScore;
      v6->_spIdUnknownUserScore = v11;

      getSpIdKnownUserScores = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdKnownUserScores];
      v14 = [getSpIdKnownUserScores copy];
      spIdKnownUserScores = v6->_spIdKnownUserScores;
      v6->_spIdKnownUserScores = v14;

      getSpIdUserScoresVersion = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdUserScoresVersion];
      v17 = [getSpIdUserScoresVersion copy];
      spIdUserScoresVersion = v6->_spIdUserScoresVersion;
      v6->_spIdUserScoresVersion = v17;

      getSpIdScoreThresholdingType = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdScoreThresholdingType];
      v20 = [getSpIdScoreThresholdingType copy];
      spIdScoreThresholdingType = v6->_spIdScoreThresholdingType;
      v6->_spIdScoreThresholdingType = v20;

      getSpIdAssetVersion = [(_AFVoiceIdScoreCardMutation *)v5 getSpIdAssetVersion];
      v23 = [getSpIdAssetVersion copy];
      spIdAssetVersion = v6->_spIdAssetVersion;
      v6->_spIdAssetVersion = v23;

      getUserClassified = [(_AFVoiceIdScoreCardMutation *)v5 getUserClassified];
      v26 = [getUserClassified copy];
      userClassified = v6->_userClassified;
      v6->_userClassified = v26;

      v6->_userIdentityClassification = [(_AFVoiceIdScoreCardMutation *)v5 getUserIdentityClassification];
      getLowScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v5 getLowScoreThreshold];
      v29 = [getLowScoreThreshold copy];
      lowScoreThreshold = v6->_lowScoreThreshold;
      v6->_lowScoreThreshold = v29;

      getHighScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v5 getHighScoreThreshold];
      v32 = [getHighScoreThreshold copy];
      highScoreThreshold = v6->_highScoreThreshold;
      v6->_highScoreThreshold = v32;

      getConfidentScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v5 getConfidentScoreThreshold];
      v35 = [getConfidentScoreThreshold copy];
      confidentScoreThreshold = v6->_confidentScoreThreshold;
      v6->_confidentScoreThreshold = v35;

      getDeltaScoreThreshold = [(_AFVoiceIdScoreCardMutation *)v5 getDeltaScoreThreshold];
      v38 = [getDeltaScoreThreshold copy];
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