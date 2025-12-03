@interface AXAuditDeduplicatorModels
- (AXAuditDeduplicatorModels)init;
- (BOOL)determineUIPlatform:(id)platform outPlatform:(int64_t *)outPlatform;
- (id)createUIUScreenShotForImage:(CGImage *)image withTimestamp:(id)timestamp;
- (id)packIssueRects:(id)rects;
- (int)deduplicateIssues:(id)issues onImage:(CGImage *)image forPlatform:(id)platform;
- (int)deduplicateIssues:(id)issues onImage:(CGImage *)image forUIUPlatform:(int64_t)platform;
@end

@implementation AXAuditDeduplicatorModels

- (AXAuditDeduplicatorModels)init
{
  v9.receiver = self;
  v9.super_class = AXAuditDeduplicatorModels;
  v2 = [(AXAuditDeduplicatorModels *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXAuditDeduplicator", 0);
    [(AXAuditDeduplicatorModels *)v2 setDedupeQueue:v3];

    v4 = os_log_create("AXAuditDeduplicator", "Models");
    [(AXAuditDeduplicatorModels *)v2 setLog:v4];

    [(AXAuditDeduplicatorModels *)v2 setActivePlatform:0];
    dedupeQueue = [(AXAuditDeduplicatorModels *)v2 dedupeQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__AXAuditDeduplicatorModels_init__block_invoke;
    block[3] = &unk_278BE2CD0;
    v8 = v2;
    dispatch_async(dedupeQueue, block);
  }

  return v2;
}

void __33__AXAuditDeduplicatorModels_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D77868]) initWithPortraitModels];
  [*(a1 + 32) setDeduplicator:v2];

  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23D6FE000, v3, OS_LOG_TYPE_DEFAULT, "Created the deduplicator", v4, 2u);
  }
}

- (BOOL)determineUIPlatform:(id)platform outPlatform:(int64_t *)outPlatform
{
  platformCopy = platform;
  if ([platformCopy localizedCaseInsensitiveContainsString:@"iPad"])
  {
    v6 = 1;
  }

  else
  {
    if (![platformCopy localizedCaseInsensitiveContainsString:@"iPhone"])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = 0;
  }

  *outPlatform = v6;
  v7 = 1;
LABEL_7:

  return v7;
}

- (int)deduplicateIssues:(id)issues onImage:(CGImage *)image forPlatform:(id)platform
{
  issuesCopy = issues;
  v11 = 0;
  if ([(AXAuditDeduplicatorModels *)self determineUIPlatform:platform outPlatform:&v11])
  {
    v9 = [(AXAuditDeduplicatorModels *)self deduplicateIssues:issuesCopy onImage:image forUIUPlatform:v11];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (int)deduplicateIssues:(id)issues onImage:(CGImage *)image forUIUPlatform:(int64_t)platform
{
  issuesCopy = issues;
  if (!objc_opt_class())
  {
    goto LABEL_16;
  }

  if (([MEMORY[0x277D77868] areModelsAvailable] & 1) == 0)
  {
    v35 = [(AXAuditDeduplicatorModels *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [AXAuditDeduplicatorModels deduplicateIssues:v35 onImage:? forUIUPlatform:?];
    }

    goto LABEL_15;
  }

  deduplicator = [(AXAuditDeduplicatorModels *)self deduplicator];
  if (!deduplicator || (v10 = deduplicator, v11 = [(AXAuditDeduplicatorModels *)self activePlatform], v10, v11 != platform))
  {
    dedupeQueue = [(AXAuditDeduplicatorModels *)self dedupeQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__AXAuditDeduplicatorModels_deduplicateIssues_onImage_forUIUPlatform___block_invoke;
    block[3] = &unk_278BE2CD0;
    block[4] = self;
    dispatch_async(dedupeQueue, block);

    [(AXAuditDeduplicatorModels *)self setActivePlatform:platform];
    v35 = [(AXAuditDeduplicatorModels *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [AXAuditDeduplicatorModels deduplicateIssues:v35 onImage:? forUIUPlatform:?];
    }

LABEL_15:

    goto LABEL_16;
  }

  if (![issuesCopy count])
  {
LABEL_16:
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
LABEL_17:
    v26 = -1;
    goto LABEL_18;
  }

  firstObject = [issuesCopy firstObject];
  timeStamp = [firstObject timeStamp];
  v14 = [(AXAuditDeduplicatorModels *)self createUIUScreenShotForImage:image withTimestamp:timeStamp];

  v15 = [(AXAuditDeduplicatorModels *)self packIssueRects:issuesCopy];
  deduplicator2 = [(AXAuditDeduplicatorModels *)self deduplicator];
  v17 = [deduplicator2 identifyElements:v14 elements:v15];

  deduplicator3 = [(AXAuditDeduplicatorModels *)self deduplicator];
  v19 = [deduplicator3 addElementsForScreen:v14 candidates:v17 screenGroupID:0];

  results = [v19 results];
  v21 = [results count];
  v22 = [issuesCopy count];

  if (v21 != v22)
  {
    v38 = [(AXAuditDeduplicatorModels *)self log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [AXAuditDeduplicatorModels deduplicateIssues:v19 onImage:issuesCopy forUIUPlatform:v38];
    }

    goto LABEL_17;
  }

  results2 = [v19 results];
  v24 = [results2 count];

  if (v24)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      results3 = [v19 results];
      v28 = [results3 objectAtIndexedSubscript:v25];

      isDuplicate = [v28 isDuplicate];
      v30 = [issuesCopy objectAtIndexedSubscript:v25];
      [v30 setIsDuplicate:isDuplicate];

      groupID = [v19 groupID];
      v32 = [issuesCopy objectAtIndexedSubscript:v25];
      [v32 setScreenGroupId:groupID];

      v26 += [v28 isDuplicate];
      ++v25;
      results4 = [v19 results];
      v34 = [results4 count];
    }

    while (v34 > v25);
  }

  else
  {
    v26 = 0;
  }

LABEL_18:

  return v26;
}

void __70__AXAuditDeduplicatorModels_deduplicateIssues_onImage_forUIUPlatform___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D77868]) initWithPortraitModels];
  [*(a1 + 32) setDeduplicator:v2];
}

- (id)createUIUScreenShotForImage:(CGImage *)image withTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  deduplicator = [(AXAuditDeduplicatorModels *)self deduplicator];
  v8 = [deduplicator identifyImage:timestampCopy image:image];

  return v8;
}

- (id)packIssueRects:(id)rects
{
  v27 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  array = [MEMORY[0x277CBEB18] array];
  v5 = +[AXAuditScreenshotManager sharedManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = rectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v12 = [v5 screenshotForIssue:v11 elementRect:&v20];
        [v12 scale];
        v14 = v13;
        v15 = v13 * *&v20;
        [v12 size];
        v17 = [MEMORY[0x277CCAE60] valueWithRect:{v15, v14 * (v16 - *(&v20 + 1) - *(&v21 + 1)), v14 * *&v21, v14 * *(&v21 + 1)}];
        [array addObject:v17];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)deduplicateIssues:(void *)a1 onImage:(void *)a2 forUIUPlatform:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 results];
  v7 = 134218240;
  v8 = [v5 count];
  v9 = 2048;
  v10 = [a2 count];
  _os_log_error_impl(&dword_23D6FE000, a3, OS_LOG_TYPE_ERROR, "Deduplication result mismatched length, added %lu but expected %lu. Do nothing to avoid wrong duping", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end