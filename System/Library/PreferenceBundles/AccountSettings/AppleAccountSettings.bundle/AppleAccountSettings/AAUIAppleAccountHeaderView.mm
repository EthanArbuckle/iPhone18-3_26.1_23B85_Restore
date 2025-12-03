@interface AAUIAppleAccountHeaderView
- (AAUIAppleAccountHeaderView)initWithLabelInsets:(UIEdgeInsets)insets;
- (AAUIAppleAccountHeaderViewDelegate)delegate;
- (double)_scaleValue:(double)value;
- (void)_updateLabelFonts;
- (void)imageControlTouched:(id)touched;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AAUIAppleAccountHeaderView

- (AAUIAppleAccountHeaderView)initWithLabelInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v60.receiver = self;
  v60.super_class = AAUIAppleAccountHeaderView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(AAUIAppleAccountHeaderView *)&v60 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    height2 = [[AAUIImageControl alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    imageControl = height->_imageControl;
    height->_imageControl = height2;

    [(AAUIImageControl *)height->_imageControl setClipsToBounds:1];
    [(AAUIImageControl *)height->_imageControl _setCornerRadius:40.0];
    [(AAUIImageControl *)height->_imageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    label = [(AAUIImageControl *)height->_imageControl label];
    [label setAdjustsFontSizeToFitWidth:1];

    label2 = [(AAUIImageControl *)height->_imageControl label];
    [label2 setNumberOfLines:1];

    label3 = [(AAUIImageControl *)height->_imageControl label];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"APPLEID_EDIT_PHOTO" value:&stru_5A5F0 table:@"Localizable"];
    [label3 setText:v17];

    label4 = [(AAUIImageControl *)height->_imageControl label];
    [label4 setEdgeInsets:{top, left, bottom, right}];

    [(AAUIImageControl *)height->_imageControl addTarget:height action:"imageControlTouched:" forControlEvents:64];
    v19 = objc_alloc_init(AAUILabel);
    accountHeaderLabel = height->_accountHeaderLabel;
    height->_accountHeaderLabel = &v19->super;

    [(UILabel *)height->_accountHeaderLabel setLineBreakMode:4];
    [(UILabel *)height->_accountHeaderLabel setTextAlignment:1];
    v21 = height->_accountHeaderLabel;
    v22 = +[UIColor labelColor];
    [(UILabel *)v21 setColor:v22];

    [(UILabel *)height->_accountHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_alloc_init(AAUILabel);
    accountHeaderSublabel = height->_accountHeaderSublabel;
    height->_accountHeaderSublabel = &v23->super;

    v25 = height->_accountHeaderSublabel;
    v26 = +[UIColor secondaryLabelColor];
    [(UILabel *)v25 setColor:v26];

    [(UILabel *)height->_accountHeaderSublabel setTextAlignment:1];
    [(UILabel *)height->_accountHeaderSublabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)height->_accountHeaderSublabel setNumberOfLines:0];
    [(AAUIAppleAccountHeaderView *)height addSubview:height->_imageControl];
    [(AAUIAppleAccountHeaderView *)height addSubview:height->_accountHeaderLabel];
    [(AAUIAppleAccountHeaderView *)height addSubview:height->_accountHeaderSublabel];
    topAnchor = [(AAUIImageControl *)height->_imageControl topAnchor];
    topAnchor2 = [(AAUIAppleAccountHeaderView *)height topAnchor];
    v57 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    v61[0] = v57;
    widthAnchor = [(AAUIImageControl *)height->_imageControl widthAnchor];
    v55 = [widthAnchor constraintEqualToConstant:80.0];
    v61[1] = v55;
    heightAnchor = [(AAUIImageControl *)height->_imageControl heightAnchor];
    v53 = [heightAnchor constraintEqualToConstant:80.0];
    v61[2] = v53;
    centerXAnchor = [(AAUIImageControl *)height->_imageControl centerXAnchor];
    centerXAnchor2 = [(AAUIAppleAccountHeaderView *)height centerXAnchor];
    v50 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[3] = v50;
    topAnchor3 = [(UILabel *)height->_accountHeaderLabel topAnchor];
    bottomAnchor = [(AAUIImageControl *)height->_imageControl bottomAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
    v61[4] = v47;
    leadingAnchor = [(UILabel *)height->_accountHeaderLabel leadingAnchor];
    leadingAnchor2 = [(AAUIAppleAccountHeaderView *)height leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v61[5] = v44;
    trailingAnchor = [(UILabel *)height->_accountHeaderLabel trailingAnchor];
    trailingAnchor2 = [(AAUIAppleAccountHeaderView *)height trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v61[6] = v41;
    topAnchor4 = [(UILabel *)height->_accountHeaderSublabel topAnchor];
    bottomAnchor2 = [(UILabel *)height->_accountHeaderLabel bottomAnchor];
    v38 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    v61[7] = v38;
    leadingAnchor3 = [(UILabel *)height->_accountHeaderSublabel leadingAnchor];
    leadingAnchor4 = [(AAUIAppleAccountHeaderView *)height leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v61[8] = v28;
    trailingAnchor3 = [(UILabel *)height->_accountHeaderSublabel trailingAnchor];
    trailingAnchor4 = [(AAUIAppleAccountHeaderView *)height trailingAnchor];
    v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-8.0];
    v61[9] = v31;
    bottomAnchor3 = [(UILabel *)height->_accountHeaderSublabel bottomAnchor];
    bottomAnchor4 = [(AAUIAppleAccountHeaderView *)height bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-20.0];
    v61[10] = v34;
    v35 = [NSArray arrayWithObjects:v61 count:11];
    [NSLayoutConstraint activateConstraints:v35];

    [(AAUIAppleAccountHeaderView *)height _updateLabelFonts];
  }

  return height;
}

- (void)_updateLabelFonts
{
  label = [(AAUIImageControl *)self->_imageControl label];
  [(AAUIAppleAccountHeaderView *)self _scaleValue:10.0];
  v4 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [label setFont:v4];

  accountHeaderLabel = self->_accountHeaderLabel;
  v6 = [UIFont systemFontOfSize:26.0 weight:UIFontWeightMedium];
  [(UILabel *)accountHeaderLabel setFont:v6];

  accountHeaderSublabel = self->_accountHeaderSublabel;
  v8 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
  [(UILabel *)accountHeaderSublabel setFont:v8];
}

- (double)_scaleValue:(double)value
{
  v4 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  [v4 scaledValueForValue:value];
  v5 = +[UIScreen mainScreen];
  UIRoundToScreenScale();
  v7 = v6;

  return v7;
}

- (void)imageControlTouched:(id)touched
{
  delegate = [(AAUIAppleAccountHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AAUIAppleAccountHeaderView *)self delegate];
    [delegate2 headerViewDidTapImageControl:self];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = AAUIAppleAccountHeaderView;
  [(AAUIAppleAccountHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(AAUIAppleAccountHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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