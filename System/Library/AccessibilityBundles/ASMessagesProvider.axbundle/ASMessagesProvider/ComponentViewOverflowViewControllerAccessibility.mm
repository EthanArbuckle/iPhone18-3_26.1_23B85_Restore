@interface ComponentViewOverflowViewControllerAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation ComponentViewOverflowViewControllerAccessibility

- (BOOL)accessibilityPerformEscape
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v6[5];
  v6[5] = v2;

  AXPerformSafeBlock();
  _Block_object_dispose(&v5, 8);

  return 1;
}

@end