@interface SCNMTLResourceManager(SH)
@end

@implementation SCNMTLResourceManager(SH)

- (void)shFromCPU:()SH commandBuffer:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: format %lu not supported for SH generation", &v2, 0xCu);
}

@end