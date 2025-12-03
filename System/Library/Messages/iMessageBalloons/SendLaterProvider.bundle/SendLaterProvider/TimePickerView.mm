@interface TimePickerView
- (_TtC17SendLaterProvider14TimePickerView)initWithCoder:(id)coder;
- (_TtC17SendLaterProvider14TimePickerView)initWithFrame:(CGRect)frame;
- (void)dateChanged:(id)changed;
- (void)disableKeypad:(id)keypad;
@end

@implementation TimePickerView

- (void)disableKeypad:(id)keypad
{
  sub_4778(0, &qword_15DB8, NSObject_ptr);
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);
  keypadCopy = keypad;
  selfCopy = self;
  v7 = v5;
  LOBYTE(self) = sub_8080();

  if ((self & 1) != 0 && ([objc_opt_self() isInHardwareKeyboardMode] & 1) == 0)
  {
    [keypadCopy resignFirstResponder];
  }
}

- (void)dateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_6D18(changedCopy);
}

- (_TtC17SendLaterProvider14TimePickerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_cancellables) = &_swiftEmptySetSingleton;
  result = sub_80E0();
  __break(1u);
  return result;
}

- (_TtC17SendLaterProvider14TimePickerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end