@interface ATXModeSetupExperienceMetricsLogger
- (ATXModeSetupExperienceMetricsLogger)init;
- (id)generateBookmark;
- (id)generateBookmarkURLPath;
- (void)logMetrics;
- (void)writeBookmarkToFile:(id)file;
@end

@implementation ATXModeSetupExperienceMetricsLogger

- (ATXModeSetupExperienceMetricsLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXModeSetupExperienceMetricsLogger;
  v2 = [(ATXModeSetupExperienceMetricsLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stream = v2->_stream;
    v2->_stream = v3;
  }

  return v2;
}

- (id)generateBookmarkURLPath
{
  bookmarkURLPath = self->_bookmarkURLPath;
  if (bookmarkURLPath)
  {
    v3 = bookmarkURLPath;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    metricsRootDirectory = [MEMORY[0x277CEBCB0] metricsRootDirectory];
    v7 = objc_alloc(MEMORY[0x277CBEBC0]);
    v8 = [metricsRootDirectory stringByAppendingPathComponent:v5];
    v3 = [v7 initFileURLWithPath:v8];
  }

  return v3;
}

- (id)generateBookmark
{
  v3 = MEMORY[0x277CEBBF8];
  generateBookmarkURLPath = [(ATXModeSetupExperienceMetricsLogger *)self generateBookmarkURLPath];
  v5 = [v3 bookmarkFromURLPath:generateBookmarkURLPath maxFileSize:3000000 versionNumber:&unk_283A56B28];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    generateBookmarkURLPath2 = [(ATXModeSetupExperienceMetricsLogger *)self generateBookmarkURLPath];
    v5 = [v6 initWithURLPath:generateBookmarkURLPath2 versionNumber:&unk_283A56B28 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)writeBookmarkToFile:(id)file
{
  v6 = 0;
  [file saveBookmarkWithError:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeSetupExperienceMetricsLogger *)self writeBookmarkToFile:v4, v5];
    }
  }
}

- (void)logMetrics
{
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  generateBookmark = [(ATXModeSetupExperienceMetricsLogger *)self generateBookmark];
  stream = [(ATXModeSetupExperienceMetricsLogger *)self stream];
  v6 = [stream publisherFromStartTime:0.0];
  v7 = [v6 filterWithIsIncluded:&__block_literal_global_148];
  bookmark = [generateBookmark bookmark];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2;
  v14[3] = &unk_27859EB48;
  v15 = generateBookmark;
  selfCopy = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_17;
  v12[3] = &unk_278596F60;
  v13 = mEMORY[0x277CEB440];
  v9 = mEMORY[0x277CEB440];
  v10 = generateBookmark;
  v11 = [v7 sinkWithBookmark:bookmark completion:v14 receiveInput:v12];
}

BOOL __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 modeConfigurationUI] == 2;

  return v3;
}

void __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  if (v7)
  {
  }

  else if (![v5 state])
  {
    goto LABEL_7;
  }

  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2_cold_1(v5, v8);
  }

LABEL_7:
  [*(a1 + 32) setBookmark:v6];
  [*(a1 + 40) writeBookmarkToFile:*(a1 + 32)];
}

void __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = v3;
  v5 = [v3 eventBody];
  v6 = [v5 dndModeUUID];
  v7 = [v4 dndModeForDNDModeWithUUID:v6];

  if (v7)
  {
    v8 = objc_opt_new();
    [v7 semanticType];
    v9 = DNDModeSemanticTypeToString();
    [v8 setModeSemanticType:v9];

    v10 = [v16 eventBody];
    v11 = [v10 suggestedEntityIdentifiers];

    v12 = [v16 eventBody];
    v13 = [v12 currentEntityIdentifiers];

    v14 = [v11 differenceFromArray:v13];
    v15 = [v14 hasChanges];

    [v8 setOnboardingOutcome:v15 ^ 1u];
    [v8 sendToCoreAnalytics];
  }
}

- (void)writeBookmarkToFile:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a2;
  v5 = v8;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@: Unable to save bookmark due to : %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = [v3 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end