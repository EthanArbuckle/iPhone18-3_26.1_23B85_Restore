@interface WebBookmark
@end

@implementation WebBookmark

void __87__WebBookmark_SafariServicesExtras___sf_webBookmarksFromDropSession_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_4];
  (*(*(a1 + 32) + 16))();
}

id __87__WebBookmark_SafariServicesExtras___sf_webBookmarksFromDropSession_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v2;
  v5 = v4;
  v6 = v4;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v4 safari_originalDataAsString];
    v8 = [v5 _title];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;

    v6 = [objc_alloc(MEMORY[0x1E69E20F0]) initWithTitle:v10 address:v7 collectionType:0];
  }

  return v6;
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  if (v4)
  {
    v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v2 setURL:v4];
  }

  else
  {
    v3 = *(a1 + 32);
    v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v2 setString:v3];
  }
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBookmarkUUID];

  if (v2)
  {
    v3 = [*(a1 + 32) _sf_managedBookmark];
    v6 = [v3 allDescendantsAsWebBookmarks];
  }

  else
  {
    v6 = [*(a1 + 40) descendantsOfBookmarkFolder:*(a1 + 32)];
  }

  v4 = [v6 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_57];
  v5 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v5 setItems:v4];
}

id __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [a2 address];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  v4 = v3;
  if (v3)
  {
    v12 = *MEMORY[0x1E69638B8];
    v13[0] = v3;
    v5 = MEMORY[0x1E695DF20];
    v6 = v13;
    v7 = &v12;
LABEL_5:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
    goto LABEL_6;
  }

  if (v2)
  {
    v10 = *MEMORY[0x1E69638C8];
    v11 = v2;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v11;
    v7 = &v10;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E69B1C50] builder];
  [v6 setPreferredTabOrder:a2];
  [v6 setShouldPromptBeforeHandlingMultipleIntents:a3];
  if (([*(a1 + 32) hasActiveLibrary] & 1) == 0)
  {
    [v6 setPrefersOpenInNewTab:1];
  }

  v7 = [v6 navigationIntentWithBookmark:*(a1 + 40)];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_6;
  v10[3] = &unk_1E84900F0;
  objc_copyWeak(&v13, (a1 + 56));
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained bookmark:*(a1 + 32) didProduceNavigationIntent:*(a1 + 40) userInfo:*(a1 + 48)];
}

uint64_t __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_8(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = (a2 & 1) == 0 && *(a1 + 40) > *MEMORY[0x1E69B1DF8];
  return (*(v3 + 16))(v3, 1, v4);
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained editBookmark:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_10(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 40)];
  v5 = v4;
  if (!v4)
  {
    v5 = *(a1 + 40);
  }

  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [WeakRetained bookmark:v3 shareItems:v6 userInfo:*(a1 + 48)];
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBookmarkUUID];

  if (v2)
  {
    v3 = [*(a1 + 32) _sf_managedBookmark];
    v6 = [v3 allDescendantsAsWebBookmarks];
  }

  else
  {
    v6 = [*(a1 + 40) descendantsOfBookmarkFolder:*(a1 + 32)];
  }

  v4 = [v6 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_89];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained bookmark:*(a1 + 32) shareItems:v4 userInfo:*(a1 + 48)];
}

void *__147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 address];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained deleteBookmark:*(a1 + 32) userInfo:*(a1 + 40)];

  v3 = [MEMORY[0x1E69C8810] sharedLogger];
  [v3 didRemoveFrequentlyVisitedSiteWithAnalyticsPayload:*(a1 + 48)];
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained openRadarProblemURLforFrequentlyVisitedSite:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __147__WebBookmark_SafariServicesExtras___sf_contextMenuUsingCollection_tabGroupActionProvider_additionalActions_analyticsPayload_withUserInfo_handler___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deleteBookmark:*(a1 + 32) userInfo:*(a1 + 40)];
}

@end