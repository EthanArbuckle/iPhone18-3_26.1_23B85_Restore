@interface VisualEffectContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider25VisualEffectContainerView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider25VisualEffectContainerView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation VisualEffectContainerView

- (_TtC18ASMessagesProvider25VisualEffectContainerView)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView);
  selfCopy = self;
  [v4 sizeThatFits:{width, 1.79769313e308}];
  v7 = v6;
  v9 = v8;
  [(VisualEffectContainerView *)selfCopy bounds];
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
  selfCopy = self;
  sub_3A6174();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView) measurementsWithFitting:in in:{fitting.width, fitting.height}];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (_TtC18ASMessagesProvider25VisualEffectContainerView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end