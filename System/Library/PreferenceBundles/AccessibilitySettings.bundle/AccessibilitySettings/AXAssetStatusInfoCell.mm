@interface AXAssetStatusInfoCell
- (AXAssetStatusInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_deleteButtonTapped:(id)tapped;
- (void)_downloadButtonTapped:(id)tapped;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation AXAssetStatusInfoCell

- (AXAssetStatusInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = AXAssetStatusInfoCell;
  v4 = [(AXAssetStatusInfoCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(AXAssetStatusInfoCell *)v4 contentView];
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
    [contentView addSubview:v5->_infoLabel];
    v10 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v10;

    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v5->_spinner setAccessibilityIdentifier:@"Spinner"];
    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v5->_spinner sizeToFit];
    [contentView addSubview:v5->_spinner];
    [(AXAssetStatusInfoCell *)v5 setSeparatorInset:0.0, 58.0, 0.0, 0.0];
  }

  return v5;
}

- (void)updateConstraints
{
  contentView = [(AXAssetStatusInfoCell *)self contentView];
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
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v14 = v19 = contentView;
  v22[0] = v14;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v30.receiver = self;
  v30.super_class = AXAssetStatusInfoCell;
  [(AXAssetStatusInfoCell *)&v30 refreshCellContentsWithSpecifier:specifierCopy];
  [(AXAssetStatusInfoCell *)self setUserInteractionEnabled:1];
  ax_assetState = [specifierCopy ax_assetState];
  ax_asset = [specifierCopy ax_asset];
  spinner = self->_spinner;
  if (!ax_assetState)
  {
    [(UIActivityIndicatorView *)spinner startAnimating];
    [(UILabel *)self->_infoLabel setAlpha:0.0];
    ax_assetError = AXAssetLocalizedString();
    infoLabel = self->_infoLabel;
    goto LABEL_11;
  }

  [(UIActivityIndicatorView *)spinner stopAnimating];
  [(UILabel *)self->_infoLabel setAlpha:1.0];
  if (ax_assetState <= 2)
  {
    if (ax_assetState == (&dword_0 + 1))
    {
      if (ax_asset)
      {
        downloadSize = [ax_asset downloadSize];
        longLongValue = [downloadSize longLongValue];
      }

      else
      {
        longLongValue = [specifierCopy ax_assetDownloadBytesExpected];
      }

      ax_assetError = [NSByteCountFormatter stringFromByteCount:longLongValue countStyle:0];
      v27 = AXAssetLocalizedString();
      v28 = [NSString localizedStringWithFormat:v27, ax_assetError];
      [(UILabel *)self->_infoLabel setText:v28];

      if ([specifierCopy ax_assetDownloadButtonHidden])
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

    if (ax_assetState != (&dword_0 + 2))
    {
      goto LABEL_33;
    }

    ax_assetDownloadBytesReceived = [specifierCopy ax_assetDownloadBytesReceived];
    ax_assetDownloadBytesExpected = [specifierCopy ax_assetDownloadBytesExpected];
    if (ax_assetDownloadBytesExpected)
    {
      v16 = [NSNumber numberWithDouble:ax_assetDownloadBytesReceived / ax_assetDownloadBytesExpected];
      ax_assetError = [NSNumberFormatter localizedStringFromNumber:v16 numberStyle:3];

      v17 = AXAssetLocalizedString();
      [NSString localizedStringWithFormat:v17, ax_assetError, v29];
      v19 = LABEL_17:;
      [(UILabel *)self->_infoLabel setText:v19];

      goto LABEL_32;
    }

    ax_assetError = AXAssetLocalizedString();
    infoLabel = self->_infoLabel;
LABEL_11:
    [(UILabel *)infoLabel setText:ax_assetError];
LABEL_32:

    goto LABEL_33;
  }

  if (ax_assetState == (&dword_0 + 3))
  {
    v18 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [specifierCopy ax_assetDownloadBytesReceived] / objc_msgSend(specifierCopy, "ax_assetDownloadBytesExpected"));
    ax_assetError = [NSNumberFormatter localizedStringFromNumber:v18 numberStyle:3];

    v17 = AXAssetLocalizedString();
    [NSString localizedStringWithFormat:@"%@ (%@)", v17, ax_assetError];
    goto LABEL_17;
  }

  if (ax_assetState == &dword_4)
  {
    if (ax_asset)
    {
      unarchivedFileSize = [ax_asset unarchivedFileSize];
      longLongValue2 = [unarchivedFileSize longLongValue];
    }

    else
    {
      longLongValue2 = [specifierCopy ax_assetUnarchivedFileSize];
    }

    ax_assetError = [NSByteCountFormatter stringFromByteCount:longLongValue2 countStyle:0];
    v24 = AXAssetLocalizedString();
    v25 = [NSString localizedStringWithFormat:v24, ax_assetError];
    [(UILabel *)self->_infoLabel setText:v25];

    if ([specifierCopy ax_assetDeleteButtonHidden])
    {
      goto LABEL_32;
    }

    v11 = [UIImage systemImageNamed:@"trash"];
    v26 = "_deleteButtonTapped:";
    goto LABEL_29;
  }

  if (ax_assetState == (&dword_4 + 1))
  {
    ax_assetError = [specifierCopy ax_assetError];
    if (!ax_assetError)
    {
      ax_assetError = _AXAssetMakeError();
    }

    v9 = AXIsInternalInstall();
    localizedDescription = [ax_assetError localizedDescription];
    v11 = localizedDescription;
    if (!v9)
    {
      [(UILabel *)self->_infoLabel setText:localizedDescription];
LABEL_31:

      goto LABEL_32;
    }

    v12 = [localizedDescription stringByAppendingString:@"\nInternal Only: Are you on the internal network?"];
    [(UILabel *)self->_infoLabel setText:v12];
LABEL_30:

    goto LABEL_31;
  }

LABEL_33:
  [(AXAssetStatusInfoCell *)self setNeedsUpdateConstraints];
  [(AXAssetStatusInfoCell *)self setNeedsDisplay];
}

- (void)_downloadButtonTapped:(id)tapped
{
  specifier = [(AXAssetStatusInfoCell *)self specifier];
  ax_assetDownloadButtonTapHandler = [specifier ax_assetDownloadButtonTapHandler];

  if (ax_assetDownloadButtonTapHandler)
  {
    specifier2 = [(AXAssetStatusInfoCell *)self specifier];
    ax_assetDownloadButtonTapHandler[2](ax_assetDownloadButtonTapHandler, specifier2);
  }
}

- (void)_deleteButtonTapped:(id)tapped
{
  specifier = [(AXAssetStatusInfoCell *)self specifier];
  ax_assetDeleteButtonTapHandler = [specifier ax_assetDeleteButtonTapHandler];

  if (ax_assetDeleteButtonTapHandler)
  {
    specifier2 = [(AXAssetStatusInfoCell *)self specifier];
    ax_assetDeleteButtonTapHandler[2](ax_assetDeleteButtonTapHandler, specifier2);
  }
}

@end