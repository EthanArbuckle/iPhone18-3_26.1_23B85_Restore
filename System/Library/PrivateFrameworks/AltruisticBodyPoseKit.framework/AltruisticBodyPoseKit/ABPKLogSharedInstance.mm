@interface ABPKLogSharedInstance
@end

@implementation ABPKLogSharedInstance

void ____ABPKLogSharedInstance_block_invoke()
{
  v0 = os_log_create("com.apple.abpkalgorithm", "ABPKAlgorithm");
  v1 = sharedInstance;
  sharedInstance = v0;
}

@end