@interface SleepScoreComponentYAxis
- (_TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis)initWithConfiguration:(id)a3;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation SleepScoreComponentYAxis

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v4 = *(self + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_increment);
  if (v4)
  {
    v5 = *(self + OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_maxValue);
    v6 = self;
    sub_29E70588C(0, v5, v4);

    sub_29E705BFC();
    v7 = sub_29E7543D8();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end