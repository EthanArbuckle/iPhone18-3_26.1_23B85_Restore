@interface CRLAppGroupIdentifier
@end

@implementation CRLAppGroupIdentifier

void __CRLAppGroupIdentifier_block_invoke(id a1)
{
  v1 = [NSString stringWithUTF8String:"group.com.apple.freeform"];
  v2 = CRLAppGroupIdentifier_identifier;
  CRLAppGroupIdentifier_identifier = v1;

  if (([CRLAppGroupIdentifier_identifier hasPrefix:@"group.com.apple."] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __CRLAppGroupIdentifier_block_invoke_cold_1();
    }

    abort();
  }
}

@end