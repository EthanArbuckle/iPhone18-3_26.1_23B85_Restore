@interface PDFLog
@end

@implementation PDFLog

uint64_t ___PDFLog_block_invoke()
{
  v0 = getprogname();
  v1 = os_log_create("com.apple.PDFKit", v0);
  v2 = sLog;
  sLog = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end