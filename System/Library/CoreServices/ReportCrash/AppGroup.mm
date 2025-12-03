@interface AppGroup
+ (BOOL)isALE:(id)e;
- (_TtC11ReportCrash8AppGroup)init;
@end

@implementation AppGroup

+ (BOOL)isALE:(id)e
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = sub_10000F210(&off_100045D70);
  swift_arrayDestroy();
  LOBYTE(v3) = sub_10000F378(v3, v5, v6);

  return v3 & 1;
}

- (_TtC11ReportCrash8AppGroup)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppGroup();
  return [(AppGroup *)&v3 init];
}

@end