@interface NVMComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (id)formatter;
- (NVMComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
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

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if ([v6 isRunningGraceOrLater])
  {
    v7 = [a1 formatter];
    v8 = [v7 supportsFamily:a3 forDevice:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NVMComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = NVMComplicationDataSource;
  return [(NVMComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5];
}

- (id)currentSwitcherTemplate
{
  v3 = [objc_opt_class() formatter];
  v4 = [(NVMComplicationDataSource *)self family];
  v5 = [(NVMComplicationDataSource *)self device];
  v6 = [v3 switcherTemplateWithFamily:v4 forDevice:v5];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [objc_opt_class() formatter];
    v6 = [(NVMComplicationDataSource *)self family];
    v7 = [(NVMComplicationDataSource *)self device];
    v10 = [v5 formattedTemplateWithFamily:v6 forDevice:v7];

    v8 = +[NSDate date];
    v9 = [CLKComplicationTimelineEntry entryWithDate:v8 complicationTemplate:v10];

    v4[2](v4, v9);
  }
}

@end