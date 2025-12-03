@interface NearbyTransitComplicationDataSource
+ (id)localizedAppName;
+ (id)localizedComplicationName;
- (id)currentSwitcherTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation NearbyTransitComplicationDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"NearbyTransitComplicationDataSource")];
  v3 = [v2 localizedStringForKey:@"[Nearby Transit Complication] Nearby Transit" value:@"localized string not found" table:0];

  return v3;
}

+ (id)localizedAppName
{
  v2 = [NSBundle bundleForClass:NSClassFromString(@"NearbyTransitComplicationDataSource")];
  v3 = [v2 localizedStringForKey:@"[Localized App Name] Maps" value:@"localized string not found" table:0];

  return v3;
}

- (id)currentSwitcherTemplate
{
  family = [(NearbyTransitComplicationDataSource *)self family];
  device = [(NearbyTransitComplicationDataSource *)self device];
  v5 = [NearbyTransitComplicationFormatter formattedTemplateWithFamily:family forDevice:device];

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    family = [(NearbyTransitComplicationDataSource *)self family];
    device = [(NearbyTransitComplicationDataSource *)self device];
    v9 = [NearbyTransitComplicationFormatter formattedTemplateWithFamily:family forDevice:device];

    v7 = +[NSDate date];
    v8 = [CLKComplicationTimelineEntry entryWithDate:v7 complicationTemplate:v9];

    handlerCopy[2](handlerCopy, v8);
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v6 = [NSString stringWithFormat:@"NearbyTransit://"];
    v7 = [NSURL URLWithString:v6];

    handlerCopy[2](handlerCopy, v7);
  }
}

- (void)fetchWidgetMigrationForDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v5 = [CLKWidgetComplicationDescriptor alloc];
  appIdentifier = [objc_opt_class() appIdentifier];
  v7 = [v5 initWithExtensionBundleIdentifier:@"com.apple.NanoMaps.NanoMapsWidgetKitComplications" containerBundleIdentifier:appIdentifier kind:@"NearByTransitComplication" intent:0];

  completionCopy[2](completionCopy, v7);
}

@end