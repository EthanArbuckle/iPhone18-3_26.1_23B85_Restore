@interface QuickActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation QuickActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CommunicationDetails.QuickActionView" hasSwiftField:@"type" withSwiftType:"ButtonType"];
  [validationsCopy validateClass:@"CommunicationDetails.QuickActionView" hasSwiftField:@"button" withSwiftType:"Button"];
}

- (id)accessibilityLabel
{
  v3 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"type"];
  safeSwiftEnumCase = [v3 safeSwiftEnumCase];

  if ([safeSwiftEnumCase isEqualToString:@"phone"])
  {
    v5 = @"quickActions.call";
LABEL_11:
    accessibilityLabel = accessibilityLocalizedString(v5);
    goto LABEL_12;
  }

  if ([safeSwiftEnumCase isEqualToString:@"video"])
  {
    v5 = @"quickActions.video";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"mail"])
  {
    v5 = @"quickActions.mail";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"message"])
  {
    v5 = @"quickActions.message";
    goto LABEL_11;
  }

  if ([safeSwiftEnumCase isEqualToString:@"screenSharing"])
  {
    v5 = @"quickActions.screenShare";
    goto LABEL_11;
  }

  v9.receiver = self;
  v9.super_class = QuickActionViewAccessibility;
  accessibilityLabel = [(QuickActionViewAccessibility *)&v9 accessibilityLabel];
LABEL_12:
  v7 = accessibilityLabel;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"button"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (BOOL)accessibilityActivate
{
  v2 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"button"];
  accessibilityActivate = [v2 accessibilityActivate];

  return accessibilityActivate;
}

@end