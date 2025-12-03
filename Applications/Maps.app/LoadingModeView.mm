@interface LoadingModeView
- (LoadingModeView)initWithTitle:(id)title axis:(int64_t)axis;
- (void)setBottomInset:(double)inset;
- (void)setupConstraints;
- (void)startAnimating;
- (void)updateTheme;
@end

@implementation LoadingModeView

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_activityView setHidden:0];
  activityView = self->_activityView;

  [(UIActivityIndicatorView *)activityView startAnimating];
}

- (void)setupConstraints
{
  axis = self->_axis;
  if (axis == 1)
  {
    bottomAnchor = [(LoadingModeView *)self bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
    v24 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    bottomContentConstraint = self->_bottomContentConstraint;
    self->_bottomContentConstraint = v24;

    v57[0] = self->_bottomContentConstraint;
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(LoadingModeView *)self topAnchor];
    v56 = topAnchor;
    v54 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
    v57[1] = v54;
    leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(LoadingModeView *)self leadingAnchor];
    v53 = leadingAnchor;
    v51 = [leadingAnchor constraintEqualToAnchor:16.0 constant:?];
    v57[2] = v51;
    trailingAnchor = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(LoadingModeView *)self trailingAnchor];
    v50 = trailingAnchor;
    v48 = [trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
    v57[3] = v48;
    centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
    centerYAnchor2 = [(LoadingModeView *)self centerYAnchor];
    v47 = centerYAnchor;
    v45 = [centerYAnchor constraintEqualToAnchor:?];
    v57[4] = v45;
    topAnchor3 = [(UIActivityIndicatorView *)self->_activityView topAnchor];
    topAnchor4 = [(UIView *)self->_contentView topAnchor];
    v44 = topAnchor3;
    v42 = [topAnchor3 constraintEqualToAnchor:?];
    v57[5] = v42;
    bottomAnchor3 = [(UIActivityIndicatorView *)self->_activityView bottomAnchor];
    topAnchor5 = [(UILabel *)self->_titleLabel topAnchor];
    v41 = bottomAnchor3;
    v39 = [bottomAnchor3 constraintEqualToAnchor:-5.0 constant:?];
    v57[6] = v39;
    bottomAnchor4 = [(UILabel *)self->_titleLabel bottomAnchor];
    bottomAnchor5 = [(UIView *)self->_contentView bottomAnchor];
    v38 = bottomAnchor4;
    v36 = [bottomAnchor4 constraintEqualToAnchor:?];
    v57[7] = v36;
    centerXAnchor = [(UIActivityIndicatorView *)self->_activityView centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v57[8] = v17;
    leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v57[9] = v20;
    trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_contentView trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v57[10] = v35;
    v21 = [NSArray arrayWithObjects:v57 count:11];
  }

  else
  {
    if (axis)
    {
      v21 = 0;
      goto LABEL_7;
    }

    bottomAnchor6 = [(LoadingModeView *)self bottomAnchor];
    bottomAnchor7 = [(UIView *)self->_contentView bottomAnchor];
    v6 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v7 = self->_bottomContentConstraint;
    self->_bottomContentConstraint = v6;

    v58[0] = self->_bottomContentConstraint;
    topAnchor6 = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(LoadingModeView *)self topAnchor];
    v56 = topAnchor6;
    v54 = [topAnchor6 constraintEqualToAnchor:?];
    v58[1] = v54;
    leadingAnchor5 = [(UIView *)self->_contentView leadingAnchor];
    leadingAnchor2 = [(LoadingModeView *)self leadingAnchor];
    v53 = leadingAnchor5;
    v51 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:?];
    v58[2] = v51;
    trailingAnchor5 = [(UIView *)self->_contentView trailingAnchor];
    trailingAnchor2 = [(LoadingModeView *)self trailingAnchor];
    v50 = trailingAnchor5;
    v48 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:?];
    v58[3] = v48;
    centerXAnchor3 = [(UIView *)self->_contentView centerXAnchor];
    centerYAnchor2 = [(LoadingModeView *)self centerXAnchor];
    v47 = centerXAnchor3;
    v45 = [centerXAnchor3 constraintEqualToAnchor:?];
    v58[4] = v45;
    leadingAnchor6 = [(UIActivityIndicatorView *)self->_activityView leadingAnchor];
    topAnchor4 = [(UIView *)self->_contentView leadingAnchor];
    v44 = leadingAnchor6;
    v42 = [leadingAnchor6 constraintEqualToAnchor:?];
    v58[5] = v42;
    trailingAnchor6 = [(UIActivityIndicatorView *)self->_activityView trailingAnchor];
    topAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
    v41 = trailingAnchor6;
    v39 = [trailingAnchor6 constraintEqualToAnchor:-5.0 constant:?];
    v58[6] = v39;
    trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
    bottomAnchor5 = [(UIView *)self->_contentView trailingAnchor];
    v38 = trailingAnchor7;
    v36 = [trailingAnchor7 constraintEqualToAnchor:?];
    v58[7] = v36;
    centerXAnchor = [(UIActivityIndicatorView *)self->_activityView centerYAnchor];
    centerXAnchor2 = [(UIView *)self->_contentView centerYAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v58[8] = v17;
    leadingAnchor3 = [(UILabel *)self->_titleLabel centerYAnchor];
    leadingAnchor4 = [(UIView *)self->_contentView centerYAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v58[9] = v20;
    v21 = [NSArray arrayWithObjects:v58 count:10];
  }

LABEL_7:
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)setBottomInset:(double)inset
{
  [(NSLayoutConstraint *)self->_bottomContentConstraint constant];
  if (v5 != inset)
  {
    [(NSLayoutConstraint *)self->_bottomContentConstraint setConstant:inset];

    [(LoadingModeView *)self setNeedsLayout];
  }
}

