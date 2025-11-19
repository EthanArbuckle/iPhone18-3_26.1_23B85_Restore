@interface DepthDataSource
+ (NSString)bundleIdentifier;
+ (NSString)localizedComplicationName;
- (_TtC32DepthComplicationBundleCompanion15DepthDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
@end

@implementation DepthDataSource

- (_TtC32DepthComplicationBundleCompanion15DepthDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DepthDataSource();
  return [(BaseDataSource *)&v9 initWithComplication:a3 family:a4 forDevice:a5];
}

+ (NSString)bundleIdentifier
{
  v2 = sub_35398();

  return v2;
}

+ (NSString)localizedComplicationName
{
  sub_2CD54();
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
  v2 = *(*&self->super.CLKCComplicationBundleDataSource_opaque[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14BaseDataSource_timelineDataProvider] + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentDepthModel);
  v3 = self;
  v4 = v2;
  v5 = sub_D01C([(DepthDataSource *)v3 family]);

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2CE40(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)currentSwitcherTemplate
{
  v2 = self;
  v3 = sub_2CA34();

  return v3;
}

@end