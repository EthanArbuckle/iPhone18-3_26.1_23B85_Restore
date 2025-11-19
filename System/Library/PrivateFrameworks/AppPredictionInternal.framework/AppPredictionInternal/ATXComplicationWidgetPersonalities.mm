@interface ATXComplicationWidgetPersonalities
+ (id)batteryComplicationWidgetPersonality;
+ (id)calendarNextEventComplicationWidgetPersonality;
+ (id)homeClimateComplicationWidgetPersonality;
+ (id)homeClimateSingleSensorComplicationWidgetPersonality;
+ (id)homeLightsComplicationWidgetPersonality;
+ (id)homeSecurityComplicationWidgetPersonality;
+ (id)homeSecuritySingleSensorComplicationWidgetPersonality;
+ (id)homeSummaryComplicationWidgetPersonality;
+ (id)remindersComplicationWidgetPersonality;
+ (id)weatherConditionsComplicationWidgetPersonality;
@end

@implementation ATXComplicationWidgetPersonalities

+ (id)calendarNextEventComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.mobilecal.CalendarWidgetExtension" kind:@"com.apple.CalendarWidget.CalendarNextEventComplication"];

  return v2;
}

+ (id)batteryComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Batteries.BatteriesWidget" kind:@"com.apple.Batteries.complication"];

  return v2;
}

+ (id)weatherConditionsComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.weather.widget" kind:@"com.apple.weather.complication.conditions"];

  return v2;
}

+ (id)remindersComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.reminders.WidgetExtension" kind:@"com.apple.reminders.widget.today"];

  return v2;
}

+ (id)homeSummaryComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.summary.category"];

  return v2;
}

+ (id)homeClimateComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.climate.category"];

  return v2;
}

+ (id)homeClimateSingleSensorComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.climate.singleSensor"];

  return v2;
}

+ (id)homeSecurityComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.security.category"];

  return v2;
}

+ (id)homeSecuritySingleSensorComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.security.singleAccessory"];

  return v2;
}

+ (id)homeLightsComplicationWidgetPersonality
{
  v2 = [objc_alloc(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:@"com.apple.Home.HomeWidget" kind:@"com.apple.Home.widget.lights.category"];

  return v2;
}

@end