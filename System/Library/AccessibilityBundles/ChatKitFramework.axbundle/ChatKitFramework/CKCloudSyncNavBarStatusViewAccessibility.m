@interface CKCloudSyncNavBarStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKCloudSyncNavBarStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasSwiftField:@"progressView" withSwiftType:"ConstrainedProgressView"];
  [v3 validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasSwiftField:@"syncStatusLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"ChatKit.CKCloudSyncNavBarStatusView" hasInstanceMethod:@"isProgressViewHidden" withFullSignature:{"B", 0}];
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
  v4 = [v3 accessibilityLabel];

  return v4;
}

- (id)accessibilityValue
{
  if ([(CKCloudSyncNavBarStatusViewAccessibility *)self _axIsProgressViewHidden])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CKCloudSyncNavBarStatusViewAccessibility *)self _axProgressView];
    v3 = [v4 accessibilityValue];
  }

  return v3;
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
    v4 = [(CKCloudSyncNavBarStatusViewAccessibility *)self _axProgressView];
    v5 = [v4 accessibilityTraits];

    return v5;
  }
}

@end