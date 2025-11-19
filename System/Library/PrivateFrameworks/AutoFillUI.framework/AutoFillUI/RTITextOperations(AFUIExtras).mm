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
    [a1 setTextToAssert:v8];
  }

  else
  {
    v7 = [a1 keyboardOutput];
    [v7 insertText:v8];
  }
}

@end