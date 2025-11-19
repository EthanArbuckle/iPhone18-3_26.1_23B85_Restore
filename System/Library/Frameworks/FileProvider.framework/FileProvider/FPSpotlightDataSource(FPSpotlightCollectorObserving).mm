@interface FPSpotlightDataSource(FPSpotlightCollectorObserving)
@end

@implementation FPSpotlightDataSource(FPSpotlightCollectorObserving)

- (void)collector:()FPSpotlightCollectorObserving didEncounterError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Did encounter error in collector %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end