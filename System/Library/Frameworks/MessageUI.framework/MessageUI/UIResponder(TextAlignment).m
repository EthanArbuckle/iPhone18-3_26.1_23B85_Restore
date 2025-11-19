@interface UIResponder(TextAlignment)
- (uint64_t)mf_textAlignmentForActiveInputLanguage;
@end

@implementation UIResponder(TextAlignment)

- (uint64_t)mf_textAlignmentForActiveInputLanguage
{
  v1 = [a1 textInputMode];
  v2 = [v1 primaryLanguage];

  v3 = v2;
  if (!v2)
  {
    v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v5 = [v4 currentInputMode];
    v6 = [v5 primaryLanguage];

    v3 = v6;
  }

  v7 = 2 * ([MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:v3] != 0);

  return v7;
}

@end