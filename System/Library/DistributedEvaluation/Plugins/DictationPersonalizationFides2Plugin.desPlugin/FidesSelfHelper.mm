@interface FidesSelfHelper
- (FidesSelfHelper)initWithExperimentId:(id)id;
- (id)_audioFileResultsFromResultDict:(id)dict privateAudioFileResultsOut:(id *)out;
- (id)_choiceInfosFromChoiceInfoDicts:(id)dicts privateTokens:(id)tokens;
- (id)_decodingMetricsFromMetricsDict:(id)dict;
- (id)_decodingResultsWithAudioDict:(id)dict privateTokensOut:(id *)out;
- (id)_lmMetricsFromEvalDict:(id)dict perplexityName:(id)name timesDict:(id)timesDict;
- (id)_plmMetricsFromPlmDict:(id)dict;
- (id)_resultInfosFromResultInfoDict:(id)dict privateTokens:(id)tokens;
- (id)_tokensFromTokenDict:(id)dict privateTokens:(id)tokens;
- (id)_tokensFromTokensArray:(id)array privateTokens:(id)tokens;
- (id)_transcriptMetadataFromPopDict:(id)dict;
- (id)_utteranceInfosFromUtteranceInfoDict:(id)dict privateTokens:(id)tokens;
- (void)_wrapAndEmitTopLevelEvent:(id)event;
- (void)logDictationPersonalizationExperimentEndedAndTier1WithResultsDict:(id)dict;
- (void)logDictationPersonalizationExperimentStartedOrChanged;
- (void)logUserEditExperimentEndedAndTier1WithResultsDict:(id)dict;
- (void)logUserEditExperimentStartedOrChanged;
@end

@implementation FidesSelfHelper

- (void)_wrapAndEmitTopLevelEvent:(id)event
{
  eventCopy = event;
  v5 = objc_alloc_init(DODMLSchemaDODMLClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:self->_dodmlId];
  [v5 setDodMlId:v6];
  [v5 setExperimentName:self->_experimentId];
  v7 = objc_alloc_init(DODMLSchemaDODMLClientEvent);
  [v7 setEventMetadata:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setPersonalizationExperimentContext:eventCopy];
LABEL_9:
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v11 = v8;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 136315394;
      v15 = "[FidesSelfHelper _wrapAndEmitTopLevelEvent:]";
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%s Fides SELF: Wrapping and logging an event of type %@", &v14, 0x16u);
    }

    v9 = +[AssistantSiriAnalytics sharedStream];
    [v9 emitMessage:v7];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setUserEditExperimentContext:eventCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setUserEditExperimentEndedTier1:eventCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setAudioFileResultTier1:eventCopy];
    goto LABEL_9;
  }

  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[FidesSelfHelper _wrapAndEmitTopLevelEvent:]";
    _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%s Fides SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the DODML ASR SELF schema.", &v14, 0xCu);
  }

LABEL_12:
}

