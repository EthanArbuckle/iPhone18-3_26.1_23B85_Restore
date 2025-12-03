@interface SubmitButtonContainer
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubmitButtonContainer

- (_TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SubmitButtonContainer();
  height = [(SubmitButtonContainer *)&v11 initWithFrame:x, y, width, height];
  sub_BE70(0, &qword_93E540);
  v8 = height;
  v9 = sub_76A080();
  [(SubmitButtonContainer *)v8 setBackgroundColor:v9];

  [(SubmitButtonContainer *)v8 _setCornerRadius:20.0];
  return v8;
}

- (_TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_6D25A0();
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
  selfCopy = self;
  sub_6CF9A0();
}

@end