@interface NTKFaceState
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC30NTKParmesanFaceBundleCompanion12NTKFaceState)init;
@end

@implementation NTKFaceState

- (NSString)description
{
  selfCopy = self;
  sub_23BF6DDD0();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_23BF6DEE0(v8);

  sub_23BF6D5A0(v8);
  return v6;
}

- (_TtC30NTKParmesanFaceBundleCompanion12NTKFaceState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end