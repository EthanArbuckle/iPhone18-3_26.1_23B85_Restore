@interface WFAlwaysOnDisplaySettingsClient
+ (BOOL)canRunIntent;
+ (id)alwaysOnPublisher;
+ (id)filteredPublisherForAlwaysOnPublisher:(id)a3;
+ (id)reversalArbiter;
+ (id)reverseAlwaysOnPublisher;
+ (void)createClientWithCompletionHandler:(id)a3;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4;
+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4;
- (void)getStateWithCompletionHandler:(id)a3;
@end

@implementation WFAlwaysOnDisplaySettingsClient

- (void)getStateWithCompletionHandler:(id)a3
{
  v6 = a3;
  if (+[WFAlwaysOnDisplaySettingsClient canRunIntent])
  {
    v6[2](v6, [(WFAlwaysOnDisplaySettingsClient *)self alwaysOnDisplayState], 0);
    v4 = v6;
  }

  else
  {
    v5 = WFSettingsClientError();
    v6[2](v6, 0, v5);

    v4 = v5;
  }
}

+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__WFAlwaysOnDisplaySettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C19310;
  v12 = v6;
  v10 = v6;
  [v8 getReversalStateWithBookmark:v9 completionHandler:v11];
}

void __82__WFAlwaysOnDisplaySettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 userSetState] == 1;
    v4 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 reversalArbiter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__WFAlwaysOnDisplaySettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1D920;
  v8 = v4;
  v6 = v4;
  [v5 getBookmarkForCurrentStateWithCompletionHandler:v7];
}

void __83__WFAlwaysOnDisplaySettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__WFAlwaysOnDisplaySettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C1D920;
  v12 = v6;
  v10 = v6;
  [v8 getBookmarkForFirstEventAfterBookmark:v9 completionHandler:v11];
}

void __91__WFAlwaysOnDisplaySettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (id)reversalArbiter
{
  v3 = objc_alloc(MEMORY[0x277D7C850]);
  v4 = [a1 alwaysOnPublisher];
  v5 = [a1 reverseAlwaysOnPublisher];
  v6 = [v3 initWithPublisher:v4 reversePublisher:v5];

  return v6;
}

+ (id)reverseAlwaysOnPublisher
{
  v3 = BiomeLibrary();
  v4 = [v3 Device];
  v5 = [v4 Display];
  v6 = [v5 AlwaysOn];
  v7 = [MEMORY[0x277D7C850] reversePublisherOptions];
  v8 = [v6 publisherWithOptions:v7];
  v9 = [a1 filteredPublisherForAlwaysOnPublisher:v8];

  return v9;
}

+ (id)alwaysOnPublisher
{
  v3 = BiomeLibrary();
  v4 = [v3 Device];
  v5 = [v4 Display];
  v6 = [v5 AlwaysOn];
  v7 = [v6 publisher];
  v8 = [a1 filteredPublisherForAlwaysOnPublisher:v7];

  return v8;
}

+ (id)filteredPublisherForAlwaysOnPublisher:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getWFAlwaysOnSettingsClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]";
    _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_DEBUG, "%s Filtering publisher", &v8, 0xCu);
  }

  v5 = [v3 filterWithIsIncluded:&__block_literal_global_181];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL __73__WFAlwaysOnDisplaySettingsClient_filteredPublisherForAlwaysOnPublisher___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFAlwaysOnSettingsClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [v2 timestamp];
    v15 = 136315394;
    v16 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
    v17 = 2048;
    v18 = v4;
    _os_log_impl(&dword_23DE30000, v3, OS_LOG_TYPE_DEBUG, "%s Iterating over %f", &v15, 0x16u);
  }

  v5 = [v2 eventBody];
  v6 = [v5 userSetState];
  v7 = [v5 resolvedState];
  v8 = getWFAlwaysOnSettingsClientLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6 == v7)
  {
    if (v9)
    {
      [v2 timestamp];
      v15 = 136315394;
      v16 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
      v17 = 2048;
      v18 = v10;
      v11 = "%s Accepting %f";
LABEL_8:
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_DEBUG, v11, &v15, 0x16u);
    }
  }

  else if (v9)
  {
    [v2 timestamp];
    v15 = 136315394;
    v16 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
    v17 = 2048;
    v18 = v12;
    v11 = "%s Filtering %f out because user set state != resolved state";
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 == v7;
}

+ (BOOL)canRunIntent
{
  v2 = [MEMORY[0x277D79F18] currentDevice];
  v3 = ![v2 idiom] && (objc_msgSend(v2, "hasCapability:", *MEMORY[0x277D7A3C0]) & 1) != 0;

  return v3;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (+[WFAlwaysOnDisplaySettingsClient canRunIntent])
  {
    v4 = objc_alloc_init(WFAlwaysOnDisplaySettingsClient);
    v3[2](v3, v4, 0);
  }

  else
  {
    v4 = WFSettingsClientError();
    (v3)[2](v3, 0, v4);
  }
}

@end