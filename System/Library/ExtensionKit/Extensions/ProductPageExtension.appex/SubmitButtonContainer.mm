@interface SubmitButtonContainer
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer)initWithCoder:(id)coder;
- (_TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SubmitButtonContainer

- (_TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SubmitButtonContainer();
  height = [(SubmitButtonContainer *)&v11 initWithFrame:x, y, width, height];
  sub_100016F40(0, &qword_100942F10);
  v8 = height;
  v9 = sub_100770DAC();
  [(SubmitButtonContainer *)v8 setBackgroundColor:v9];

  [(SubmitButtonContainer *)v8 _setCornerRadius:20.0];
  return v8;
}

- (_TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_47F3E09EDC9AF857AC4F1234D992C10921SubmitButtonContainer_submitButton) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_100707F80();
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
  sub_100705380();
}

@end