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
  v4 = [(EKUIResizingDateLabel *)self date];
  v5 = CUIKLongDayStringForDate();

  v6 = *MEMORY[0x1E69DB648];
  v28 = *MEMORY[0x1E69DB648];
  v7 = [(EKUIResizingDateLabel *)self font];
  v29[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [v5 sizeWithAttributes:v8];
  v10 = v9;

  if (v10 > Width)
  {
    v11 = [(EKUIResizingDateLabel *)self date];
    v12 = CUIKStringForDateAndDayOfWeekInCalendarTimezone();

    v26 = v6;
    v13 = [(EKUIResizingDateLabel *)self font];
    v27 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v12 sizeWithAttributes:v14];
    v16 = v15;

    if (v16 > Width)
    {
      v17 = [(EKUIResizingDateLabel *)self date];
      v5 = CUIKStringForDateWithCommaAndYear();

      v24 = v6;
      v18 = [(EKUIResizingDateLabel *)self font];
      v25 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v5 sizeWithAttributes:v19];
      v21 = v20;

      if (v21 <= Width)
      {
        goto LABEL_6;
      }

      v22 = [(EKUIResizingDateLabel *)self date];
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
  v3 = [(EKUIResizingDateLabel *)self date];
  v4 = CUIKShortStringForDay();

  v10 = *MEMORY[0x1E69DB648];
  v5 = [(EKUIResizingDateLabel *)self font];
  v11[0] = v5;
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
  v3 = [(EKUIResizingDateLabel *)self stringForDateThatFits];
  [(EKUIResizingDateLabel *)self setText:v3];
}

@end