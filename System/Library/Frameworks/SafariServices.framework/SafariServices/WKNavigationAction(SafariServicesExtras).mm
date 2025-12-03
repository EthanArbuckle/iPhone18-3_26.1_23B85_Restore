@interface WKNavigationAction(SafariServicesExtras)
- (uint64_t)_sf_allowsExternalRedirectWithoutPrompting;
- (uint64_t)_sf_shouldAskAboutInsecureFormSubmission;
- (uint64_t)_sf_shouldPerformDownload;
- (void)_sf_setAllowsExternalRedirectWithoutPrompting:()SafariServicesExtras;
@end

@implementation WKNavigationAction(SafariServicesExtras)

- (uint64_t)_sf_shouldAskAboutInsecureFormSubmission
{
  if ([self navigationType] != 1)
  {
    return 0;
  }

  if ([self _isRedirect])
  {
    request = [self request];
    hTTPMethod = [request HTTPMethod];
    v4 = [hTTPMethod isEqualToString:@"GET"];

    if (v4)
    {
      return 0;
    }
  }

  request2 = [self request];
  v6 = [request2 URL];
  v7 = [v6 safari_hasScheme:@"http"];

  if (!v7)
  {
    return 0;
  }

  sourceFrame = [self sourceFrame];
  request3 = [sourceFrame request];
  v10 = [request3 URL];
  v11 = [v10 safari_hasScheme:@"https"];

  return v11;
}

- (uint64_t)_sf_shouldPerformDownload
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self _shouldPerformDownload])
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    targetFrame = [self targetFrame];
    request = [self request];
    v5 = [request URL];

    if (targetFrame && ([targetFrame isMainFrame] & 1) == 0 && (objc_msgSend(self, "sourceFrame"), v6 = objc_claimAutoreleasedReturnValue(), v6, targetFrame == v6))
    {
      v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
      v11 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138739971;
        v14 = v5;
        v10 = "Downloading download-attributed same-frame subframe link to %{sensitive}@";
        goto LABEL_15;
      }
    }

    else
    {
      v7 = [safari_browserDefaults BOOLForKey:*MEMORY[0x1E69B1EA8]];
      v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (!v7)
      {
        if (v9)
        {
          v13 = 138739971;
          v14 = v5;
          _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, "Allowing provisional navigation with download attribute to %{sensitive}@", &v13, 0xCu);
        }

        v11 = 0;
        goto LABEL_16;
      }

      if (v9)
      {
        v13 = 138739971;
        v14 = v5;
        v10 = "Using download attribute for main frame navigation to %{sensitive}@";
        v11 = 1;
LABEL_15:
        _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
        goto LABEL_16;
      }

      v11 = 1;
    }

LABEL_16:

    return v11;
  }

  return 0;
}

- (uint64_t)_sf_allowsExternalRedirectWithoutPrompting
{
  v1 = objc_getAssociatedObject(self, allowsExternalRedirectWithoutPromptingKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_sf_setAllowsExternalRedirectWithoutPrompting:()SafariServicesExtras
{
  v2 = allowsExternalRedirectWithoutPromptingKey;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, v2, v3, 1);
}

@end