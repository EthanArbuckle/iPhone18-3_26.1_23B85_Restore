@interface NTKTimerRecentsBundleComplicationDataSource
+ (id)complicationDescriptors;
- (id)currentSwitcherTemplate;
@end

@implementation NTKTimerRecentsBundleComplicationDataSource

+ (id)complicationDescriptors
{
  v28[0] = &off_CEC8;
  v28[1] = &off_CEE0;
  v28[2] = &off_CEF8;
  v2 = [NSNumber numberWithInteger:CLKComplicationFamilyCircularMedium];
  v28[3] = v2;
  v28[4] = &off_CF10;
  v28[5] = &off_CF28;
  v28[6] = &off_CF40;
  v28[7] = &off_CF58;
  v28[8] = &off_CF70;
  v28[9] = &off_CF88;
  v28[10] = &off_CFA0;
  v28[11] = &off_CFB8;
  v3 = [NSNumber numberWithInteger:CLKComplicationFamilySimpleText];
  v28[12] = v3;
  v20 = [NSArray arrayWithObjects:v28 count:13];

  v4 = objc_alloc_init(NSDateComponentsFormatter);
  [v4 setAllowedUnits:224];
  [v4 setFormattingContext:2];
  [v4 setUnitsStyle:2];
  v5 = [objc_opt_class() _defaultPresets];
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 floatValue];
        v13 = [v4 stringFromTimeInterval:v12];
        v14 = [CLKComplicationDescriptor alloc];
        v15 = [v11 stringValue];
        v25 = @"Duration";
        v26 = v11;
        v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v17 = [v14 initWithIdentifier:v15 displayName:v13 supportedFamilies:v20 userInfo:v16];

        [v6 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)currentSwitcherTemplate
{
  v3 = [NTKTimerBundleTimelineEntry alloc];
  v4 = [(NTKTimerRecentsBundleComplicationDataSource *)self device];
  v5 = [(NTKTimerBundleTimelineEntry *)v3 initWithDevice:v4];

  v6 = +[NTKDate unmodifiedDate];
  [(NTKTimerBundleTimelineEntry *)v5 setEntryDate:v6];

  [(NTKTimerBundleTimelineEntry *)v5 setNumRunningTimers:0];
  [(NTKTimerBundleTimelineEntry *)v5 setNumPausedTimers:0];
  [(NTKTimerBundleComplicationDataSource *)self complicationDuration];
  [(NTKTimerBundleTimelineEntry *)v5 setCountdownDuration:?];
  [(NTKTimerBundleTimelineEntry *)v5 countdownDuration];
  [(NTKTimerBundleTimelineEntry *)v5 setRemainingTime:?];
  [(NTKTimerBundleTimelineEntry *)v5 setTitle:0];
  [(NTKTimerBundleTimelineEntry *)v5 setState:1];
  v7 = [(NTKTimerBundleTimelineEntry *)v5 entryForComplicationFamily:[(NTKTimerRecentsBundleComplicationDataSource *)self family]];
  v8 = [v7 complicationTemplate];

  return v8;
}

@end