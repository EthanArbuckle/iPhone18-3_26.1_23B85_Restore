@interface BuddyUIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation BuddyUIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyTableViewController"];
  [v3 validateClass:@"CDPTableViewController"];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = [(BuddyUIViewAccessibility *)self accessibilityIdentifier];
  v9 = [v8 isEqualToString:@"BuddyContainerView"];

  if (v9)
  {
    v10 = [(BuddyUIViewAccessibility *)self safeValueForKey:@"subviews"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 reverseObjectEnumerator];
    v12 = [v11 allObjects];

    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          [(BuddyUIViewAccessibility *)self convertPoint:v17 toView:x, y];
          v18 = [v17 _accessibilityHitTest:v7 withEvent:?];
          if ([v18 isAccessibilityElement])
          {

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  v21.receiver = self;
  v21.super_class = BuddyUIViewAccessibility;
  v18 = [(BuddyUIViewAccessibility *)&v21 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_13:

  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

@end