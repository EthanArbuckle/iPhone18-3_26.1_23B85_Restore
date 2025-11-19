@interface NTKShuffleID
- (NSSet)people;
- (NSString)description;
- (NSString)uuidString;
- (_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID)init;
- (_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID)initWithPeople:(id)a3 pets:(BOOL)a4 nature:(BOOL)a5 cityscape:(BOOL)a6 uuidString:(id)a7;
- (void)setPeople:(id)a3;
- (void)setUuidString:(id)a3;
@end

@implementation NTKShuffleID

- (NSSet)people
{

  v2 = sub_23BFFA5B0();

  return v2;
}

- (void)setPeople:(id)a3
{
  *(self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_people) = sub_23BFFA5C0();
}

- (NSString)uuidString
{

  v2 = sub_23BFFA2C0();

  return v2;
}

- (void)setUuidString:(id)a3
{
  v4 = sub_23BFFA300();
  v5 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID)initWithPeople:(id)a3 pets:(BOOL)a4 nature:(BOOL)a5 cityscape:(BOOL)a6 uuidString:(id)a7
{
  v11 = sub_23BFFA5C0();
  v12 = sub_23BFFA300();
  *(self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_people) = v11;
  *(self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets) = a4;
  *(self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature) = a5;
  *(self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape) = a6;
  v13 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString);
  *v13 = v12;
  v13[1] = v14;
  v16.receiver = self;
  v16.super_class = type metadata accessor for NTKShuffleID();
  return [(NTKShuffleID *)&v16 init];
}

- (NSString)description
{
  v2 = self;
  sub_23BFDA100();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end