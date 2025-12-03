@interface WarlockMiniClockViewConfiguration
- (BOOL)isEqual:(id)equal;
- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)init;
- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)initWithCoder:(id)coder;
@end

@implementation WarlockMiniClockViewConfiguration

- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)initWithCoder:(id)coder
{
  result = sub_37A30();
  __break(1u);
  return result;
}

- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_378E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1802C(v8);

  sub_AC98(v8);
  return v6;
}

@end