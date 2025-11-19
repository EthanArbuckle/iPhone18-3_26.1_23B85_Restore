@interface SFPageFormatMenuPrivacyReportController
@end

@implementation SFPageFormatMenuPrivacyReportController

uint64_t __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke(uint64_t a1)
{
  v2 = +[SFBrowserDocumentTrackerInfo trackingPreventionEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _presentPrivacyReport];
  }

  else
  {

    return [v3 _presentPromptToTurnOnTrackingProtection];
  }
}

void __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke_3;
  v2[3] = &unk_1E848F548;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __53___SFPageFormatMenuPrivacyReportController_alertItem__block_invoke_3(uint64_t a1)
{
  v19 = [MEMORY[0x1E695DF70] array];
  v2 = [*(a1 + 32) preventedKnownTrackingThirdParties];
  v3 = [v2 count];

  v4 = [*(a1 + 32) blockedKnownTrackingThirdParties];
  v5 = [v4 count];

  if (!(v3 | v5))
  {
    v10 = _WBSLocalizedString();
    [v19 addObject:v10];
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _WBSLocalizedString();
    v8 = [v6 localizedStringWithFormat:v7, v5];
    [v19 addObject:v8];
  }

  if (v3)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    v11 = [v9 localizedStringWithFormat:v10, v3];
    [v19 addObject:v11];

LABEL_7:
  }

  v12 = [*(a1 + 32) queryParameterFilteringDataQueue];
  v13 = [v12 currentData];
  v14 = [v13 numberOfFilteredQueryParameters];

  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = _WBSLocalizedString();
    v17 = [v15 localizedStringWithFormat:v16, v14];
    [v19 addObject:v17];
  }

  v18 = [v19 componentsJoinedByString:@"\n"];
  [*(a1 + 40) setSubtitle:v18];

  [*(a1 + 40) notifyObserversItemDidUpdate];
}

@end