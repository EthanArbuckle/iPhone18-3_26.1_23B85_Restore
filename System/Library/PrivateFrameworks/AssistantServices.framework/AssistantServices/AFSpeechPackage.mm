@interface AFSpeechPackage
+ (id)fromSASRecognition:(id)recognition processedAudioDuration:(double)duration;
- (AFSpeechPackage)initWithCoder:(id)coder;
- (AFSpeechPackage)initWithDictionary:(id)dictionary;
- (AFSpeechPackage)initWithRecognition:(id)recognition unfilteredRecognition:(id)unfilteredRecognition rawRecognition:(id)rawRecognition audioAnalytics:(id)analytics isFinal:(BOOL)final utteranceStart:(double)start latticeMitigatorResult:(id)result recognitionPaused:(BOOL)self0 speechProfileUsed:(BOOL)self1 resultCandidateId:(int64_t)self2 endOfSentenceLikelihood:(id)self3 modelVersion:(id)self4 acousticModelVersion:(id)self5 potentialCommandPrecedingUtterance:(id)self6 potentialCommandUtterance:(id)self7 numOneBestTokensExcludingTriggerPhrase:(int64_t)self8;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((v5 = *(equalCopy + 2), v5 == self->_recognition) || [(AFSpeechRecognition *)v5 isEqual:?]) && ((v6 = *(equalCopy + 3), v6 == self->_unfilteredRecognition) || [(AFSpeechRecognition *)v6 isEqual:?]) && ((v7 = *(equalCopy + 4), v7 == self->_rawRecognition) || [(AFSpeechRecognition *)v7 isEqual:?]) && equalCopy[8] == self->_isFinal && *(equalCopy + 6) == self->_utteranceStart && equalCopy[9] == self->_recognitionPaused && equalCopy[10] == self->_speechProfileUsed && *(equalCopy + 11) == self->_resultCandidateId && ((v8 = *(equalCopy + 8), v8 == self->_endOfSentenceLikelihood) || [(NSNumber *)v8 isEqual:?]) && ((v9 = *(equalCopy + 12), v9 == self->_modelVersion) || [(NSString *)v9 isEqualToString:?]) && ((v10 = *(equalCopy + 13), v10 == self->_acousticModelVersion) || [(NSString *)v10 isEqualToString:?]) && *(equalCopy + 14) == self->_numOneBestTokensExcludingTriggerPhrase;

  return v11;
}

