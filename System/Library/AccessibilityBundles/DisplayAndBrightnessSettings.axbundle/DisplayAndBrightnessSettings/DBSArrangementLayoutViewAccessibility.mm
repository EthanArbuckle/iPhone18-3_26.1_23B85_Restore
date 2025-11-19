@interface DBSArrangementLayoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (DBSArrangementLayoutViewAccessibility)initWithDataSource:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)placeCurrentDisplayAtLocation:(unint64_t)a3;
@end

@implementation DBSArrangementLayoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DBSArrangementLayoutView" hasProperty:@"northDisplay" withType:"@"];
  [v3 validateClass:@"DBSArrangementLayoutView" hasProperty:@"eastDisplay" withType:"@"];
  [v3 validateClass:@"DBSArrangementLayoutView" hasProperty:@"southDisplay" withType:"@"];
  [v3 validateClass:@"DBSArrangementLayoutView" hasProperty:@"westDisplay" withType:"@"];
  [v3 validateClass:@"DBSNativeDisplayIconView" hasProperty:@"nameField" withType:"@"];
  [v3 validateClass:@"DBSArrangementLayoutView" hasInstanceMethod:@"initWithDataSource:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"DBSArrangementLayoutView" hasInstanceMethod:@"placeCurrentDisplayAtLocation:" withFullSignature:{"v", "Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = DBSArrangementLayoutViewAccessibility;
  [(DBSArrangementLayoutViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(DBSArrangementLayoutViewAccessibility *)self safeValueForKey:@"northDisplay"];
  v4 = accessibilityLocalizedString(@"arrangement.north");
  [v3 setAccessibilityLabel:v4];

  v5 = [(DBSArrangementLayoutViewAccessibility *)self safeValueForKey:@"eastDisplay"];
  v6 = accessibilityLocalizedString(@"arrangement.east");
  [v5 setAccessibilityLabel:v6];

  v7 = [(DBSArrangementLayoutViewAccessibility *)self safeValueForKey:@"southDisplay"];
  v8 = accessibilityLocalizedString(@"arrangement.south");
  [v7 setAccessibilityLabel:v8];

  v9 = [(DBSArrangementLayoutViewAccessibility *)self safeValueForKey:@"westDisplay"];
  v10 = accessibilityLocalizedString(@"arrangement.west");
  [v9 setAccessibilityLabel:v10];
}

- (DBSArrangementLayoutViewAccessibility)initWithDataSource:(id)a3
{
  v4 = a3;
  [(DBSArrangementLayoutViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v7.receiver = self;
  v7.super_class = DBSArrangementLayoutViewAccessibility;
  v5 = [(DBSArrangementLayoutViewAccessibility *)&v7 initWithDataSource:v4];

  return v5;
}

- (void)placeCurrentDisplayAtLocation:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = DBSArrangementLayoutViewAccessibility;
  [(DBSArrangementLayoutViewAccessibility *)&v12 placeCurrentDisplayAtLocation:?];
  if ([(DBSArrangementLayoutViewAccessibility *)self _axDisplayLocation]!= a3)
  {
    [(DBSArrangementLayoutViewAccessibility *)self _axSetDisplayLocation:a3];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    v5 = 0;
    if (a3 <= 3)
    {
      v5 = [(DBSArrangementLayoutViewAccessibility *)self safeValueForKey:off_29F2BB170[a3]];
    }

    v6 = [v5 safeValueForKey:@"nameField"];
    v7 = [v6 accessibilityLabel];

    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityLocalizedString(@"arrangement.announcement");
    v10 = &stru_2A218EAE8;
    if (v7)
    {
      v10 = v7;
    }

    v11 = [v8 localizedStringWithFormat:v9, v10];

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

@end