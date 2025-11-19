@interface CFLookupCFNetworkFunction
@end

@implementation CFLookupCFNetworkFunction

void *____CFLookupCFNetworkFunction_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CFNetwork.framework/CFNetwork", 5);
  __CFLookupCFNetworkFunction_image = result;
  return result;
}

@end