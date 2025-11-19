@interface AFAggregator
+ (id)_fullAggDKeyWithPrefix:(id)a3 error:(id)a4;
+ (id)_stringForGatekeeperType:(unint64_t)a3;
+ (void)logCDMAssetEvictedForAssetType:(id)a3 language:(id)a4;
+ (void)logCreateAssistant;
+ (void)logDESEvaluationForLanguage:(id)a3 error:(id)a4;
+ (void)logDESRecordingForLanguage:(id)a3 error:(id)a4;
+ (void)logDictationCancelled;
+ (void)logDictationFailedWithError:(id)a3;
+ (void)logDictationFollowedByContinueOccurredForLanguage:(id)a3;
+ (void)logDictationFollowedByKeyboardDeleteOccurredForLanguage:(id)a3;
+ (void)logDictationFollowedByKeyboardInputOccurredForLanguage:(id)a3;
+ (void)logDictationStarted;
+ (void)logDictationSucceeded;
+ (void)logEnabledState:(unint64_t)a3;
+ (void)logKeyboardInputFollowedByContinueOccurredForLanguage:(id)a3;
+ (void)logLoadAssistant;
+ (void)logLocalRecognitionAssetEvictedForLanguage:(id)a3;
+ (void)logLocalRecognitionLoadedForLanguage:(id)a3 duration:(double)a4;
+ (void)logLocalRecognitionLostForLanguage:(id)a3;
+ (void)logLocalRecognitionWonForLanguage:(id)a3;
+ (void)logRequestCancelAfterSeconds:(double)a3;
+ (void)logRequestCompletedWithDuration:(double)a3;
+ (void)logRequestLaunchedApp;
+ (void)logSiriInvokedVia:(int64_t)a3;
+ (void)logSiriMediaVolumeAction:(int64_t)a3;
+ (void)logSiriOtherRequestStarted;
+ (void)logSiriQuickStopAction:(unint64_t)a3;
+ (void)logSiriRequestCancelled;
+ (void)logSiriRequestFailedWithError:(id)a3;
+ (void)logSiriRequestSucceeded;
+ (void)logSiriSpeechRequestStarted;
+ (void)logStarkGatekeeperAppearedForType:(unint64_t)a3;
+ (void)logStarkGatekeeperDismissedManuallyForType:(unint64_t)a3;
+ (void)logUILockCanceledVTActivation;
- (void)connectionDidDrop;
- (void)connectionDidFail;
- (void)recordFailure:(int)a3 forConnectionType:(unint64_t)a4;
- (void)recordSessionRetrySuccess;
- (void)recordSuccessForConnectionType:(unint64_t)a3 isWarm:(BOOL)a4 forTimeInterval:(double)a5;
- (void)speechResponseReceived;
@end

@implementation AFAggregator

+ (void)logSiriOtherRequestStarted
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logSiriOtherRequestStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriStarted.Other", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logSiriRequestSucceeded
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logSiriRequestSucceeded]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriSucceeded", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logSiriSpeechRequestStarted
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logSiriSpeechRequestStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriStarted.Speech", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logLoadAssistant
{
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.LoadAssistant", 1);

  AnalyticsSendEvent();
}

+ (void)logCDMAssetEvictedForAssetType:(id)a3 language:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "+[AFAggregator logCDMAssetEvictedForAssetType:language:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  v8 = [@"com.apple.siri.CDMAssetEvicted." stringByAppendingFormat:@"%@-%@", v5, v6];
  _AFAggregatorClientAddValueForScalarKey(v8, 1);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)logDESEvaluationForLanguage:(id)a3 error:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v8 = v5;
    v6 = [@"com.apple.siri.DESEvaluation." stringByAppendingString:a3];
    if (v8)
    {
      v7 = [v6 stringByAppendingFormat:@".%ld", objc_msgSend(v8, "code")];

      v6 = v7;
    }

    _AFAggregatorClientAddValueForScalarKey(v6, 1);

    v5 = v8;
  }
}

+ (void)logDESRecordingForLanguage:(id)a3 error:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v8 = v5;
    v6 = [@"com.apple.siri.DESRecording." stringByAppendingString:a3];
    if (v8)
    {
      v7 = [v6 stringByAppendingFormat:@".%ld", objc_msgSend(v8, "code")];

      v6 = v7;
    }

    _AFAggregatorClientAddValueForScalarKey(v6, 1);

    v5 = v8;
  }
}