- (id)dictionaryRepresentation
{
  v22[12] = *MEMORY[0x1E69E9840];
  v21[0] = @"recognition";
  dictionaryRepresentation = [(AFSpeechRecognition *)self->_recognition dictionaryRepresentation];
  v22[0] = dictionaryRepresentation;
  v21[1] = @"unfilteredRecognition";
  dictionaryRepresentation2 = [(AFSpeechRecognition *)self->_unfilteredRecognition dictionaryRepresentation];
  v22[1] = dictionaryRepresentation2;
  v21[2] = @"rawRecognition";
  dictionaryRepresentation3 = [(AFSpeechRecognition *)self->_rawRecognition dictionaryRepresentation];
  v22[2] = dictionaryRepresentation3;
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
  null = endOfSentenceLikelihood;
  if (!endOfSentenceLikelihood)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[8] = null;
  v21[9] = @"modelVersion";
  modelVersion = self->_modelVersion;
  null2 = modelVersion;
  if (!modelVersion)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[9] = null2;
  v21[10] = @"acousticModelVersion";
  acousticModelVersion = self->_acousticModelVersion;
  null3 = acousticModelVersion;
  if (!acousticModelVersion)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[10] = null3;
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

- (AFSpeechPackage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"recognition"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = v5;
  if (!v8)
  {
    v12 = 0;
    selfCopy = 0;
LABEL_39:

    goto LABEL_40;
  }

  NSClassFromString(&v7->super.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = 0;
    v12 = v8;
    goto LABEL_39;
  }

  v7 = [[AFSpeechRecognition alloc] initWithDictionary:v8];
  if (v7)
  {
    v9 = [dictionaryCopy objectForKey:@"unfilteredRecognition"];
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
          selfCopy = 0;
LABEL_38:

          goto LABEL_39;
        }

        v13 = [dictionaryCopy objectForKey:@"rawRecognition"];
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
              selfCopy = 0;
LABEL_36:

              goto LABEL_37;
            }

            v64 = v17;
            v18 = [dictionaryCopy objectForKey:@"isFinal"];
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            v21 = v18;
            if (v21)
            {
              NSClassFromString(v20);
              if (objc_opt_isKindOfClass())
              {
                v62 = v21;

                v22 = [dictionaryCopy objectForKey:@"utteranceStart"];
                v23 = objc_opt_class();
                v24 = NSStringFromClass(v23);
                v63 = v22;
                LODWORD(v22) = strictValidationOfObjectWithClassType(v22, v24);

                if (!v22)
                {
                  selfCopy = 0;
                  v21 = v62;
                  p_isa = &v64->super.isa;
                  goto LABEL_34;
                }

                v25 = [dictionaryCopy objectForKey:@"recognitionPaused"];
                v26 = objc_opt_class();
                v27 = NSStringFromClass(v26);
                v61 = v25;
                v28 = strictValidationOfObjectWithClassType(v25, v27);

                p_isa = &v64->super.isa;
                if (v28)
                {
                  v29 = [dictionaryCopy objectForKey:@"speechProfileUsed"];
                  v30 = objc_opt_class();
                  v31 = NSStringFromClass(v30);
                  v60 = v29;
                  LODWORD(v29) = strictValidationOfObjectWithClassType(v29, v31);

                  if (v29)
                  {
                    v32 = [dictionaryCopy objectForKey:@"resultCandidateId"];
                    v33 = objc_opt_class();
                    v34 = NSStringFromClass(v33);
                    v59 = v32;
                    LODWORD(v32) = strictValidationOfObjectWithClassType(v32, v34);

                    if (v32)
                    {
                      v35 = [dictionaryCopy objectForKey:@"endOfSentenceLikelihood"];
                      v36 = objc_opt_class();
                      v37 = NSStringFromClass(v36);
                      v58 = v35;
                      LODWORD(v35) = strictValidationOfObjectWithClassType(v35, v37);

                      if (v35)
                      {
                        v38 = [dictionaryCopy objectForKey:@"modelVersion"];
                        v39 = objc_opt_class();
                        v40 = NSStringFromClass(v39);
                        v41 = strictValidationOfObjectWithClassType(v38, v40);

                        if (v41)
                        {
                          v42 = [dictionaryCopy objectForKey:@"acousticModelVersion"];
                          v43 = objc_opt_class();
                          v44 = NSStringFromClass(v43);
                          v57 = v42;
                          LODWORD(v42) = strictValidationOfObjectWithClassType(v42, v44);

                          if (v42)
                          {
                            v45 = [dictionaryCopy objectForKey:@"numOneBestTokensExcludingTriggerPhrase"];
                            v46 = objc_opt_class();
                            v47 = NSStringFromClass(v46);
                            v56 = v45;
                            LODWORD(v45) = strictValidationOfObjectWithClassType(v45, v47);

                            if (v45)
                            {
                              bOOLValue = [v62 BOOLValue];
                              [(NSString *)v63 doubleValue];
                              v50 = v49;
                              bOOLValue2 = [v61 BOOLValue];
                              BYTE1(v54) = [v60 BOOLValue];
                              LOBYTE(v54) = bOOLValue2;
                              self = -[AFSpeechPackage initWithRecognition:unfilteredRecognition:rawRecognition:audioAnalytics:isFinal:utteranceStart:latticeMitigatorResult:recognitionPaused:speechProfileUsed:resultCandidateId:endOfSentenceLikelihood:modelVersion:acousticModelVersion:potentialCommandPrecedingUtterance:potentialCommandUtterance:numOneBestTokensExcludingTriggerPhrase:](self, "initWithRecognition:unfilteredRecognition:rawRecognition:audioAnalytics:isFinal:utteranceStart:latticeMitigatorResult:recognitionPaused:speechProfileUsed:resultCandidateId:endOfSentenceLikelihood:modelVersion:acousticModelVersion:potentialCommandPrecedingUtterance:potentialCommandUtterance:numOneBestTokensExcludingTriggerPhrase:", v7, v11, v64, 0, bOOLValue, 0, v50, v54, [v59 intValue], v58, v38, v57, 0, 0, objc_msgSend(v56, "intValue"));
                              selfCopy = self;
                            }

                            else
                            {
                              selfCopy = 0;
                            }
                          }

                          else
                          {
                            selfCopy = 0;
                          }
                        }

                        else
                        {
                          selfCopy = 0;
                        }

                        v21 = v62;
                        p_isa = &v64->super.isa;
                      }

                      else
                      {
                        selfCopy = 0;
                        v21 = v62;
                      }
                    }

                    else
                    {
                      selfCopy = 0;
                      v21 = v62;
                    }
                  }

                  else
                  {
                    selfCopy = 0;
                    v21 = v62;
                  }
                }

                else
                {
                  selfCopy = 0;
                  v21 = v62;
                }

                v52 = v61;
LABEL_33:

LABEL_34:
                goto LABEL_35;
              }

              v63 = v20;
              selfCopy = 0;
              v52 = v21;
            }

            else
            {
              v63 = v20;
              v52 = 0;
              selfCopy = 0;
            }

            p_isa = &v64->super.isa;
            goto LABEL_33;
          }

          selfCopy = 0;
          v21 = v16;
        }

        else
        {
          v21 = 0;
          selfCopy = 0;
        }

