@interface NTKDailyID
- (NSString)description;
- (NSString)uuidString;
- (_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID)init;
- (_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID)initWithUuidString:(id)string;
- (void)setUuidString:(id)string;
@end

@implementation NTKDailyID

- (NSString)uuidString
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setUuidString:(id)string
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKDailyID_uuidString);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID)initWithUuidString:(id)string
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKDailyID_uuidString);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NTKDailyID();
  return [(NTKDailyID *)&v8 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_23BF55BD0();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end