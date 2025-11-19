BOOL AXAssistantSendMissingSettingFailure(void *a1)
{
  v1 = a1;
  v2 = _AXSSpeakThisEnabled();
  if (!v2)
  {
    v3 = [SACommandFailed alloc];
    v4 = [v3 initWithErrorCode:SAAXScreenReaderSettingNotEnabledErrorCode];
    v5 = [v4 dictionary];
    v1[2](v1, v5);
  }

  return v2 == 0;
}

void AXAssistantCallCompletionWithSpeakThisError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "AXAssistantCallCompletionWithSpeakThisError";
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Error when performing command: %{public}@", &v15, 0x16u);
    }

    v6 = [v4 domain];
    v7 = [v6 isEqualToString:STSErrorDomain];

    if (!v7)
    {
      v9 = 0;
      goto LABEL_20;
    }

    v8 = [v4 code];
    v9 = 0;
    if (v8 > 3)
    {
      if (v8 - 5 < 2)
      {
        goto LABEL_17;
      }

      if (v8 != &dword_4)
      {
LABEL_20:
        v12 = [[SACommandFailed alloc] initWithErrorCode:v9];
        goto LABEL_21;
      }

      v10 = &SAAXScreenReaderSpeedAtMinRateErrorCode;
    }

    else if (v8 == (&dword_0 + 1))
    {
      v10 = &SAAXScreenReaderNothingToSpeakErrorCode;
    }

    else if (v8 == (&dword_0 + 2))
    {
      v10 = &SAAXScreenReaderNothingBeingSpokenErrorCode;
    }

    else
    {
      if (v8 != (&dword_0 + 3))
      {
        goto LABEL_20;
      }

      v10 = &SAAXScreenReaderSpeedAtMaxRateErrorCode;
    }

    v9 = *v10;
    if (*v10 == 1337)
    {
LABEL_17:
      v11 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "AXAssistantCallCompletionWithSpeakThisError";
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s Ignored error and returned success, since it wasn't important.", &v15, 0xCu);
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = objc_opt_new();
LABEL_21:
  v13 = v12;
  v14 = [v12 dictionary];
  v3[2](v3, v14);
}