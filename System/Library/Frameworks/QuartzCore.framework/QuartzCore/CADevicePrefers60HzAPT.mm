@interface CADevicePrefers60HzAPT
@end

@implementation CADevicePrefers60HzAPT

const __CFDictionary *__CADevicePrefers60HzAPT_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetInfoDictionary(MainBundle);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"CAEnableVariableFrameDuration");
    if (result)
    {
      result = CA_CFBoolValue(result);
      CADevicePrefers60HzAPT::enabled = result;
    }
  }

  return result;
}

@end