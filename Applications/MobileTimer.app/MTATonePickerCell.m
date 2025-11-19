@interface MTATonePickerCell
- (MTATonePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)title;
- (void)reload;
- (void)setAlarm:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MTATonePickerCell

- (MTATonePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = MTATonePickerCell;
  v4 = [(MTATonePickerCell *)&v15 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTATonePickerCell *)v4 setAccessoryType:1];
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = [(MTATonePickerCell *)v5 textLabel];
    [v7 setFont:v6];

    v8 = [(MTATonePickerCell *)v5 textLabel];
    [v8 setAdjustsFontForContentSizeCategory:1];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v10 = [(MTATonePickerCell *)v5 detailTextLabel];
    [v10 setFont:v9];

    v11 = [(MTATonePickerCell *)v5 detailTextLabel];
    [v11 setAdjustsFontForContentSizeCategory:1];

    v12 = +[UIColor mtui_cellHighlightColor];
    [(MTATonePickerCell *)v5 setSelectedBackgroundColor:v12];

    v13 = v5;
  }

  return v5;
}

- (void)setAlarm:(id)a3
{
  v4 = [a3 copy];
  alarm = self->_alarm;
  self->_alarm = v4;

  [(MTATonePickerCell *)self reload];
}

- (NSString)title
{
  v2 = [(MTATonePickerCell *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(MTATonePickerCell *)self textLabel];
  [v5 setText:v4];
}

- (void)reload
{
  v3 = [(MTATonePickerCell *)self alarm];
  v4 = [v3 sound];
  v5 = [v4 soundType];

  if (v5 == 2)
  {
    v6 = +[TLToneManager sharedToneManager];
    v7 = [(MTATonePickerCell *)self alarm];
    v8 = [v7 sound];
    v9 = [(__CFString *)v8 toneIdentifier];
    v10 = [v6 nameForToneIdentifier:v9];
    v11 = [(MTATonePickerCell *)self detailTextLabel];
    [v11 setText:v10];
  }

  else
  {
    v12 = [(MTATonePickerCell *)self alarm];
    v13 = [v12 sound];
    v14 = [v13 soundType];

    if (v14 != 3)
    {
      goto LABEL_8;
    }

    v15 = [MPMediaItem alloc];
    v16 = [(MTATonePickerCell *)self alarm];
    v17 = [v16 sound];
    v18 = [v17 mediaItemIdentifier];
    v6 = [v15 initWithPersistentID:{objc_msgSend(v18, "longLongValue")}];

    v19 = [v6 valueForProperty:MPMediaItemPropertyTitle];
    v20 = v19;
    v21 = &stru_1000AEF10;
    if (v19)
    {
      v21 = v19;
    }

    v8 = v21;

    v7 = [(MTATonePickerCell *)self detailTextLabel];
    [v7 setText:v8];
  }

LABEL_8:
  v22 = [(MTATonePickerCell *)self detailTextLabel];
  [v22 sizeToFit];
}

@end