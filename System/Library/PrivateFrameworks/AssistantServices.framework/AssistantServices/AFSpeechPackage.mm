@interface AFSpeechPackage
+ (id)fromSASRecognition:(id)a3 processedAudioDuration:(double)a4;
- (AFSpeechPackage)initWithCoder:(id)a3;
- (AFSpeechPackage)initWithDictionary:(id)a3;
- (AFSpeechPackage)initWithRecognition:(id)a3 unfilteredRecognition:(id)a4 rawRecognition:(id)a5 audioAnalytics:(id)a6 isFinal:(BOOL)a7 utteranceStart:(double)a8 latticeMitigatorResult:(id)a9 recognitionPaused:(BOOL)a10 speechProfileUsed:(BOOL)a11 resultCandidateId:(int64_t)a12 endOfSentenceLikelihood:(id)a13 modelVersion:(id)a14 acousticModelVersion:(id)a15 potentialCommandPrecedingUtterance:(id)a16 potentialCommandUtterance:(id)a17 numOneBestTokensExcludingTriggerPhrase:(int64_t)a18;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechPackage

- (unint64_t)hash
{
  v3 = [(AFSpeechRecognition *)self->_recognition hash];
  v4 = [(AFSpeechRecognition *)self->_rawRecognition hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultCandidateId];
  v6 = v4 ^ [v5 hash] ^ (16 * ((self->_isFinal ^ self->_recognitionPaused ^ self->_speechProfileUsed) & 1));
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_utteranceStart];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(v4 + 2), v5 == self->_recognition) || [(AFSpeechRecognition *)v5 isEqual:?]) && ((v6 = *(v4 + 3), v6 == self->_unfilteredRecognition) || [(AFSpeechRecognition *)v6 isEqual:?]) && ((v7 = *(v4 + 4), v7 == self->_rawRecognition) || [(AFSpeechRecognition *)v7 isEqual:?]) && v4[8] == self->_isFinal && *(v4 + 6) == self->_utteranceStart && v4[9] == self->_recognitionPaused && v4[10] == self->_speechProfileUsed && *(v4 + 11) == self->_resultCandidateId && ((v8 = *(v4 + 8), v8 == self->_endOfSentenceLikelihood) || [(NSNumber *)v8 isEqual:?]) && ((v9 = *(v4 + 12), v9 == self->_modelVersion) || [(NSString *)v9 isEqualToString:?]) && ((v10 = *(v4 + 13), v10 == self->_acousticModelVersion) || [(NSString *)v10 isEqualToString:?]) && *(v4 + 14) == self->_numOneBestTokensExcludingTriggerPhrase;

  return v11;
}

