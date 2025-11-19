@interface AXUIUIScreenOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIEdgeInsets)_displayPeripheryInsetsRestrictedToScene;
@end

@implementation AXUIUIScreenOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_isMainScreen" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_displayPeripheryInsetsRestrictedToScene" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_displayPeripheryInsets" withFullSignature:{"{UIEdgeInsets=dddd}", 0}];
}

- (UIEdgeInsets)_displayPeripheryInsetsRestrictedToScene
{
  if ([(AXUIUIScreenOverride *)self safeBoolForKey:@"_isMainScreen"])
  {
    objc_opt_class();
    v3 = [(AXUIUIScreenOverride *)self safeValueForKey:@"_displayPeripheryInsets"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 UIEdgeInsetsValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = AXUIUIScreenOverride;
    [(AXUIUIScreenOverride *)&v21 _displayPeripheryInsetsRestrictedToScene];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

@end