@interface BuddyUIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation BuddyUIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddyTableViewController"];
  [validationsCopy validateClass:@"CDPTableViewController"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v27 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  accessibilityIdentifier = [(BuddyUIViewAccessibility *)self accessibilityIdentifier];
  v9 = [accessibilityIdentifier isEqualToString:@"BuddyContainerView"];

  if (v9)
  {
    v10 = [(BuddyUIViewAccessibility *)self safeValueForKey:@"subviews"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v13 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          [(BuddyUIViewAccessibility *)self convertPoint:v17 toView:x, y];
          v18 = [v17 _accessibilityHitTest:eventCopy withEvent:?];
          if ([v18 isAccessibilityElement])
          {

            goto LABEL_13;
          }
        }

        v14 = [allObjects countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  v18 = [(BuddyUIViewAccessibility *)&v21 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_13:

  v19 = *MEMORY[0x29EDCA608];

  return v18;
}

@end