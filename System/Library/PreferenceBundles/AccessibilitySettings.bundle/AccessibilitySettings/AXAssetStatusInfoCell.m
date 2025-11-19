@interface AXAssetStatusInfoCell
- (AXAssetStatusInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_deleteButtonTapped:(id)a3;
- (void)_downloadButtonTapped:(id)a3;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation AXAssetStatusInfoCell

- (AXAssetStatusInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = AXAssetStatusInfoCell;
  v4 = [(AXAssetStatusInfoCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AXAssetStatusInfoCell *)v4 contentView];
    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    infoLabel = v5->_infoLabel;
    v5->_infoLabel = v7;

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v5->_infoLabel setFont:v9];

    [(UILabel *)v5->_infoLabel setEnabled:0];
    [(UILabel *)v5->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_infoLabel setNumberOfLines:0];
    [(UILabel *)v5->_infoLabel setLineBreakMode:0];
    [(UILabel *)v5->_infoLabel setAccessibilityIdentifier:@"AX_ASSET_STATUS_INFO_CELL"];
    [v6 addSubview:v5->_infoLabel];
    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v10;

    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v5->_spinner setAccessibilityIdentifier:@"Spinner"];
    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v5->_spinner sizeToFit];
    [v6 addSubview:v5->_spinner];
    [(AXAssetStatusInfoCell *)v5 setSeparatorInset:0.0, 58.0, 0.0, 0.0];
  }

  return v5;
}

