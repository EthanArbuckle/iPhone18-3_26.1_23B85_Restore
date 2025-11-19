@interface VUIAccountSettingsButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
@end

@implementation VUIAccountSettingsButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIAccountSettingsButton" isKindOfClass:@"VUIButton"];
  [v3 validateClass:@"VUIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIAccountSettingsButtonFactory" hasClassMethod:@"handleAccountSettingButtonSelected" withFullSignature:{"v", 0}];
}

uint64_t __62__VUIAccountSettingsButtonAccessibility_accessibilityActivate__block_invoke()
{
  v0 = MEMORY[0x29ED3FF70](@"VUIAccountSettingsButtonFactory");

  return [v0 handleAccountSettingButtonSelected];
}

- (CGRect)accessibilityFrame
{
  v3 = [(VUIAccountSettingsButtonAccessibility *)self safeValueForKey:@"imageView"];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityFrame];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VUIAccountSettingsButtonAccessibility;
    [(VUIAccountSettingsButtonAccessibility *)&v17 accessibilityFrame];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end