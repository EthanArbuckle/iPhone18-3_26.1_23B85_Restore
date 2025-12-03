@interface NTKLauncherComplicationDataSourceAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_currentTimelineEntry;
@end

@implementation NTKLauncherComplicationDataSourceAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_currentTimelineEntry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKLauncherComplicationDataSource" hasInstanceMethod:@"_appTitle" withFullSignature:{"@", 0}];
}

- (id)_currentTimelineEntry
{
  v12.receiver = self;
  v12.super_class = NTKLauncherComplicationDataSourceAccessibility;
  _currentTimelineEntry = [(NTKLauncherComplicationDataSourceAccessibility *)&v12 _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];
  if (_accessibilityComplicationTemplateContainsSimpleImage())
  {
    v5 = [(NTKLauncherComplicationDataSourceAccessibility *)self safeValueForKey:@"_appTitle"];
    if ([v5 length])
    {
      v6 = [complicationTemplate safeValueForKey:@"imageProvider"];
      [v6 setAccessibilityLabel:v5];

      v7 = [complicationTemplate safeValueForKey:@"imageProvider"];
      v9 = accessibilityLocalizedString(@"double.tap.to.open.complication.hint", v8);
      v10 = [NSString stringWithFormat:v9, v5];
      [v7 setAccessibilityHint:v10];
    }
  }

  return _currentTimelineEntry;
}

@end