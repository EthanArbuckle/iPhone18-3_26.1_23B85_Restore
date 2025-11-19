@interface SRErrorUtility
+ (BOOL)_shouldShowErrorCodes:(id)a3;
+ (id)_errorDescriptionForCode:(int64_t)a3;
+ (id)_localizedErrorString:(id)a3;
+ (id)_sharedErrorUtilityDefaults;
+ (id)userStringForError:(id)a3 modeProvider:(id)a4 reflectionDialogWasPlayed:(BOOL)a5;
+ (int64_t)_getUpdatedErrorCount;
+ (void)_logDummyAssistantUtteranceViewWithDialogIdentifier:(id)a3;
+ (void)resetErrorState;
@end

@implementation SRErrorUtility

+ (void)resetErrorState
{
  v3 = +[SiriUIPreferences sharedPreferences];
  v2 = +[NSDate distantPast];
  [v3 setPreviousSiriRequestErrorTimestamp:v2];
}

+ (id)userStringForError:(id)a3 modeProvider:(id)a4 reflectionDialogWasPlayed:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 domain];
  v11 = [v10 isEqualToString:kAFAssistantErrorDomain];

  if (v11)
  {
    v12 = [v8 code];
    v13 = @"clientGenerated#TryAgain";
    v14 = @"ASSISTANT_TRY_AGAIN";
    if (v12 <= 5)
    {
      if (v12 <= 2)
      {
        if ((v12 - 1) >= 2)
        {
          if (v12)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_15:
        if (v5 && [v8 code] == 4)
        {
          v13 = @"clientGenerated#TimeoutAfterDelayInterstitials";
          v14 = @"ASSISTANT_TIMEOUT_ERROR_AFTER_DELAY_INTERSTITIAL";
        }

        else
        {
          v16 = [a1 _getUpdatedErrorCount];
          v17 = @"clientGenerated#ConnectionFailed2";
          v18 = @"ASSISTANT_CONNECTION_FAILED_2";
          if (v16 == 1)
          {
            v18 = @"ASSISTANT_CONNECTION_FAILED_1";
            v17 = @"clientGenerated#ConnectionFailed1";
          }

          if (v16)
          {
            v14 = v18;
          }

          else
          {
            v14 = @"ASSISTANT_CONNECTION_FAILED_0";
          }

          if (v16)
          {
            v13 = v17;
          }

          else
          {
            v13 = @"clientGenerated#ConnectionFailed0";
          }
        }

        goto LABEL_33;
      }

      if (v12 == 3)
      {
        goto LABEL_33;
      }

      if (v12 == 4)
      {
        goto LABEL_15;
      }

LABEL_28:
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA874(v8, v19);
      }

      v14 = 0;
      goto LABEL_34;
    }

    if (v12 <= 13)
    {
      if (v12 == 6)
      {
        v14 = 0;
        v13 = @"clientGenerated#NotReady";
        goto LABEL_33;
      }

      if (v12 != 7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v12 == 14)
      {
        v13 = @"clientGenerated#ConnectionFailed3";
        v14 = @"ASSISTANT_CONNECTION_FAILED_3";
        goto LABEL_33;
      }

      if (v12 != 300)
      {
        if (v12 != 2001)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }
    }

LABEL_33:
    [a1 _logDummyAssistantUtteranceViewWithDialogIdentifier:v13];
    v20 = +[SRUIFInstrumentationManager sharedManager];
    [v20 storeClientGeneratedDUC:v13];

LABEL_34:
    if (AFIsInternalInstall() && [a1 _shouldShowErrorCodes:v9])
    {
      v21 = [a1 _localizedErrorString:v14];
      if (v21)
      {
        v22 = [a1 _errorDescriptionForCode:{objc_msgSend(v8, "code")}];
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (internal: %@ = %ld)", v21, v22, [v8 code]);
      }

      else
      {
        v15 = [a1 _localizedErrorString:v14];
      }
    }

    else
    {
      v15 = [a1 _localizedErrorString:v14];
    }

    goto LABEL_41;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

+ (id)_sharedErrorUtilityDefaults
{
  if (qword_10018F158 != -1)
  {
    sub_1000CA900();
  }

  v3 = qword_10018F150;

  return v3;
}

+ (BOOL)_shouldShowErrorCodes:(id)a3
{
  v4 = [a3 displayOnlyModeForInterstitialsAndErrors];
  if (v4)
  {
    v5 = [a1 _sharedErrorUtilityDefaults];
    v6 = [v5 BOOLForKey:@"ShowErrorCodes"];

    LOBYTE(v4) = v6;
  }

  return v4;
}

+ (id)_errorDescriptionForCode:(int64_t)a3
{
  v3 = @"kAFErrorInternalServerUnreachable // assistantd is trying to connect to custom server that is likely not reachable.";
  v4 = @"kAFErrorAuthGeneric";
  v5 = @"kAFErrorServersNotAvailable";
  if (a3 != 2001)
  {
    v5 = 0;
  }

  if (a3 != 300)
  {
    v4 = v5;
  }

  if (a3 != 14)
  {
    v3 = v4;
  }

  v6 = @"kAFErrorNotReady // Assistant or Dictation not ready error returned from server.";
  v7 = @"kAFErrorXPCInterruption // XPC connection was torn down before the request was complete.";
  if (a3 != 7)
  {
    v7 = 0;
  }

  if (a3 != 6)
  {
    v6 = v7;
  }

  if (a3 <= 13)
  {
    v3 = v6;
  }

  v8 = @"kAFErrorSessionDenied // SessionValidationFailed or LoadAssistant failure";
  v9 = @"kAFErrorAceConnectionFailure // Failure from the session layer. Underlying error will have more info";
  if (a3 != 4)
  {
    v9 = 0;
  }

  if (a3 != 3)
  {
    v8 = v9;
  }

  if (a3 == 2)
  {
    v8 = @"kAFErrorServerError // CommandFailed received for critical part of request";
  }

  v10 = @"kAFErrorClientTimedOut // AFConnection timed out in the client process.";
  if (a3 != 1)
  {
    v10 = 0;
  }

  if (!a3)
  {
    v10 = @"kAFErrorGeneric";
  }

  if (a3 <= 1)
  {
    v8 = v10;
  }

  if (a3 <= 5)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)_getUpdatedErrorCount
{
  v2 = +[SiriUIPreferences sharedPreferences];
  v3 = [v2 previousSiriRequestErrorTimestamp];
  v4 = [v2 siriRequestErrorCount];
  [v3 timeIntervalSinceNow];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 <= 480.0)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = 0;
  }

  [v2 setSiriRequestErrorCount:v6];
  v7 = +[NSDate now];
  [v2 setPreviousSiriRequestErrorTimestamp:v7];

  return v6;
}

+ (id)_localizedErrorString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 assistantUILocalizedStringForKey:v3 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_logDummyAssistantUtteranceViewWithDialogIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[AFAnalytics sharedAnalytics];
  v9 = @"dialogIdentifier";
  v10 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v4 logEventWithType:1429 context:v5];

  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  [v6 setAceId:v8];

  [v6 setDialogIdentifier:v3];
  [v4 logClientFeedbackPresented:v6];
}

@end