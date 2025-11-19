void sub_3330(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(DODMLASRSchemaDODMLASREntityCategoryCount);
  [v8 setEntityCategory:v6];

  v7 = [v5 unsignedLongValue];
  [v8 setCount:v7];
  [*(a1 + 32) addPreprocessingEntityCategoryCounts:v8];
}

void sub_33D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(DODMLASRSchemaDODMLASREntityCategoryCount);
  [v8 setEntityCategory:v6];

  v7 = [v5 unsignedLongValue];
  [v8 setCount:v7];
  [*(a1 + 32) addPostprocessingEntityCategoryCounts:v8];
}

void sub_55B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x54ACLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_5684(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 57) == 1 && *(a1 + 58) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 48) logDictationPersonalizationExperimentEndedAndTier1WithResultsDict:*(a1 + 40)];
    if ((*(a1 + 59) & 1) == 0)
    {
      v4 = +[AFAnalytics sharedAnalytics];
      [v4 logEventWithType:2221 context:*(a1 + 40)];
    }

    v2 = *(a1 + 32);
    v3 = &off_116F8;
  }

  return [v2 completeWithJSONResult:v3 binaryResult:0 completionHandler:0];
}

void sub_5728(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_should_defer(v3))
  {
    v5 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[DictationPersonalizationFidesPlugin performEvaluation:]_block_invoke";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s PLM: eligibilityHandler deferred", &v6, 0xCu);
    }

    [WeakRetained _invalidate];
  }
}

id sub_5810()
{
  v0 = AFLibraryDirectoryWithSubPath();
  v1 = [v0 stringByAppendingPathComponent:@"SpeechPersonalizedLM_Fides"];

  return v1;
}

void sub_6A64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    _Block_object_dispose(&STACK[0x350], 8);
    objc_begin_catch(a1);
    JUMPOUT(0x6930);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_6B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_6B88(uint64_t a1)
{
  [*(a1 + 32) logUserEditExperimentEndedAndTier1WithResultsDict:*(*(*(a1 + 48) + 8) + 40)];
  if (*(a1 + 56) == 1)
  {
    v2 = +[AFAnalytics sharedAnalytics];
    [v2 logEventWithType:2221 context:*(*(*(a1 + 48) + 8) + 40)];
  }

  v3 = *(a1 + 40);

  return [v3 completeWithJSONResult:&off_116D0 binaryResult:0 completionHandler:0];
}

uint64_t sub_6C18(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v2 = result;
    v3 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v4 = *(v2 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    return _objc_release_x1();
  }

  return result;
}

void sub_6C80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_should_defer(v3))
  {
    v5 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke_2";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s SEE: eligibilityHandler deferred", &v6, 0xCu);
    }

    [WeakRetained _invalidate];
  }
}

void sub_6D68(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6 && [v6 count])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v8 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Failed to generate TTS audio, error: %@", &v9, 0x16u);
    }
  }
}

