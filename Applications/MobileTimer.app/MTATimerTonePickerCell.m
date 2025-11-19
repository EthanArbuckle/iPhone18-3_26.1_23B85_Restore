@interface MTATimerTonePickerCell
- (MTATimerTonePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didMoveToSuperview;
@end

@implementation MTATimerTonePickerCell

- (MTATimerTonePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = MTATimerTonePickerCell;
  v4 = [(MTATimerTonePickerCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTATimerTonePickerCell *)v4 setPreservesSuperviewLayoutMargins:0];
    v6 = +[UIColor mtui_buttonBackgroundColor];
    [(MTATimerTonePickerCell *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (void)didMoveToSuperview
{
  v7.receiver = self;
  v7.super_class = MTATimerTonePickerCell;
  [(MTATimerTonePickerCell *)&v7 didMoveToSuperview];
  v3 = [(MTATimerTonePickerCell *)self traitCollection];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge compatibleWithTraitCollection:v3];

  v5 = [(MTATimerTonePickerCell *)self textLabel];
  [v5 setFont:v4];

  v6 = [(MTATimerTonePickerCell *)self detailTextLabel];
  [v6 setFont:v4];
}

@end