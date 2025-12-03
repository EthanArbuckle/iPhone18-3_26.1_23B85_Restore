@interface CKCloudSyncNavBarStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKCloudSyncNavBarStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasSwiftField:@"progressView" withSwiftType:"ConstrainedProgressView"];
  [validationsCopy validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasSwiftField:@"syncStatusLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasInstanceMethod:@"isProgressViewHidden" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(CKCloudSyncNavBarStatusViewAccessibility *)self _axIsProgressViewHidden])
  {
    [(CKCloudSyncNavBarStatusViewAccessibility *)self safeSwiftValueForKey:@"syncStatusLabel"];
  }

  else
  {
    [(CKCloudSyncNavBarStatusViewAccessibility *)self _axProgressView];
  }
  v3 = ;
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(CKCloudSyncNavBarStatusViewAccessibility *)self _axIsProgressViewHidden])
  {
    accessibilityValue = 0;
  }

  else
  {
    _axProgressView = [(CKCloudSyncNavBarStatusViewAccessibility *)self _axProgressView];
    accessibilityValue = [_axProgressView accessibilityValue];
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  if ([(CKCloudSyncNavBarStatusViewAccessibility *)self _axIsProgressViewHidden])
  {
    v6.receiver = self;
    v6.super_class = CKCloudSyncNavBarStatusViewAccessibility;
    return [(CKCloudSyncNavBarStatusViewAccessibility *)&v6 accessibilityTraits];
  }

  else
  {
    _axProgressView = [(CKCloudSyncNavBarStatusViewAccessibility *)self _axProgressView];
    accessibilityTraits = [_axProgressView accessibilityTraits];

    return accessibilityTraits;
  }
}

@end