void sub_6E70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
      v57 = 2112;
      v58 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%s Error running evaluation %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v5 objectForKeyedSubscript:@"modelVersion"];
    [v8 setValue:v9 forKey:@"modelVersion"];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = v5;
    obj = [v5 objectForKeyedSubscript:@"results"];
    v10 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = &NSStringFromClass_ptr;
      v46 = *v51;
      do
      {
        v13 = 0;
        v44 = v11;
        do
        {
          if (*v51 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v50 + 1) + 8 * v13);
          v15 = v12[103];
          v16 = objc_opt_new();
          v17 = [v14 objectForKeyedSubscript:@"correctedOutput"];
          v18 = [v14 objectForKeyedSubscript:@"recognizedOutput"];
          v49 = v16;
          if (v17)
          {
            v48 = v13;
            if (*(a1 + 64) == 1 && ([v14 objectForKeyedSubscript:@"editDistanceRecognizedTTSASR"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "integerValue"), v19, v16 = v49, v20))
            {
              v21 = AFSiriLogContextFides;
              if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v56 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%s Recognized text and TTS ASR output did not match but was required to match, continuing", buf, 0xCu);
              }

              v22 = v49;
              [v49 setValue:&off_11680 forKey:@"errorCode"];
              [*(a1 + 32) addObject:v49];
            }

            else
            {
              [v16 setValue:&off_11698 forKey:@"errorCode"];
              v23 = [v14 objectForKeyedSubscript:@"timestamp"];
              [v49 setValue:v23 forKey:@"timestamp"];

              v24 = [v14 objectForKeyedSubscript:@"interactionId"];
              [v49 setValue:v24 forKey:@"interactionId"];

              v25 = [v14 objectForKeyedSubscript:@"asrSelfComponentIdentifier"];
              [v49 setValue:v25 forKey:@"asrSelfComponentIdentifier"];

              v22 = v49;
              v26 = [v17 count];
              v27 = [v49 mutableCopy];
              if (v26 >= 1)
              {
                v28 = 0;
                do
                {
                  v47 = v27;
                  v29 = (v28 + 1);
                  while (1)
                  {
                    v30 = [v17 objectAtIndexedSubscript:v28];
                    v31 = [v18 objectAtIndexedSubscript:v28];
                    v32 = sub_7478(v30, v31, *(a1 + 65));

                    if ((v32 & 1) == 0)
                    {
                      break;
                    }

                    ++v28;
                    ++v29;
                    if (v28 >= v26)
                    {
                      v22 = v49;
                      v27 = v47;
                      goto LABEL_31;
                    }
                  }

                  do
                  {
                    v33 = v29;
                    if (v29 >= v26)
                    {
                      break;
                    }

                    v34 = [v17 objectAtIndexedSubscript:v29];
                    v35 = [v18 objectAtIndexedSubscript:v29];
                    v36 = sub_7478(v34, v35, *(a1 + 65));

                    ++v29;
                  }

                  while (!v36);
                  v37 = &v28[-*(a1 + 48)];
                  v38 = v37 & ~(v37 >> 63);
                  v39 = *(a1 + 56) + v33;
                  if (v26 >= v39)
                  {
                    v28 = v39;
                  }

                  else
                  {
                    v28 = v26;
                  }

                  v40 = [v17 subarrayWithRange:{v37 & ~(v37 >> 63), &v28[-v38]}];
                  [v47 setValue:v40 forKey:@"correctedPair"];

                  v41 = [v18 subarrayWithRange:{v38, &v28[-v38]}];
                  [v47 setValue:v41 forKey:@"recognizedPair"];

                  [*(a1 + 32) addObject:v47];
                  v22 = v49;
                  v27 = [v49 mutableCopy];
                }

                while (v39 < v26);
              }

LABEL_31:

              v11 = v44;
              v12 = &NSStringFromClass_ptr;
            }

            v13 = v48;
          }

          else
          {
            v42 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v56 = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]_block_invoke";
              _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%s ASR failure when performing systematic error evaluation, continuing", buf, 0xCu);
            }

            v22 = v49;
            [v49 setValue:&off_11668 forKey:@"errorCode"];
            [*(a1 + 32) addObject:v49];
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v11);
    }

    [*(*(*(a1 + 40) + 8) + 40) setValue:*(a1 + 32) forKey:@"confusionPairs"];
    v6 = 0;
    v5 = v43;
  }
}

unint64_t sub_7478(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (a3)
    {
      v8 = [v5 isEqualToString:v6];
    }

    else
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }
  }

  return v8;
}

void sub_7C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7CA4(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v2 = result;
    v3 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v4 = *(v2 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    return _objc_release_x1();
  }

  return result;
}

void sub_7D0C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v7 = [v5 objectForKeyedSubscript:@"results"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1[6] + 8) + 40);
        v13 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        [v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [v5 mutableCopy];
  [v14 setObject:0 forKeyedSubscript:@"results"];
  if ([v14 count])
  {
    [v14 setObject:a1[4] forKeyedSubscript:@"language"];
    [*(*(a1[7] + 8) + 40) addObject:v14];
  }
}

void sub_7EC4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  v7 = [v5 objectForKeyedSubscript:@"results"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1[6] + 8) + 40);
        v13 = [v7 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11)];
        [v12 addObject:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [v5 mutableCopy];
  [v14 setObject:0 forKeyedSubscript:@"results"];
  if ([v14 count])
  {
    [v14 setObject:a1[4] forKeyedSubscript:@"language"];
    [*(*(a1[7] + 8) + 40) addObject:v14];
  }
}

void sub_8D58(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_8DB8(uint64_t result)
{
  if ((*(*(result + 32) + 16) & 1) == 0)
  {
    v2 = result;
    v3 = objc_alloc_init(SpeechModelTrainingClient);
    v4 = *(v2 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    return _objc_release_x1();
  }

  return result;
}

void sub_8E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]_block_invoke_2";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s PLM: Client finished training", &v13, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

id sub_9614(uint64_t a1)
{
  v2 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[DictationPersonalizationFidesPlugin _invalidate]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s PLM: Invalidating", &v4, 0xCu);
  }

  *(*(a1 + 32) + 16) = 1;
  [*(*(a1 + 32) + 24) invalidate];
  return [*(*(a1 + 32) + 32) invalidate];
}