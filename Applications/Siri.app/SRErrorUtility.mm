@interface SRErrorUtility
+ (BOOL)_shouldShowErrorCodes:(id)codes;
+ (id)_errorDescriptionForCode:(int64_t)code;
+ (id)_localizedErrorString:(id)string;
+ (id)_sharedErrorUtilityDefaults;
+ (id)userStringForError:(id)error modeProvider:(id)provider reflectionDialogWasPlayed:(BOOL)played;
+ (int64_t)_getUpdatedErrorCount;
+ (void)_logDummyAssistantUtteranceViewWithDialogIdentifier:(id)identifier;
+ (void)resetErrorState;
@end

@implementation SRErrorUtility

+ (void)resetErrorState
{
  v3 = +[SiriUIPreferences sharedPreferences];
  v2 = +[NSDate distantPast];
  [v3 setPreviousSiriRequestErrorTimestamp:v2];
}

+ (id)userStringForError:(id)error modeProvider:(id)provider reflectionDialogWasPlayed:(BOOL)played
{
  playedCopy = played;
  errorCopy = error;
  providerCopy = provider;
  domain = [errorCopy domain];
  v11 = [domain isEqualToString:kAFAssistantErrorDomain];

  if (v11)
  {
    code = [errorCopy code];
    v13 = @"clientGenerated#TryAgain";
    v14 = @"ASSISTANT_TRY_AGAIN";
    if (code <= 5)
    {
      if (code <= 2)
      {
        if ((code - 1) >= 2)
        {
          if (code)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_15:
        if (playedCopy && [errorCopy code] == 4)
        {
          v13 = @"clientGenerated#TimeoutAfterDelayInterstitials";
          v14 = @"ASSISTANT_TIMEOUT_ERROR_AFTER_DELAY_INTERSTITIAL";
        }

        else
        {
          _getUpdatedErrorCount = [self _getUpdatedErrorCount];
          v17 = @"clientGenerated#ConnectionFailed2";
          v18 = @"ASSISTANT_CONNECTION_FAILED_2";
          if (_getUpdatedErrorCount == 1)
          {
            v18 = @"ASSISTANT_CONNECTION_FAILED_1";
            v17 = @"clientGenerated#ConnectionFailed1";
          }

          if (_getUpdatedErrorCount)
          {
            v14 = v18;
          }

          else
          {
            v14 = @"ASSISTANT_CONNECTION_FAILED_0";
          }

          if (_getUpdatedErrorCount)
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

      if (code == 3)
      {
        goto LABEL_33;
      }

      if (code == 4)
      {
        goto LABEL_15;
      }

LABEL_28:
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CA874(errorCopy, v19);
      }

      v14 = 0;
      goto LABEL_34;
    }

    if (code <= 13)
    {
      if (code == 6)
      {
        v14 = 0;
        v13 = @"clientGenerated#NotReady";
        goto LABEL_33;
      }

      if (code != 7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (code == 14)
      {
        v13 = @"clientGenerated#ConnectionFailed3";
        v14 = @"ASSISTANT_CONNECTION_FAILED_3";
        goto LABEL_33;
      }

      if (code != 300)
      {
        if (code != 2001)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }
    }

LABEL_33:
    [self _logDummyAssistantUtteranceViewWithDialogIdentifier:v13];
    v20 = +[SRUIFInstrumentationManager sharedManager];
    [v20 storeClientGeneratedDUC:v13];

LABEL_34:
    if (AFIsInternalInstall() && [self _shouldShowErrorCodes:providerCopy])
    {
      v21 = [self _localizedErrorString:v14];
      if (v21)
      {
        v22 = [self _errorDescriptionForCode:{objc_msgSend(errorCopy, "code")}];
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (internal: %@ = %ld)", v21, v22, [errorCopy code]);
      }

      else
      {
        v15 = [self _localizedErrorString:v14];
      }
    }

    else
    {
      v15 = [self _localizedErrorString:v14];
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

+ (BOOL)_shouldShowErrorCodes:(id)codes
{
  displayOnlyModeForInterstitialsAndErrors = [codes displayOnlyModeForInterstitialsAndErrors];
  if (displayOnlyModeForInterstitialsAndErrors)
  {
    _sharedErrorUtilityDefaults = [self _sharedErrorUtilityDefaults];
    v6 = [_sharedErrorUtilityDefaults BOOLForKey:@"ShowErrorCodes"];

    LOBYTE(displayOnlyModeForInterstitialsAndErrors) = v6;
  }

  return displayOnlyModeForInterstitialsAndErrors;
}

+ (id)_errorDescriptionForCode:(int64_t)code
{
  v3 = @"kAFErrorInternalServerUnreachable // assistantd is trying to connect to custom server that is likely not reachable.";
  v4 = @"kAFErrorAuthGeneric";
  v5 = @"kAFErrorServersNotAvailable";
  if (code != 2001)
  {
    v5 = 0;
  }

  if (code != 300)
  {
    v4 = v5;
  }

  if (code != 14)
  {
    v3 = v4;
  }

  v6 = @"kAFErrorNotReady // Assistant or Dictation not ready error returned from server.";
  v7 = @"kAFErrorXPCInterruption // XPC connection was torn down before the request was complete.";
  if (code != 7)
  {
    v7 = 0;
  }

  if (code != 6)
  {
    v6 = v7;
  }

  if (code <= 13)
  {
    v3 = v6;
  }

  v8 = @"kAFErrorSessionDenied // SessionValidationFailed or LoadAssistant failure";
  v9 = @"kAFErrorAceConnectionFailure // Failure from the session layer. Underlying error will have more info";
  if (code != 4)
  {
    v9 = 0;
  }

  if (code != 3)
  {
    v8 = v9;
  }

  if (code == 2)
  {
    v8 = @"kAFErrorServerError // CommandFailed received for critical part of request";
  }

  v10 = @"kAFErrorClientTimedOut // AFConnection timed out in the client process.";
  if (code != 1)
  {
    v10 = 0;
  }

  if (!code)
  {
    v10 = @"kAFErrorGeneric";
  }

  if (code <= 1)
  {
    v8 = v10;
  }

  if (code <= 5)
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
  previousSiriRequestErrorTimestamp = [v2 previousSiriRequestErrorTimestamp];
  siriRequestErrorCount = [v2 siriRequestErrorCount];
  [previousSiriRequestErrorTimestamp timeIntervalSinceNow];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 <= 480.0)
  {
    v6 = siriRequestErrorCount + 1;
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

+ (id)_localizedErrorString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 assistantUILocalizedStringForKey:stringCopy table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_logDummyAssistantUtteranceViewWithDialogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AFAnalytics sharedAnalytics];
  v9 = @"dialogIdentifier";
  v10 = identifierCopy;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v4 logEventWithType:1429 context:v5];

  v6 = objc_alloc_init(SAUIAssistantUtteranceView);
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  [v6 setAceId:uUIDString];

  [v6 setDialogIdentifier:identifierCopy];
  [v4 logClientFeedbackPresented:v6];
}

@end