@interface CADeviceDisableMinimumFrameDurationOnPhone
@end

@implementation CADeviceDisableMinimumFrameDurationOnPhone

const __CFDictionary *__CADeviceDisableMinimumFrameDurationOnPhone_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetInfoDictionary(MainBundle);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"CADisableMinimumFrameDurationOnPhone");
    if (result)
    {
      result = CA_CFBoolValue(result);
      CADeviceDisableMinimumFrameDurationOnPhone::disabled = result;
    }
  }

  return result;
}

@end