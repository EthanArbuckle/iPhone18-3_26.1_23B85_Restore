@interface PrivacyCategoryView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC22SubscribePageExtension19PrivacyCategoryView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PrivacyCategoryView

- (_TtC22SubscribePageExtension19PrivacyCategoryView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_dataTypesLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002E97AC();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1002EA37C(in);
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

@end