@interface CFDescribeCFMachPortPerformCallout
@end

@implementation CFDescribeCFMachPortPerformCallout

void *____CFDescribeCFMachPortPerformCallout_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 2);
  if (result)
  {
    v1 = result;
    __CFDescribeCFMachPortPerformCallout_foundationFireMachPort = dlsym(result, "__NSFireMachPort");
    __CFDescribeCFMachPortPerformCallout_foundationDescribeNSMachPortCallout = dlsym(v1, "__NSDescribeNSMachPortCallout");

    return dlclose(v1);
  }

  return result;
}

@end