- (id)_lmMetricsFromEvalDict:(id)dict perplexityName:(id)name timesDict:(id)timesDict
{
  nameCopy = name;
  timesDictCopy = timesDict;
  v37 = nameCopy;
  v8 = [dict objectForKeyedSubscript:nameCopy];
  if (v8)
  {
    v35 = objc_alloc_init(NSMutableArray);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v33 = v8;
    obj = v8;
    v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v38)
    {
      v34 = *v46;
      do
      {
        v9 = 0;
        do
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v9;
          v10 = *(*(&v45 + 1) + 8 * v9);
          v11 = [obj objectForKeyedSubscript:{v10, v33}];
          v12 = objc_alloc_init(DODMLASRSchemaDODMLASRLanguageModelMetrics);
          [v35 addObject:v12];
          [v10 floatValue];
          [v12 setLinearInterpolationWeight:?];
          v13 = [timesDictCopy objectForKeyedSubscript:v37];
          v14 = [v13 objectForKeyedSubscript:v10];
          [v14 doubleValue];
          v16 = [NSNumber numberWithDouble:v15 * 1000.0];
          [v12 setTotalDurationInMs:{objc_msgSend(v16, "unsignedLongLongValue")}];

          v17 = [v11 objectForKeyedSubscript:@"utterances"];
          [v12 setNumUtterances:{objc_msgSend(v17, "unsignedIntValue")}];

          v18 = [v11 objectForKeyedSubscript:@"words"];
          [v12 setNumWords:{objc_msgSend(v18, "unsignedIntValue")}];

          v19 = [v11 objectForKeyedSubscript:@"OOVs"];
          [v12 setNumOutOfVocabularyWords:{objc_msgSend(v19, "unsignedIntValue")}];

          v20 = [v11 objectForKeyedSubscript:@"invalidTokens"];
          [v12 setNumInvalidTokens:{objc_msgSend(v20, "unsignedIntValue")}];

          v21 = [v11 objectForKeyedSubscript:@"invalidUtterances"];
          [v12 setNumInvalidUtterances:{objc_msgSend(v21, "unsignedIntValue")}];

          v22 = [v11 objectForKeyedSubscript:@"PPL"];
          [v22 floatValue];
          [v12 setPerplexity:?];

          v23 = [v11 objectForKeyedSubscript:@"PPL1"];
          [v23 floatValue];
          [v12 setPerplexityOne:?];

          v24 = objc_alloc_init(NSMutableArray);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = [v11 objectForKeyedSubscript:@"ngramHits"];
          v26 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v42;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v42 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v41 + 1) + 8 * i);
                v31 = objc_alloc_init(DODMLASRSchemaDODMLASRNgramHits);
                [v24 addObject:v31];
                [v31 setHits:v30];
              }

              v27 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v27);
          }

          [v12 setNgramHits:v24];
          v9 = v40 + 1;
        }

        while ((v40 + 1) != v38);
        v38 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v38);
    }

    v8 = v33;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)_transcriptMetadataFromPopDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_alloc_init(DODMLASRSchemaDODMLASRTranscriptMetadata);
  v5 = [dictCopy objectForKeyedSubscript:@"numDocumentsRejected"];
  [v4 setNumDocumentsRejected:{objc_msgSend(v5, "unsignedIntValue")}];

  v6 = [dictCopy objectForKeyedSubscript:@"numSentencesRejected"];
  [v4 setNumSentencesRejected:{objc_msgSend(v6, "unsignedIntValue")}];

  v7 = [dictCopy objectForKeyedSubscript:@"numDocuments"];
  [v4 setNumDocumentsAccepted:{objc_msgSend(v7, "unsignedIntValue")}];

  v8 = [dictCopy objectForKeyedSubscript:@"numSentences"];
  [v4 setNumSentencesAccepted:{objc_msgSend(v8, "unsignedIntValue")}];

  v9 = [dictCopy objectForKeyedSubscript:@"numTokens"];
  [v4 setNumTokensAccepted:{objc_msgSend(v9, "unsignedIntValue")}];

  v10 = [dictCopy objectForKeyedSubscript:@"numTokensOOV"];
  [v4 setNumTokensOutOfVocabularyAccepted:{objc_msgSend(v10, "unsignedIntValue")}];

  v11 = [dictCopy objectForKeyedSubscript:@"numDocumentsDictated"];
  [v4 setNumDocumentsDictated:{objc_msgSend(v11, "unsignedIntValue")}];

  v12 = [dictCopy objectForKeyedSubscript:@"numDocumentsTyped"];
  [v4 setNumDocumentsTyped:{objc_msgSend(v12, "unsignedIntValue")}];

  v13 = [dictCopy objectForKeyedSubscript:@"numTokensDictated"];
  [v4 setNumTokensDictated:{objc_msgSend(v13, "unsignedIntValue")}];

  v14 = [dictCopy objectForKeyedSubscript:@"numTokensTyped"];
  [v4 setNumTokensTyped:{objc_msgSend(v14, "unsignedIntValue")}];

  v15 = [dictCopy objectForKeyedSubscript:@"numSentencesMungeRejected"];
  [v4 setNumSentencesMungeRejected:{objc_msgSend(v15, "unsignedIntValue")}];

  v16 = [dictCopy objectForKeyedSubscript:@"numSentencesMungeChanged"];
  [v4 setNumSentencesMungeChanged:{objc_msgSend(v16, "unsignedIntValue")}];

  v17 = [dictCopy objectForKeyedSubscript:@"numTokensEstimatedExamined"];
  [v4 setNumTokensEstimatedExamined:{objc_msgSend(v17, "unsignedIntValue")}];

  [dictCopy removeObjectForKey:@"numTokensEstimatedExamined"];

  return v4;
}

