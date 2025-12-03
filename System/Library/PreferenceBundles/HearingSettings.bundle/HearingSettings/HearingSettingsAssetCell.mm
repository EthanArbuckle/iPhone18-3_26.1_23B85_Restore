@interface HearingSettingsAssetCell
- (HearingSettingsAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)configureConstraints;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateDownloadLabel;
- (void)updateDownloadProgress:(id)progress;
@end

@implementation HearingSettingsAssetCell

- (HearingSettingsAssetCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = HearingSettingsAssetCell;
  v4 = [(HearingSettingsAssetCell *)&v26 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleLabel = [(HearingSettingsAssetCell *)v4 titleLabel];
    [titleLabel setHidden:1];

    v7 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    soundLabel = v5->_soundLabel;
    v5->_soundLabel = v11;

    [(UILabel *)v5->_soundLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = v5->_soundLabel;
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v13 setFont:v14];

    v15 = v5->_soundLabel;
    v16 = +[UIColor clearColor];
    [(UILabel *)v15 setBackgroundColor:v16];

    [(UILabel *)v5->_soundLabel setNumberOfLines:0];
    contentView = [(HearingSettingsAssetCell *)v5 contentView];
    [contentView addSubview:v5->_soundLabel];

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    downloadSize = v5->_downloadSize;
    v5->_downloadSize = v18;

    [(UILabel *)v5->_downloadSize setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v5->_downloadSize;
    v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v5->_downloadSize setAdjustsFontSizeToFitWidth:1];
    v22 = v5->_downloadSize;
    v23 = +[UIColor clearColor];
    [(UILabel *)v22 setBackgroundColor:v23];

    [(UILabel *)v5->_downloadSize setHidden:1];
    contentView2 = [(HearingSettingsAssetCell *)v5 contentView];
    [contentView2 addSubview:v5->_downloadSize];

    [(HearingSettingsAssetCell *)v5 configureConstraints];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = HearingSettingsAssetCell;
  specifierCopy = specifier;
  [(HearingSettingsAssetCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  soundLabel = self->_soundLabel;
  name = [specifierCopy name];

  [(UILabel *)soundLabel setText:name];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HearingSettingsAssetCell;
  [(HearingSettingsAssetCell *)&v3 prepareForReuse];
  [(UILabel *)self->_downloadSize setHidden:1];
  [(HearingSettingsAssetCell *)self configureConstraints];
}

- (void)configureConstraints
{
  constraints = [(HearingSettingsAssetCell *)self constraints];
  [NSLayoutConstraint deactivateConstraints:constraints];

  v24 = +[NSMutableArray array];
  soundLabel = self->_soundLabel;
  contentView = [(HearingSettingsAssetCell *)self contentView];
  v6 = [NSLayoutConstraint constraintWithItem:soundLabel attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:15.0];
  [v24 addObject:v6];

  if (([(UILabel *)self->_downloadSize isHidden]& 1) != 0)
  {
    v7 = self->_soundLabel;
    contentView2 = [(HearingSettingsAssetCell *)self contentView];
    v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
    [v24 addObject:v9];

    v10 = self->_soundLabel;
    contentView3 = [(HearingSettingsAssetCell *)self contentView];
    v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:contentView3 attribute:6 multiplier:1.0 constant:0.0];
    [v24 addObject:v12];
  }

  else
  {
    contentView4 = [(HearingSettingsAssetCell *)self contentView];
    [contentView4 frame];
    v15 = v14;
    [(UILabel *)self->_soundLabel frame];
    v17 = v16;
    [(UILabel *)self->_downloadSize frame];
    v19 = (v15 - (v17 + v18)) * 0.5;

    v20 = self->_soundLabel;
    contentView5 = [(HearingSettingsAssetCell *)self contentView];
    v22 = [NSLayoutConstraint constraintWithItem:v20 attribute:3 relatedBy:0 toItem:contentView5 attribute:3 multiplier:1.0 constant:v19];
    [v24 addObject:v22];

    v23 = [NSLayoutConstraint constraintWithItem:self->_downloadSize attribute:5 relatedBy:0 toItem:self->_soundLabel attribute:5 multiplier:1.0 constant:0.0];
    [v24 addObject:v23];

    contentView3 = [NSLayoutConstraint constraintWithItem:self->_downloadSize attribute:3 relatedBy:0 toItem:self->_soundLabel attribute:4 multiplier:1.0 constant:0.0];
    [v24 addObject:contentView3];
  }

  [NSLayoutConstraint activateConstraints:v24];
  [(HearingSettingsAssetCell *)self setConstraints:v24];
}

- (void)updateDownloadLabel
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  userInfo = [WeakRetained userInfo];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset = [userInfo asset];
    v6 = asset;
    if (asset && [asset isInstalled])
    {
      v7 = hearingLocString();
      downloadSize = [v6 downloadSize];
      [downloadSize floatValue];
      v10 = v9;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v11 = off_574B8;
      v19 = off_574B8;
      if (!off_574B8)
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_21798;
        v15[3] = &unk_48A48;
        v15[4] = &v16;
        sub_21798(v15);
        v11 = v17[3];
      }

      _Block_object_dispose(&v16, 8);
      if (!v11)
      {
        v14 = sub_2CF1C();
        _Block_object_dispose(&v16, 8);
        _Unwind_Resume(v14);
      }

      v12 = v11(v10);
      v13 = [NSString stringWithFormat:v7, v12];
      [(UILabel *)self->_downloadSize setText:v13];

      [(UILabel *)self->_downloadSize sizeToFit];
      [(UILabel *)self->_downloadSize setHidden:[(HearingSettingsAssetCell *)self isEditing]^ 1];
      [(HearingSettingsAssetCell *)self configureConstraints];
    }
  }
}

- (void)updateDownloadProgress:(id)progress
{
  progressCopy = progress;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [progressCopy floatValue];
    if (v5 == 1.0)
    {
      [(UILabel *)self->_downloadSize setHidden:1];
      [(HearingSettingsAssetCell *)self configureConstraints];
      [(HearingSettingsAssetCell *)self updateDownloadLabel];
    }

    else
    {
      [progressCopy floatValue];
      if (v7 > 0.0)
      {
        v8 = HCLogComfortSounds();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          soundLabel = [(HearingSettingsAssetCell *)self soundLabel];
          text = [soundLabel text];
          [progressCopy floatValue];
          v11 = AXFormatFloatWithPercentage();
          *buf = 138412546;
          v17 = text;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ Cell setting progress %@", buf, 0x16u);
        }

        downloadSize = self->_downloadSize;
        v13 = hearingLocString();
        [progressCopy floatValue];
        v14 = AXFormatFloatWithPercentage();
        v15 = [NSString stringWithFormat:v13, v14];
        [(UILabel *)downloadSize setText:v15];

        [(UILabel *)self->_downloadSize sizeToFit];
        [(UILabel *)self->_downloadSize setHidden:0];
        [(HearingSettingsAssetCell *)self configureConstraints];
      }
    }
  }

  else
  {
    v6 = HCLogComfortSounds();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2CF40(progressCopy, v6);
    }
  }
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = HearingSettingsAssetCell;
  accessibilityValue = [(HearingSettingsAssetCell *)&v8 accessibilityValue];
  valueLabel = [(HearingSettingsAssetCell *)self valueLabel];
  accessibilityValue2 = [valueLabel accessibilityValue];
  v5 = __AXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  titleLabel = [(HearingSettingsAssetCell *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];
  accessibilityLabel2 = [(UILabel *)self->_downloadSize accessibilityLabel];
  v5 = __AXStringForVariables();

  return v5;
}

@end