+ (void)logLocalRecognitionLostForLanguage:(id)a3
{
  if (a3)
  {
    v3 = [@"com.apple.siri.LocalRecognitionLost." stringByAppendingString:?];
    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logLocalRecognitionWonForLanguage:(id)a3
{
  if (a3)
  {
    v3 = [@"com.apple.siri.LocalRecognitionWon." stringByAppendingString:?];
    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logLocalRecognitionLoadedForLanguage:(id)a3 duration:(double)a4
{
  if (a3)
  {
    v5 = [@"com.apple.siri.LocalRecognitionLoaded." stringByAppendingString:?];
    _AFAggregatorClientPushValueForDistributionKey(v5, a4);
  }
}

+ (void)logLocalRecognitionAssetEvictedForLanguage:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[AFAggregator logLocalRecognitionAssetEvictedForLanguage:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v5 = [@"com.apple.siri.LocalRecognitionAssetEvicted." stringByAppendingString:v3];
  _AFAggregatorClientAddValueForScalarKey(v5, 1);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)logEnabledState:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "+[AFAggregator logEnabledState:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %tu", buf, 0x16u);
  }

  if ((a3 & 2) != 0)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v9[0] = @"com.apple.message.siri.enabled";
  v9[1] = @"com.apple.message.dictation.enabled";
  if ((a3 & 4) != 0)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  AnalyticsSendEvent();

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)logCreateAssistant
{
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.CreateAssistant", 1);

  AnalyticsSendEvent();
}

+ (void)logUILockCanceledVTActivation
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logUILockCanceledVTActivation]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.VTActivationCancel.UILocked", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logKeyboardInputFollowedByContinueOccurredForLanguage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logKeyboardInputFollowedByContinueOccurredForLanguage:]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.KeyboardEntryFollowedByContinue." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationFollowedByKeyboardDeleteOccurredForLanguage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logDictationFollowedByKeyboardDeleteOccurredForLanguage:]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByKeyboardDelete." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationFollowedByKeyboardInputOccurredForLanguage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logDictationFollowedByKeyboardInputOccurredForLanguage:]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByKeyboardEntry." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationFollowedByContinueOccurredForLanguage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logDictationFollowedByContinueOccurredForLanguage:]";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = [@"com.apple.siri.DictationFollowedByContinue." stringByAppendingString:v5];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationCancelled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logDictationCancelled]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationCancelled", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationSucceeded
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logDictationSucceeded]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationSucceeded", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationFailedWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logDictationFailedWithError:]";
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v8, 0x16u);
  }

  v6 = [a1 _fullAggDKeyWithPrefix:@"com.apple.siri.DictationFailed." error:v4];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logDictationStarted
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logDictationStarted]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.DictationStarted", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logSiriRequestCancelled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logSiriRequestCancelled]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriCancelled", 1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)logSiriRequestFailedWithError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "+[AFAggregator logSiriRequestFailedWithError:]";
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %{public}@", &v8, 0x16u);
  }

  v6 = [a1 _fullAggDKeyWithPrefix:@"com.apple.siri.SiriFailed." error:v4];
  _AFAggregatorClientAddValueForScalarKey(v6, 1);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logRequestLaunchedApp
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[AFAggregator logRequestLaunchedApp]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriSucceeded", 1);
  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.SiriCancelled", -1);
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)_fullAggDKeyWithPrefix:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = [v6 domain];
  v9 = [v6 code];
  v10 = [v6 userInfo];
  v11 = [v10 objectForKey:*MEMORY[0x1E696AA08]];

  v12 = [v6 domain];
  v13 = [v12 isEqualToString:@"kAFAssistantErrorDomain"];

  if (!v13)
  {
    goto LABEL_8;
  }

  if (v9 == 1 && v11)
  {
    v14 = [v7 stringByAppendingFormat:@"%@.%ld.", v8, 1];

    goto LABEL_6;
  }

  v14 = v7;
  if (!v11)
  {
LABEL_8:
    v14 = v7;
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_6:
  v15 = v11;

  v16 = [v15 domain];

  v9 = [v15 code];
  v6 = v15;
  v8 = v16;
  if (!v16)
  {
LABEL_7:
    v17 = [v14 stringByAppendingString:@"Other"];
    goto LABEL_12;
  }

LABEL_9:
  if ([v8 length] >= 0x1F)
  {
    v18 = [v8 substringToIndex:30];

    v8 = v18;
  }

  v17 = [v14 stringByAppendingFormat:@"%@.%ld", v8, v9];

  v7 = v8;
LABEL_12:

  return v17;
}

