@interface VisualEffectContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC22SubscribePageExtension25VisualEffectContainerView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension25VisualEffectContainerView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation VisualEffectContainerView

- (_TtC22SubscribePageExtension25VisualEffectContainerView)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView);
  v5 = self;
  [v4 sizeThatFits:{width, 1.79769313e308}];
  v7 = v6;
  v9 = v8;
  [(VisualEffectContainerView *)v5 bounds];
  v10 = CGRectGetWidth(v14);

  if (v10 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10029F49C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView) measurementsWithFitting:a4 in:{a3.width, a3.height}];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (_TtC22SubscribePageExtension25VisualEffectContainerView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end