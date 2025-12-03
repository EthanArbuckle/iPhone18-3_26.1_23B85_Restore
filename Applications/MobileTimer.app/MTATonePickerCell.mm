@interface MTATonePickerCell
- (MTATonePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)title;
- (void)reload;
- (void)setAlarm:(id)alarm;
- (void)setTitle:(id)title;
@end

@implementation MTATonePickerCell

- (MTATonePickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = MTATonePickerCell;
  v4 = [(MTATonePickerCell *)&v15 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATonePickerCell *)v4 setAccessoryType:1];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel = [(MTATonePickerCell *)v5 textLabel];
    [textLabel setFont:v6];

    textLabel2 = [(MTATonePickerCell *)v5 textLabel];
    [textLabel2 setAdjustsFontForContentSizeCategory:1];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    detailTextLabel = [(MTATonePickerCell *)v5 detailTextLabel];
    [detailTextLabel setFont:v9];

    detailTextLabel2 = [(MTATonePickerCell *)v5 detailTextLabel];
    [detailTextLabel2 setAdjustsFontForContentSizeCategory:1];

    v12 = +[UIColor mtui_cellHighlightColor];
    [(MTATonePickerCell *)v5 setSelectedBackgroundColor:v12];

    v13 = v5;
  }

  return v5;
}

- (void)setAlarm:(id)alarm
{
  v4 = [alarm copy];
  alarm = self->_alarm;
  self->_alarm = v4;

  [(MTATonePickerCell *)self reload];
}

- (NSString)title
{
  textLabel = [(MTATonePickerCell *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(MTATonePickerCell *)self textLabel];
  [textLabel setText:titleCopy];
}

- (void)reload
{
  alarm = [(MTATonePickerCell *)self alarm];
  sound = [alarm sound];
  soundType = [sound soundType];

  if (soundType == 2)
  {
    v6 = +[TLToneManager sharedToneManager];
    alarm2 = [(MTATonePickerCell *)self alarm];
    sound2 = [alarm2 sound];
    toneIdentifier = [(__CFString *)sound2 toneIdentifier];
    v10 = [v6 nameForToneIdentifier:toneIdentifier];
    detailTextLabel = [(MTATonePickerCell *)self detailTextLabel];
    [detailTextLabel setText:v10];
  }

  else
  {
    alarm3 = [(MTATonePickerCell *)self alarm];
    sound3 = [alarm3 sound];
    soundType2 = [sound3 soundType];

    if (soundType2 != 3)
    {
      goto LABEL_8;
    }

    v15 = [MPMediaItem alloc];
    alarm4 = [(MTATonePickerCell *)self alarm];
    sound4 = [alarm4 sound];
    mediaItemIdentifier = [sound4 mediaItemIdentifier];
    v6 = [v15 initWithPersistentID:{objc_msgSend(mediaItemIdentifier, "longLongValue")}];

    v19 = [v6 valueForProperty:MPMediaItemPropertyTitle];
    v20 = v19;
    v21 = &stru_1000AEF10;
    if (v19)
    {
      v21 = v19;
    }

    sound2 = v21;

    alarm2 = [(MTATonePickerCell *)self detailTextLabel];
    [alarm2 setText:sound2];
  }

LABEL_8:
  detailTextLabel2 = [(MTATonePickerCell *)self detailTextLabel];
  [detailTextLabel2 sizeToFit];
}

@end