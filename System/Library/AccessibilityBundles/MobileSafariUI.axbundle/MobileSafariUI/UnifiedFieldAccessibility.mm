@interface UnifiedFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityPath;
- (int64_t)_accessibilitySortPriority;
@end

@implementation UnifiedFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"_accessibilityRightButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UnifiedField" isKindOfClass:@"UITextField"];
  [v3 validateClass:@"_SFNavigationBar"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_URLOutline" withType:"_SFNavigationBarURLButton"];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UnifiedFieldAccessibility *)self _accessibilitySupplementaryFooterViews];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        v14 = [v13 _accessibilityHitTest:v7 withEvent:?];
        if ([v14 isAccessibilityElement])
        {

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17.receiver = self;
  v17.super_class = UnifiedFieldAccessibility;
  v14 = [(UnifiedFieldAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_11:

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

- (int64_t)_accessibilitySortPriority
{
  if (AXDeviceIsPhoneIdiom())
  {
    return 1000;
  }

  v4.receiver = self;
  v4.super_class = UnifiedFieldAccessibility;
  return [(UnifiedFieldAccessibility *)&v4 _accessibilitySortPriority];
}

- (id)accessibilityPath
{
  v3 = [(UnifiedFieldAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Sfnavigationba_0.isa)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"_URLOutline"];
    v6 = [v5 accessibilityPath];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UnifiedFieldAccessibility;
    v6 = [(UnifiedFieldAccessibility *)&v8 accessibilityPath];
  }

  return v6;
}

@end