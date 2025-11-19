@interface DateRangePickerContentView
- (_TtC11MobileNotes26DateRangePickerContentView)initWithCoder:(id)a3;
- (_TtC11MobileNotes26DateRangePickerContentView)initWithFrame:(CGRect)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
@end

@implementation DateRangePickerContentView

- (_TtC11MobileNotes26DateRangePickerContentView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  if (a4 == 1)
  {
    if (([objc_opt_self() isArabic] & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!a4)
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_1003EB2FC(a4, a5);
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

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_1003EB490(v7, a5);
}

- (_TtC11MobileNotes26DateRangePickerContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end