@interface ZWMenuItemSimpleButtonTableViewCell
- (ZWMenuItemSimpleButtonTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_applyTitleLabelColor;
- (void)setIsChecked:(BOOL)a3;
@end

@implementation ZWMenuItemSimpleButtonTableViewCell

- (ZWMenuItemSimpleButtonTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v90.receiver = self;
  v90.super_class = ZWMenuItemSimpleButtonTableViewCell;
  v4 = [(ZWMenuItemSimpleButtonTableViewCell *)&v90 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    if (_UISolariumEnabled())
    {
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setSelectionStyle:0];
      v5 = +[UIColor clearColor];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setBackgroundColor:v5];

      v6 = objc_alloc_init(UIView);
      v7 = +[UIColor secondarySystemFillColor];
      [v6 setBackgroundColor:v7];

      v8 = [v6 layer];
      [v8 setCornerRadius:27.0];

      v9 = [v6 layer];
      [v9 setMasksToBounds:1];

      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      [v10 addSubview:v6];

      v88 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:24.0];
      v89 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v88];
      v11 = [[UIImageView alloc] initWithImage:v89];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setCheckmarkImageView:v11];

      v12 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

      v13 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [v13 setHidden:1];

      v14 = +[UIColor whiteColor];
      v15 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [v15 setTintColor:v14];

      v16 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      [v6 addSubview:v16];

      v17 = objc_opt_new();
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setCellLabel:v17];

      v18 = +[UIColor whiteColor];
      v19 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v19 setTextColor:v18];

      v20 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v20 setNumberOfLines:0];

      v21 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v21 setTextAlignment:1];

      v22 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      v24 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v24 setFont:v23];

      v25 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v25 setAdjustsFontForContentSizeCategory:1];

      v26 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      [v6 addSubview:v26];

      v27 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v28 = [v27 trailingAnchor];
      v29 = [v6 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setLabelTrailingToPillConstraint:v30];

      v31 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v32 = [v31 trailingAnchor];
      v33 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      v34 = [v33 leadingAnchor];
      v35 = [v32 constraintEqualToAnchor:v34];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 setLabelTrailingToCheckmarkConstraint:v35];

      v87 = [v6 heightAnchor];
      v86 = [v87 constraintGreaterThanOrEqualToConstant:55.0];
      v91[0] = v86;
      v84 = [v6 topAnchor];
      v85 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      v83 = [v85 topAnchor];
      v82 = [v84 constraintEqualToAnchor:v83 constant:4.0];
      v91[1] = v82;
      v80 = [v6 leadingAnchor];
      v81 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      v79 = [v81 leadingAnchor];
      v78 = [v80 constraintEqualToAnchor:v79 constant:16.0];
      v91[2] = v78;
      v76 = [v6 trailingAnchor];
      v77 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      v75 = [v77 trailingAnchor];
      v74 = [v76 constraintEqualToAnchor:v75 constant:-16.0];
      v91[3] = v74;
      v73 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v72 = [v73 centerXAnchor];
      v71 = [v6 centerXAnchor];
      v70 = [v72 constraintEqualToAnchor:v71];
      v91[4] = v70;
      v69 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v68 = [v69 centerYAnchor];
      v67 = [v6 centerYAnchor];
      v66 = [v68 constraintEqualToAnchor:v67];
      v91[5] = v66;
      v65 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v64 = [v65 leadingAnchor];
      v63 = [v6 leadingAnchor];
      v62 = [v64 constraintGreaterThanOrEqualToAnchor:v63];
      v91[6] = v62;
      v61 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 labelTrailingToPillConstraint];
      v91[7] = v61;
      v60 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      v59 = [v60 trailingAnchor];
      v58 = [v6 trailingAnchor];
      v57 = [v59 constraintEqualToAnchor:v58 constant:-10.0];
      v91[8] = v57;
      v56 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      v55 = [v56 centerYAnchor];
      v54 = [v6 centerYAnchor];
      v53 = [v55 constraintEqualToAnchor:v54];
      v91[9] = v53;
      v52 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      v51 = [v52 widthAnchor];
      v50 = [v51 constraintEqualToConstant:24.0];
      v91[10] = v50;
      v49 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 checkmarkImageView];
      v48 = [v49 heightAnchor];
      v47 = [v48 constraintEqualToConstant:24.0];
      v91[11] = v47;
      v46 = [v6 bottomAnchor];
      v36 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 cellLabel];
      v37 = [v36 bottomAnchor];
      v38 = [v46 constraintEqualToAnchor:v37 constant:10.0];
      v91[12] = v38;
      v39 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 contentView];
      v40 = [v39 bottomAnchor];
      v41 = [v6 bottomAnchor];
      v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
      v91[13] = v42;
      v43 = [NSArray arrayWithObjects:v91 count:14];
      [NSLayoutConstraint activateConstraints:v43];

      v44 = v88;
    }

    else
    {
      v6 = [(ZWMenuItemSimpleButtonTableViewCell *)v4 textLabel];
      [(ZWMenuItemSimpleButtonTableViewCell *)v4 _applyTitleLabelColor];
      [v6 setTextAlignment:1];
      [v6 setLineBreakMode:4];
      [v6 setNumberOfLines:1];
      v44 = +[NSNotificationCenter defaultCenter];
      [v44 addObserver:v4 selector:"_applyTitleLabelColor" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
    }
  }

  return v4;
}

- (void)setIsChecked:(BOOL)a3
{
  v3 = a3;
  self->_isChecked = a3;
  v5 = [(ZWMenuItemSimpleButtonTableViewCell *)self checkmarkImageView];
  [v5 setHidden:v3 ^ 1];

  v6 = [(ZWMenuItemSimpleButtonTableViewCell *)self labelTrailingToPillConstraint];
  [v6 setActive:v3 ^ 1];

  v7 = [(ZWMenuItemSimpleButtonTableViewCell *)self labelTrailingToCheckmarkConstraint];
  [v7 setActive:v3];

  v8 = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [v8 setNeedsUpdateConstraints];

  v9 = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [v9 updateConstraintsIfNeeded];

  v10 = [(ZWMenuItemSimpleButtonTableViewCell *)self contentView];
  [v10 layoutIfNeeded];
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