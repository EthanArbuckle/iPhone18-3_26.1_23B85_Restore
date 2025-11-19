@interface CALayerAccessibility__UIKit__QuartzCore
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityBounds;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (void)dealloc;
@end

@implementation CALayerAccessibility__UIKit__QuartzCore

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIWindowLayer";
  [location[0] validateClass:?];
  [location[0] validateClass:@"UIWindowLayer" hasInstanceVariable:@"_window" withType:"UIWindow"];
  [location[0] validateClass:@"CALayer" hasInstanceMethod:@"setBounds:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  objc_storeStrong(v5, obj);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(CALayerAccessibility__UIKit__QuartzCore *)self _accessibilityUnregister];
  v2.receiver = v4;
  v2.super_class = CALayerAccessibility__UIKit__QuartzCore;
  [(CALayerAccessibility__UIKit__QuartzCore *)&v2 dealloc];
}

- (id)accessibilityLabel
{
  v7 = self;
  location[1] = a2;
  v5 = [(CALayerAccessibility__UIKit__QuartzCore *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v8 = [(CALayerAccessibility__UIKit__QuartzCore *)v7 accessibilityUserDefinedLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location[0] = [(CALayerAccessibility__UIKit__QuartzCore *)v7 string];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [location[0] string];
      }

      else
      {
        v8 = MEMORY[0x29EDC9748](location[0]);
      }

      objc_storeStrong(location, 0);
    }

    else
    {
      v8 = 0;
    }
  }

  v3 = v8;

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v21 = a3;
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v18 = [(CALayerAccessibility__UIKit__QuartzCore *)v20 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v10 = 0;
  v6 = 0;
  if ((v18 & 1) == 0)
  {
    v12 = MEMORY[0x29EDCA5F8];
    v13 = -1073741824;
    v14 = 0;
    v15 = __75__CALayerAccessibility__UIKit__QuartzCore__accessibilityHitTest_withEvent___block_invoke;
    v16 = &unk_29F30CEB0;
    v17 = MEMORY[0x29EDC9748](v20);
    v11 = &v17;
    v10 = 1;
    v6 = (__75__CALayerAccessibility__UIKit__QuartzCore__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v6)
  {
    [(CALayerAccessibility__UIKit__QuartzCore *)v20 _accessibilitySetBoolValue:1 forKey:?];
    v9 = [(CALayerAccessibility__UIKit__QuartzCore *)v20 accessibilityHitTest:location[0] withEvent:v21.x, v21.y];
    [(CALayerAccessibility__UIKit__QuartzCore *)v20 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v22 = MEMORY[0x29EDC9748](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = 0;
  }

  if (v10)
  {
    objc_storeStrong(v11, 0);
  }

  if (!v8)
  {
    if (([(CALayerAccessibility__UIKit__QuartzCore *)v20 isAccessibilityElement]& 1) != 0 && ([(CALayerAccessibility__UIKit__QuartzCore *)v20 containsPoint:v21.x, v21.y]& 1) != 0)
    {
      v22 = MEMORY[0x29EDC9748](v20);
      v8 = 1;
    }

    else
    {
      v7 = [(CALayerAccessibility__UIKit__QuartzCore *)v20 hitTest:v21.x, v21.y];
      if ([v7 isAccessibilityElement])
      {
        v22 = MEMORY[0x29EDC9748](v7);
      }

      else
      {
        v22 = 0;
      }

      v8 = 1;
      objc_storeStrong(&v7, 0);
    }
  }

  objc_storeStrong(location, 0);
  v4 = v22;

  return v4;
}

- (CGRect)_accessibilityBounds
{
  [(CALayerAccessibility__UIKit__QuartzCore *)self bounds:a2];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)accessibilityFrame
{
  v32 = self;
  v31 = a2;
  [(CALayerAccessibility__UIKit__QuartzCore *)self _accessibilityBounds];
  *&v29 = v2;
  *(&v29 + 1) = v3;
  *&v30 = v4;
  *(&v30 + 1) = v5;
  v24 = [(CALayerAccessibility__UIKit__QuartzCore *)v32 _accessibilityParentView];
  v28 = [v24 window];
  MEMORY[0x29EDC9740](v24);
  if (!v28)
  {
    location = MEMORY[0x29EDC9748](v32);
    while (1)
    {
      v23 = [location superlayer];
      v6 = location;
      location = v23;
      MEMORY[0x29EDC9740](v6);
      if (!v23)
      {
        break;
      }

      NSClassFromString(&cfstr_Uiwindowlayer.isa);
      if (objc_opt_isKindOfClass())
      {
        v7 = [location safeValueForKey:@"_window"];
        v8 = v28;
        v28 = v7;
        MEMORY[0x29EDC9740](v8);
        if (v28)
        {
          break;
        }
      }
    }

    objc_storeStrong(&location, 0);
  }

  v33 = 0u;
  v34 = 0u;
  v22 = [v28 layer];
  [v21 convertRect:v29 toLayer:v30];
  *&v33 = v9;
  *(&v33 + 1) = v10;
  *&v34 = v11;
  *(&v34 + 1) = v12;
  MEMORY[0x29EDC9740](v22);
  [v28 convertRect:v33 toWindow:v34];
  *&v25 = v13;
  *(&v25 + 1) = v14;
  *&v26 = v15;
  *(&v26 + 1) = v16;
  v33 = v25;
  v34 = v26;
  objc_storeStrong(&v28, 0);
  v18 = *(&v33 + 1);
  v17 = *&v33;
  v20 = *(&v34 + 1);
  v19 = *&v34;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end