- (id)dictionaryRepresentation
{
  v22[12] = *MEMORY[0x1E69E9840];
  v21[0] = @"recognition";
  v20 = [(AFSpeechRecognition *)self->_recognition dictionaryRepresentation];
  v22[0] = v20;
  v21[1] = @"unfilteredRecognition";
  v19 = [(AFSpeechRecognition *)self->_unfilteredRecognition dictionaryRepresentation];
  v22[1] = v19;
  v21[2] = @"rawRecognition";
  v18 = [(AFSpeechRecognition *)self->_rawRecognition dictionaryRepresentation];
  v22[2] = v18;
  v21[3] = @"isFinal";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFinal];
  v22[3] = v17;
  v21[4] = @"utteranceStart";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_utteranceStart];
  v22[4] = v16;
  v21[5] = @"recognitionPaused";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_recognitionPaused];
  v22[5] = v15;
  v21[6] = @"speechProfileUsed";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_speechProfileUsed];
  v22[6] = v3;
  v21[7] = @"resultCandidateId";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultCandidateId];
  v22[7] = v4;
  v21[8] = @"endOfSentenceLikelihood";
  endOfSentenceLikelihood = self->_endOfSentenceLikelihood;
  v6 = endOfSentenceLikelihood;
  if (!endOfSentenceLikelihood)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v22[8] = v6;
  v21[9] = @"modelVersion";
  modelVersion = self->_modelVersion;
  v8 = modelVersion;
  if (!modelVersion)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v22[9] = v8;
  v21[10] = @"acousticModelVersion";
  acousticModelVersion = self->_acousticModelVersion;
  v10 = acousticModelVersion;
  if (!acousticModelVersion)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v22[10] = v10;
  v21[11] = @"numOneBestTokensExcludingTriggerPhrase";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numOneBestTokensExcludingTriggerPhrase];
  v22[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:12];

  if (acousticModelVersion)
  {
    if (modelVersion)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (endOfSentenceLikelihood)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!modelVersion)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (endOfSentenceLikelihood)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (AFSpeechPackage)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"recognition"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v5;
  if (!v8)
  {
    v12 = 0;
    v51 = 0;
LABEL_39:

    goto LABEL_40;
  }

  NSClassFromString(&v7->super.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = 0;
    v12 = v8;
    goto LABEL_39;
  }

  v7 = [[AFSpeechRecognition alloc] initWithDictionary:v8];
  if (v7)
  {
    v9 = [v4 objectForKey:@"unfilteredRecognition"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = v9;
    if (v12)
    {
      NSClassFromString(&v11->super.isa);
      if (objc_opt_isKindOfClass())
      {

        v11 = [[AFSpeechRecognition alloc] initWithDictionary:v12];
        if (!v11)
        {
          v51 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v13 = [v4 objectForKey:@"rawRecognition"];
        v14 = objc_opt_class();
        p_isa = NSStringFromClass(v14);
        v16 = v13;
        if (v16)
        {
          NSClassFromString(p_isa);
          if (objc_opt_isKindOfClass())
          {

            v17 = [[AFSpeechRecognition alloc] initWithDictionary:v16];
            if (!v17)
            {
              p_isa = 0;
              v51 = 0;
LABEL_36:

              goto LABEL_37;
            }

            v64 = v17;
            v18 = [v4 objectForKey:@"isFinal"];
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = v18;
            if (v21)
            {
              NSClassFromString(v20);
              if (objc_opt_isKindOfClass())
              {
                v62 = v21;

                v22 = [v4 objectForKey:@"utteranceStart"];
                v23 = objc_opt_class();
                v24 = NSStringFromClass(v23);
                v63 = v22;
                LODWORD(v22) = strictValidationOfObjectWithClassType(v22, v24);

                if (!v22)
                {
                  v51 = 0;
                  v21 = v62;
                  p_isa = &v64->super.isa;
                  goto LABEL_34;
                }

                v25 = [v4 objectForKey:@"recognitionPaused"];
                v26 = objc_opt_class();
                v27 = NSStringFromClass(v26);
                v61 = v25;
                v28 = strictValidationOfObjectWithClassType(v25, v27);

                p_isa = &v64->super.isa;
                if (v28)
                {
                  v29 = [v4 objectForKey:@"speechProfileUsed"];
                  v30 = objc_opt_class();
                  v31 = NSStringFromClass(v30);
                  v60 = v29;
                  LODWORD(v29) = strictValidationOfObjectWithClassType(v29, v31);

                  if (v29)
                  {
                    v32 = [v4 objectForKey:@"resultCandidateId"];
                    v33 = objc_opt_class();
                    v34 = NSStringFromClass(v33);
                    v59 = v32;
                    LODWORD(v32) = strictValidationOfObjectWithClassType(v32, v34);

                    if (v32)
                    {
                      v35 = [v4 objectForKey:@"endOfSentenceLikelihood"];
                      v36 = objc_opt_class();
                      v37 = NSStringFromClass(v36);
                      v58 = v35;
                      LODWORD(v35) = strictValidationOfObjectWithClassType(v35, v37);

                      if (v35)
                      {
                        v38 = [v4 objectForKey:@"modelVersion"];
                        v39 = objc_opt_class();
                        v40 = NSStringFromClass(v39);
                        v41 = strictValidationOfObjectWithClassType(v38, v40);

                        if (v41)
                        {
                          v42 = [v4 objectForKey:@"acousticModelVersion"];
                          v43 = objc_opt_class();
                          v44 = NSStringFromClass(v43);
                          v57 = v42;
                          LODWORD(v42) = strictValidationOfObjectWithClassType(v42, v44);

                          if (v42)
                          {
                            v45 = [v4 objectForKey:@"numOneBestTokensExcludingTriggerPhrase"];
                            v46 = objc_opt_class();
                            v47 = NSStringFromClass(v46);
                            v56 = v45;
                            LODWORD(v45) = strictValidationOfObjectWithClassType(v45, v47);

                            if (v45)
                            {
                              v48 = [v62 BOOLValue];
                              [(NSString *)v63 doubleValue];
                              v50 = v49;
                              v55 = [v61 BOOLValue];
                              BYTE1(v54) = [v60 BOOLValue];
                              LOBYTE(v54) = v55;
                              self = -[AFSpeechPackage initWithRecognition:unfilteredRecognition:rawRecognition:audioAnalytics:isFinal:utteranceStart:latticeMitigatorResult:recognitionPaused:speechProfileUsed:resultCandidateId:endOfSentenceLikelihood:modelVersion:acousticModelVersion:potentialCommandPrecedingUtterance:potentialCommandUtterance:numOneBestTokensExcludingTriggerPhrase:](self, "initWithRecognition:unfilteredRecognition:rawRecognition:audioAnalytics:isFinal:utteranceStart:latticeMitigatorResult:recognitionPaused:speechProfileUsed:resultCandidateId:endOfSentenceLikelihood:modelVersion:acousticModelVersion:potentialCommandPrecedingUtterance:potentialCommandUtterance:numOneBestTokensExcludingTriggerPhrase:", v7, v11, v64, 0, v48, 0, v50, v54, [v59 intValue], v58, v38, v57, 0, 0, objc_msgSend(v56, "intValue"));
                              v51 = self;
                            }

                            else
                            {
                              v51 = 0;
                            }
                          }

                          else
                          {
                            v51 = 0;
                          }
                        }

                        else
                        {
                          v51 = 0;
                        }

                        v21 = v62;
                        p_isa = &v64->super.isa;
                      }

                      else
                      {
                        v51 = 0;
                        v21 = v62;
                      }
                    }

                    else
                    {
                      v51 = 0;
                      v21 = v62;
                    }
                  }

                  else
                  {
                    v51 = 0;
                    v21 = v62;
                  }
                }

                else
                {
                  v51 = 0;
                  v21 = v62;
                }

                v52 = v61;
LABEL_33:

LABEL_34:
                goto LABEL_35;
              }

              v63 = v20;
              v51 = 0;
              v52 = v21;
            }

            else
            {
              v63 = v20;
              v52 = 0;
              v51 = 0;
            }

            p_isa = &v64->super.isa;
            goto LABEL_33;
          }

          v51 = 0;
          v21 = v16;
        }

        else
        {
          v21 = 0;
          v51 = 0;
        }

LABEL_35:

        goto LABEL_36;
      }

      v51 = 0;
      v16 = v12;
    }

    else
    {
      v16 = 0;
      v51 = 0;
    }

LABEL_37:

    goto LABEL_38;
  }

  v51 = 0;
LABEL_40:

  return v51;
}

- (AFSpeechPackage)initWithRecognition:(id)a3 unfilteredRecognition:(id)a4 rawRecognition:(id)a5 audioAnalytics:(id)a6 isFinal:(BOOL)a7 utteranceStart:(double)a8 latticeMitigatorResult:(id)a9 recognitionPaused:(BOOL)a10 speechProfileUsed:(BOOL)a11 resultCandidateId:(int64_t)a12 endOfSentenceLikelihood:(id)a13 modelVersion:(id)a14 acousticModelVersion:(id)a15 potentialCommandPrecedingUtterance:(id)a16 potentialCommandUtterance:(id)a17 numOneBestTokensExcludingTriggerPhrase:(int64_t)a18
{
  v51 = a3;
  v24 = a4;
  v50 = a5;
  v25 = a6;
  obj = a9;
  v26 = a9;
  v27 = a13;
  v28 = a14;
  v49 = a15;
  v29 = a16;
  v30 = a17;
  v52.receiver = self;
  v52.super_class = AFSpeechPackage;
  v31 = [(AFSpeechPackage *)&v52 init];
  if (v31)
  {
    v32 = [v51 copy];
    recognition = v31->_recognition;
    v31->_recognition = v32;

    v34 = [v24 copy];
    unfilteredRecognition = v31->_unfilteredRecognition;
    v31->_unfilteredRecognition = v34;

    v36 = [v50 copy];
    rawRecognition = v31->_rawRecognition;
    v31->_rawRecognition = v36;

    v38 = [v25 copy];
    audioAnalytics = v31->_audioAnalytics;
    v31->_audioAnalytics = v38;

    v31->_isFinal = a7;
    v31->_utteranceStart = a8;
    objc_storeStrong(&v31->_latticeMitigatorResult, obj);
    v31->_recognitionPaused = a10;
    v31->_speechProfileUsed = a11;
    v31->_resultCandidateId = a12;
    v40 = [v27 copy];
    endOfSentenceLikelihood = v31->_endOfSentenceLikelihood;
    v31->_endOfSentenceLikelihood = v40;

    objc_storeStrong(&v31->_modelVersion, a14);
    objc_storeStrong(&v31->_acousticModelVersion, a15);
    v42 = [v29 copy];
    potentialCommandPrecedingUtterance = v31->_potentialCommandPrecedingUtterance;
    v31->_potentialCommandPrecedingUtterance = v42;

    v44 = [v30 copy];
    potentialCommandUtterance = v31->_potentialCommandUtterance;
    v31->_potentialCommandUtterance = v44;

    v31->_numOneBestTokensExcludingTriggerPhrase = a18;
  }

  return v31;
}

- (AFSpeechPackage)initWithCoder:(id)a3
{
  v3 = a3;
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"recognition"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"unfilteredRecognition"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"rawRecognition"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"audioAnalytics"];
  v16 = [v3 decodeBoolForKey:@"isFinal"];
  [v3 decodeDoubleForKey:@"utteranceStart"];
  v5 = v4;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"latMitRes"];
  v17 = [v3 decodeBoolForKey:@"recognitionPaused"];
  v6 = [v3 decodeBoolForKey:@"speechProfileUsed"];
  v7 = [v3 decodeIntegerForKey:@"resultCandidateId"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endOfSentenceLikelihood"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"acousticModelVersion"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"potentialCommandPrecedingUtterance"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"potentialCommandUtterance"];
  v13 = [v3 decodeIntegerForKey:@"numOneBestTokensExcludingTriggerPhrase"];

  BYTE1(v15) = v6;
  LOBYTE(v15) = v17;
  v24 = [(AFSpeechPackage *)self initWithRecognition:v22 unfilteredRecognition:v18 rawRecognition:v21 audioAnalytics:v20 isFinal:v16 utteranceStart:v19 latticeMitigatorResult:v5 recognitionPaused:v15 speechProfileUsed:v7 resultCandidateId:v8 endOfSentenceLikelihood:v9 modelVersion:v10 acousticModelVersion:v11 potentialCommandPrecedingUtterance:v12 potentialCommandUtterance:v13 numOneBestTokensExcludingTriggerPhrase:?];

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  recognition = self->_recognition;
  v5 = a3;
  [v5 encodeObject:recognition forKey:@"recognition"];
  [v5 encodeObject:self->_unfilteredRecognition forKey:@"unfilteredRecognition"];
  [v5 encodeObject:self->_rawRecognition forKey:@"rawRecognition"];
  [v5 encodeObject:self->_audioAnalytics forKey:@"audioAnalytics"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeDouble:@"utteranceStart" forKey:self->_utteranceStart];
  [v5 encodeObject:self->_latticeMitigatorResult forKey:@"latMitRes"];
  [v5 encodeBool:self->_recognitionPaused forKey:@"recognitionPaused"];
  [v5 encodeBool:self->_speechProfileUsed forKey:@"speechProfileUsed"];
  [v5 encodeInteger:self->_resultCandidateId forKey:@"resultCandidateId"];
  [v5 encodeObject:self->_endOfSentenceLikelihood forKey:@"endOfSentenceLikelihood"];
  [v5 encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->_acousticModelVersion forKey:@"acousticModelVersion"];
  [v5 encodeObject:self->_potentialCommandPrecedingUtterance forKey:@"potentialCommandPrecedingUtterance"];
  [v5 encodeObject:self->_potentialCommandUtterance forKey:@"potentialCommandUtterance"];
  [v5 encodeInteger:self->_numOneBestTokensExcludingTriggerPhrase forKey:@"numOneBestTokensExcludingTriggerPhrase"];
}

+ (id)fromSASRecognition:(id)a3 processedAudioDuration:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 af_speechPhrases];
  v7 = [v5 af_speechUtterances];

  if (v6 && v7)
  {
    v8 = [[AFSpeechRecognition alloc] initWithPhrases:v6 utterances:v7 processedAudioDuration:a4];
    v9 = [AFSpeechAudioAnalytics alloc];
    v10 = [(AFSpeechAudioAnalytics *)v9 initWithSpeechRecognitionFeatures:MEMORY[0x1E695E0F8] acousticFeatures:MEMORY[0x1E695E0F8] snr:1.0];
    v11 = [objc_alloc(objc_opt_class()) initWithRecognition:v8 rawRecognition:v8 audioAnalytics:v10 isFinal:1 utteranceStart:0.0];
  }

  else
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315138;
      v16 = "+[AFSpeechPackage(SASRecognition) fromSASRecognition:processedAudioDuration:]";
      _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s Returning empty AFSpeechPackage because recognition was empty.", &v15, 0xCu);
    }

    v11 = objc_alloc_init(AFSpeechPackage);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

@end