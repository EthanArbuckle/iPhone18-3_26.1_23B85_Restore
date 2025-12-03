@interface UITextEffectsWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axHasModalView;
- (CGRect)_axConvertRect:(CGRect)rect toWindow:(id)window;
- (UITextEffectsWindowAccessibility)initWithFrame:(CGRect)frame;
- (id)_accessibilityAdditionalRemoteSubstituteChildren;
@end

@implementation UITextEffectsWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITextEffectsWindow";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"UITextEffectsWindow" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:@"UIKeyboardSceneDelegate" hasInstanceMethod:@"keyboardWindow" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (UITextEffectsWindowAccessibility)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v9 = a2;
  v10 = 0;
  v8.receiver = self;
  v8.super_class = UITextEffectsWindowAccessibility;
  v10 = [(UITextEffectsWindowAccessibility *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  subviews = [(UITextEffectsWindowAccessibility *)self subviews];
  v3 = [subviews ax_filteredArrayUsingBlock:&__block_literal_global_46];
  v5 = [v3 count] != 0;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](subviews);
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

- (CGRect)_axConvertRect:(CGRect)rect toWindow:(id)window
{
  rectCopy = rect;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, window);
  if (([(UITextEffectsWindowAccessibility *)selfCopy safeBoolForKey:@"_isHostedInAnotherProcess"]& 1) != 0)
  {
    [(UITextEffectsWindowAccessibility *)selfCopy convertRect:selfCopy toWindow:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
  }

  else
  {
    [(UITextEffectsWindowAccessibility *)selfCopy convertRect:0 toWindow:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
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
  windowScene = [(UITextEffectsWindowAccessibility *)self windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  v7[0] = [keyboardSceneDelegate safeValueForKey:@"keyboardWindow"];
  MEMORY[0x29EDC9740](keyboardSceneDelegate);
  *&v2 = MEMORY[0x29EDC9740](windowScene).n128_u64[0];
  v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v2, v7[0]}];
  objc_storeStrong(v7, 0);

  return v6;
}

@end