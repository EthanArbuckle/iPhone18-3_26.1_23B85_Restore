@interface WKContentViewGuidedAccessDictionaryLookup
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
@end

@implementation WKContentViewGuidedAccessDictionaryLookup

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
    v10.super_class = WKContentViewGuidedAccessDictionaryLookup;
    v8 = [(WKContentViewGuidedAccessDictionaryLookup *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return v8;
}

@end