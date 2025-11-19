@interface AFUtilitiesWrapper
+ (BOOL)deviceSupportsOnDeviceDictation;
@end

@implementation AFUtilitiesWrapper

+ (BOOL)deviceSupportsOnDeviceDictation
{
  if (AFDeviceHighestLanguageModelCapabilityIdentifier_onceToken != -1)
  {
    dispatch_once(&AFDeviceHighestLanguageModelCapabilityIdentifier_onceToken, &__block_literal_global_728);
  }

  return AFDeviceHighestLanguageModelCapabilityIdentifier_deviceHighestCapabilityIdentifier;
}

@end