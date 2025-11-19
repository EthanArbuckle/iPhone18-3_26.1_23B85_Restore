@interface TemperatureDataSource
+ (NSString)bundleIdentifier;
+ (NSString)localizedComplicationName;
- (_TtC32DepthComplicationBundleCompanion21TemperatureDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation TemperatureDataSource

- (_TtC32DepthComplicationBundleCompanion21TemperatureDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TemperatureDataSource();
  return [(BaseDataSource *)&v9 initWithComplication:a3 family:a4 forDevice:a5];
}

+ (NSString)bundleIdentifier
{
  v2 = sub_35398();

  return v2;
}

+ (NSString)localizedComplicationName
{
  sub_2A368();
  if (v2)
  {
    v3 = sub_35398();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)lockedTemplate
{
  v2 = *(*&self->super.CLKCComplicationBundleDataSource_opaque[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14BaseDataSource_timelineDataProvider] + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentTemperatureModel);
  v3 = self;
  v4 = v2;
  v5 = sub_19C78([(TemperatureDataSource *)v3 family]);

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2A460(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)currentSwitcherTemplate
{
  v2 = self;
  v3 = sub_2A010();

  return v3;
}

@end