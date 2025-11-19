@interface NTKLauncherComplicationDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_currentTimelineEntry;
@end

@implementation NTKLauncherComplicationDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_currentTimelineEntry" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_appTitle" withFullSignature:{"@", 0}];
}

- (id)_currentTimelineEntry
{
  v12.receiver = self;
  v12.super_class = NTKLauncherComplicationDataSourceAccessibility;
  v3 = [(NTKLauncherComplicationDataSourceAccessibility *)&v12 _currentTimelineEntry];
  v4 = [v3 complicationTemplate];
  if (_accessibilityComplicationTemplateContainsSimpleImage())
  {
    v5 = [(NTKLauncherComplicationDataSourceAccessibility *)self safeValueForKey:@"_appTitle"];
    if ([v5 length])
    {
      v6 = [v4 safeValueForKey:@"imageProvider"];
      [v6 setAccessibilityLabel:v5];

      v7 = [v4 safeValueForKey:@"imageProvider"];
      v9 = accessibilityLocalizedString(@"double.tap.to.open.complication.hint", v8);
      v10 = [NSString stringWithFormat:v9, v5];
      [v7 setAccessibilityHint:v10];
    }
  }

  return v3;
}

@end