@interface AXCCAppPickerButtonWrapperView
- (AXCCAppPickerButtonWrapperView)initWithCoder:(id)a3;
- (void)setHelper:(id)a3;
- (void)setOptions:(id)a3;
@end

@implementation AXCCAppPickerButtonWrapperView

- (AXCCAppPickerButtonWrapperView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___AXCCAppPickerButtonWrapperView_model;
  type metadata accessor for AppPickerButtonModel();
  v5 = swift_allocObject();
  sub_29C944FAC();
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_29C9473F0();
  __break(1u);
  return result;
}

- (void)setOptions:(id)a3
{
  sub_29C946768(0, &qword_2A1798C20);
  v4 = sub_29C9473C0();
  v5 = self;
  AppPickerButtonWrapperView.setOptions(_:)(v4);
}

- (void)setHelper:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a3;

  sub_29C947210();
}

@end