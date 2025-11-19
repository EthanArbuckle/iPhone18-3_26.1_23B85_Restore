@interface UIProgressHUDAccessibility
- (BOOL)_accessibilityBlocksInteraction;
- (id)accessibilityLabel;
- (void)showInView:(id)a3;
@end

@implementation UIProgressHUDAccessibility

- (BOOL)_accessibilityBlocksInteraction
{
  v11 = self;
  v10 = a2;
  v3 = [(UIProgressHUDAccessibility *)self safeValueForKey:@"superview"];
  v5 = 0;
  LOBYTE(v4) = 0;
  if (v3)
  {
    v9 = 0;
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v6 = v7;
    v5 = 1;
    v4 = [v7 isUserInteractionEnabled] ^ 1;
  }

  v12 = v4 & 1;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  MEMORY[0x29EDC9740](v3);
  return v12 & 1;
}

- (void)showInView:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = UIProgressHUDAccessibility;
  [(UIProgressHUDAccessibility *)&v5 showInView:location[0]];
  notification = *MEMORY[0x29EDC7380];
  v4 = [(UIProgressHUDAccessibility *)v7 accessibilityLabel];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v3 = [(UIProgressHUDAccessibility *)self safeValueForKey:@"_progressMessage"];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end