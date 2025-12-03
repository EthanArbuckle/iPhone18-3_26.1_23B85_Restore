@interface ParmesanMiniClockViewConfiguration
- (BOOL)isEqual:(id)equal;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration)init;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration)initWithCoder:(id)coder;
- (int64_t)hash;
@end

@implementation ParmesanMiniClockViewConfiguration

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration)initWithCoder:(id)coder
{
  result = sub_23BFFAB00();
  __break(1u);
  return result;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_23BFA2010();

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

  v6 = sub_23BFA2110(v8);

  sub_23BF6D5A0(v8);
  return v6 & 1;
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end