@interface SFMailContentProvider
@end

@implementation SFMailContentProvider

uint64_t __123___SFMailContentProvider_prepareMailComposeViewController_withMailToURL_contentURL_preferredContentType_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setMessageBody:a2 isHTML:1];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __123___SFMailContentProvider_prepareMailComposeViewController_withMailToURL_contentURL_preferredContentType_completionHandler___block_invoke_2_cold_1(v3);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __123___SFMailContentProvider_prepareMailComposeViewController_withMailToURL_contentURL_preferredContentType_completionHandler___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addAttachmentData:a2 mimeType:@"application/pdf" fileName:a3];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __59___SFMailContentProvider__getPDFDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v9 = v5;
  if (!v5 || a3)
  {
    (*(v6 + 16))(v6, 0, 0);
  }

  else
  {
    v7 = [*(a1 + 32) _sf_suggestedFilename];
    v8 = [v7 safari_ensurePathExtension:@"pdf"];
    (*(v6 + 16))(v6, v9, v8);
  }
}

@end