+ (void)logSiriMediaVolumeAction:(int64_t)a3
{
  if ((a3 - 2) <= 2)
  {
    v3 = off_1E73477B0[a3 - 2];
    ADClientAddValueForScalarKey();
  }
}

+ (void)logSiriQuickStopAction:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    ADClientAddValueForScalarKey();
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      ADClientAddValueForScalarKey();
      if ((v3 & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  ADClientAddValueForScalarKey();
  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 8) == 0)
  {
    return;
  }

LABEL_9:

  ADClientAddValueForScalarKey();
}

+ (void)logSiriInvokedVia:(int64_t)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v3 = @"hardware_button";
    goto LABEL_5;
  }

  if (a3 == 8)
  {
    v3 = @"voice_trigger";
LABEL_5:
    ADClientAddValueForScalarKey();
    v6 = @"via";
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    AnalyticsSendEvent();
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)logRequestCancelAfterSeconds:(double)a3
{
  if (a3 >= 0.0)
  {
    if (a3 >= 1.0)
    {
      if (a3 >= 2.0)
      {
        if (a3 >= 3.0)
        {
          if (a3 >= 4.0)
          {
            if (a3 >= 5.0)
            {
              if (a3 >= 6.0)
              {
                if (a3 >= 7.0)
                {
                  if (a3 >= 8.0)
                  {
                    if (a3 >= 9.0)
                    {
                      if (a3 >= 10.0)
                      {
                        if (a3 >= 11.0)
                        {
                          if (a3 >= 12.0)
                          {
                            if (a3 >= 13.0)
                            {
                              if (a3 >= 14.0)
                              {
                                if (a3 >= 15.0)
                                {
                                  if (a3 >= 20.0)
                                  {
                                    if (a3 >= 25.0)
                                    {
                                      if (a3 >= 30.0)
                                      {
                                        if (a3 >= 35.0)
                                        {
                                          if (a3 >= 40.0)
                                          {
                                            v3 = @"com.apple.siri.RequestCancel.40SecondsOrMore";
                                          }

                                          else
                                          {
                                            v3 = @"com.apple.siri.RequestCancel.40Seconds";
                                          }
                                        }

                                        else
                                        {
                                          v3 = @"com.apple.siri.RequestCancel.35Seconds";
                                        }
                                      }

                                      else
                                      {
                                        v3 = @"com.apple.siri.RequestCancel.30Seconds";
                                      }
                                    }

                                    else
                                    {
                                      v3 = @"com.apple.siri.RequestCancel.25Seconds";
                                    }
                                  }

                                  else
                                  {
                                    v3 = @"com.apple.siri.RequestCancel.20Seconds";
                                  }
                                }

                                else
                                {
                                  v3 = @"com.apple.siri.RequestCancel.15Seconds";
                                }
                              }

                              else
                              {
                                v3 = @"com.apple.siri.RequestCancel.14Seconds";
                              }
                            }

                            else
                            {
                              v3 = @"com.apple.siri.RequestCancel.13Seconds";
                            }
                          }

                          else
                          {
                            v3 = @"com.apple.siri.RequestCancel.12Seconds";
                          }
                        }

                        else
                        {
                          v3 = @"com.apple.siri.RequestCancel.11Seconds";
                        }
                      }

                      else
                      {
                        v3 = @"com.apple.siri.RequestCancel.10Seconds";
                      }
                    }

                    else
                    {
                      v3 = @"com.apple.siri.RequestCancel.9Seconds";
                    }
                  }

                  else
                  {
                    v3 = @"com.apple.siri.RequestCancel.8Seconds";
                  }
                }

                else
                {
                  v3 = @"com.apple.siri.RequestCancel.7Seconds";
                }
              }

              else
              {
                v3 = @"com.apple.siri.RequestCancel.6Seconds";
              }
            }

            else
            {
              v3 = @"com.apple.siri.RequestCancel.5Seconds";
            }
          }

          else
          {
            v3 = @"com.apple.siri.RequestCancel.4Seconds";
          }
        }

        else
        {
          v3 = @"com.apple.siri.RequestCancel.3Seconds";
        }
      }

      else
      {
        v3 = @"com.apple.siri.RequestCancel.2Seconds";
      }
    }

    else
    {
      v3 = @"com.apple.siri.RequestCancel.LessThan1";
    }

    _AFAggregatorClientAddValueForScalarKey(v3, 1);
  }
}

