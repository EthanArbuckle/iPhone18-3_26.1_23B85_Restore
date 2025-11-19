@interface HearingSettingsAssetCell
- (HearingSettingsAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)configureConstraints;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateDownloadLabel;
- (void)updateDownloadProgress:(id)a3;
@end

@implementation HearingSettingsAssetCell

- (HearingSettingsAssetCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26.receiver = self;
  v26.super_class = HearingSettingsAssetCell;
  v4 = [(HearingSettingsAssetCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HearingSettingsAssetCell *)v4 titleLabel];
    [v6 setHidden:1];

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
    v17 = [(HearingSettingsAssetCell *)v5 contentView];
    [v17 addSubview:v5->_soundLabel];

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
    v24 = [(HearingSettingsAssetCell *)v5 contentView];
    [v24 addSubview:v5->_downloadSize];

    [(HearingSettingsAssetCell *)v5 configureConstraints];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = HearingSettingsAssetCell;
  v4 = a3;
  [(HearingSettingsAssetCell *)&v7 refreshCellContentsWithSpecifier:v4];
  soundLabel = self->_soundLabel;
  v6 = [v4 name];

  [(UILabel *)soundLabel setText:v6];
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
  v3 = [(HearingSettingsAssetCell *)self constraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  v24 = +[NSMutableArray array];
  soundLabel = self->_soundLabel;
  v5 = [(HearingSettingsAssetCell *)self contentView];
  v6 = [NSLayoutConstraint constraintWithItem:soundLabel attribute:5 relatedBy:0 toItem:v5 attribute:5 multiplier:1.0 constant:15.0];
  [v24 addObject:v6];

  if (([(UILabel *)self->_downloadSize isHidden]& 1) != 0)
  {
    v7 = self->_soundLabel;
    v8 = [(HearingSettingsAssetCell *)self contentView];
    v9 = [NSLayoutConstraint constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
    [v24 addObject:v9];

    v10 = self->_soundLabel;
    v11 = [(HearingSettingsAssetCell *)self contentView];
    v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:v11 attribute:6 multiplier:1.0 constant:0.0];
    [v24 addObject:v12];
  }

  else
  {
    v13 = [(HearingSettingsAssetCell *)self contentView];
    [v13 frame];
    v15 = v14;
    [(UILabel *)self->_soundLabel frame];
    v17 = v16;
    [(UILabel *)self->_downloadSize frame];
    v19 = (v15 - (v17 + v18)) * 0.5;

    v20 = self->_soundLabel;
    v21 = [(HearingSettingsAssetCell *)self contentView];
    v22 = [NSLayoutConstraint constraintWithItem:v20 attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:v19];
    [v24 addObject:v22];

    v23 = [NSLayoutConstraint constraintWithItem:self->_downloadSize attribute:5 relatedBy:0 toItem:self->_soundLabel attribute:5 multiplier:1.0 constant:0.0];
    [v24 addObject:v23];

    v11 = [NSLayoutConstraint constraintWithItem:self->_downloadSize attribute:3 relatedBy:0 toItem:self->_soundLabel attribute:4 multiplier:1.0 constant:0.0];
    [v24 addObject:v11];
  }

  [NSLayoutConstraint activateConstraints:v24];
  [(HearingSettingsAssetCell *)self setConstraints:v24];
}

- (void)updateDownloadLabel
{
  WeakRetained = objc_loadWeakRetained(&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v4 = [WeakRetained userInfo];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 asset];
    v6 = v5;
    if (v5 && [v5 isInstalled])
    {
      v7 = hearingLocString();
      v8 = [v6 downloadSize];
      [v8 floatValue];
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

- (void)updateDownloadProgress:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 floatValue];
    if (v5 == 1.0)
    {
      [(UILabel *)self->_downloadSize setHidden:1];
      [(HearingSettingsAssetCell *)self configureConstraints];
      [(HearingSettingsAssetCell *)self updateDownloadLabel];
    }

    else
    {
      [v4 floatValue];
      if (v7 > 0.0)
      {
        v8 = HCLogComfortSounds();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(HearingSettingsAssetCell *)self soundLabel];
          v10 = [v9 text];
          [v4 floatValue];
          v11 = AXFormatFloatWithPercentage();
          *buf = 138412546;
          v17 = v10;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ Cell setting progress %@", buf, 0x16u);
        }

        downloadSize = self->_downloadSize;
        v13 = hearingLocString();
        [v4 floatValue];
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
      sub_2CF40(v4, v6);
    }
  }
}

- (id)accessibilityValue
{
  v8.receiver = self;
  v8.super_class = HearingSettingsAssetCell;
  v3 = [(HearingSettingsAssetCell *)&v8 accessibilityValue];
  v4 = [(HearingSettingsAssetCell *)self valueLabel];
  v7 = [v4 accessibilityValue];
  v5 = __AXStringForVariables();

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(HearingSettingsAssetCell *)self titleLabel];
  v4 = [v3 accessibilityLabel];
  v7 = [(UILabel *)self->_downloadSize accessibilityLabel];
  v5 = __AXStringForVariables();

  return v5;
}

@end