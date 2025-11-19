@interface SFCalendarEventDetector
@end

@implementation SFCalendarEventDetector

void __76___SFCalendarEventDetector_containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _containsCalendarEventForPageWithSchemaOrgMarkup:*(a1 + 40)];
}

void __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69992A0] serviceForEvents];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke_2;
  v9[3] = &unk_1E8492B68;
  v10 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v2;
  v8 = v2;
  [v8 isEventCandidateForURL:v10 andTitle:v4 containsSchemaOrg:v5 withCompletion:v9];
}

void __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke_1;
    block[3] = &unk_1E848F570;
    v9 = *(a1 + 48);
    v3 = *(&v9 + 1);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    v11 = v9;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Page was not a candidate for event extraction", buf, 2u);
    }

    v8 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke_2_cold_1();
    }
  }
}

void __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    if (v7)
    {
      v9 = a1[4];
      v8 = a1[5];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_4;
      v15[3] = &unk_1E8492BB8;
      v10 = a1[6];
      v15[4] = a1[7];
      [v8 suggestionsFromURL:v9 title:v10 HTMLPayload:v7 withCompletion:v15];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_cold_1(v13);
      }

      v14 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_cold_2();
      }
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_cold_3(v11, v6);
    }

    v12 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_cold_2();
    }
  }
}

void __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_4_cold_1(v7, v6);
    }
  }

  else if ([v5 count])
  {
    [*(a1 + 32) _foundCalendarEvents:v5];
  }
}

void __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_cold_3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Unable to get the source code for the page with error: %{public}@", v7, v8, v9, v10, v11);
}

void __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke_4_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Unable to detect calendar events: %{public}@", v7, v8, v9, v10, v11);
}

@end