- (void)updateConstraints
{
  v3 = [(AXAssetStatusInfoCell *)self contentView];
  v4 = _NSDictionaryOfVariableBindings(@"_infoLabel, _spinner", self->_infoLabel, self->_spinner, 0);
  if ([(NSMutableArray *)self->_constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  v5 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v5;

  v7 = self->_constraints;
  +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_infoLabel]-10-|", 0, 0, v4);
  v8 = v20 = v4;
  [(NSMutableArray *)v7 addObjectsFromArray:v8];

  v9 = self->_constraints;
  v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-10-[_infoLabel]-10-|", 0, 0, v4);
  [(NSMutableArray *)v9 addObjectsFromArray:v10];

  v11 = self->_constraints;
  v12 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v13 = [v3 centerXAnchor];
  [v12 constraintEqualToAnchor:v13];
  v14 = v19 = v3;
  v22[0] = v14;
  v15 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v16 = [v3 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v22[1] = v17;
  v18 = [NSArray arrayWithObjects:v22 count:2];
  [(NSMutableArray *)v11 addObjectsFromArray:v18];

  [NSLayoutConstraint activateConstraints:self->_constraints];
  v21.receiver = self;
  v21.super_class = AXAssetStatusInfoCell;
  [(AXAssetStatusInfoCell *)&v21 updateConstraints];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXAssetStatusInfoCell;
  [(AXAssetStatusInfoCell *)&v3 prepareForReuse];
  [(UILabel *)self->_infoLabel setAlpha:0.0];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = AXAssetStatusInfoCell;
  [(AXAssetStatusInfoCell *)&v30 refreshCellContentsWithSpecifier:v4];
  [(AXAssetStatusInfoCell *)self setUserInteractionEnabled:1];
  v5 = [v4 ax_assetState];
  v6 = [v4 ax_asset];
  spinner = self->_spinner;
  if (!v5)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
    [(UILabel *)self->_infoLabel setAlpha:0.0];
    v8 = AXAssetLocalizedString();
    infoLabel = self->_infoLabel;
    goto LABEL_11;
  }

  [(UIActivityIndicatorView *)spinner stopAnimating];
  [(UILabel *)self->_infoLabel setAlpha:1.0];
  if (v5 <= 2)
  {
    if (v5 == (&dword_0 + 1))
    {
      if (v6)
      {
        v22 = [v6 downloadSize];
        v23 = [v22 longLongValue];
      }

      else
      {
        v23 = [v4 ax_assetDownloadBytesExpected];
      }

      v8 = [NSByteCountFormatter stringFromByteCount:v23 countStyle:0];
      v27 = AXAssetLocalizedString();
      v28 = [NSString localizedStringWithFormat:v27, v8];
      [(UILabel *)self->_infoLabel setText:v28];

      if ([v4 ax_assetDownloadButtonHidden])
      {
        goto LABEL_32;
      }

      v11 = [UIImage systemImageNamed:@"icloud.and.arrow.down"];
      v26 = "_downloadButtonTapped:";
LABEL_29:
      v12 = [UIButton systemButtonWithImage:v11 target:self action:v26];
      [(AXAssetStatusInfoCell *)self setAccessoryView:v12];
      goto LABEL_30;
    }

    if (v5 != (&dword_0 + 2))
    {
      goto LABEL_33;
    }

    v14 = [v4 ax_assetDownloadBytesReceived];
    v15 = [v4 ax_assetDownloadBytesExpected];
    if (v15)
    {
      v16 = [NSNumber numberWithDouble:v14 / v15];
      v8 = [NSNumberFormatter localizedStringFromNumber:v16 numberStyle:3];

      v17 = AXAssetLocalizedString();
      [NSString localizedStringWithFormat:v17, v8, v29];
      v19 = LABEL_17:;
      [(UILabel *)self->_infoLabel setText:v19];

      goto LABEL_32;
    }

    v8 = AXAssetLocalizedString();
    infoLabel = self->_infoLabel;
LABEL_11:
    [(UILabel *)infoLabel setText:v8];
LABEL_32:

    goto LABEL_33;
  }

  if (v5 == (&dword_0 + 3))
  {
    v18 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v4 ax_assetDownloadBytesReceived] / objc_msgSend(v4, "ax_assetDownloadBytesExpected"));
    v8 = [NSNumberFormatter localizedStringFromNumber:v18 numberStyle:3];

    v17 = AXAssetLocalizedString();
    [NSString localizedStringWithFormat:@"%@ (%@)", v17, v8];
    goto LABEL_17;
  }

  if (v5 == &dword_4)
  {
    if (v6)
    {
      v20 = [v6 unarchivedFileSize];
      v21 = [v20 longLongValue];
    }

    else
    {
      v21 = [v4 ax_assetUnarchivedFileSize];
    }

    v8 = [NSByteCountFormatter stringFromByteCount:v21 countStyle:0];
    v24 = AXAssetLocalizedString();
    v25 = [NSString localizedStringWithFormat:v24, v8];
    [(UILabel *)self->_infoLabel setText:v25];

    if ([v4 ax_assetDeleteButtonHidden])
    {
      goto LABEL_32;
    }

    v11 = [UIImage systemImageNamed:@"trash"];
    v26 = "_deleteButtonTapped:";
    goto LABEL_29;
  }

  if (v5 == (&dword_4 + 1))
  {
    v8 = [v4 ax_assetError];
    if (!v8)
    {
      v8 = _AXAssetMakeError();
    }

    v9 = AXIsInternalInstall();
    v10 = [v8 localizedDescription];
    v11 = v10;
    if (!v9)
    {
      [(UILabel *)self->_infoLabel setText:v10];
LABEL_31:

      goto LABEL_32;
    }

    v12 = [v10 stringByAppendingString:@"\nInternal Only: Are you on the internal network?"];
    [(UILabel *)self->_infoLabel setText:v12];
LABEL_30:

    goto LABEL_31;
  }

LABEL_33:
  [(AXAssetStatusInfoCell *)self setNeedsUpdateConstraints];
  [(AXAssetStatusInfoCell *)self setNeedsDisplay];
}

- (void)_downloadButtonTapped:(id)a3
{
  v4 = [(AXAssetStatusInfoCell *)self specifier];
  v6 = [v4 ax_assetDownloadButtonTapHandler];

  if (v6)
  {
    v5 = [(AXAssetStatusInfoCell *)self specifier];
    v6[2](v6, v5);
  }
}

- (void)_deleteButtonTapped:(id)a3
{
  v4 = [(AXAssetStatusInfoCell *)self specifier];
  v6 = [v4 ax_assetDeleteButtonTapHandler];

  if (v6)
  {
    v5 = [(AXAssetStatusInfoCell *)self specifier];
    v6[2](v6, v5);
  }
}

@end