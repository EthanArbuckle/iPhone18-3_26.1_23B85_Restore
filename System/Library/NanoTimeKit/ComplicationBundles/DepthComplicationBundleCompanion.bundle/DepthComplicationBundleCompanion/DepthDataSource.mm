@interface DepthDataSource
+ (NSString)bundleIdentifier;
+ (NSString)localizedComplicationName;
- (_TtC32DepthComplicationBundleCompanion15DepthDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)currentSwitcherTemplate;
- (id)lockedTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
@end

@implementation DepthDataSource

- (_TtC32DepthComplicationBundleCompanion15DepthDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DepthDataSource();
  return [(BaseDataSource *)&v9 initWithComplication:complication family:family forDevice:device];
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
  selfCopy = self;
  v4 = v2;
  v5 = sub_D01C([(DepthDataSource *)selfCopy family]);

  return v5;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_2CE40(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)currentSwitcherTemplate
{
  selfCopy = self;
  v3 = sub_2CA34();

  return v3;
}

@end