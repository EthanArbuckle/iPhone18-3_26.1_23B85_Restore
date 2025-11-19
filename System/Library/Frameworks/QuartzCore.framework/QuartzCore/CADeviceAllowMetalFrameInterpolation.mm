@interface CADeviceAllowMetalFrameInterpolation
@end

@implementation CADeviceAllowMetalFrameInterpolation

const __CFDictionary *__CADeviceAllowMetalFrameInterpolation_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetInfoDictionary(MainBundle);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"CAAllowMetalFrameInterpolation");
    if (result)
    {
      result = CA_CFBoolValue(result);
      CADeviceAllowMetalFrameInterpolation::allowed = result;
    }
  }

  return result;
}

@end