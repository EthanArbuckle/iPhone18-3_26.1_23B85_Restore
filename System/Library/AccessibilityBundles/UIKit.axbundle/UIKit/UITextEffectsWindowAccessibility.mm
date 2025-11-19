@interface UITextEffectsWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axHasModalView;
- (CGRect)_axConvertRect:(CGRect)a3 toWindow:(id)a4;
- (UITextEffectsWindowAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityAdditionalRemoteSubstituteChildren;
@end

@implementation UITextEffectsWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UITextEffectsWindow";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"UITextEffectsWindow" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:@"UIKeyboardSceneDelegate" hasInstanceMethod:@"keyboardWindow" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (UITextEffectsWindowAccessibility)initWithFrame:(CGRect)a3
{
  v11 = a3;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = UITextEffectsWindowAccessibility;
  v10 = [(UITextEffectsWindowAccessibility *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v7 = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsSafeCategory();
    v5 = MEMORY[0x29EDC9748](v6);
    objc_storeStrong(&v6, 0);
    [(UIWindowAccessibility *)v5 _axListenForRemoteElement];
    MEMORY[0x29EDC9740](v5);
  }

  v4 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (BOOL)_axHasModalView
{
  v4 = [(UITextEffectsWindowAccessibility *)self subviews];
  v3 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_46];
  v5 = [v3 count] != 0;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  return v5;
}

uint64_t __51__UITextEffectsWindowAccessibility__axHasModalView__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] accessibilityViewIsModal];
  objc_storeStrong(location, 0);
  return v3;
}

- (CGRect)_axConvertRect:(CGRect)a3 toWindow:(id)a4
{
  v14 = a3;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (([(UITextEffectsWindowAccessibility *)v13 safeBoolForKey:@"_isHostedInAnotherProcess"]& 1) != 0)
  {
    [(UITextEffectsWindowAccessibility *)v13 convertRect:v13 toWindow:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
  }

  else
  {
    [(UITextEffectsWindowAccessibility *)v13 convertRect:0 toWindow:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
  }

  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  objc_storeStrong(location, 0);
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (id)_accessibilityAdditionalRemoteSubstituteChildren
{
  v7[2] = self;
  v7[1] = a2;
  v5 = [(UITextEffectsWindowAccessibility *)self windowScene];
  v4 = [v5 keyboardSceneDelegate];
  v7[0] = [v4 safeValueForKey:@"keyboardWindow"];
  MEMORY[0x29EDC9740](v4);
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2, v7[0]}];
  objc_storeStrong(v7, 0);

  return v6;
}

@end