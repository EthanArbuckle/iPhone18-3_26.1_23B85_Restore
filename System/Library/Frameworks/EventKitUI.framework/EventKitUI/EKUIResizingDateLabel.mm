@interface EKUIResizingDateLabel
- (CGSize)intrinsicContentSize;
- (double)minDateLabelWidth;
- (id)stringForDateThatFits;
- (void)layoutSubviews;
@end

@implementation EKUIResizingDateLabel

- (CGSize)intrinsicContentSize
{
  v2 = 1000.0;
  v3 = 1000.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)stringForDateThatFits
{
  v29[1] = *MEMORY[0x1E69E9840];
  [(EKUIResizingDateLabel *)self bounds];
  Width = CGRectGetWidth(v31);
  date = [(EKUIResizingDateLabel *)self date];
  v5 = CUIKLongDayStringForDate();

  v6 = *MEMORY[0x1E69DB648];
  v28 = *MEMORY[0x1E69DB648];
  font = [(EKUIResizingDateLabel *)self font];
  v29[0] = font;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [v5 sizeWithAttributes:v8];
  v10 = v9;

  if (v10 > Width)
  {
    date2 = [(EKUIResizingDateLabel *)self date];
    v12 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();

    v26 = v6;
    font2 = [(EKUIResizingDateLabel *)self font];
    v27 = font2;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v12 sizeWithAttributes:v14];
    v16 = v15;

    if (v16 > Width)
    {
      date3 = [(EKUIResizingDateLabel *)self date];
      v5 = CUIKStringForDateWithCommaAndYear();

      v24 = v6;
      font3 = [(EKUIResizingDateLabel *)self font];
      v25 = font3;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v5 sizeWithAttributes:v19];
      v21 = v20;

      if (v21 <= Width)
      {
        goto LABEL_6;
      }

      date4 = [(EKUIResizingDateLabel *)self date];
      v12 = CUIKShortStringForDay();
    }

    v5 = v12;
  }

LABEL_6:

  return v5;
}

- (double)minDateLabelWidth
{
  v11[1] = *MEMORY[0x1E69E9840];
  date = [(EKUIResizingDateLabel *)self date];
  v4 = CUIKShortStringForDay();

  v10 = *MEMORY[0x1E69DB648];
  font = [(EKUIResizingDateLabel *)self font];
  v11[0] = font;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 sizeWithAttributes:v6];
  v8 = v7;

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKUIResizingDateLabel;
  [(EKUIResizingDateLabel *)&v4 layoutSubviews];
  stringForDateThatFits = [(EKUIResizingDateLabel *)self stringForDateThatFits];
  [(EKUIResizingDateLabel *)self setText:stringForDateThatFits];
}

@end