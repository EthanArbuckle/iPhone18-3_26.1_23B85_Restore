@interface NTKDigitalTimeComplicationBundleDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (id)localizedComplicationName;
- (id)_graphicTemplateWithOverrideDate:(id)a3;
- (id)sampleTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation NTKDigitalTimeComplicationBundleDataSource

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"COMPLICATION_TITLE" value:&stru_105F8 table:@"DigitalTime"];

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  result = [a4 supportsPDRCapability:2031260689];
  if (a3 != 10)
  {
    return 0;
  }

  return result;
}

- (id)sampleTemplate
{
  v3 = NTKIdealizedDate();
  v4 = [(NTKDigitalTimeComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v3];

  return v4;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
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
  v7 = [(NTKDigitalTimeComplicationBundleDataSource *)self _graphicTemplateWithOverrideDate:v6];
  v8 = +[NSDate date];
  v9 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v7];

  v4[2](v4, v9);
}

- (id)_graphicTemplateWithOverrideDate:(id)a3
{
  v4 = a3;
  v5 = [(NTKDigitalTimeComplicationBundleDataSource *)self family];
  v6 = off_10258;
  if (v5 == &dword_C)
  {
    v6 = off_10250;
  }

  v7 = *v6;
  v8 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = @"NTKDigitalTimeGraphicCircularViewOverrideDateKey";
    v14 = v4;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v8 setMetadata:v9];
  }

  v10 = CLKComplicationTemplateGraphicExtraLargeCircularImage_ptr;
  if (v5 != &dword_C)
  {
    v10 = CLKComplicationTemplateGraphicCircularImage_ptr;
  }

  v11 = [objc_alloc(*v10) initWithImageProvider:v8];

  return v11;
}

@end