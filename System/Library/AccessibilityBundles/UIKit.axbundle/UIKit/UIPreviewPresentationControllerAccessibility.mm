@interface UIPreviewPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation UIPreviewPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIPreviewPresentationController" hasInstanceMethod:@"_handleDismissGestureRecognizer:" withFullSignature:{"v", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityPerformEscape
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __74__UIPreviewPresentationControllerAccessibility_accessibilityPerformEscape__block_invoke;
  v7 = &unk_29F30C7C8;
  v8[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v8, 0);
  return 1;
}

double __68___UIPreviewPresentationControllerAccessibility__axShowMoreActions___block_invoke(uint64_t a1)
{
  notification = *MEMORY[0x29EDC7ED8];
  v3 = [*(a1 + 32) safeValueForKey:@"previewActionSheet"];
  UIAccessibilityPostNotification(notification, v3);
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

uint64_t __72___UIPreviewPresentationControllerAccessibility__axPerformLeadingAction__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) safeValueForKey:@"presentedViewController"];
  (*(v3 + 16))(v3, v2);
  return [*(a1 + 40) _dismissPresentation];
}

uint64_t __73___UIPreviewPresentationControllerAccessibility__axPerformTrailingAction__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) safeValueForKey:@"presentedViewController"];
  (*(v3 + 16))(v3, v2);
  return [*(a1 + 40) _dismissPresentation];
}

double __93___UIPreviewPresentationControllerAccessibility__presentSubActionSheetForPreviewActionGroup___block_invoke(uint64_t a1)
{
  notification = *MEMORY[0x29EDC7ED8];
  v3 = [*(a1 + 32) safeValueForKey:@"previewActionSheet"];
  UIAccessibilityPostNotification(notification, v3);
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end