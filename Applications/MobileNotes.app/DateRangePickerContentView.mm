@interface DateRangePickerContentView
- (_TtC11MobileNotes26DateRangePickerContentView)initWithCoder:(id)coder;
- (_TtC11MobileNotes26DateRangePickerContentView)initWithFrame:(CGRect)frame;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation DateRangePickerContentView

- (_TtC11MobileNotes26DateRangePickerContentView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component == 1)
  {
    if (([objc_opt_self() isArabic] & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!component)
  {
    if ([objc_opt_self() isArabic])
    {
LABEL_4:
      v4 = &ICDateFilterRelativeRangeSelectionTypeValidCount;
      return *v4;
    }

LABEL_6:
    v4 = &ICDateFilterTypeSelectionRelativeRangeAmountMax;
    return *v4;
  }

  return 0;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1003EB2FC(row, component);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  sub_1003EB490(viewCopy, component);
}

- (_TtC11MobileNotes26DateRangePickerContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end