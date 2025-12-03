@interface NTKAnalogTimeComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)localizedComplicationName;
- (id)_graphicTemplateWithOverrideDate:(id)date;
- (id)sampleTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NTKAnalogTimeComplicationBundleDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"COMPLICATION_TITLE" value:&stru_105F8 table:@"AnalogTime"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  v5 = [device supportsPDRCapability:2031260689];
  v7 = family == 10 || family == 12;
  return v5 && v7;
}

- (id)sampleTemplate
{
  v3 = NTKIdealizedDate();
  v4 = [(NTKAnalogTimeComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v3];

  return v4;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CLKForcedTime();

  if (v5)
  {
    v6 = NTKIdealizedDate();
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v7 = [(NTKAnalogTimeComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v6];
  v8 = +[NSDate date];
  v9 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v7];

  handlerCopy[2](handlerCopy, v9);
}

- (id)_graphicTemplateWithOverrideDate:(id)date
{
  dateCopy = date;
  family = [(NTKAnalogTimeComplicationBundleDataSource *)self family];
  v6 = off_10230;
  if (family == &dword_C)
  {
    v6 = off_10238;
  }

  v7 = *v6;
  v8 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = NTKWorldClockGraphicCircularViewOverrideDateKey;
    v14 = dateCopy;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v8 setMetadata:v9];
  }

  v10 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  if (family != &dword_C)
  {
    v10 = CLKComplicationTemplateGraphicCircularImage_ptr;
  }

  v11 = [objc_alloc(*v10) initWithImageProvider:v8];

  return v11;
}

@end