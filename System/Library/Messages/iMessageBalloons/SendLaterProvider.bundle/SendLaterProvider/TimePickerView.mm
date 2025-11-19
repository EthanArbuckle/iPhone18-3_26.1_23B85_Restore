@interface TimePickerView
- (_TtC17SendLaterProvider14TimePickerView)initWithCoder:(id)a3;
- (_TtC17SendLaterProvider14TimePickerView)initWithFrame:(CGRect)a3;
- (void)dateChanged:(id)a3;
- (void)disableKeypad:(id)a3;
@end

@implementation TimePickerView

- (void)disableKeypad:(id)a3
{
  sub_4778(0, &qword_15DB8, NSObject_ptr);
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);
  v6 = a3;
  v8 = self;
  v7 = v5;
  LOBYTE(self) = sub_8080();

  if ((self & 1) != 0 && ([objc_opt_self() isInHardwareKeyboardMode] & 1) == 0)
  {
    [v6 resignFirstResponder];
  }
}

- (void)dateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6D18(v4);
}

- (_TtC17SendLaterProvider14TimePickerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_cancellables) = &_swiftEmptySetSingleton;
  result = sub_80E0();
  __break(1u);
  return result;
}

- (_TtC17SendLaterProvider14TimePickerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end