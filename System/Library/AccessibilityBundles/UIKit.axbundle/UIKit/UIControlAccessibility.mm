@interface UIControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityAuditIssuesWithOptions:(id)options;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIView";
  [location[0] validateClass:@"UIControl" isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_containingScrollView" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_systemDefaultFocusGroupIdentifier" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)_systemDefaultFocusGroupIdentifier
{
  selfCopy = self;
  v8 = a2;
  v6 = 0;
  v4 = 0;
  if (([(UIControlAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v7 = [(UIControlAccessibility *)selfCopy safeValueForKey:@"_containingScrollView"];
    v6 = 1;
    v4 = v7 != 0;
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v4)
  {
    _systemDefaultFocusGroupIdentifier = 0;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = UIControlAccessibility;
    _systemDefaultFocusGroupIdentifier = [(UIControlAccessibility *)&v5 _systemDefaultFocusGroupIdentifier];
  }

  v2 = _systemDefaultFocusGroupIdentifier;

  return v2;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  selfCopy = self;
  v10[1] = a2;
  accessibilityIdentification = [(UIControlAccessibility *)self accessibilityIdentification];
  v6 = [accessibilityIdentification isEqualToString:@"UISearchControlDimmingView"];
  *&v2 = MEMORY[0x29EDC9740](accessibilityIdentification).n128_u64[0];
  if (v6)
  {
    v10[0] = [(UIControlAccessibility *)selfCopy safeValueForKey:@"superview", v2];
    array = [MEMORY[0x29EDB8DE8] array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      location = [v10[0] _accessibilitySupplementaryHeaderViews];
      if ([location count])
      {
        [array addObjectsFromArray:location];
      }

      objc_storeStrong(&location, 0);
    }

    _accessibilityObscuredScreenAllowedViews = MEMORY[0x29EDC9748](array);
    objc_storeStrong(&array, 0);
    objc_storeStrong(v10, 0);
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = UIControlAccessibility;
    _accessibilityObscuredScreenAllowedViews = [(UIControlAccessibility *)&v7 _accessibilityObscuredScreenAllowedViews];
  }

  v3 = _accessibilityObscuredScreenAllowedViews;

  return v3;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  selfCopy = self;
  v7 = a2;
  if (!_accessibilitySupportsActivateAction_BaseActivateAction)
  {
    v2 = objc_opt_class();
    _accessibilitySupportsActivateAction_BaseActivateAction = class_getInstanceMethod(v2, sel_accessibilityActivate);
  }

  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityActivate);
  v9 = InstanceMethod != _accessibilitySupportsActivateAction_BaseActivateAction || (v5.receiver = selfCopy, v5.super_class = UIControlAccessibility, [(UIControlAccessibility *)&v5 _accessibilitySupportsActivateAction]);
  return v9;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIControlAccessibility;
  return [(UIControlAccessibility *)&v3 accessibilityActivate];
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = UIControlAccessibility;
  location[0] = [(UIControlAccessibility *)&v4 accessibilityLabel];
  if (location[0])
  {
    _accessibilityRetrieveIvarText = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    _accessibilityRetrieveIvarText = [(UIViewAccessibility *)selfCopy _accessibilityRetrieveIvarText];
  }

  objc_storeStrong(location, 0);
  v2 = _accessibilityRetrieveIvarText;

  return v2;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  location[1] = a2;
  isAccessibilityUserDefinedElement = [(UIControlAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UIControlAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v13 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    _accessibilitySubviews = [(UIControlAccessibility *)selfCopy _accessibilitySubviews];
    v6 = [_accessibilitySubviews count];
    MEMORY[0x29EDC9740](_accessibilitySubviews);
    if (v6 || ((location[0] = -[UIViewAccessibility _accessibilityRetrieveIvarText](selfCopy), -[UIControlAccessibility bounds](selfCopy, "bounds"), v10 = v3, ![location[0] length]) || (AXDeviceGetMainScreenPixelBounds(), v10 >= CGRectGetHeight(v14) / 2.0) ? (v9 = 0) : (v13 = 1, v9 = 1), objc_storeStrong(location, 0), !v9))
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v14 = a2;
  accessibilityUserDefinedTraits = [(UIControlAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (accessibilityUserDefinedTraits)
  {
    accessibilityUserDefinedTraits2 = [(UIControlAccessibility *)selfCopy accessibilityUserDefinedTraits];
    unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UIControlAccessibility;
    accessibilityTraits = [(UIControlAccessibility *)&v12 accessibilityTraits];
    v8 = [(UIControlAccessibility *)selfCopy safeValueForKey:@"isUserInteractionEnabled"];
    bOOLValue = [v8 BOOLValue];
    *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    if ((bOOLValue & 1) == 0)
    {
      accessibilityTraits |= *MEMORY[0x29EDC7FA8];
    }

    v7 = accessibilityTraits;
    if (([(UIControlAccessibility *)selfCopy safeBoolForKey:@"isEnabled", v3]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = *MEMORY[0x29EDC7FA8];
    }

    if (([(UIControlAccessibility *)selfCopy safeBoolForKey:@"isSelected"]& 1) != 0)
    {
      v5 = *MEMORY[0x29EDC7FC0];
    }

    else
    {
      v5 = 0;
    }

    return v7 | v6 | v5;
  }

  return unsignedLongLongValue;
}

- (id)_accessibilityAuditIssuesWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v13.receiver = selfCopy;
  v13.super_class = UIControlAccessibility;
  v14 = [(UIControlAccessibility *)&v13 _accessibilityAuditIssuesWithOptions:location[0]];
  if (!v14)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v4 = v14;
    v14 = array;
    MEMORY[0x29EDC9740](v4);
  }

  v12 = [MEMORY[0x29EDC7320] optionsDictionaryForAuditTest:*MEMORY[0x29EDBD7A0] inDictionary:location[0]];
  v11 = [MEMORY[0x29EDC7320] checkBoolValueForOptionsKey:*MEMORY[0x29EDBD7A8] inDictionary:v12];
  if (v11)
  {
    v10 = [(UIControlAccessibility *)selfCopy safeBoolForKey:@"isEnabled"];
    accessibilityTraits = [(UIControlAccessibility *)selfCopy accessibilityTraits];
    if ((v10 & 1) == 0 && (accessibilityTraits & *MEMORY[0x29EDC7FA8]) != *MEMORY[0x29EDC7FA8])
    {
      v8 = [MEMORY[0x29EDC7368] _axAuditGetTextFromObject:selfCopy];
      v7 = [MEMORY[0x29EDC7320] dictionaryWithAXAuditIssue:1003 element:selfCopy additionalInfo:0 identifier:0 foregroundColor:0 backgroundColor:0 fontSize:0 elementRect:v8 text:?];
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
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UIControlAccessibility;
  canBecomeFocused = [(UIControlAccessibility *)&v4 canBecomeFocused];
  if (([(UIControlAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
    return canBecomeFocused & 1;
  }

  accessibilityRespondsToUserInteraction = 0;
  if ([(UIControlAccessibility *)selfCopy isAccessibilityElement])
  {
    accessibilityRespondsToUserInteraction = [(UIControlAccessibility *)selfCopy accessibilityRespondsToUserInteraction];
  }

  return accessibilityRespondsToUserInteraction & 1;
}

@end