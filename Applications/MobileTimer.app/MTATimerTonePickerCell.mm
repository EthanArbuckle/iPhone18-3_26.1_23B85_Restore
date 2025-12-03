@interface MTATimerTonePickerCell
- (MTATimerTonePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didMoveToSuperview;
@end

@implementation MTATimerTonePickerCell

- (MTATimerTonePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTATimerTonePickerCell;
  v4 = [(MTATimerTonePickerCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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
  traitCollection = [(MTATimerTonePickerCell *)self traitCollection];
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge compatibleWithTraitCollection:traitCollection];

  textLabel = [(MTATimerTonePickerCell *)self textLabel];
  [textLabel setFont:v4];

  detailTextLabel = [(MTATimerTonePickerCell *)self detailTextLabel];
  [detailTextLabel setFont:v4];
}

@end