@interface WKWebViewAccessibility_QSExtras
- (BOOL)_accessibilityQScanPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)_accessibilityShouldShowSpeakBubble;
- (BOOL)_accessibilityShouldShowSpeakLanguageBubble;
- (BOOL)_accessibilityShouldShowSpeakSpellOut;
- (BOOL)_accessibilityShouldUpdateQuickSpeakContent;
- (BOOL)_accessibilitySystemShouldShowSpeakBubble;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation WKWebViewAccessibility_QSExtras

- (id)_accessibilityQuickSpeakContent
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilityQuickSpeakContent = [_axContentView _accessibilityQuickSpeakContent];

  return _accessibilityQuickSpeakContent;
}

- (BOOL)_accessibilitySystemShouldShowSpeakBubble
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilitySystemShouldShowSpeakBubble = [_axContentView _accessibilitySystemShouldShowSpeakBubble];

  return _accessibilitySystemShouldShowSpeakBubble;
}

- (BOOL)_accessibilityShouldShowSpeakBubble
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilityShouldShowSpeakBubble = [_axContentView _accessibilityShouldShowSpeakBubble];

  return _accessibilityShouldShowSpeakBubble;
}

- (BOOL)_accessibilityShouldShowSpeakSpellOut
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilityShouldShowSpeakSpellOut = [_axContentView _accessibilityShouldShowSpeakSpellOut];

  return _accessibilityShouldShowSpeakSpellOut;
}

- (BOOL)_accessibilityShouldShowSpeakLanguageBubble
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilityShouldShowSpeakLanguageBubble = [_axContentView _accessibilityShouldShowSpeakLanguageBubble];

  return _accessibilityShouldShowSpeakLanguageBubble;
}

- (BOOL)_accessibilityShouldUpdateQuickSpeakContent
{
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  _accessibilityShouldUpdateQuickSpeakContent = [_axContentView _accessibilityShouldUpdateQuickSpeakContent];

  return _accessibilityShouldUpdateQuickSpeakContent;
}

- (BOOL)_accessibilityQScanPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  _axContentView = [(WKWebViewAccessibility_QSExtras *)self _axContentView];
  NSClassFromString(&cfstr_Wkcontentview.isa);
  if (objc_opt_isKindOfClass())
  {
    [_axContentView _axWaitForSpeakSelectionContentResults];
  }

  v10.receiver = self;
  v10.super_class = WKWebViewAccessibility_QSExtras;
  v8 = [(WKWebViewAccessibility_QSExtras *)&v10 _accessibilityQScanPerformAction:action withSender:senderCopy];

  return v8;
}

@end