@interface EditorsChoiceView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC22SubscribePageExtension17EditorsChoiceView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation EditorsChoiceView

- (CGSize)sizeThatFits:(CGSize)a3
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_preferredLineCount);
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_shouldCapWidthByAvailableWidth);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale);
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useCase);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_size);
  v10 = self;
  sub_1006BE438(v9, v5, v6, v10, v7, v8, ObjectType);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = self;
  [(EditorsChoiceView *)v6 sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  [(EditorsChoiceView *)v6 lastBaselineFromBottom];
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006BB8B4();
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1006BBDB8(x, y, width, height);
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_1006BC0AC();
}

- (_TtC22SubscribePageExtension17EditorsChoiceView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end