@interface MTAVibePickerCell
- (MTAVibePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)title;
- (void)reload;
- (void)setAlarm:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MTAVibePickerCell

- (MTAVibePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = MTAVibePickerCell;
  v4 = [(MTAVibePickerCell *)&v15 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTAVibePickerCell *)v4 setAccessoryType:1];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = [(MTAVibePickerCell *)v5 textLabel];
    [v7 setFont:v6];

    v8 = [(MTAVibePickerCell *)v5 textLabel];
    [v8 setAdjustsFontForContentSizeCategory:1];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v10 = [(MTAVibePickerCell *)v5 detailTextLabel];
    [v10 setFont:v9];

    v11 = [(MTAVibePickerCell *)v5 detailTextLabel];
    [v11 setAdjustsFontForContentSizeCategory:1];

    v12 = +[UIColor mtui_cellHighlightColor];
    [(MTAVibePickerCell *)v5 setSelectedBackgroundColor:v12];

    v13 = v5;
  }

  return v5;
}

- (void)setAlarm:(id)a3
{
  v4 = [a3 copy];
  alarm = self->_alarm;
  self->_alarm = v4;

  [(MTAVibePickerCell *)self reload];
}

- (NSString)title
{
  v2 = [(MTAVibePickerCell *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(MTAVibePickerCell *)self textLabel];
  [v5 setText:v4];
}

- (void)reload
{
  v3 = [(MTAVibePickerCell *)self alarm];
  v4 = [v3 sound];
  v5 = [v4 vibrationIdentifier];

  if (v5)
  {
    v6 = +[TLVibrationManager sharedVibrationManager];
    v7 = [(MTAVibePickerCell *)self alarm];
    v8 = [v7 sound];
    v9 = [v8 vibrationIdentifier];
    v10 = [v6 nameOfVibrationWithIdentifier:v9];
    v11 = [(MTAVibePickerCell *)self detailTextLabel];
    [v11 setText:v10];
  }

  else
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    v7 = [v6 localizedStringForKey:@"SLEEP_ALARM_SOUND_NONE" value:&stru_1000AEF10 table:@"MobileTimerUI"];
    v8 = [(MTAVibePickerCell *)self detailTextLabel];
    [v8 setText:v7];
  }

  v12 = [(MTAVibePickerCell *)self detailTextLabel];
  [v12 sizeToFit];
}

@end