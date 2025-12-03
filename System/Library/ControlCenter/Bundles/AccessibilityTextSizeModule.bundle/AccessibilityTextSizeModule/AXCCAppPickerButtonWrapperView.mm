@interface AXCCAppPickerButtonWrapperView
- (AXCCAppPickerButtonWrapperView)initWithCoder:(id)coder;
- (void)setHelper:(id)helper;
- (void)setOptions:(id)options;
@end

@implementation AXCCAppPickerButtonWrapperView

- (AXCCAppPickerButtonWrapperView)initWithCoder:(id)coder
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

- (void)setOptions:(id)options
{
  sub_29C946768(0, &qword_2A1798C20);
  v4 = sub_29C9473C0();
  selfCopy = self;
  AppPickerButtonWrapperView.setOptions(_:)(v4);
}

- (void)setHelper:(id)helper
{
  swift_getKeyPath();
  swift_getKeyPath();
  helperCopy = helper;

  sub_29C947210();
}

@end