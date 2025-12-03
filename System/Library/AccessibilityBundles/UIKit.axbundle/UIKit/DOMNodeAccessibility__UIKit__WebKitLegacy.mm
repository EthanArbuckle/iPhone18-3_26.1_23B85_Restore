@interface DOMNodeAccessibility__UIKit__WebKitLegacy
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (void)_accessibilityCheckBorderHit:(char)hit left:;
- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
@end

@implementation DOMNodeAccessibility__UIKit__WebKitLegacy

- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, range);
  downstreamCopy = downstream;
  v5.receiver = selfCopy;
  v5.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v5 _updateSelectionWithTextRange:location[0] withAffinityDownstream:downstream];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityCheckBorderHit:(char)hit left:
{
  selfCopy = self;
  v13 = a2;
  hitCopy = hit;
  if (self)
  {
    v11 = [selfCopy safeValueForKey:@"_selectableText"];
    selectedTextRange = [v11 selectedTextRange];
    *&v3 = MEMORY[0x29EDC9740](selectedTextRange).n128_u64[0];
    if (selectedTextRange)
    {
      selectedTextRange2 = [v11 selectedTextRange];
      location = [selectedTextRange2 start];
      if ([selectedTextRange2 isEmpty] & 1) != 0 || (v13)
      {
        if (hitCopy)
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
      objc_storeStrong(&selectedTextRange2, 0);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  selfCopy = self;
  v9 = a2;
  leftCopy = left;
  location = 0;
  objc_storeStrong(&location, history);
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)selfCopy _accessibilityCheckBorderHit:leftCopy left:1];
  v6.receiver = selfCopy;
  v6.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  v5 = [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v6 _moveLeft:leftCopy withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  selfCopy = self;
  v9 = a2;
  rightCopy = right;
  location = 0;
  objc_storeStrong(&location, history);
  [(DOMNodeAccessibility__UIKit__WebKitLegacy *)selfCopy _accessibilityCheckBorderHit:rightCopy left:0];
  v6.receiver = selfCopy;
  v6.super_class = DOMNodeAccessibility__UIKit__WebKitLegacy;
  v5 = [(DOMNodeAccessibility__UIKit__WebKitLegacy *)&v6 _moveRight:rightCopy withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

@end