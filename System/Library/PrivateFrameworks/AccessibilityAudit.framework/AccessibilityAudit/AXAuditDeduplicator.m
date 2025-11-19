@interface AXAuditDeduplicator
+ (void)downloadUIUnderstandingAssetsIfNeeded;
- (AXAuditDeduplicator)init;
- (BOOL)modelsAvailableForPlatform:(id)a3;
- (CGImage)getCGImageForIssue:(id)a3;
- (int)findNewIssues:(id)a3 forPlatform:(id)a4;
@end

@implementation AXAuditDeduplicator

- (AXAuditDeduplicator)init
{
  v7.receiver = self;
  v7.super_class = AXAuditDeduplicator;
  v2 = [(AXAuditDeduplicator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXAuditDeduplicatorModels);
    [(AXAuditDeduplicator *)v2 setModels:v3];

    v4 = objc_alloc_init(AXAuditDeduplicatorHeuristics);
    [(AXAuditDeduplicator *)v2 setHeuristics:v4];

    v5 = os_log_create("AXAuditDeduplicator", "Muxer");
    [(AXAuditDeduplicator *)v2 setLog:v5];
  }

  return v2;
}

- (BOOL)modelsAvailableForPlatform:(id)a3
{
  v3 = a3;
  v4 = ([v3 localizedCaseInsensitiveContainsString:@"iPhone"] & 1) != 0 || objc_msgSend(v3, "localizedCaseInsensitiveContainsString:", @"iPad");

  return v4;
}

- (CGImage)getCGImageForIssue:(id)a3
{
  v3 = a3;
  v4 = +[AXAuditScreenshotManager sharedManager];
  v5 = [v3 timeStamp];

  v6 = [v4 screenshotImageForTimestamp:v5];
  v7 = [v6 CGImage];

  return v7;
}

- (int)findNewIssues:(id)a3 forPlatform:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 firstObject];
  v9 = [(AXAuditDeduplicator *)self getCGImageForIssue:v8];

  v10 = [(AXAuditDeduplicator *)self modelsAvailableForPlatform:v6];
  v11 = [(AXAuditDeduplicator *)self log];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *v17 = 0;
      _os_log_impl(&dword_23D6FE000, v11, OS_LOG_TYPE_DEFAULT, "Deduplicating with models", v17, 2u);
    }

    v13 = [(AXAuditDeduplicator *)self models];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_23D6FE000, v11, OS_LOG_TYPE_DEFAULT, "Deduplicating with heuristics", buf, 2u);
    }

    v13 = [(AXAuditDeduplicator *)self heuristics];
  }

  v14 = v13;
  v15 = [v13 deduplicateIssues:v7 onImage:v9 forPlatform:v6];

  return v15;
}

+ (void)downloadUIUnderstandingAssetsIfNeeded
{
  v2 = dispatch_queue_create("XRCAuditDeduplicator", 0);
  dispatch_async(v2, &__block_literal_global_19);
}

void __60__AXAuditDeduplicator_downloadUIUnderstandingAssetsIfNeeded__block_invoke()
{
  if (([MEMORY[0x277D77868] areModelsAvailable] & 1) == 0 && (objc_msgSend(MEMORY[0x277D77868], "downloadModelSet:timeout:", 0, 300.0) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__AXAuditDeduplicator_downloadUIUnderstandingAssetsIfNeeded__block_invoke_cold_1();
  }
}

@end