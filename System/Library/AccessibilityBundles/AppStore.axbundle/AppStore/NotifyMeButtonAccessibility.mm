@interface NotifyMeButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NotifyMeButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.NotifyMeButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AppStore.NotifyMeButton" hasSwiftField:@"isActive" withSwiftType:"Bool"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NotifyMeButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NotifyMeButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  if ([(NotifyMeButtonAccessibility *)self safeSwiftBoolForKey:@"isActive"])
  {
    v2 = @"notify.button.on";
  }

  else
  {
    v2 = @"notify.button.off";
  }

  v3 = accessibilityAppStoreLocalizedString(v2);

  return v3;
}

@end