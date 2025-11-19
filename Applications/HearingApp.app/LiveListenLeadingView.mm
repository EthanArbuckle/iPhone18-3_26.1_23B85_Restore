@interface LiveListenLeadingView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)a3;
- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)a3;
@end

@implementation LiveListenLeadingView

- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)a3
{
  v5 = self + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize;
  *v5 = nullsub_1(14.3, 19.0);
  *(v5 + 1) = v6;
  v7 = self + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize;
  *v7 = nullsub_1(28.0, 37.7);
  *(v7 + 1) = v8;
  v12.receiver = self;
  v12.super_class = type metadata accessor for LiveListenLeadingView();
  v9 = a3;
  v10 = [(LiveListenLeadingView *)&v12 initWithCoder:v9];

  if (v10)
  {
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize;
  if (a4 != 4)
  {
    v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize;
  }

  v5 = (self + *v4);
  v6 = *v5;
  v7 = v5[1];
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end