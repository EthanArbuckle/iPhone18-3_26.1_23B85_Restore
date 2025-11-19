@interface UIControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityAuditIssuesWithOptions:(id)a3;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIView";
  [location[0] validateClass:@"UIControl" isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_containingScrollView" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_systemDefaultFocusGroupIdentifier" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v9 = self;
  v8 = a2;
  v6 = 0;
  v4 = 0;
  if (([(UIControlAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v7 = [(UIControlAccessibility *)v9 safeValueForKey:@"_containingScrollView"];
    v6 = 1;
    v4 = v7 != 0;
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v5.receiver = v9;
    v5.super_class = UIControlAccessibility;
    v10 = [(UIControlAccessibility *)&v5 _systemDefaultFocusGroupIdentifier];
  }

  v2 = v10;

  return v2;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v11 = self;
  v10[1] = a2;
  v5 = [(UIControlAccessibility *)self accessibilityIdentification];
  v6 = [v5 isEqualToString:@"UISearchControlDimmingView"];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v10[0] = [(UIControlAccessibility *)v11 safeValueForKey:@"superview", v2];
    v9 = [MEMORY[0x29EDB8DE8] array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location = [v10[0] _accessibilitySupplementaryHeaderViews];
      if ([location count])
      {
        [v9 addObjectsFromArray:location];
      }

      objc_storeStrong(&location, 0);
    }

    v12 = MEMORY[0x29EDC9748](v9);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(v10, 0);
  }

  else
  {
    v7.receiver = v11;
    v7.super_class = UIControlAccessibility;
    v12 = [(UIControlAccessibility *)&v7 _accessibilityObscuredScreenAllowedViews];
  }

  v3 = v12;

  return v3;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v8 = self;
  v7 = a2;
  if (!_accessibilitySupportsActivateAction_BaseActivateAction)
  {
    v2 = objc_opt_class();
    _accessibilitySupportsActivateAction_BaseActivateAction = class_getInstanceMethod(v2, sel_accessibilityActivate);
  }

  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityActivate);
  v9 = InstanceMethod != _accessibilitySupportsActivateAction_BaseActivateAction || (v5.receiver = v8, v5.super_class = UIControlAccessibility, [(UIControlAccessibility *)&v5 _accessibilitySupportsActivateAction]);
  return v9;
}

- (BOOL)accessibilityActivate
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIControlAccessibility;
  return [(UIControlAccessibility *)&v3 accessibilityActivate];
}

- (id)accessibilityLabel
{
  v6 = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = UIControlAccessibility;
  location[0] = [(UIControlAccessibility *)&v4 accessibilityLabel];
  if (location[0])
  {
    v7 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v7 = [(UIViewAccessibility *)v6 _accessibilityRetrieveIvarText];
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (BOOL)isAccessibilityElement
{
  v12 = self;
  location[1] = a2;
  v8 = [(UIControlAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(UIControlAccessibility *)v12 isAccessibilityUserDefinedElement];
    v13 = [v7 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v7);
  }

  else
  {
    v5 = [(UIControlAccessibility *)v12 _accessibilitySubviews];
    v6 = [v5 count];
    MEMORY[0x29EDC9740](v5);
    if (v6 || ((location[0] = -[UIViewAccessibility _accessibilityRetrieveIvarText](v12), -[UIControlAccessibility bounds](v12, "bounds"), v10 = v3, ![location[0] length]) || (AXDeviceGetMainScreenPixelBounds(), v10 >= CGRectGetHeight(v14) / 2.0) ? (v9 = 0) : (v13 = 1, v9 = 1), objc_storeStrong(location, 0), !v9))
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

- (unint64_t)accessibilityTraits
{
  v15 = self;
  v14 = a2;
  v11 = [(UIControlAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v11)
  {
    v10 = [(UIControlAccessibility *)v15 accessibilityUserDefinedTraits];
    v16 = [v10 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v10);
  }

  else
  {
    v12.receiver = v15;
    v12.super_class = UIControlAccessibility;
    v13 = [(UIControlAccessibility *)&v12 accessibilityTraits];
    v8 = [(UIControlAccessibility *)v15 safeValueForKey:@"isUserInteractionEnabled"];
    v9 = [v8 BOOLValue];
    *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    if ((v9 & 1) == 0)
    {
      v13 |= *MEMORY[0x29EDC7FA8];
    }

    v7 = v13;
    if (([(UIControlAccessibility *)v15 safeBoolForKey:@"isEnabled", v3]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *MEMORY[0x29EDC7FA8];
    }

    if (([(UIControlAccessibility *)v15 safeBoolForKey:@"isSelected"]& 1) != 0)
    {
      v5 = *MEMORY[0x29EDC7FC0];
    }

    else
    {
      v5 = 0;
    }

    return v7 | v6 | v5;
  }

  return v16;
}

- (id)_accessibilityAuditIssuesWithOptions:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13.receiver = v16;
  v13.super_class = UIControlAccessibility;
  v14 = [(UIControlAccessibility *)&v13 _accessibilityAuditIssuesWithOptions:location[0]];
  if (!v14)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = v14;
    v14 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v12 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD7A0] inDictionary:location[0]];
  v11 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v12];
  if (v11)
  {
    v10 = [(UIControlAccessibility *)v16 safeBoolForKey:@"isEnabled"];
    v9 = [(UIControlAccessibility *)v16 accessibilityTraits];
    if ((v10 & 1) == 0 && (v9 & *MEMORY[0x29EDC7FA8]) != *MEMORY[0x29EDC7FA8])
    {
      v8 = [MEMORY[0x29EDC7368] _axAuditGetTextFromObject:v16];
      v7 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:1003 element:v16 additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:v8 text:?];
      [v14 addObject:v7];
      objc_storeStrong(&v7, 0);
      objc_storeStrong(&v8, 0);
    }
  }

  v6 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (BOOL)canBecomeFocused
{
  v7 = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UIControlAccessibility;
  v5 = [(UIControlAccessibility *)&v4 canBecomeFocused];
  if (([(UIControlAccessibility *)v7 _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
    return v5 & 1;
  }

  v3 = 0;
  if ([(UIControlAccessibility *)v7 isAccessibilityElement])
  {
    v3 = [(UIControlAccessibility *)v7 accessibilityRespondsToUserInteraction];
  }

  return v3 & 1;
}

@end