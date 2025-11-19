@interface VolumeControlView
- (_TtC4Maps17VolumeControlView)initWithFrame:(CGRect)a3;
- (void)buttonTapped:(id)a3;
- (void)swiped:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation VolumeControlView

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003839F0([v4 tag]);
}

- (_TtC4Maps17VolumeControlView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)swiped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003843A4(v4);
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  v4 = sub_100384588(a3.var0, a3.var1, 736, &unk_101644C90);
  v5 = self;
  if (v4)
  {
    v8 = v5;
    Integer = GEOConfigGetInteger();
    if (Integer < 0)
    {
      __break(1u);
      return;
    }

    v7 = v8 + OBJC_IVAR____TtC4Maps17VolumeControlView_currentVolumeGuidance;
    *v7 = Integer;
    v7[8] = 0;
    sub_100382628();
    sub_100382628();
    v5 = v8;
  }
}

@end