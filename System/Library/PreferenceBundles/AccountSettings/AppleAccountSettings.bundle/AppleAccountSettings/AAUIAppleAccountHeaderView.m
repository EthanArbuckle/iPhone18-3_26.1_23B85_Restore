@interface AAUIAppleAccountHeaderView
- (AAUIAppleAccountHeaderView)initWithLabelInsets:(UIEdgeInsets)a3;
- (AAUIAppleAccountHeaderViewDelegate)delegate;
- (double)_scaleValue:(double)a3;
- (void)_updateLabelFonts;
- (void)imageControlTouched:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AAUIAppleAccountHeaderView

- (AAUIAppleAccountHeaderView)initWithLabelInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v60.receiver = self;
  v60.super_class = AAUIAppleAccountHeaderView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [(AAUIAppleAccountHeaderView *)&v60 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v10)
  {
    v11 = [[AAUIImageControl alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    imageControl = v10->_imageControl;
    v10->_imageControl = v11;

    [(AAUIImageControl *)v10->_imageControl setClipsToBounds:1];
    [(AAUIImageControl *)v10->_imageControl _setCornerRadius:40.0];
    [(AAUIImageControl *)v10->_imageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(AAUIImageControl *)v10->_imageControl label];
    [v13 setAdjustsFontSizeToFitWidth:1];

    v14 = [(AAUIImageControl *)v10->_imageControl label];
    [v14 setNumberOfLines:1];

    v15 = [(AAUIImageControl *)v10->_imageControl label];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"APPLEID_EDIT_PHOTO" value:&stru_5A5F0 table:@"Localizable"];
    [v15 setText:v17];

    v18 = [(AAUIImageControl *)v10->_imageControl label];
    [v18 setEdgeInsets:{top, left, bottom, right}];

    [(AAUIImageControl *)v10->_imageControl addTarget:v10 action:"imageControlTouched:" forControlEvents:64];
    v19 = objc_alloc_init(AAUILabel);
    accountHeaderLabel = v10->_accountHeaderLabel;
    v10->_accountHeaderLabel = &v19->super;

    [(UILabel *)v10->_accountHeaderLabel setLineBreakMode:4];
    [(UILabel *)v10->_accountHeaderLabel setTextAlignment:1];
    v21 = v10->_accountHeaderLabel;
    v22 = +[UIColor labelColor];
    [(UILabel *)v21 setColor:v22];

    [(UILabel *)v10->_accountHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_alloc_init(AAUILabel);
    accountHeaderSublabel = v10->_accountHeaderSublabel;
    v10->_accountHeaderSublabel = &v23->super;

    v25 = v10->_accountHeaderSublabel;
    v26 = +[UIColor secondaryLabelColor];
    [(UILabel *)v25 setColor:v26];

    [(UILabel *)v10->_accountHeaderSublabel setTextAlignment:1];
    [(UILabel *)v10->_accountHeaderSublabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_accountHeaderSublabel setNumberOfLines:0];
    [(AAUIAppleAccountHeaderView *)v10 addSubview:v10->_imageControl];
    [(AAUIAppleAccountHeaderView *)v10 addSubview:v10->_accountHeaderLabel];
    [(AAUIAppleAccountHeaderView *)v10 addSubview:v10->_accountHeaderSublabel];
    v59 = [(AAUIImageControl *)v10->_imageControl topAnchor];
    v58 = [(AAUIAppleAccountHeaderView *)v10 topAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:20.0];
    v61[0] = v57;
    v56 = [(AAUIImageControl *)v10->_imageControl widthAnchor];
    v55 = [v56 constraintEqualToConstant:80.0];
    v61[1] = v55;
    v54 = [(AAUIImageControl *)v10->_imageControl heightAnchor];
    v53 = [v54 constraintEqualToConstant:80.0];
    v61[2] = v53;
    v52 = [(AAUIImageControl *)v10->_imageControl centerXAnchor];
    v51 = [(AAUIAppleAccountHeaderView *)v10 centerXAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v61[3] = v50;
    v49 = [(UILabel *)v10->_accountHeaderLabel topAnchor];
    v48 = [(AAUIImageControl *)v10->_imageControl bottomAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:10.0];
    v61[4] = v47;
    v46 = [(UILabel *)v10->_accountHeaderLabel leadingAnchor];
    v45 = [(AAUIAppleAccountHeaderView *)v10 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45 constant:8.0];
    v61[5] = v44;
    v43 = [(UILabel *)v10->_accountHeaderLabel trailingAnchor];
    v42 = [(AAUIAppleAccountHeaderView *)v10 trailingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42 constant:-8.0];
    v61[6] = v41;
    v40 = [(UILabel *)v10->_accountHeaderSublabel topAnchor];
    v39 = [(UILabel *)v10->_accountHeaderLabel bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:2.0];
    v61[7] = v38;
    v37 = [(UILabel *)v10->_accountHeaderSublabel leadingAnchor];
    v27 = [(AAUIAppleAccountHeaderView *)v10 leadingAnchor];
    v28 = [v37 constraintEqualToAnchor:v27 constant:8.0];
    v61[8] = v28;
    v29 = [(UILabel *)v10->_accountHeaderSublabel trailingAnchor];
    v30 = [(AAUIAppleAccountHeaderView *)v10 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-8.0];
    v61[9] = v31;
    v32 = [(UILabel *)v10->_accountHeaderSublabel bottomAnchor];
    v33 = [(AAUIAppleAccountHeaderView *)v10 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-20.0];
    v61[10] = v34;
    v35 = [NSArray arrayWithObjects:v61 count:11];
    [NSLayoutConstraint activateConstraints:v35];

    [(AAUIAppleAccountHeaderView *)v10 _updateLabelFonts];
  }

  return v10;
}

- (void)_updateLabelFonts
{
  v3 = [(AAUIImageControl *)self->_imageControl label];
  [(AAUIAppleAccountHeaderView *)self _scaleValue:10.0];
  v4 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [v3 setFont:v4];

  accountHeaderLabel = self->_accountHeaderLabel;
  v6 = [UIFont systemFontOfSize:26.0 weight:UIFontWeightMedium];
  [(UILabel *)accountHeaderLabel setFont:v6];

  accountHeaderSublabel = self->_accountHeaderSublabel;
  v8 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
  [(UILabel *)accountHeaderSublabel setFont:v8];
}

- (double)_scaleValue:(double)a3
{
  v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  [v4 scaledValueForValue:a3];
  v5 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v7 = v6;

  return v7;
}

- (void)imageControlTouched:(id)a3
{
  v4 = [(AAUIAppleAccountHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AAUIAppleAccountHeaderView *)self delegate];
    [v6 headerViewDidTapImageControl:self];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountHeaderView;
  [(AAUIAppleAccountHeaderView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(AAUIAppleAccountHeaderView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(AAUIAppleAccountHeaderView *)self _updateLabelFonts];
    }
  }
}

- (AAUIAppleAccountHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end