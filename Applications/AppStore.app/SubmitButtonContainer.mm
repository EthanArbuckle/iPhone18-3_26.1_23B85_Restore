@interface SubmitButtonContainer
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SubmitButtonContainer

- (_TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SubmitButtonContainer();
  v7 = [(SubmitButtonContainer *)&v11 initWithFrame:x, y, width, height];
  sub_100005744(0, &qword_100970180);
  v8 = v7;
  v9 = static UIColor.defaultButtonBackgroundColor.getter();
  [(SubmitButtonContainer *)v8 setBackgroundColor:v9];

  [(SubmitButtonContainer *)v8 _setCornerRadius:20.0];
  return v8;
}

- (_TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100736954();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
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
  sub_100733E3C();
}

@end