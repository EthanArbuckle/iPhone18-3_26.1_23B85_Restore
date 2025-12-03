@interface EditorsChoiceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtension17EditorsChoiceView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation EditorsChoiceView

- (CGSize)sizeThatFits:(CGSize)fits
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_preferredLineCount);
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_shouldCapWidthByAvailableWidth);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useAdsLocale);
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_useCase);
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17EditorsChoiceView_size);
  selfCopy = self;
  sub_100043890(v9, v5, v6, selfCopy, v7, v8, ObjectType);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  height = fitting.height;
  width = fitting.width;
  selfCopy = self;
  [(EditorsChoiceView *)selfCopy sizeThatFits:width, height];
  v8 = v7;
  v10 = v9;
  [(EditorsChoiceView *)selfCopy lastBaselineFromBottom];
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
  selfCopy = self;
  sub_100041760();
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_100041C64(x, y, width, height);
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100041F58();
}

- (_TtC20ProductPageExtension17EditorsChoiceView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end