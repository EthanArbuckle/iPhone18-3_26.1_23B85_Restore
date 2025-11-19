@interface CADeviceIsAppleBundle
@end

@implementation CADeviceIsAppleBundle

const __CFString *__CADeviceIsAppleBundle_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFStringHasPrefix(result, @"com.apple.");
    CADeviceIsAppleBundle::apple_bundle = result != 0;
  }

  return result;
}

@end