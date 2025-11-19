@interface SearchHeadingView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC18ASMessagesProvider17SearchHeadingView)initWithCoder:(id)a3;
- (void)didPressWithDetailButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation SearchHeadingView

- (_TtC18ASMessagesProvider17SearchHeadingView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_metrics);
  v3[3] = &type metadata for CGFloat;
  v3[4] = &protocol witness table for CGFloat;
  *v3 = 0;
  v3[8] = &type metadata for CGFloat;
  v3[9] = &protocol witness table for CGFloat;
  v3[5] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_707F88();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_708258(a4);
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
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end