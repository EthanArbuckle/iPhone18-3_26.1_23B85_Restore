@interface NTKDigitalWorldClockComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)complicationDescriptors;
+ (id)localizedComplicationName;
- (NTKDigitalWorldClockComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_city;
- (id)_graphicTemplateWithOverrideDate:(id)date;
- (id)privacyTemplate;
- (id)sampleTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation NTKDigitalWorldClockComplicationBundleDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"COMPLICATION_TITLE" value:&stru_105F8 table:@"DigitalWorldClock"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  v5 = [device supportsPDRCapability:2031260689];
  v7 = family == 10 || family == 12;
  return v5 && v7;
}

+ (id)complicationDescriptors
{
  v2 = +[NTKWorldClockManager sharedManager];
  cities = [v2 cities];
  if (!cities || (v4 = cities, v5 = [v2 checkIfCitiesModified], v4, v5))
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
        alCityId = [v9 alCityId];
        stringValue = [alCityId stringValue];
        name = [v9 name];
        v13 = NTKWorldClockCityAbbreviation();
        v14 = +[NSMutableDictionary dictionary];
        v15 = v14;
        if (v13)
        {
          [v14 setObject:v13 forKey:@"name"];
        }

        if (alCityId)
        {
          [v15 setObject:alCityId forKey:@"cityID"];
        }

        v16 = NTKClockFaceLocalizedString();
        v17 = [NSString stringWithFormat:v16, name];
        v18 = [[CLKComplicationDescriptor alloc] initWithIdentifier:stringValue displayName:v17 supportedFamilies:&off_10B40 userInfo:v15];
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

- (NTKDigitalWorldClockComplicationBundleDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKDigitalWorldClockComplicationBundleDataSource;
  v9 = [(NTKDigitalWorldClockComplicationBundleDataSource *)&v11 initWithComplication:complication family:family forDevice:deviceCopy];
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
  family = [(NTKDigitalWorldClockComplicationBundleDataSource *)self family];
  v3 = +[CLKRenderingContext sharedRenderingContext];
  device = [v3 device];
  v5 = device;
  if (family == &dword_C)
  {
    sub_18F0(device, device);
    v6 = &qword_17D60;
    v7 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  }

  else
  {
    sub_1AC8(device, device);
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

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = +[NSDate date];
  v5 = CLKForcedTime();

  if (v5)
  {
    v5 = NTKIdealizedDate();
  }

  v6 = [(NTKDigitalWorldClockComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v5];
  v7 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v6];
  handlerCopy[2](handlerCopy, v7);
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  _city = [(NTKDigitalWorldClockComplicationBundleDataSource *)self _city];
  alCityId = [_city alCityId];
  v10 = [NSString stringWithFormat:@"nwc://id/%@", alCityId];

  v9 = [NSURL URLWithString:v10];
  handlerCopy[2](handlerCopy, v9);
}

- (id)_city
{
  complicationDescriptor = [(NTKDigitalWorldClockComplicationBundleDataSource *)self complicationDescriptor];
  userInfo = [complicationDescriptor userInfo];
  v4 = [userInfo objectForKey:@"cityID"];
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

- (id)_graphicTemplateWithOverrideDate:(id)date
{
  dateCopy = date;
  family = [(NTKDigitalWorldClockComplicationBundleDataSource *)self family];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (dateCopy)
  {
    [v6 setObject:dateCopy forKey:@"NTKDigitalWorldClockGraphicCircularViewOverrideDateKey"];
  }

  complicationDescriptor = [(NTKDigitalWorldClockComplicationBundleDataSource *)self complicationDescriptor];
  userInfo = [complicationDescriptor userInfo];
  v9 = [userInfo objectForKey:@"name"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = &stru_105F8;
  }

  [v7 setObject:v9 forKey:@"NTKDigitalWorldClockGraphicCircularViewCityNameKey"];
  v26 = userInfo;
  v10 = [userInfo objectForKey:@"cityID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[WorldClockCity alloc] initWithALCityIdentifier:{objc_msgSend(v10, "intValue")}];
    alCity = [v11 alCity];

    if (alCity)
    {
      [v7 setObject:alCity forKey:@"NTKDigitalWorldClockGraphicCircularViewCityKey"];
    }
  }

  else
  {
    alCity = 0;
  }

  timeZone = [alCity timeZone];

  if (!timeZone || ([alCity timeZone], v14 = objc_claimAutoreleasedReturnValue(), +[NSTimeZone timeZoneWithName:](NSTimeZone, "timeZoneWithName:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v15 = +[NSTimeZone localTimeZone];
  }

  v16 = [CLKCurrentTimeTextProvider textProviderWithTimeZone:v15];
  [v16 setDisallowBothMinutesAndDesignator:1];
  [v16 setOverrideDate:dateCopy];
  [v16 setPaused:dateCopy != 0];
  [v7 setObject:v16 forKey:@"NTKDigitalWorldClockGraphicCircularViewTimeTextProviderKey"];
  v17 = &off_10268;
  if (family == &dword_C)
  {
    v17 = off_10260;
  }

  v18 = *v17;
  if (family == &dword_C)
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