+ (void)logRequestCompletedWithDuration:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 > 10.0)
  {
    a3 = 10.0;
  }

  v3 = a3;
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "+[AFAggregator logRequestCompletedWithDuration:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %d", &v6, 0x12u);
  }

  _AFAggregatorClientAddValueForScalarKey(*(&off_1E73476B0 + v3), 1);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)speechResponseReceived
{
  [(AFAggregator *)self recordSuccessForConnectionType:self->_type isWarm:speechResponseReceived_sIsWarm forTimeInterval:CFAbsoluteTimeGetCurrent() - self->_startTime];
  speechResponseReceived_sIsWarm = 1;
  if (self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordSessionRetrySuccess];
    self->_sessionIsRetrying = 0;
  }
}

- (void)connectionDidDrop
{
  if (self->_hasActiveRequest && !self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordFailure:1 forConnectionType:self->_type];
  }
}

- (void)connectionDidFail
{
  if (self->_hasActiveRequest && !self->_sessionIsRetrying)
  {
    [(AFAggregator *)self recordFailure:0 forConnectionType:self->_type];
  }
}

- (void)recordSessionRetrySuccess
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (self->_retryPrefersWWAN)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[AFAggregator recordSessionRetrySuccess]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s WWAN fallback %@", &v6, 0x16u);
  }

  _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.RetrySuccess", 1);
  if (self->_retryPrefersWWAN)
  {
    _AFAggregatorClientAddValueForScalarKey(@"com.apple.siri.WWAN.FallbackSuccess", 1);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)recordFailure:(int)a3 forConnectionType:(unint64_t)a4
{
  Mutable = CFStringCreateMutable(0, 31);
  CFStringAppendCString(Mutable, "com.apple.siri.", 0x600u);
  if (a4 - 1 > 8)
  {
    v7 = "Unknown.";
  }

  else
  {
    v7 = off_1E7347768[a4 - 1];
  }

  CFStringAppendCString(Mutable, v7, 0x600u);
  if (a3)
  {
    v8 = "Dropped";
  }

  else
  {
    v8 = "Failed";
  }

  CFStringAppendCString(Mutable, v8, 0x600u);
  _AFAggregatorClientAddValueForScalarKey(Mutable, 1);

  CFRelease(Mutable);
}

- (void)recordSuccessForConnectionType:(unint64_t)a3 isWarm:(BOOL)a4 forTimeInterval:(double)a5
{
  v6 = a4;
  Mutable = CFStringCreateMutable(0, 52);
  CFStringAppendCString(Mutable, "com.apple.siri.", 0x600u);
  if (v6)
  {
    v9 = "";
  }

  else
  {
    v9 = "Cold.";
  }

  CFStringAppendCString(Mutable, v9, 0x600u);
  if (a3 - 1 > 8)
  {
    v10 = "Unknown.";
  }

  else
  {
    v10 = off_1E7347768[a3 - 1];
  }

  CFStringAppendCString(Mutable, v10, 0x600u);
  v11 = 0.0;
  if (a5 >= 0.0)
  {
    v11 = a5;
  }

  if (v11 > 10.0)
  {
    v11 = 10.0;
  }

  CFStringAppendCString(Mutable, off_1E7347710[v11], 0x600u);
  _AFAggregatorClientAddValueForScalarKey(Mutable, 1);

  CFRelease(Mutable);
}

+ (id)_stringForGatekeeperType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E73477C8[a3];
  }
}

+ (void)logStarkGatekeeperAppearedForType:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 _stringForGatekeeperType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [@"com.apple.siri.Car.GateKeeper.Appeared" stringByAppendingFormat:@".%@", v3];
  }

  else
  {
    v5 = @"com.apple.siri.Car.GateKeeper.Appeared";
  }

  _AFAggregatorClientAddValueForScalarKey(v5, 1);
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "+[AFAggregator(AssistantUI) logStarkGatekeeperAppearedForType:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s logged for key: %@", buf, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)logStarkGatekeeperDismissedManuallyForType:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 _stringForGatekeeperType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [@"com.apple.siri.Car.GateKeeper.Dismissed.Manual" stringByAppendingFormat:@".%@", v3];
  }

  else
  {
    v5 = @"com.apple.siri.Car.GateKeeper.Dismissed.Manual";
  }

  _AFAggregatorClientAddValueForScalarKey(v5, 1);
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "+[AFAggregator(AssistantUI) logStarkGatekeeperDismissedManuallyForType:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s logged for key: %@", buf, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end