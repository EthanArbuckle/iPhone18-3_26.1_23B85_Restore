@interface AFUIShouldDisableDetectingNonInteractiveFields
@end

@implementation AFUIShouldDisableDetectingNonInteractiveFields

void ___AFUIShouldDisableDetectingNonInteractiveFields_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.zhiliaoapp.musically"];

  if (v2)
  {
    _AFUIShouldDisableDetectingNonInteractiveFields_disableDetectingNonInteractiveFields = 1;
  }
}

@end