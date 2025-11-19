@interface UILongPressGestureRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsSupportedGestureRecognizer;
@end

@implementation UILongPressGestureRecognizerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UICollectionViewCell" hasInstanceMethod:@"_gestureRecognizerShouldBegin:" withFullSignature:{"B", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)_accessibilityIsSupportedGestureRecognizer
{
  v21 = self;
  v20[1] = a2;
  v20[0] = MEMORY[0x29EDC9748](self);
  v4 = [v20[0] delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (isKindOfClass)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x20000000;
    v18 = 32;
    v19 = 0;
    v9 = MEMORY[0x29EDCA5F8];
    v10 = -1073741824;
    v11 = 0;
    v12 = __87__UILongPressGestureRecognizerAccessibility__accessibilityIsSupportedGestureRecognizer__block_invoke;
    v13 = &unk_29F30CC70;
    v14[1] = &v15;
    v14[0] = MEMORY[0x29EDC9748](v20[0]);
    AXPerformSafeBlock();
    v8 = v16[3] & 1;
    objc_storeStrong(v14, 0);
    _Block_object_dispose(&v15, 8);
    v22 = v8 & 1;
  }

  else
  {
    v6.receiver = v21;
    v6.super_class = UILongPressGestureRecognizerAccessibility;
    v22 = [(UILongPressGestureRecognizerAccessibility *)&v6 _accessibilityIsSupportedGestureRecognizer];
  }

  v7 = 1;
  objc_storeStrong(v20, 0);
  return v22 & 1;
}

double __87__UILongPressGestureRecognizerAccessibility__accessibilityIsSupportedGestureRecognizer__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  *(*(*(a1 + 40) + 8) + 24) = [v3 _gestureRecognizerShouldBegin:*(a1 + 32)];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end