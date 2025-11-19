@interface WarlockMiniClockViewConfiguration
- (BOOL)isEqual:(id)a3;
- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)init;
- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)initWithCoder:(id)a3;
@end

@implementation WarlockMiniClockViewConfiguration

- (_TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration)initWithCoder:(id)a3
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_378E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1802C(v8);

  sub_AC98(v8);
  return v6;
}

@end