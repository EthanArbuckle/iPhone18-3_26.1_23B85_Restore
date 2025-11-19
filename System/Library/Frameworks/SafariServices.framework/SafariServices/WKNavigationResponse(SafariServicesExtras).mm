@interface WKNavigationResponse(SafariServicesExtras)
- (id)_sf_explicitSuggestedFilename;
- (id)_sf_suggestedFilename;
- (uint64_t)_sf_allowReloadingInMainFrame;
- (uint64_t)_sf_responsePolicy:()SafariServicesExtras uti:;
@end

@implementation WKNavigationResponse(SafariServicesExtras)

- (id)_sf_suggestedFilename
{
  v2 = [a1 _sf_explicitSuggestedFilename];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 response];
    v6 = [v5 suggestedFilename];
    v4 = [v6 safari_filenameByFixingIllegalCharacters];
  }

  return v4;
}

- (id)_sf_explicitSuggestedFilename
{
  v2 = [a1 response];
  if ([v2 _sf_hasAttachmentWithFilename])
  {
    v3 = [v2 suggestedFilename];
LABEL_4:
    v4 = [v3 safari_filenameByFixingIllegalCharacters];
    goto LABEL_5;
  }

  v3 = [a1 _downloadAttribute];
  if ([v3 length])
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (uint64_t)_sf_allowReloadingInMainFrame
{
  v2 = [a1 response];
  v3 = [v2 URL];
  v4 = [v3 safari_isDataURL];

  if (!v4)
  {
    v7 = [a1 _request];
    v8 = [v7 HTTPMethod];
    v9 = [v8 safari_isCaseInsensitiveEqualToString:@"GET"];

    if (v9)
    {
      v10 = [a1 response];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 allHeaderFields];
        v12 = [v11 safari_stringForKey:@"Accept-Ranges"];
        v13 = [v12 safari_isCaseInsensitiveEqualToString:@"bytes"];

        if (v13)
        {
          v14 = WBS_LOG_CHANNEL_PREFIXDownloads();
          v6 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

      v15 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v16 = "Assuming reload-in-main-frame is not supported";
        v17 = &v19;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = 0;
        v16 = "Not allowing reload-in-main-frame because the request was not a GET request";
        v17 = &v21;
LABEL_14:
        _os_log_impl(&dword_1D4644000, v15, OS_LOG_TYPE_INFO, v16, v17, 2u);
      }
    }

    v6 = 0;
LABEL_16:

    return v6;
  }

  v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
  v6 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_INFO, "Allowing reload-in-main-frame for a data: URL", buf, 2u);
  }

  return v6;
}

- (uint64_t)_sf_responsePolicy:()SafariServicesExtras uti:
{
  *a3 = 0;
  v7 = [a1 response];
  v8 = [v7 MIMEType];
  v9 = typeIdentifierForDownloadFromResponse(v7);
  *a4 = v9;
  v10 = _SFDownloadingFileTypeFromUTIAndMIMEType(v9, v8);
  *a3 = v10;
  v11 = *a4;
  v12 = v8;
  v13 = v12;
  v14 = 0;
  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if ([v12 isEqualToString:@"application/pdf"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"text/pdf"))
    {
      v14 = 1;
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v15 = getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr;
      v30 = getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr;
      if (!getQLPreviewGetSupportedMIMETypesSymbolLoc_ptr)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __getQLPreviewGetSupportedMIMETypesSymbolLoc_block_invoke;
        v26[3] = &unk_1E848F710;
        v26[4] = &v27;
        __getQLPreviewGetSupportedMIMETypesSymbolLoc_block_invoke(v26);
        v15 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (!v15)
      {
        v25 = [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
        _Block_object_dispose(&v27, 8);
        _Unwind_Resume(v25);
      }

      v16 = v15();
      v17 = [v16 containsObject:v13];

      if (v17)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }
  }

  v18 = [a1 isForMainFrame];
  if ([v7 sf_shouldDownloadDueToContentDisposition:v18])
  {
    v19 = 1;
  }

  else
  {
    v20 = [a1 _downloadAttribute];
    v19 = v20 != 0;
  }

  if (v14 == 1)
  {
    v21 = v19 & (v18 ^ 1);
    goto LABEL_37;
  }

  v22 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v23 = [v22 BOOLForKey:*MEMORY[0x1E69B1EB8]];

  if (!v14)
  {
    goto LABEL_36;
  }

  if (v14 != 2)
  {
    if (!(v19 | (([a1 canShowMIMEType] & 1) == 0)))
    {
      v21 = 0;
      goto LABEL_37;
    }

    if ([a1 canShowMIMEType] && (objc_msgSend(v7, "_sf_allowedToOverrideContentDispositionAttachment") & v23) == 1)
    {
      if (v18)
      {
        goto LABEL_28;
      }

      if ([a1 _sf_allowReloadingInMainFrame])
      {
        v21 = 4;
        goto LABEL_37;
      }
    }

LABEL_36:
    v21 = 1;
    goto LABEL_37;
  }

  if ((v23 & 1) == 0)
  {
    v21 = v19;
    goto LABEL_37;
  }

  if (v18 & 1 | !v19)
  {
    if ((v18 & 1) == 0)
    {
      if (_os_feature_enabled_impl())
      {
        v21 = 3;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_37;
    }

LABEL_28:
    v21 = 3;
    goto LABEL_37;
  }

  if ([a1 _sf_allowReloadingInMainFrame])
  {
    v21 = 4;
  }

  else
  {
    v21 = 1;
  }

LABEL_37:

  return v21;
}

@end