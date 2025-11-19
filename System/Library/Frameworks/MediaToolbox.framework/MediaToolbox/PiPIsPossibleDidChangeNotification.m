@interface PiPIsPossibleDidChangeNotification
@end

@implementation PiPIsPossibleDidChangeNotification

void __playerceleste_PiPIsPossibleDidChangeNotification_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    FigCFDictionaryGetBooleanIfPresent();
    keys[0] = @"PiPPossible";
    values = *MEMORY[0x1E695E4C0];
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

@end