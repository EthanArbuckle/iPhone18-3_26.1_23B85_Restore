@interface CRLAppBundleIdentifier
@end

@implementation CRLAppBundleIdentifier

void __CRLAppBundleIdentifier_block_invoke(id a1)
{
  v1 = [NSString stringWithUTF8String:"com.apple.freeform"];
  v2 = CRLAppBundleIdentifier_identifier;
  CRLAppBundleIdentifier_identifier = v1;

  if (([CRLAppBundleIdentifier_identifier hasPrefix:@"com.apple."] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __CRLAppBundleIdentifier_block_invoke_cold_1();
    }

    abort();
  }
}

@end