- (id)_plmMetricsFromPlmDict:(id)dict
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:@"train"];
  v6 = objc_alloc_init(DODMLASRSchemaDODMLASRTranscriptionMetrics);
  v7 = [v5 objectForKeyedSubscript:@"data"];
  v8 = [v7 objectForKeyedSubscript:@"train"];
  v9 = [(FidesSelfHelper *)self _transcriptMetadataFromPopDict:v8];
  [v6 setTrain:v9];

  v10 = [v5 objectForKeyedSubscript:@"data"];
  v11 = [v10 objectForKeyedSubscript:@"test"];
  v12 = [(FidesSelfHelper *)self _transcriptMetadataFromPopDict:v11];
  [v6 setTest:v12];

  v13 = [v5 objectForKeyedSubscript:@"data"];
  v14 = [v13 objectForKeyedSubscript:@"dev"];
  v15 = [(FidesSelfHelper *)self _transcriptMetadataFromPopDict:v14];
  v59 = v6;
  [v6 setDev:v15];

  v16 = [v5 objectForKeyedSubscript:@"data"];
  v17 = [v16 objectForKeyedSubscript:@"external"];
  v18 = [(FidesSelfHelper *)self _transcriptMetadataFromPopDict:v17];
  [v6 setExternal:v18];

  v19 = objc_alloc_init(DODMLASRSchemaDODMLASREvaluationMetrics);
  v20 = [v5 objectForKeyedSubscript:@"eval"];
  v21 = [v20 objectForKeyedSubscript:@"model-selection"];
  v22 = [v21 objectForKeyedSubscript:@"best-weight"];
  [v22 floatValue];
  [v19 setBestWeight:?];

  v23 = [v20 objectForKeyedSubscript:@"totalTime"];
  [v23 doubleValue];
  v25 = [NSNumber numberWithDouble:v24 * 1000.0];
  [v19 setTotalDurationInMs:{objc_msgSend(v25, "unsignedLongLongValue")}];

  v26 = [v20 objectForKeyedSubscript:@"times"];
  v27 = [(FidesSelfHelper *)self _lmMetricsFromEvalDict:v20 perplexityName:@"train-ppl" timesDict:v26];
  [v19 setTrains:v27];

  v28 = [v20 objectForKeyedSubscript:@"times"];
  v29 = [(FidesSelfHelper *)self _lmMetricsFromEvalDict:v20 perplexityName:@"test-ppl" timesDict:v28];
  [v19 setTests:v29];

  v30 = [v20 objectForKeyedSubscript:@"times"];
  v31 = [(FidesSelfHelper *)self _lmMetricsFromEvalDict:v20 perplexityName:@"dev-ppl" timesDict:v30];
  [v19 setDevs:v31];

  v32 = [v20 objectForKeyedSubscript:@"times"];
  v33 = [(FidesSelfHelper *)self _lmMetricsFromEvalDict:v20 perplexityName:@"external-ppl" timesDict:v32];
  [v19 setExternals:v33];

  v34 = objc_alloc_init(DODMLASRSchemaDODMLASRModelMetrics);
  v35 = [v5 objectForKeyedSubscript:@"model"];
  v36 = [v35 objectForKeyedSubscript:@"times"];
  [v34 setConfigName:0];
  v37 = [v35 objectForKeyedSubscript:@"order"];
  [v34 setNgramOrder:{objc_msgSend(v37, "unsignedIntValue")}];

  v38 = [v35 objectForKeyedSubscript:@"residualAdaptationWeight"];
  [v38 floatValue];
  [v34 setResidualAdaptationWeight:?];

  v39 = [v35 objectForKeyedSubscript:@"totalTime"];
  [v39 doubleValue];
  v41 = [NSNumber numberWithDouble:v40 * 1000.0];
  [v34 setTotalDurationInMs:{objc_msgSend(v41, "unsignedLongLongValue")}];

  v42 = [v36 objectForKeyedSubscript:@"training"];
  [v42 doubleValue];
  v44 = [NSNumber numberWithDouble:v43 * 1000.0];
  [v34 setTrainingDurationInMs:{objc_msgSend(v44, "unsignedLongLongValue")}];

  v45 = [v36 objectForKeyedSubscript:@"conversion"];
  [v45 doubleValue];
  v47 = [NSNumber numberWithDouble:v46 * 1000.0];
  [v34 setConversionDurationInMs:{objc_msgSend(v47, "unsignedLongLongValue")}];

  v48 = [v36 objectForKeyedSubscript:@"optimization"];
  [v48 doubleValue];
  v50 = [NSNumber numberWithDouble:v49 * 1000.0];
  [v34 setOptimizationDurationInMs:{objc_msgSend(v50, "unsignedLongLongValue")}];

  v51 = [v35 objectForKeyedSubscript:@"numStates"];
  [v34 setNumFiniteStateTransducerStates:{objc_msgSend(v51, "unsignedIntValue")}];

  [v35 removeObjectForKey:@"numStates"];
  v52 = [v35 objectForKeyedSubscript:@"numArcs"];
  [v34 setNumFiniteStateTransducerArcs:{objc_msgSend(v52, "unsignedIntValue")}];

  [v35 removeObjectForKey:@"numArcs"];
  v53 = dictCopy;
  v54 = [dictCopy objectForKeyedSubscript:@"trainErrorCode"];
  [v34 setModelTrainingStatusCode:{objc_msgSend(v54, "unsignedIntValue")}];

  [dictCopy removeObjectForKey:@"trainErrorCode"];
  v55 = objc_alloc_init(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics);
  [v55 setTranscriptionMetrics:v59];
  [v55 setEvaluationMetrics:v19];
  v56 = [dictCopy objectForKeyedSubscript:@"userLanguage"];

  v57 = [v56 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  [v55 setUserLocale:{+[SIUtilities convertLanguageCodeToSchemaLocale:](SIUtilities, "convertLanguageCodeToSchemaLocale:", v57)}];

  [v55 setModelMetrics:v34];

  return v55;
}

