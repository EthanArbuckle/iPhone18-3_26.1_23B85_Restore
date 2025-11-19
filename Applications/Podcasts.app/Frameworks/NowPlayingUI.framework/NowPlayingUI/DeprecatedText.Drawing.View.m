@interface DeprecatedText.Drawing.View
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtCVV12NowPlayingUI14DeprecatedText7Drawing4View)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation DeprecatedText.Drawing.View

- (_TtCVV12NowPlayingUI14DeprecatedText7Drawing4View)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View_isDisabled) = 0;
  v3 = (self + OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext);
  sub_42908(v9);
  v4 = v9[5];
  v3[4] = v9[4];
  v3[5] = v4;
  v5 = v9[7];
  v3[6] = v9[6];
  v3[7] = v5;
  v6 = v9[1];
  *v3 = v9[0];
  v3[1] = v6;
  v7 = v9[3];
  v3[2] = v9[2];
  v3[3] = v7;
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_11E914();
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v5 = sub_1448DC();
  v7 = v6;
  v11.receiver = self;
  v11.super_class = _s4ViewCMa();
  v8 = self;
  if ([(DeprecatedText.Drawing.View *)&v11 _shouldAnimatePropertyWithKey:a3]|| v5 == 0x73746E65746E6F63 && v7 == 0xE800000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_1453BC();
  }

  return v9 & 1;
}

@end