@interface InitOnce
@end

@implementation InitOnce

void __assetPALoggingHelper_InitOnce_block_invoke()
{
  v0 = PrivacyAccountingLibraryCore();
  _MergedGlobals_72 = v0 != 0;
  if (v0)
  {
    v1 = CFPreferencesCopyAppValue(@"usestubpaapplication", @"com.apple.coremedia");
    s_shouldUseStubPAApplication = FigCFEqual();
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

@end