- (id)_tokensFromTokenDict:(id)dict privateTokens:(id)tokens
{
  dictCopy = dict;
  tokensCopy = tokens;
  v7 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = dictCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_alloc_init(ASRSchemaASRToken);
        [v7 addObject:v13];
        v14 = [v12 objectForKeyedSubscript:@"startTime"];
        [v14 doubleValue];
        v16 = [NSNumber numberWithDouble:v15 * 1000000000.0];
        [v13 setStartTimeInNs:{objc_msgSend(v16, "unsignedLongLongValue")}];

        v17 = [v12 objectForKeyedSubscript:@"endTime"];
        [v17 doubleValue];
        v19 = [NSNumber numberWithDouble:v18 * 1000000000.0];
        [v13 setEndTimeInNs:{objc_msgSend(v19, "unsignedLongLongValue")}];

        v20 = [v12 objectForKeyedSubscript:@"removeSpaceAfter"];
        [v13 setAppendSpaceAfter:{objc_msgSend(v20, "BOOLValue") ^ 1}];

        v21 = [v12 objectForKeyedSubscript:@"silenceStartTime"];
        [v21 doubleValue];
        v23 = [NSNumber numberWithDouble:v22 * 1000000000.0];
        [v13 setSilenceStartTimeInNs:{objc_msgSend(v23, "unsignedLongLongValue")}];

        v24 = [v12 objectForKeyedSubscript:@"confidence"];
        [v13 setConfidence:{objc_msgSend(v24, "intValue")}];

        v25 = objc_alloc_init(ASRSchemaASRTokenTier1);
        v26 = [v12 objectForKeyedSubscript:@"text"];
        [v25 setText:v26];

        v27 = [v12 objectForKeyedSubscript:@"phoneSequence"];
        [v25 setPhoneSequence:v27];

        if ([tokensCopy containsObject:v25])
        {
          [v13 setLinkIndex:{objc_msgSend(tokensCopy, "indexOfObject:", v25)}];
        }

        else
        {
          [v13 setLinkIndex:{objc_msgSend(tokensCopy, "count")}];
          [tokensCopy addObject:v25];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)_tokensFromTokensArray:(id)array privateTokens:(id)tokens
{
  arrayCopy = array;
  tokensCopy = tokens;
  v32 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = arrayCopy;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = objc_alloc_init(DODMLASRSchemaDODMLASRTokenInfo);
        [v32 addObject:v12];
        v13 = objc_alloc_init(ASRSchemaASRToken);
        v14 = [v11 objectAtIndexedSubscript:1];
        [v14 doubleValue];
        v16 = [NSNumber numberWithDouble:v15 * 1000000.0];
        [v13 setStartTimeInNs:{objc_msgSend(v16, "unsignedLongLongValue")}];

        v17 = [v11 objectAtIndexedSubscript:2];
        [v17 doubleValue];
        v19 = [NSNumber numberWithDouble:v18 * 1000000.0];
        [v13 setEndTimeInNs:{objc_msgSend(v19, "unsignedLongLongValue")}];

        v20 = [v11 objectAtIndexedSubscript:3];
        [v20 doubleValue];
        v22 = [NSNumber numberWithDouble:v21 * 1000000.0];
        [v13 setSilenceStartTimeInNs:{objc_msgSend(v22, "unsignedLongLongValue")}];

        [v12 setToken:v13];
        v23 = [v11 objectAtIndexedSubscript:5];
        [v23 floatValue];
        [v12 setAcousticCost:?];

        v24 = [v11 objectAtIndexedSubscript:6];
        [v24 floatValue];
        [v12 setSilenceAcousticCost:?];

        v25 = [v11 objectAtIndexedSubscript:7];
        [v12 setNumBackoffs:v25];

        v26 = [v11 objectAtIndexedSubscript:8];
        [v12 setLanguageModelCosts:v26];

        v27 = objc_alloc_init(ASRSchemaASRTokenTier1);
        v28 = [v11 objectAtIndexedSubscript:0];
        [v27 setText:v28];

        v29 = [v11 objectAtIndexedSubscript:4];
        [v27 setPhoneSequence:v29];

        if ([tokensCopy containsObject:v27])
        {
          [v13 setLinkIndex:{objc_msgSend(tokensCopy, "indexOfObject:", v27)}];
        }

        else
        {
          [v13 setLinkIndex:{objc_msgSend(tokensCopy, "count")}];
          [tokensCopy addObject:v27];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  return v32;
}

- (id)_choiceInfosFromChoiceInfoDicts:(id)dicts privateTokens:(id)tokens
{
  dictsCopy = dicts;
  tokensCopy = tokens;
  v8 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = dictsCopy;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_alloc_init(DODMLASRSchemaDODMLASRChoiceInfo);
        [v8 addObject:v14];
        v15 = [v13 objectForKeyedSubscript:@"tokens"];
        v16 = [(FidesSelfHelper *)self _tokensFromTokensArray:v15 privateTokens:tokensCopy];
        [v14 setTokens:v16];

        v17 = [v13 objectForKeyedSubscript:@"graphCost"];
        [v17 floatValue];
        [v14 setGraphCost:?];

        v18 = [v13 objectForKeyedSubscript:@"acousticCost"];
        [v18 floatValue];
        [v14 setAcousticCost:?];
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)_resultInfosFromResultInfoDict:(id)dict privateTokens:(id)tokens
{
  dictCopy = dict;
  tokensCopy = tokens;
  v7 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = dictCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = objc_alloc_init(DODMLASRSchemaDODMLASRResultInfo);
        [v7 addObject:v15];
        [v15 setStageName:v13];
        v16 = [v14 objectForKeyedSubscript:@"aligned"];
        [v15 setIsAligned:v16 != 0];

        v17 = [v14 objectForKeyedSubscript:@"choices"];
        v18 = [(FidesSelfHelper *)self _choiceInfosFromChoiceInfoDicts:v17 privateTokens:tokensCopy];
        [v15 setChoices:v18];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_utteranceInfosFromUtteranceInfoDict:(id)dict privateTokens:(id)tokens
{
  dictCopy = dict;
  tokensCopy = tokens;
  if (dictCopy)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = dictCopy;
    obj = dictCopy;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = objc_alloc_init(DODMLASRSchemaDODMLASRUtteranceInfo);
          [v7 addObject:v13];
          v14 = [v12 objectForKeyedSubscript:@"results"];
          v15 = [(FidesSelfHelper *)self _resultInfosFromResultInfoDict:v14 privateTokens:tokensCopy];
          [v13 setResults:v15];

          v16 = [v12 objectForKeyedSubscript:@"startMillis"];
          [v16 doubleValue];
          v18 = [NSNumber numberWithDouble:v17 * 1000000.0];
          [v13 setStartTimeInNs:{objc_msgSend(v18, "unsignedLongLongValue")}];

          v19 = [v12 objectForKeyedSubscript:@"endMillis"];
          [v19 doubleValue];
          v21 = [NSNumber numberWithDouble:v20 * 1000000.0];
          [v13 setEndTimeInNs:{objc_msgSend(v21, "unsignedLongLongValue")}];
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    dictCopy = v23;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_decodingMetricsFromMetricsDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_alloc_init(DODMLASRSchemaDODMLASRDecodingMetrics);
  v33 = dictCopy;
  v5 = [dictCopy objectForKeyedSubscript:@"WallRTF"];
  [v5 floatValue];
  [v4 setWallRealTimeFactor:?];

  v6 = [v33 objectForKeyedSubscript:@"AverageActiveTokensPerFrame"];
  [v6 floatValue];
  [v4 setAverageActiveTokensPerFrame:?];

  v7 = [v33 objectForKeyedSubscript:@"jitQueryDurationInMs"];
  [v4 setJitQueryDurationInMs:{objc_msgSend(v7, "unsignedLongLongValue")}];

  [v33 removeObjectForKey:@"jitQueryDurationInMs"];
  v8 = [v33 objectForKeyedSubscript:@"jitLmeDurationInMs"];
  [v4 setJitLanguageModelEnrollmentDurationInMs:{objc_msgSend(v8, "unsignedLongLongValue")}];

  [v33 removeObjectForKey:@"jitLmeDurationInMs"];
  v9 = [v33 valueForKeyPath:@"jitDataStats.preprocessingCategoryCounts"];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_3330;
  v42[3] = &unk_10480;
  v10 = v4;
  v43 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v42];

  v11 = [v33 valueForKeyPath:@"jitDataStats.postprocessingCategoryCounts"];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_33D0;
  v40[3] = &unk_10480;
  v32 = v10;
  v41 = v32;
  [v11 enumerateKeysAndObjectsUsingBlock:v40];

  [v33 removeObjectForKey:@"jitDataStats"];
  v31 = [v33 objectForKeyedSubscript:@"lm_interp_weights"];
  if (v31)
  {
    v35 = objc_alloc_init(NSMutableArray);
    [v31 componentsSeparatedByString:@";"];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        v14 = 0;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * v14);
          v16 = objc_alloc_init(ASRSchemaASRInterpolationWeightBundle);
          v17 = [v15 componentsSeparatedByString:@":"];
          v18 = [v17 objectAtIndexedSubscript:1];
          [v18 doubleValue];
          v19 = [NSNumber numberWithDouble:?];

          v20 = [v17 objectAtIndexedSubscript:2];
          [v20 doubleValue];
          v21 = [NSNumber numberWithDouble:?];

          [v19 doubleValue];
          v23 = [NSNumber numberWithDouble:v22 * 1000000.0];
          [v16 setStartTimeInNs:{objc_msgSend(v23, "unsignedLongLongValue")}];

          [v21 doubleValue];
          v25 = [NSNumber numberWithDouble:v24 * 1000000.0];
          [v16 setEndTimeInNs:{objc_msgSend(v25, "unsignedLongLongValue")}];

          v26 = [v17 objectAtIndexedSubscript:0];
          v27 = [v26 componentsSeparatedByString:{@", "}];

          v28 = [v27 valueForKey:@"floatValue"];
          [v16 setWeights:v28];

          [v35 addObject:v16];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v12);
    }

    [v32 setLanguageModelInterpolationWeights:v35];
  }

  v29 = v32;

  return v32;
}

