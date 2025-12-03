@interface ZWMenuItemSimpleButtonTableViewCell
- (ZWMenuItemSimpleButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_applyTitleLabelColor;
- (void)setIsChecked:(BOOL)checked;
@end

@implementation ZWMenuItemSimpleButtonTableViewCell

- (ZWMenuItemSimpleButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v90.receiver = self;
  v90.super_class = ZWMenuItemSimpleButtonTableViewCell;
  v4 = [(ZWMenuItemSimpleButtonTableViewCell *)&v90 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    if (_UISolariumEnabled())
    {
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setSelectionStyle:0];
      v5 = +[UIColor clearColor];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setBackgroundColor:v5];

      textLabel = objc_alloc_init(UIView);
      v7 = +[UIColor secondarySystemFillColor];
      [textLabel setBackgroundColor:v7];

      layer = [textLabel layer];
      [layer setCornerRadius:27.0];

      layer2 = [textLabel layer];
      [layer2 setMasksToBounds:1];

      [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      [contentView addSubview:textLabel];

      v88 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:24.0];
      v89 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v88];
      v11 = [[UIImageView alloc] initWithImage:v89];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setCheckmarkImageView:v11];

      checkmarkImageView = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [checkmarkImageView setTranslatesAutoresizingMaskIntoConstraints:0];

      checkmarkImageView2 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [checkmarkImageView2 setHidden:1];

      v14 = +[UIColor whiteColor];
      checkmarkImageView3 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [checkmarkImageView3 setTintColor:v14];

      checkmarkImageView4 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [textLabel addSubview:checkmarkImageView4];

      v17 = objc_opt_new();
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setCellLabel:v17];

      v18 = +[UIColor whiteColor];
      cellLabel = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel setTextColor:v18];

      cellLabel2 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel2 setNumberOfLines:0];

      cellLabel3 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel3 setTextAlignment:1];

      cellLabel4 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      cellLabel5 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel5 setFont:v23];

      cellLabel6 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [cellLabel6 setAdjustsFontForContentSizeCategory:1];

      cellLabel7 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [textLabel addSubview:cellLabel7];

      cellLabel8 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      trailingAnchor = [cellLabel8 trailingAnchor];
      trailingAnchor2 = [textLabel trailingAnchor];
      v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setLabelTrailingToPillConstraint:v30];

      cellLabel9 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      trailingAnchor3 = [cellLabel9 trailingAnchor];
      checkmarkImageView5 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      leadingAnchor = [checkmarkImageView5 leadingAnchor];
      v35 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setLabelTrailingToCheckmarkConstraint:v35];

      heightAnchor = [textLabel heightAnchor];
      v86 = [heightAnchor constraintGreaterThanOrEqualToConstant:55.0];
      v91[0] = v86;
      topAnchor = [textLabel topAnchor];
      contentView2 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      topAnchor2 = [contentView2 topAnchor];
      v82 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
      v91[1] = v82;
      leadingAnchor2 = [textLabel leadingAnchor];
      contentView3 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      leadingAnchor3 = [contentView3 leadingAnchor];
      v78 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:16.0];
      v91[2] = v78;
      trailingAnchor4 = [textLabel trailingAnchor];
      contentView4 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      trailingAnchor5 = [contentView4 trailingAnchor];
      v74 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
      v91[3] = v74;
      cellLabel10 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      centerXAnchor = [cellLabel10 centerXAnchor];
      centerXAnchor2 = [textLabel centerXAnchor];
      v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v91[4] = v70;
      cellLabel11 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      centerYAnchor = [cellLabel11 centerYAnchor];
      centerYAnchor2 = [textLabel centerYAnchor];
      v66 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v91[5] = v66;
      cellLabel12 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      leadingAnchor4 = [cellLabel12 leadingAnchor];
      leadingAnchor5 = [textLabel leadingAnchor];
      v62 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
      v91[6] = v62;
      labelTrailingToPillConstraint = [(ZWMenuItemSimpleButtonTableViewCell *)v4 labelTrailingToPillConstraint];
      v91[7] = labelTrailingToPillConstraint;
      checkmarkImageView6 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      trailingAnchor6 = [checkmarkImageView6 trailingAnchor];
      trailingAnchor7 = [textLabel trailingAnchor];
      v57 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-10.0];
      v91[8] = v57;
      checkmarkImageView7 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      centerYAnchor3 = [checkmarkImageView7 centerYAnchor];
      centerYAnchor4 = [textLabel centerYAnchor];
      v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v91[9] = v53;
      checkmarkImageView8 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      widthAnchor = [checkmarkImageView8 widthAnchor];
      v50 = [widthAnchor constraintEqualToConstant:24.0];
      v91[10] = v50;
      checkmarkImageView9 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      heightAnchor2 = [checkmarkImageView9 heightAnchor];
      v47 = [heightAnchor2 constraintEqualToConstant:24.0];
      v91[11] = v47;
      bottomAnchor = [textLabel bottomAnchor];
      cellLabel13 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      bottomAnchor2 = [cellLabel13 bottomAnchor];
      v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
      v91[12] = v38;
      contentView5 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      bottomAnchor3 = [contentView5 bottomAnchor];
      bottomAnchor4 = [textLabel bottomAnchor];
      v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:4.0];
      v91[13] = v42;
      v43 = [NSArray arrayWithObjects:v91 count:14];
      [NSLayoutConstraint activateConstraints:v43];

      v44 = v88;
    }

    else
    {
      textLabel = [(ZWMenuItemSimpleButtonTableViewCell *)v4 textLabel];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 _applyTitleLabelColor];
      [textLabel setTextAlignment:1];
      [textLabel setLineBreakMode:4];
      [textLabel setNumberOfLines:1];
      v44 = +[NSNotificationCenter defaultCenter];
      [v44 addObserver:v4 selector:"_applyTitleLabelColor" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
    }
  }

  return v4;
}

- (void)setIsChecked:(BOOL)checked
{
  checkedCopy = checked;
  self->_isChecked = checked;
  checkmarkImageView = [(ZWMenuItemSimpleButtonTableViewCell *)self checkmarkImageView];
  [checkmarkImageView setHidden:checkedCopy ^ 1];

  labelTrailingToPillConstraint = [(ZWMenuItemSimpleButtonTableViewCell *)self labelTrailingToPillConstraint];
  [labelTrailingToPillConstraint setActive:checkedCopy ^ 1];

  labelTrailingToCheckmarkConstraint = [(ZWMenuItemSimpleButtonTableViewCell *)self labelTrailingToCheckmarkConstraint];
  [labelTrailingToCheckmarkConstraint setActive:checkedCopy];

  contentView = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [contentView setNeedsUpdateConstraints];

  contentView2 = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [contentView2 updateConstraintsIfNeeded];

  contentView3 = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [contentView3 layoutIfNeeded];
}

- (void)_applyTitleLabelColor
{
  v3 = _UISolariumEnabled();
  v5 = +[UIColor whiteColor];
  if (v3)
  {
    [(ZWMenuItemSimpleButtonTableViewCell *)self cellLabel];
  }

  else
  {
    [(ZWMenuItemSimpleButtonTableViewCell *)self textLabel];
  }
  v4 = ;
  [v4 setTextColor:v5];
}

@end