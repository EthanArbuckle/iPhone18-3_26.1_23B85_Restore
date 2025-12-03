@interface BaseDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
- (_TtC32DepthComplicationBundleCompanion14BaseDataSource)init;
- (void)timelineCurrentEntryModelUpdated:(id)updated;
@end

@implementation BaseDataSource

+ (NSString)appIdentifier
{
  v2 = sub_35398();

  return v2;
}

+ (NSString)localizedAppName
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

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  swift_getObjCClassMetadata();
  deviceCopy = device;
  LOBYTE(family) = sub_34594(family, deviceCopy);

  return family & 1;
}

- (_TtC32DepthComplicationBundleCompanion14BaseDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timelineCurrentEntryModelUpdated:(id)updated
{
  selfCopy = self;
  delegate = [(BaseDataSource *)selfCopy delegate];
  if (delegate)
  {
    [delegate invalidateEntries];
    swift_unknownObjectRelease();
  }
}

@end