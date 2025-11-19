@interface UIKeyboardSceneDelegateAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axPostScreenChange;
- (void)orderInWithAnimationStyle:(id)a3;
- (void)orderOutWithAnimationStyle:(id)a3;
- (void)setInputViews:(id)a3 animationStyle:(id)a4;
@end

@implementation UIKeyboardSceneDelegateAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = "@";
  v3 = @"UIKeyboardSceneDelegate";
  v4 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"orderOutWithAnimationStyle:" withFullSignature:{v4, v5, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"orderInWithAnimationStyle:" withFullSignature:{v4, v5, 0}];
  [location[0] validateClass:@"UIInputViewAnimationStyle" hasProperty:@"duration" withType:"d"];
  [location[0] validateClass:@"UIInputViewSet" hasProperty:@"inputView" withType:v5];
  objc_storeStrong(v7, v6);
}

- (void)orderInWithAnimationStyle:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = UIKeyboardSceneDelegateAccessibility;
  [(UIKeyboardSceneDelegateAccessibility *)&v6 orderInWithAnimationStyle:location[0]];
  v4 = v8;
  v5 = [location[0] safeValueForKey:@"duration"];
  [v5 floatValue];
  [(UIKeyboardSceneDelegateAccessibility *)v4 performSelector:sel__axPostScreenChange withObject:0 afterDelay:v3];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
}

- (void)orderOutWithAnimationStyle:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIKeyboardSceneDelegateAccessibility;
  [(UIKeyboardSceneDelegateAccessibility *)&v3 orderOutWithAnimationStyle:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (void)setInputViews:(id)a3 animationStyle:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11.receiver = v14;
  v11.super_class = UIKeyboardSceneDelegateAccessibility;
  [(UIKeyboardSceneDelegateAccessibility *)&v11 setInputViews:location[0] animationStyle:v12];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__UIKeyboardSceneDelegateAccessibility_setInputViews_animationStyle___block_invoke;
  v9 = &unk_29F30C7C8;
  v10 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __69__UIKeyboardSceneDelegateAccessibility_setInputViews_animationStyle___block_invoke(id *a1)
{
  argument[2] = a1;
  argument[1] = a1;
  argument[0] = [a1[4] safeValueForKey:@"inputView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument[0]);
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  }

  objc_storeStrong(argument, 0);
}

- (void)_axPostScreenChange
{
  v2 = MEMORY[0x29ED3DFB0]();
  MEMORY[0x29ED3DFA0](0);
  MEMORY[0x29ED3DFA0](v2);
}

@end