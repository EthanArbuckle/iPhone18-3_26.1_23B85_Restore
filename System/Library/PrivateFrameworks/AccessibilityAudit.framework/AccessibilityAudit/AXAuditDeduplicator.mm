@interface AXAuditDeduplicator
+ (void)downloadUIUnderstandingAssetsIfNeeded;
- (AXAuditDeduplicator)init;
- (BOOL)modelsAvailableForPlatform:(id)platform;
- (CGImage)getCGImageForIssue:(id)issue;
- (int)findNewIssues:(id)issues forPlatform:(id)platform;
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

- (BOOL)modelsAvailableForPlatform:(id)platform
{
  platformCopy = platform;
  v4 = ([platformCopy localizedCaseInsensitiveContainsString:@"iPhone"] & 1) != 0 || objc_msgSend(platformCopy, "localizedCaseInsensitiveContainsString:", @"iPad");

  return v4;
}

- (CGImage)getCGImageForIssue:(id)issue
{
  issueCopy = issue;
  v4 = +[AXAuditScreenshotManager sharedManager];
  timeStamp = [issueCopy timeStamp];

  v6 = [v4 screenshotImageForTimestamp:timeStamp];
  cGImage = [v6 CGImage];

  return cGImage;
}

- (int)findNewIssues:(id)issues forPlatform:(id)platform
{
  platformCopy = platform;
  issuesCopy = issues;
  firstObject = [issuesCopy firstObject];
  v9 = [(AXAuditDeduplicator *)self getCGImageForIssue:firstObject];

  v10 = [(AXAuditDeduplicator *)self modelsAvailableForPlatform:platformCopy];
  v11 = [(AXAuditDeduplicator *)self log];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *v17 = 0;
      _os_log_impl(&dword_23D6FE000, v11, OS_LOG_TYPE_DEFAULT, "Deduplicating with models", v17, 2u);
    }

    models = [(AXAuditDeduplicator *)self models];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_23D6FE000, v11, OS_LOG_TYPE_DEFAULT, "Deduplicating with heuristics", buf, 2u);
    }

    models = [(AXAuditDeduplicator *)self heuristics];
  }

  v14 = models;
  v15 = [models deduplicateIssues:issuesCopy onImage:v9 forPlatform:platformCopy];

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