- (LoadingModeView)initWithTitle:(id)title axis:(int64_t)axis
{
  titleCopy = title;
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v21.receiver = self;
  v21.super_class = LoadingModeView;
  v8 = [(LoadingModeView *)&v21 initWithFrame:?];

  if (v8)
  {
    [(LoadingModeView *)v8 _setHostsLayoutEngine:1];
    [(LoadingModeView *)v8 setUserInteractionEnabled:0];
    v9 = +[UIColor clearColor];
    [(LoadingModeView *)v8 setBackgroundColor:v9];

    [(LoadingModeView *)v8 setClipsToBounds:1];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [(LoadingModeView *)v8 setAccessibilityIdentifier:v11];

    v8->_axis = axis;
    v12 = [UIView alloc];
    [(LoadingModeView *)v8 bounds];
    v13 = [v12 initWithFrame:?];
    contentView = v8->_contentView;
    v8->_contentView = v13;

    [(UIView *)v8->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8->_contentView setAccessibilityIdentifier:@"LoadingModeContentView"];
    [(LoadingModeView *)v8 addSubview:v8->_contentView];
    v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityView = v8->_activityView;
    v8->_activityView = v15;

    [(UIActivityIndicatorView *)v8->_activityView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v8->_activityView setAccessibilityIdentifier:@"LoadingModeActivityView"];
    [(UIView *)v8->_contentView addSubview:v8->_activityView];
    [(UIActivityIndicatorView *)v8->_activityView startAnimating];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v17;

    [(UILabel *)v8->_titleLabel setText:titleCopy];
    v19 = +[UIColor secondaryLabelColor];
    [(UILabel *)v8->_titleLabel setTextColor:v19];

    [(UILabel *)v8->_titleLabel setAccessibilityIdentifier:@"LoadingModeTitle"];
    if (axis == 1)
    {
      [(UILabel *)v8->_titleLabel setNumberOfLines:0];
      [(UILabel *)v8->_titleLabel setTextAlignment:1];
    }

    [DynamicTypeWizard autorefreshLabel:v8->_titleLabel withFontProvider:&stru_1016509D0];
    [(UILabel *)v8->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v8->_contentView addSubview:v8->_titleLabel];
    [(LoadingModeView *)v8 setupConstraints];
  }

  return v8;
}

- (void)updateTheme
{
  v4.receiver = self;
  v4.super_class = LoadingModeView;
  [(MapsThemeView *)&v4 updateTheme];
  theme = [(LoadingModeView *)self theme];
  -[UIActivityIndicatorView setActivityIndicatorViewStyle:](self->_activityView, "setActivityIndicatorViewStyle:", [theme activityIndicatorStyle]);
}

@end