@interface WKScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
@end

@implementation WKScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKScrollView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"_accessibilityStoredVisibleContentInset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIScrollViewAccessibility" hasInstanceMethod:@"_accessibilityStoredShouldUseFallbackForVisibleContentInset" withFullSignature:{"@", 0}];
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  _accessibilityStoredVisibleContentInset = [(WKScrollViewAccessibility *)self _accessibilityStoredVisibleContentInset];
  v4 = _accessibilityStoredVisibleContentInset;
  if (_accessibilityStoredVisibleContentInset)
  {
    [_accessibilityStoredVisibleContentInset UIEdgeInsetsValue];
  }

  else
  {
    _accessibilityStoredShouldUseFallbackForVisibleContentInset = [(WKScrollViewAccessibility *)self _accessibilityStoredShouldUseFallbackForVisibleContentInset];

    if (!_accessibilityStoredShouldUseFallbackForVisibleContentInset)
    {
      objc_opt_class();
      v18 = __UIAccessibilityCastAsClass();
      [v18 adjustedContentInset];
      v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;

      goto LABEL_6;
    }

    v23.receiver = self;
    v23.super_class = WKScrollViewAccessibility;
    [(WKScrollViewAccessibility *)&v23 _accessibilityVisibleContentInset];
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
LABEL_6:

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

@end