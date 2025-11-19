@interface NSBundleResourceRequestLog
@end

@implementation NSBundleResourceRequestLog

os_log_t ___NSBundleResourceRequestLog_block_invoke()
{
  result = os_log_create("com.apple.foundation.nsbundleresourcerequest", "general");
  qword_1ED439AF8 = result;
  return result;
}

@end