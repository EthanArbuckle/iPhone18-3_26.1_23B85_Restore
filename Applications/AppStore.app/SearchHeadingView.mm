@interface SearchHeadingView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC8AppStore17SearchHeadingView)initWithCoder:(id)a3;
- (void)didPressWithDetailButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation SearchHeadingView

- (_TtC8AppStore17SearchHeadingView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_metrics);
  v3[3] = &type metadata for CGFloat;
  v3[4] = &protocol witness table for CGFloat;
  *v3 = 0;
  v3[8] = &type metadata for CGFloat;
  v3[9] = &protocol witness table for CGFloat;
  v3[5] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100444690();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_100444960(a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)didPressWithDetailButton:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end