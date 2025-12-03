@interface PrivacyCategoryView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProvider19PrivacyCategoryView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PrivacyCategoryView

- (_TtC18ASMessagesProvider19PrivacyCategoryView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_dataTypesLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4DADB0();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_4DB980(in);
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