LABEL_35:

        goto LABEL_36;
      }

      selfCopy = 0;
      v16 = v12;
    }

    else
    {
      v16 = 0;
      selfCopy = 0;
    }

LABEL_37:

    goto LABEL_38;
  }

  selfCopy = 0;
LABEL_40:

  return selfCopy;
}

- (AFSpeechPackage)initWithRecognition:(id)recognition unfilteredRecognition:(id)unfilteredRecognition rawRecognition:(id)rawRecognition audioAnalytics:(id)analytics isFinal:(BOOL)final utteranceStart:(double)start latticeMitigatorResult:(id)result recognitionPaused:(BOOL)self0 speechProfileUsed:(BOOL)self1 resultCandidateId:(int64_t)self2 endOfSentenceLikelihood:(id)self3 modelVersion:(id)self4 acousticModelVersion:(id)self5 potentialCommandPrecedingUtterance:(id)self6 potentialCommandUtterance:(id)self7 numOneBestTokensExcludingTriggerPhrase:(int64_t)self8
{
  recognitionCopy = recognition;
  unfilteredRecognitionCopy = unfilteredRecognition;
  rawRecognitionCopy = rawRecognition;
  analyticsCopy = analytics;
  obj = result;
  resultCopy = result;
  likelihoodCopy = likelihood;
  versionCopy = version;
  modelVersionCopy = modelVersion;
  utteranceCopy = utterance;
  commandUtteranceCopy = commandUtterance;
  v52.receiver = self;
  v52.super_class = AFSpeechPackage;
  v31 = [(AFSpeechPackage *)&v52 init];
  if (v31)
  {
    v32 = [recognitionCopy copy];
    recognition = v31->_recognition;
    v31->_recognition = v32;

    v34 = [unfilteredRecognitionCopy copy];
    unfilteredRecognition = v31->_unfilteredRecognition;
    v31->_unfilteredRecognition = v34;

    v36 = [rawRecognitionCopy copy];
    rawRecognition = v31->_rawRecognition;
    v31->_rawRecognition = v36;

    v38 = [analyticsCopy copy];
    audioAnalytics = v31->_audioAnalytics;
    v31->_audioAnalytics = v38;

    v31->_isFinal = final;
    v31->_utteranceStart = start;
    objc_storeStrong(&v31->_latticeMitigatorResult, obj);
    v31->_recognitionPaused = paused;
    v31->_speechProfileUsed = used;
    v31->_resultCandidateId = id;
    v40 = [likelihoodCopy copy];
    endOfSentenceLikelihood = v31->_endOfSentenceLikelihood;
    v31->_endOfSentenceLikelihood = v40;

    objc_storeStrong(&v31->_modelVersion, version);
    objc_storeStrong(&v31->_acousticModelVersion, modelVersion);
    v42 = [utteranceCopy copy];
    potentialCommandPrecedingUtterance = v31->_potentialCommandPrecedingUtterance;
    v31->_potentialCommandPrecedingUtterance = v42;

    v44 = [commandUtteranceCopy copy];
    potentialCommandUtterance = v31->_potentialCommandUtterance;
    v31->_potentialCommandUtterance = v44;

    v31->_numOneBestTokensExcludingTriggerPhrase = phrase;
  }

  return v31;
}

