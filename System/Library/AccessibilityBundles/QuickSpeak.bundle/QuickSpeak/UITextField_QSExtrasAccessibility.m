@interface UITextField_QSExtrasAccessibility
- (BOOL)_accessibilitySystemShouldShowSpeakBubbleCommon;
- (id)_accessibilityQuickSpeakContent;
@end

@implementation UITextField_QSExtrasAccessibility

- (BOOL)_accessibilitySystemShouldShowSpeakBubbleCommon
{
  if (([(UITextField_QSExtrasAccessibility *)self isSecureTextEntry]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UITextField_QSExtrasAccessibility;
  return [(UITextField_QSExtrasAccessibility *)&v4 _accessibilitySystemShouldShowSpeakBubbleCommon];
}

- (id)_accessibilityQuickSpeakContent
{
  if (([(UITextField_QSExtrasAccessibility *)self isSecureTextEntry]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITextField_QSExtrasAccessibility;
    v3 = [(UITextField_QSExtrasAccessibility *)&v5 _accessibilityQuickSpeakContent];
  }

  return v3;
}

@end