- (id)_decodingResultsWithAudioDict:(id)dict privateTokensOut:(id *)out
{
  dictCopy = dict;
  v42 = objc_alloc_init(NSMutableArray);
  v43 = objc_alloc_init(NSMutableArray);
  v6 = [dictCopy objectForKeyedSubscript:@"tokens"];
  v7 = [dictCopy objectForKeyedSubscript:@"metrics"];
  v41 = v6;
  allKeys = [v6 allKeys];
  v9 = [dictCopy objectForKeyedSubscript:@"uttInfos"];

  v37 = dictCopy;
  if (v9)
  {
    v40 = [dictCopy objectForKeyedSubscript:@"uttInfos"];
    goto LABEL_11;
  }

  v10 = [dictCopy objectForKeyedSubscript:@"uttInfosCompressed"];

  if (!v10)
  {
    v40 = 0;
    goto LABEL_11;
  }

  v11 = [NSData alloc];
  v12 = [dictCopy objectForKeyedSubscript:@"uttInfosCompressed"];
  v13 = [v11 initWithBase64EncodedString:v12 options:0];

  v49 = 0;
  v14 = [v13 decompressedDataUsingAlgorithm:3 error:&v49];
  v15 = v49;
  v48 = 0;
  v40 = [NSJSONSerialization JSONObjectWithData:v14 options:0 error:&v48];
  v16 = v48;
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_10;
    }

    v18 = AFSiriLogContextFides;
    if (!os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v52 = "[FidesSelfHelper _decodingResultsWithAudioDict:privateTokensOut:]";
    v19 = "%s Fides SELF: Utterance Info could not be deserialized - it will not be logged.";
    goto LABEL_24;
  }

  v18 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v52 = "[FidesSelfHelper _decodingResultsWithAudioDict:privateTokensOut:]";
    v19 = "%s Fides SELF: Utterance Info could not be decompressed - it will not be logged.";