- (AFSpeechPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recognition"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unfilteredRecognition"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawRecognition"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioAnalytics"];
  v16 = [coderCopy decodeBoolForKey:@"isFinal"];
  [coderCopy decodeDoubleForKey:@"utteranceStart"];
  v5 = v4;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latMitRes"];
  v17 = [coderCopy decodeBoolForKey:@"recognitionPaused"];
  v6 = [coderCopy decodeBoolForKey:@"speechProfileUsed"];
  v7 = [coderCopy decodeIntegerForKey:@"resultCandidateId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endOfSentenceLikelihood"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acousticModelVersion"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"potentialCommandPrecedingUtterance"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"potentialCommandUtterance"];
  v13 = [coderCopy decodeIntegerForKey:@"numOneBestTokensExcludingTriggerPhrase"];

  BYTE1(v15) = v6;
  LOBYTE(v15) = v17;
  v24 = [(AFSpeechPackage *)self initWithRecognition:v22 unfilteredRecognition:v18 rawRecognition:v21 audioAnalytics:v20 isFinal:v16 utteranceStart:v19 latticeMitigatorResult:v5 recognitionPaused:v15 speechProfileUsed:v7 resultCandidateId:v8 endOfSentenceLikelihood:v9 modelVersion:v10 acousticModelVersion:v11 potentialCommandPrecedingUtterance:v12 potentialCommandUtterance:v13 numOneBestTokensExcludingTriggerPhrase:?];

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  recognition = self->_recognition;
  coderCopy = coder;
  [coderCopy encodeObject:recognition forKey:@"recognition"];
  [coderCopy encodeObject:self->_unfilteredRecognition forKey:@"unfilteredRecognition"];
  [coderCopy encodeObject:self->_rawRecognition forKey:@"rawRecognition"];
  [coderCopy encodeObject:self->_audioAnalytics forKey:@"audioAnalytics"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeDouble:@"utteranceStart" forKey:self->_utteranceStart];
  [coderCopy encodeObject:self->_latticeMitigatorResult forKey:@"latMitRes"];
  [coderCopy encodeBool:self->_recognitionPaused forKey:@"recognitionPaused"];
  [coderCopy encodeBool:self->_speechProfileUsed forKey:@"speechProfileUsed"];
  [coderCopy encodeInteger:self->_resultCandidateId forKey:@"resultCandidateId"];
  [coderCopy encodeObject:self->_endOfSentenceLikelihood forKey:@"endOfSentenceLikelihood"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->_acousticModelVersion forKey:@"acousticModelVersion"];
  [coderCopy encodeObject:self->_potentialCommandPrecedingUtterance forKey:@"potentialCommandPrecedingUtterance"];
  [coderCopy encodeObject:self->_potentialCommandUtterance forKey:@"potentialCommandUtterance"];
  [coderCopy encodeInteger:self->_numOneBestTokensExcludingTriggerPhrase forKey:@"numOneBestTokensExcludingTriggerPhrase"];
}

+ (id)fromSASRecognition:(id)recognition processedAudioDuration:(double)duration
{
  v17 = *MEMORY[0x1E69E9840];
  recognitionCopy = recognition;
  af_speechPhrases = [recognitionCopy af_speechPhrases];
  af_speechUtterances = [recognitionCopy af_speechUtterances];

  if (af_speechPhrases && af_speechUtterances)
  {
    v8 = [[AFSpeechRecognition alloc] initWithPhrases:af_speechPhrases utterances:af_speechUtterances processedAudioDuration:duration];
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