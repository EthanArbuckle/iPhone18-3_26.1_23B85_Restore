@interface CIContext(CalculateHDRStats)
@end

@implementation CIContext(CalculateHDRStats)

- (void)calculateHDRStatsForImage:()CalculateHDRStats .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIContext(CalculateHDRStats) calculateHDRStatsForImage:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s requires an image with a finite non-empty extent.", &v1, 0xCu);
}

@end