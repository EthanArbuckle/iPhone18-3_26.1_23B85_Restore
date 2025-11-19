@interface BaseDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (NSString)appIdentifier;
+ (NSString)localizedAppName;
- (_TtC32DepthComplicationBundleCompanion14BaseDataSource)init;
- (void)timelineCurrentEntryModelUpdated:(id)a3;
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

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a4;
  LOBYTE(a3) = sub_34594(a3, v6);

  return a3 & 1;
}

- (_TtC32DepthComplicationBundleCompanion14BaseDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timelineCurrentEntryModelUpdated:(id)a3
{
  v4 = self;
  v3 = [(BaseDataSource *)v4 delegate];
  if (v3)
  {
    [v3 invalidateEntries];
    swift_unknownObjectRelease();
  }
}

@end