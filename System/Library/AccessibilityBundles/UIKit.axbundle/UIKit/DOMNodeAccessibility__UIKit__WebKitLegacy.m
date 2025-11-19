@interface DOMNodeAccessibility__UIKit__WebKitLegacy
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (void)_accessibilityCheckBorderHit:(char)a3 left:;
- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
@end

@implementation DOMNodeAccessibility__UIKit__WebKitLegacy

- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v5 _updateSelectionWithTextRange:location[0] withAffinityDownstream:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityCheckBorderHit:(char)a3 left:
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  if (a1)
  {
    v11 = [v14 safeValueForKey:@"_selectableText"];
    v7 = [v11 selectedTextRange];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (v7)
    {
      v9 = [v11 selectedTextRange];
      location = [v9 start];
      if ([v9 isEmpty] & 1) != 0 || (v13)
      {
        if (v12)
        {
          v4 = 3;
        }

        else
        {
          v4 = 2;
        }

        v5 = [v11 positionFromPosition:location inDirection:v4 offset:1];
        v6 = location;
        location = v5;
        MEMORY[0x29EDC9740](v6);
      }

      if (!location)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v9, 0);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)v10 _accessibilityCheckBorderHit:v8 left:1];
  v6.receiver = v10;
  v6.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  v5 = [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v6 _moveLeft:v8 withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)v10 _accessibilityCheckBorderHit:v8 left:0];
  v6.receiver = v10;
  v6.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  v5 = [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v6 _moveRight:v8 withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

@end