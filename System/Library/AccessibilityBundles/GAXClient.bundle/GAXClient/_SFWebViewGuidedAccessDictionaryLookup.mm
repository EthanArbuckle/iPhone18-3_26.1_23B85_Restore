@interface _SFWebViewGuidedAccessDictionaryLookup
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation _SFWebViewGuidedAccessDictionaryLookup

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (UIAccessibilityIsGuidedAccessEnabled() && ("_define:" != action ? (v7 = "_lookup:" == action) : (v7 = 1), v7 && ![UIApp _guidedAccessDictionaryLookupAllowed]))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _SFWebViewGuidedAccessDictionaryLookup;
    v8 = [(_SFWebViewGuidedAccessDictionaryLookup *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return v8;
}

@end