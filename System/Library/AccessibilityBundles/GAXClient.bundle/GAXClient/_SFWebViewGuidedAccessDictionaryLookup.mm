@interface _SFWebViewGuidedAccessDictionaryLookup
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
@end

@implementation _SFWebViewGuidedAccessDictionaryLookup

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (UIAccessibilityIsGuidedAccessEnabled() && ("_define:" != a3 ? (v7 = "_lookup:" == a3) : (v7 = 1), v7 && ![UIApp _guidedAccessDictionaryLookupAllowed]))
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _SFWebViewGuidedAccessDictionaryLookup;
    v8 = [(_SFWebViewGuidedAccessDictionaryLookup *)&v10 canPerformAction:a3 withSender:v6];
  }

  return v8;
}

@end