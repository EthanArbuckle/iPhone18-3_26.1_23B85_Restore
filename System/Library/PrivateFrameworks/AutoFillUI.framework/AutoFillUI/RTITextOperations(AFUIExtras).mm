@interface RTITextOperations(AFUIExtras)
- (void)_assertOrInsertText:()AFUIExtras documentTraits:;
@end

@implementation RTITextOperations(AFUIExtras)

- (void)_assertOrInsertText:()AFUIExtras documentTraits:
{
  v8 = a3;
  v6 = a4;
  if ([v6 isSingleLineDocument] || !objc_msgSend(v6, "_isExplicitAutoFillInvocation"))
  {
    [self setTextToAssert:v8];
  }

  else
  {
    keyboardOutput = [self keyboardOutput];
    [keyboardOutput insertText:v8];
  }
}

@end