LABEL_24:
    _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
  }

LABEL_10:

LABEL_11:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = allKeys;
  v20 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v39 = *v45;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        v24 = objc_alloc_init(DODMLASRSchemaDODMLASRDecodingResult);
        [v43 addObject:v24];
        [v24 setConfigName:v23];
        v25 = [v7 objectForKeyedSubscript:v23];
        v26 = [(FidesSelfHelper *)self _decodingMetricsFromMetricsDict:v25];
        [v24 setDecodingMetrics:v26];

        v27 = [v41 objectForKeyedSubscript:v23];
        v28 = [(FidesSelfHelper *)self _tokensFromTokenDict:v27 privateTokens:v42];
        [v24 setTokens:v28];

        v29 = [v40 objectForKeyedSubscript:v23];
        v30 = [(FidesSelfHelper *)self _utteranceInfosFromUtteranceInfoDict:v29 privateTokens:v42];
        [v24 setUtterances:v30];

        v31 = [v7 objectForKeyedSubscript:@"DecodeDuration"];
        [v31 doubleValue];
        v33 = [NSNumber numberWithDouble:v32 * 1000000000.0];
        [v24 setDecodeDurationInNs:{objc_msgSend(v33, "unsignedLongLongValue")}];

        [v7 removeObjectForKey:@"DecodeDuration"];
      }

      v21 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v21);
  }

  if (out)
  {
    v34 = v42;
    *out = v42;
  }

  return v43;
}

