@interface NTKDigitalWorldClockComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationDescriptors;
+ (id)localizedComplicationName;
- (NTKDigitalWorldClockComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_city;
- (id)_graphicTemplateWithOverrideDate:(id)a3;
- (id)privacyTemplate;
- (id)sampleTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation NTKDigitalWorldClockComplicationBundleDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"COMPLICATION_TITLE" value:&stru_105F8 table:@"DigitalWorldClock"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = [a4 supportsPDRCapability:2031260689];
  v7 = a3 == 10 || a3 == 12;
  return v5 && v7;
}

+ (id)complicationDescriptors
{
  v2 = +[NTKWorldClockManager sharedManager];
  v3 = [v2 cities];
  if (!v3 || (v4 = v3, v5 = [v2 checkIfCitiesModified], v4, v5))
  {
    [v2 loadCities];
  }

  v23 = +[NSMutableOrderedSet orderedSet];
  v21 = v2;
  [v2 cities];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v24 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 alCityId];
        v11 = [v10 stringValue];
        v12 = [v9 name];
        v13 = NTKWorldClockCityAbbreviation();
        v14 = +[NSMutableDictionary dictionary];
        v15 = v14;
        if (v13)
        {
          [v14 setObject:v13 forKey:@"name"];
        }

        if (v10)
        {
          [v15 setObject:v10 forKey:@"cityID"];
        }

        v16 = NTKClockFaceLocalizedString();
        v17 = [NSString stringWithFormat:v16, v12];
        v18 = [[CLKComplicationDescriptor alloc] initWithIdentifier:v11 displayName:v17 supportedFamilies:&off_10B40 userInfo:v15];
        if (v18)
        {
          [v23 addObject:v18];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v19 = [v23 copy];

  return v19;
}

- (NTKDigitalWorldClockComplicationBundleDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  v11.receiver = self;
  v11.super_class = NTKDigitalWorldClockComplicationBundleDataSource;
  v9 = [(NTKDigitalWorldClockComplicationBundleDataSource *)&v11 initWithComplication:a3 family:a4 forDevice:v8];
  if (v9)
  {
    v9->_showGossamerUI = NTKShowGossamerUI();
  }

  return v9;
}

- (id)sampleTemplate
{
  v3 = NTKIdealizedDate();
  v4 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v3];

  return v4;
}

- (id)privacyTemplate
{
  v2 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self family];
  v3 = +[CLKRenderingContext sharedRenderingContext];
  v4 = [v3 device];
  v5 = v4;
  if (v2 == &dword_C)
  {
    sub_18F0(v4, v4);
    v6 = &qword_17D60;
    v7 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  }

  else
  {
    sub_1AC8(v4, v4);
    v6 = &qword_17D80;
    v7 = CLKComplicationTemplateGraphicCircularImage_ptr;
  }

  v8 = [objc_alloc(*v7) initWithImageProvider:*v6];
  v11 = NTKRichComplicationViewUsePlatterKey;
  v12 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 setMetadata:v9];

  return v8;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
  v8 = +[NSDate date];
  v5 = CLKForcedTime();

  if (v5)
  {
    v5 = NTKIdealizedDate();
  }

  v6 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v5];
  v7 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v6];
  v4[2](v4, v7);
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self _city];
  v8 = [v7 alCityId];
  v10 = [NSString stringWithFormat:@"nwc://id/%@", v8];

  v9 = [NSURL URLWithString:v10];
  v6[2](v6, v9);
}

- (id)_city
{
  v2 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self complicationDescriptor];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKey:@"cityID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[WorldClockCity alloc] initWithALCityIdentifier:{objc_msgSend(v4, "intValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_graphicTemplateWithOverrideDate:(id)a3
{
  v4 = a3;
  v5 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self family];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (v4)
  {
    [v6 setObject:v4 forKey:@"NTKDigitalWorldClockGraphicCircularViewOverrideDateKey"];
  }

  v27 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self complicationDescriptor];
  v8 = [v27 userInfo];
  v9 = [v8 objectForKey:@"name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = &stru_105F8;
  }

  [v7 setObject:v9 forKey:@"NTKDigitalWorldClockGraphicCircularViewCityNameKey"];
  v26 = v8;
  v10 = [v8 objectForKey:@"cityID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[WorldClockCity alloc] initWithALCityIdentifier:{objc_msgSend(v10, "intValue")}];
    v12 = [v11 alCity];

    if (v12)
    {
      [v7 setObject:v12 forKey:@"NTKDigitalWorldClockGraphicCircularViewCityKey"];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 timeZone];

  if (!v13 || ([v12 timeZone], v14 = objc_claimAutoreleasedReturnValue(), +[NSTimeZone timeZoneWithName:](NSTimeZone, "timeZoneWithName:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v15 = +[NSTimeZone localTimeZone];
  }

  v16 = [CLKCurrentTimeTextProvider textProviderWithTimeZone:v15];
  [v16 setDisallowBothMinutesAndDesignator:1];
  [v16 setOverrideDate:v4];
  [v16 setPaused:v4 != 0];
  [v7 setObject:v16 forKey:@"NTKDigitalWorldClockGraphicCircularViewTimeTextProviderKey"];
  v17 = &off_10268;
  if (v5 == &dword_C)
  {
    v17 = off_10260;
  }

  v18 = *v17;
  if (v5 == &dword_C)
  {
    v19 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  }

  else
  {
    v19 = CLKComplicationTemplateGraphicCircularImage_ptr;
  }

  v20 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v21 = [v7 copy];
  [v20 setMetadata:v21];

  v22 = [objc_alloc(*v19) initWithImageProvider:v20];
  if (*(v25 + 8) == 1)
  {
    v28 = NTKRichComplicationViewUsePlatterKey;
    v29 = &__kCFBooleanTrue;
    v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v22 setMetadata:v23];
  }

  return v22;
}

@end