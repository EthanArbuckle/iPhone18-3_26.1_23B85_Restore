@interface _BHSHealthProfileDatePicker
- (_BHSHealthProfileDatePicker)init;
- (void)layoutSubviews;
@end

@implementation _BHSHealthProfileDatePicker

- (_BHSHealthProfileDatePicker)init
{
  v5.receiver = self;
  v5.super_class = _BHSHealthProfileDatePicker;
  v2 = [(_BHSHealthProfileDatePicker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_BHSHealthProfileDatePicker *)v2 setPreferredDatePickerStyle:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _BHSHealthProfileDatePicker;
  [(_BHSHealthProfileDatePicker *)&v3 layoutSubviews];
  sub_18E0(self);
}

@end