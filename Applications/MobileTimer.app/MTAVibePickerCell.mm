@interface MTAVibePickerCell
- (MTAVibePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)title;
- (void)reload;
- (void)setAlarm:(id)alarm;
- (void)setTitle:(id)title;
@end

@implementation MTAVibePickerCell

- (MTAVibePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = MTAVibePickerCell;
  v4 = [(MTAVibePickerCell *)&v15 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTAVibePickerCell *)v4 setAccessoryType:1];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel = [(MTAVibePickerCell *)v5 textLabel];
    [textLabel setFont:v6];

    textLabel2 = [(MTAVibePickerCell *)v5 textLabel];
    [textLabel2 setAdjustsFontForContentSizeCategory:1];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    detailTextLabel = [(MTAVibePickerCell *)v5 detailTextLabel];
    [detailTextLabel setFont:v9];

    detailTextLabel2 = [(MTAVibePickerCell *)v5 detailTextLabel];
    [detailTextLabel2 setAdjustsFontForContentSizeCategory:1];

    v12 = +[UIColor mtui_cellHighlightColor];
    [(MTAVibePickerCell *)v5 setSelectedBackgroundColor:v12];

    v13 = v5;
  }

  return v5;
}

- (void)setAlarm:(id)alarm
{
  v4 = [alarm copy];
  alarm = self->_alarm;
  self->_alarm = v4;

  [(MTAVibePickerCell *)self reload];
}

- (NSString)title
{
  textLabel = [(MTAVibePickerCell *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(MTAVibePickerCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)reload
{
  alarm = [(MTAVibePickerCell *)self alarm];
  sound = [alarm sound];
  vibrationIdentifier = [sound vibrationIdentifier];

  if (vibrationIdentifier)
  {
    v6 = +[TLVibrationManager sharedVibrationManager];
    alarm2 = [(MTAVibePickerCell *)self alarm];
    sound2 = [alarm2 sound];
    vibrationIdentifier2 = [sound2 vibrationIdentifier];
    v10 = [v6 nameOfVibrationWithIdentifier:vibrationIdentifier2];
    detailTextLabel = [(MTAVibePickerCell *)self detailTextLabel];
    [detailTextLabel setText:v10];
  }

  else
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.MobileTimerUI"];
    alarm2 = [v6 localizedStringForKey:@"SLEEP_ALARM_SOUND_NONE" value:&stru_1000AEF10 table:@"MobileTimerUI"];
    sound2 = [(MTAVibePickerCell *)self detailTextLabel];
    [sound2 setText:alarm2];
  }

  detailTextLabel2 = [(MTAVibePickerCell *)self detailTextLabel];
  [detailTextLabel2 sizeToFit];
}

@end