- (id)_audioFileResultsFromResultDict:(id)dict privateAudioFileResultsOut:(id *)out
{
  dictCopy = dict;
  v27 = objc_alloc_init(NSMutableArray);
  v28 = objc_alloc_init(NSMutableArray);
  v23 = dictCopy;
  [dictCopy objectForKeyedSubscript:@"audioResults"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v29 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v29)
  {
    v25 = *v32;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = objc_alloc_init(DODMLASRSchemaDODMLASRAudioFileResult);
        [v28 addObject:v7];
        v8 = [SISchemaUUID alloc];
        v9 = [NSUUID alloc];
        v10 = [v6 objectForKeyedSubscript:@"asrSelfComponentId"];
        v11 = [v9 initWithUUIDString:v10];
        v12 = [v8 initWithNSUUID:v11];

        [v6 removeObjectForKey:@"asrSelfComponentId"];
        [v7 setAsrId:v12];
        v13 = [SISchemaUUID alloc];
        v14 = +[NSUUID UUID];
        v15 = [v13 initWithNSUUID:v14];

        [v7 setLinkId:v15];
        v30 = 0;
        v16 = [(FidesSelfHelper *)self _decodingResultsWithAudioDict:v6 privateTokensOut:&v30];
        v17 = v30;
        [v7 setDecodingResults:v16];

        v18 = objc_alloc_init(DODMLASRSchemaDODMLASRAudioFileResultTier1);
        [v27 addObject:v18];
        v19 = objc_alloc_init(ASRSchemaASRRecognitionResultTier1);
        [v19 setLinkId:v15];
        [v19 setTokens:v17];

        [v18 setRecognitionResult:v19];
      }

      v29 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v29);
  }

  if (out)
  {
    v20 = v27;
    *out = v27;
  }

  return v28;
}

- (void)logDictationPersonalizationExperimentEndedAndTier1WithResultsDict:(id)dict
{
  dictCopy = dict;
  v5 = objc_alloc_init(DODMLASRSchemaDODMLASRPersonalizationExperimentEnded);
  [dictCopy objectForKeyedSubscript:@"languageMetadata"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v38 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = dictCopy;
    v9 = *v36;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * i) objectForKeyedSubscript:@"status"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEqualToString:@"Required Personalized LM not found"])
        {

          v12 = &off_11620;
          dictCopy = v29;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    dictCopy = v29;
  }

  v12 = &off_11608;
LABEL_13:

  [v5 setExperimentStatusCode:{objc_msgSend(v12, "intValue")}];
  [v5 setDatapackVersion:self->_datapackVersion];
  v13 = [dictCopy objectForKeyedSubscript:@"numAudio"];
  [v5 setNumAudioFilesAvailable:{objc_msgSend(v13, "unsignedIntValue")}];

  v14 = [dictCopy objectForKeyedSubscript:@"numSelectedAudio"];
  [v5 setNumAudioFilesSelected:{objc_msgSend(v14, "unsignedIntValue")}];

  v15 = [dictCopy objectForKeyedSubscript:@"textProcessingDuration"];
  [v15 doubleValue];
  v17 = [NSNumber numberWithDouble:v16 * 1000000000.0];
  [v5 setTextProcessingDurationInNs:{objc_msgSend(v17, "unsignedLongLongValue")}];

  [dictCopy removeObjectForKey:@"textProcessingDuration"];
  v18 = +[NSProcessInfo processInfo];
  [v5 setDeviceThermalState:{objc_msgSend(v18, "thermalState")}];

  v34 = 0;
  v19 = [(FidesSelfHelper *)self _audioFileResultsFromResultDict:dictCopy privateAudioFileResultsOut:&v34];
  v20 = v34;
  [v5 setAudioFileResults:v19];

  v21 = [dictCopy objectForKeyedSubscript:@"personalizedLM"];
  v22 = [(FidesSelfHelper *)self _plmMetricsFromPlmDict:v21];
  [v5 setPersonalizedLanguageModelMetrics:v22];

  v23 = objc_alloc_init(DODMLASRSchemaDODMLASRPersonalizationExperimentContext);
  [v23 setEnded:v5];
  [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:v23];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = v20;
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:*(*(&v30 + 1) + 8 * j)];
      }

      v26 = [v24 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v26);
  }
}

