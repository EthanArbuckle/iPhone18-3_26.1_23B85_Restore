@interface DeviceBuildNumber
@end

@implementation DeviceBuildNumber

uint64_t ___DeviceBuildNumber_block_invoke()
{
  _DeviceBuildNumber_buildNumber = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

@end