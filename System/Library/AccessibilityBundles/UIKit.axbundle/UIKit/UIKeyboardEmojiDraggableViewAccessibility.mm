@interface UIKeyboardEmojiDraggableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIKeyboardEmojiDraggableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v13 = self;
  v12[1] = a2;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12[0] = [v9 text];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v6 = 0;
  if (v12[0])
  {
    v3 = MEMORY[0x29EDC9748](v12[0]);
  }

  else
  {
    v8.receiver = v13;
    v8.super_class = UIKeyboardEmojiDraggableViewAccessibility;
    v7 = [(UIKeyboardEmojiDraggableViewAccessibility *)&v8 accessibilityLabel];
    v6 = 1;
    v3 = MEMORY[0x29EDC9748](v7);
  }

  v14 = v3;
  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  objc_storeStrong(v12, 0);
  v4 = v14;

  return v4;
}

@end