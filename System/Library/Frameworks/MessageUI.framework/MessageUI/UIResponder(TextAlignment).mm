@interface UIResponder(TextAlignment)
- (uint64_t)mf_textAlignmentForActiveInputLanguage;
@end

@implementation UIResponder(TextAlignment)

- (uint64_t)mf_textAlignmentForActiveInputLanguage
{
  textInputMode = [self textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  v3 = primaryLanguage;
  if (!primaryLanguage)
  {
    mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
    primaryLanguage2 = [currentInputMode primaryLanguage];

    v3 = primaryLanguage2;
  }

  v7 = 2 * ([MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:v3] != 0);

  return v7;
}

@end