- (void)logDictationPersonalizationExperimentStartedOrChanged
{
  v5 = objc_alloc_init(DODMLASRSchemaDODMLASRPersonalizationExperimentStarted);
  [v5 setExists:1];
  v3 = +[NSProcessInfo processInfo];
  [v5 setDeviceThermalState:{objc_msgSend(v3, "thermalState")}];

  v4 = objc_alloc_init(DODMLASRSchemaDODMLASRPersonalizationExperimentContext);
  [v4 setStartedOrChanged:v5];
  [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:v4];
}

- (void)logUserEditExperimentEndedAndTier1WithResultsDict:(id)dict
{
  dictCopy = dict;
  v32 = objc_alloc_init(NSMutableArray);
  v31 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = dictCopy;
  obj = [dictCopy objectForKeyedSubscript:@"confusionPairs"];
  v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        v9 = objc_alloc_init(DODMLASRSchemaDODMLASRConfusionPair);
        v10 = objc_alloc_init(DODMLASRSchemaDODMLASRConfusionPairTier1);
        v11 = [SISchemaUUID alloc];
        v12 = [NSUUID alloc];
        v13 = [v8 objectForKeyedSubscript:@"asrSelfComponentIdentifier"];
        v14 = [v12 initWithUUIDString:v13];
        v15 = [v11 initWithNSUUID:v14];
        [v9 setAsrId:v15];

        [v8 removeObjectForKey:@"asrSelfComponentIdentifier"];
        v16 = [v8 objectForKeyedSubscript:@"errorCode"];
        v17 = v16;
        if (v16)
        {
          [v9 setErrorCode:{objc_msgSend(v16, "intValue")}];
        }

        v18 = [v8 objectForKeyedSubscript:@"recognizedPair"];
        [v10 setRecognizedTokens:v18];

        v19 = [v8 objectForKeyedSubscript:@"correctedPair"];
        [v10 setCorrectedTokens:v19];

        [v32 addObject:v9];
        [v31 addObject:v10];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  v20 = objc_alloc_init(NSMutableArray);
  v21 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults);
  [v21 setDatapackVersion:self->_datapackVersion];
  [v21 setConfusionPairs:v32];
  [v20 addObject:v21];
  v22 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1);
  v23 = [SISchemaUUID alloc];
  v24 = +[NSUUID UUID];
  v25 = [v23 initWithNSUUID:v24];

  [v22 setLinkId:v25];
  [v22 setConfusionPairs:v31];
  v26 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentEnded);
  [v26 setRedecodingResults:v20];
  [v26 setLinkId:v25];
  v27 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentContext);
  [v27 setEnded:v26];
  [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:v27];
  [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:v22];
}

- (void)logUserEditExperimentStartedOrChanged
{
  v4 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentStarted);
  [v4 setExists:1];
  v3 = objc_alloc_init(DODMLASRSchemaDODMLASRUserEditExperimentContext);
  [v3 setStartedOrChanged:v4];
  [(FidesSelfHelper *)self _wrapAndEmitTopLevelEvent:v3];
}

- (FidesSelfHelper)initWithExperimentId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = FidesSelfHelper;
  v6 = [(FidesSelfHelper *)&v15 init];
  if (v6)
  {
    v7 = +[NSUUID UUID];
    dodmlId = v6->_dodmlId;
    v6->_dodmlId = v7;

    objc_storeStrong(&v6->_experimentId, id);
    v9 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v10 = v6->_dodmlId;
      v11 = v9;
      uUIDString = [(NSUUID *)v10 UUIDString];
      experimentId = v6->_experimentId;
      *buf = 136315650;
      v17 = "[FidesSelfHelper initWithExperimentId:]";
      v18 = 2112;
      v19 = uUIDString;
      v20 = 2112;
      v21 = experimentId;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s Fides SELF: Logging object created successfully: dodmlId=%@, experimentId=%@", buf, 0x20u);
    }
  }

  return v6;
}

@end