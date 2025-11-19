@interface NearbyTransitComplicationDataSource
+ (id)localizedAppName;
+ (id)localizedComplicationName;
- (id)currentSwitcherTemplate;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
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
  v3 = [(NearbyTransitComplicationDataSource *)self family];
  v4 = [(NearbyTransitComplicationDataSource *)self device];
  v5 = [NearbyTransitComplicationFormatter formattedTemplateWithFamily:v3 forDevice:v4];

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NearbyTransitComplicationDataSource *)self family];
    v6 = [(NearbyTransitComplicationDataSource *)self device];
    v9 = [NearbyTransitComplicationFormatter formattedTemplateWithFamily:v5 forDevice:v6];

    v7 = +[NSDate date];
    v8 = [CLKComplicationTimelineEntry entryWithDate:v7 complicationTemplate:v9];

    v4[2](v4, v8);
  }
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  if (a5)
  {
    v5 = a5;
    v6 = [NSString stringWithFormat:@"NearbyTransit://"];
    v7 = [NSURL URLWithString:v6];

    v5[2](v5, v7);
  }
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = [CLKWidgetComplicationDescriptor alloc];
  v6 = [objc_opt_class() appIdentifier];
  v7 = [v5 initWithExtensionBundleIdentifier:@"com.apple.NanoMaps.NanoMapsWidgetKitComplications" containerBundleIdentifier:v6 kind:@"NearByTransitComplication" intent:0];

  v4[2](v4, v7);
}

@end