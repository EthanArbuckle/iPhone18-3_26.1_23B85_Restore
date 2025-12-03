@interface SFDialog(SafariServicesExtras)
+ (id)allowDownloadDialogWithDownload:()SafariServicesExtras initiatingSecurityOrigin:navigatedWebView:allowViewAction:completionHandler:;
+ (id)downloadBlockedDialogWithFileType:()SafariServicesExtras initiatingSecurityOrigin:presentingURL:completionHandler:;
+ (id)redirectDialogWithNavigationResult:()SafariServicesExtras promptPolicy:completionHandler:;
@end

@implementation SFDialog(SafariServicesExtras)

+ (id)redirectDialogWithNavigationResult:()SafariServicesExtras promptPolicy:completionHandler:
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 URL];
  safari_isAppleOneURL = [v8 safari_isAppleOneURL];

  if (safari_isAppleOneURL)
  {
    v10 = _WBSLocalizedString();
    v11 = MEMORY[0x1E69B1B00];
    v12 = _WBSLocalizedString();
    v13 = _WBSLocalizedString();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100__SFDialog_SafariServicesExtras__redirectDialogWithNavigationResult_promptPolicy_completionHandler___block_invoke;
    v21[3] = &unk_1E848FA50;
    v22 = v7;
    v14 = [v11 _dialogWithTitle:0 message:v10 primaryAction:v12 secondaryAction:v13 applicationModal:0 completionHandler:v21];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = _WBSLocalizedString();
    externalApplication = [v6 externalApplication];
    localizedName = [externalApplication localizedName];
    v10 = [v15 stringWithFormat:v16, localizedName];

    appLink = [v6 appLink];

    if (appLink)
    {
      [MEMORY[0x1E69B1B00] _appLinkRedirectDialogWithMessage:v10 completionHandler:v7];
    }

    else
    {
      [MEMORY[0x1E69B1B00] redirectDialogWithMessage:v10 completionHandler:v7];
    }
    v14 = ;
  }

  return v14;
}

+ (id)downloadBlockedDialogWithFileType:()SafariServicesExtras initiatingSecurityOrigin:presentingURL:completionHandler:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = _WBSLocalizedString();
  v15 = _WBSLocalizedString();
  host = [v13 host];

  safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];

  if (![safari_stringByRemovingWwwDotPrefix length])
  {
    v6 = _WBSLocalizedString();
    goto LABEL_19;
  }

  v18 = safari_stringByRemovingWwwDotPrefix;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        v19 = MEMORY[0x1E696AEC0];
        goto LABEL_17;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v19 = MEMORY[0x1E696AEC0];
LABEL_17:
        v20 = _WBSLocalizedString();
        v6 = [v19 stringWithFormat:v20, v18];

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v19 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

  if (a3 <= 5)
  {
    v19 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

  if (a3 == 6)
  {
    v19 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

  if (a3 == 7)
  {
    v19 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  v21 = [self _dialogWithTitle:0 message:v6 primaryAction:v14 secondaryAction:v15 applicationModal:0 completionHandler:v12];
  [v21 setCanceledOnProvisionalNavigation:0];
  if (v11)
  {
    v22 = [MEMORY[0x1E69C9098] sameOriginNavigationExemption:v11];
    v25[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v21 setAdditionalCancellationExemptions:v23];
  }

  return v21;
}

+ (id)allowDownloadDialogWithDownload:()SafariServicesExtras initiatingSecurityOrigin:navigatedWebView:allowViewAction:completionHandler:
{
  v57[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [a5 URL];
  v49 = _WBSLocalizedString();
  _WBSLocalizedString();
  v52 = v51 = v11;
  v50 = v12;
  if (v11)
  {
    securityOrigin = v11;
  }

  else
  {
    wkDownload = [v10 wkDownload];
    originatingFrame = [wkDownload originatingFrame];
    securityOrigin = [originatingFrame securityOrigin];
  }

  v48 = securityOrigin;
  host = [securityOrigin host];
  safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];

  v19 = v10;
  wkDownload2 = [v10 wkDownload];
  originatingFrame2 = [wkDownload2 originatingFrame];
  webView = [originatingFrame2 webView];
  _committedURL = [webView _committedURL];
  host2 = [_committedURL host];
  safari_stringByRemovingWwwDotPrefix2 = [host2 safari_stringByRemovingWwwDotPrefix];
  v26 = safari_stringByRemovingWwwDotPrefix2;
  if (safari_stringByRemovingWwwDotPrefix2)
  {
    v27 = safari_stringByRemovingWwwDotPrefix2;
  }

  else
  {
    v27 = safari_stringByRemovingWwwDotPrefix;
  }

  v28 = v27;

  if ([v28 length] && (objc_msgSend(v28, "isEqualToString:", safari_stringByRemovingWwwDotPrefix) & 1) == 0)
  {
    v35 = MEMORY[0x1E696AEC0];
    v32 = _WBSLocalizedString();
    v33 = v19;
    filename = [v19 filename];
    v36 = [v35 stringWithFormat:v32, filename, v28, safari_stringByRemovingWwwDotPrefix];
    v37 = v50;
    v31 = v13;
  }

  else
  {
    v29 = [safari_stringByRemovingWwwDotPrefix length];
    v30 = MEMORY[0x1E696AEC0];
    v31 = v13;
    if (v29)
    {
      v32 = _WBSLocalizedString();
      v33 = v19;
      filename = [v19 filename];
      [v30 stringWithFormat:v32, filename, safari_stringByRemovingWwwDotPrefix];
    }

    else
    {
      v32 = _WBSLocalizedString();
      v33 = v19;
      filename = [v19 filename];
      [v30 stringWithFormat:v32, filename, v45];
    }
    v36 = ;
    v37 = v50;
  }

  v38 = *MEMORY[0x1E69B1C90];
  if (a6)
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __142__SFDialog_SafariServicesExtras__allowDownloadDialogWithDownload_initiatingSecurityOrigin_navigatedWebView_allowViewAction_completionHandler___block_invoke;
    v55[3] = &unk_1E8490A88;
    v39 = &v56;
    v56 = v37;
    v40 = [self _dialogWithTitle:0 message:v36 acceptAction:v49 secondaryAction:v52 cancelAction:v38 applicationModal:0 completionHandler:v55];
  }

  else
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __142__SFDialog_SafariServicesExtras__allowDownloadDialogWithDownload_initiatingSecurityOrigin_navigatedWebView_allowViewAction_completionHandler___block_invoke_2;
    v53[3] = &unk_1E848FA50;
    v39 = &v54;
    v54 = v37;
    v40 = [self _dialogWithTitle:0 message:v36 primaryAction:v49 secondaryAction:v38 applicationModal:0 completionHandler:v53];
  }

  v41 = v40;

  [v41 setCanceledOnProvisionalNavigation:0];
  [v41 setCanceledOnApplicationBackground:1];
  if (v31)
  {
    v42 = [MEMORY[0x1E69C9098] sameOriginNavigationExemption:v31];
    v57[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    [v41 setAdditionalCancellationExemptions:v43];
  }

  return v41;
}

@end