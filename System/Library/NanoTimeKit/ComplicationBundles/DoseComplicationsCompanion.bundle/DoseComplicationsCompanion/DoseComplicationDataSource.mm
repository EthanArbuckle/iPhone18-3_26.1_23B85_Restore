@interface DoseComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)formatter;
+ (id)localizedAppName;
+ (id)localizedComplicationName;
- (id)alwaysOnTemplate;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getSupportedTimeTravelDirectionsWithHandler:(id)handler;
@end

@implementation DoseComplicationDataSource

+ (id)formatter
{
  if (qword_10B10 != -1)
  {
    sub_67FC();
  }

  v3 = qword_10B08;

  return v3;
}

+ (id)localizedAppName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_NAME" value:&stru_C3E0 table:0];
  v5 = [v2 localizedStringForKey:@"APP_NAME" value:v4 table:@"Noise"];

  return v5;
}

+ (id)localizedComplicationName
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"COMPLICATION_NAME" value:&stru_C3E0 table:0];
  v5 = [v2 localizedStringForKey:@"COMPLICATION_NAME" value:v4 table:@"Noise"];

  return v5;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  nrDevice = [deviceCopy nrDevice];
  if (nrDevice && (v8 = nrDevice, v9 = [[NSUUID alloc] initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"], v10 = objc_msgSend(deviceCopy, "supportsCapability:", v9), v9, v8, !v10))
  {
    v12 = 0;
  }

  else
  {
    formatter = [self formatter];
    v12 = [formatter supportsFamily:family forDevice:deviceCopy];
  }

  return v12;
}

- (id)currentSwitcherTemplate
{
  formatter = [objc_opt_class() formatter];
  family = [(DoseComplicationDataSource *)self family];
  device = [(DoseComplicationDataSource *)self device];
  v6 = [formatter switcherTemplateWithFamily:family forDevice:device];

  return v6;
}

- (id)alwaysOnTemplate
{
  v3 = +[HUNoiseSettings sharedInstance];
  onboardingCompleted = [v3 onboardingCompleted];

  formatter = [objc_opt_class() formatter];
  family = [(DoseComplicationDataSource *)self family];
  device = [(DoseComplicationDataSource *)self device];
  if (onboardingCompleted)
  {
    [formatter alwaysOnTemplateWithFamily:family forDevice:device];
  }

  else
  {
    [formatter setupNoiseTemplateWithFamily:family forDevice:device];
  }
  v8 = ;

  return v8;
}

- (void)getSupportedTimeTravelDirectionsWithHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v5 = +[HUNoiseSettings sharedInstance];
    onboardingCompleted = [v5 onboardingCompleted];

    formatter = [objc_opt_class() formatter];
    family = [(DoseComplicationDataSource *)self family];
    device = [(DoseComplicationDataSource *)self device];
    if (onboardingCompleted)
    {
      [formatter formattedTemplateWithFamily:family forDevice:device];
    }

    else
    {
      [formatter setupNoiseTemplateWithFamily:family forDevice:device];
    }
    v12 = ;

    v10 = +[NSDate date];
    v11 = [CLKComplicationTimelineEntry entryWithDate:v10 complicationTemplate:v12];

    handlerCopy[2](handlerCopy, v11);
  }
}

@end