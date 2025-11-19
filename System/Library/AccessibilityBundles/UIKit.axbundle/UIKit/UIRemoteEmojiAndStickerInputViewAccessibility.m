@interface UIRemoteEmojiAndStickerInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UIRemoteEmojiAndStickerInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIRemoteEmojiAndStickerInputView" hasInstanceMethod:@"shouldCutAHoleForEmojiSearchField" withFullSignature:{"B", 0}];
  [location[0] validateClass:@"UIKeyboardSceneDelegate" hasInstanceMethod:@"systemInputAssistantViewController" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v23 = a3;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  if (([(UIRemoteEmojiAndStickerInputViewAccessibility *)v22 safeBoolForKey:@"shouldCutAHoleForEmojiSearchField"]& 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x29EDC7B30] activeKeyboardSceneDelegate];
  v10 = [v11 safeValueForKey:@"systemInputAssistantViewController"];
  v20 = [v10 safeUIViewForKey:@"view"];
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  v18 = 0.0;
  v19 = 0.0;
  v17 = 0;
  objc_opt_class();
  v16 = __UIAccessibilityCastAsClass();
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  [v15 convertPoint:v20 toView:{v23.x, v23.y}];
  v18 = v4;
  v19 = v5;
  MEMORY[0x29EDC9740](v15);
  v14 = 0;
  if ([v20 pointInside:location[0] withEvent:{v18, v19}])
  {
    v6 = [v20 hitTest:location[0] withEvent:{v18, v19}];
    v7 = v14;
    v14 = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (v14)
  {
    v24 = MEMORY[0x29EDC9748](v14);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v20, 0);
  if (!v13)
  {
LABEL_8:
    v12.receiver = v22;
    v12.super_class = UIRemoteEmojiAndStickerInputViewAccessibility;
    v24 = [(UIRemoteEmojiAndStickerInputViewAccessibility *)&v12 _accessibilityHitTest:location[0] withEvent:v23.x, v23.y];
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  v8 = v24;

  return v8;
}

@end