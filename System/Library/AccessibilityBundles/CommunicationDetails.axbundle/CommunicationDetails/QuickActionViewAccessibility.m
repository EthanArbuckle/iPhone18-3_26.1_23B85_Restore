@interface QuickActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation QuickActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CommunicationDetails.QuickActionView" hasSwiftField:@"type" withSwiftType:"ButtonType"];
  [v3 validateClass:@"CommunicationDetails.QuickActionView" hasSwiftField:@"button" withSwiftType:"Button"];
}

- (id)accessibilityLabel
{
  v3 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"type"];
  v4 = [v3 safeSwiftEnumCase];

  if ([v4 isEqualToString:@"phone"])
  {
    v5 = @"quickActions.call";
LABEL_11:
    v6 = accessibilityLocalizedString(v5);
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"video"])
  {
    v5 = @"quickActions.video";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"mail"])
  {
    v5 = @"quickActions.mail";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"message"])
  {
    v5 = @"quickActions.message";
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"screenSharing"])
  {
    v5 = @"quickActions.screenShare";
    goto LABEL_11;
  }

  v9.receiver = self;
  v9.super_class = QuickActionViewAccessibility;
  v6 = [(QuickActionViewAccessibility *)&v9 accessibilityLabel];
LABEL_12:
  v7 = v6;

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"button"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(QuickActionViewAccessibility *)self safeSwiftValueForKey:@"button"];
  v3 = [v2 accessibilityActivate];

  return v3;
}

@end