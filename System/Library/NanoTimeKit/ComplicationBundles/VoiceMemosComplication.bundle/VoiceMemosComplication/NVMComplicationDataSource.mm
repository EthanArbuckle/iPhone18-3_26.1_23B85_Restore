@interface NVMComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (id)formatter;
- (NVMComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation NVMComplicationDataSource

+ (id)formatter
{
  if (qword_82E0 != -1)
  {
    sub_15B8();
  }

  v3 = qword_82D8;

  return v3;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningGraceOrLater])
  {
    formatter = [self formatter];
    v8 = [formatter supportsFamily:family forDevice:deviceCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NVMComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NVMComplicationDataSource;
  return [(NVMComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device];
}

- (id)currentSwitcherTemplate
{
  formatter = [objc_opt_class() formatter];
  family = [(NVMComplicationDataSource *)self family];
  device = [(NVMComplicationDataSource *)self device];
  v6 = [formatter switcherTemplateWithFamily:family forDevice:device];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    formatter = [objc_opt_class() formatter];
    family = [(NVMComplicationDataSource *)self family];
    device = [(NVMComplicationDataSource *)self device];
    v10 = [formatter formattedTemplateWithFamily:family forDevice:device];

    v8 = +[NSDate date];
    v9 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v10];

    handlerCopy[2](handlerCopy, v9);
  }
}

@end