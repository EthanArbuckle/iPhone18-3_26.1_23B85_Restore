@interface LookAroundTrayHeaderViewController
- (TrayHeaderDelegate)delegate;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)trayHeaderDidReceiveTap:(id)tap;
- (void)viewDidLoad;
@end

@implementation LookAroundTrayHeaderViewController

- (TrayHeaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setupConstraints
{
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  view = [(LookAroundTrayHeaderViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v33[0] = v29;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  view2 = [(LookAroundTrayHeaderViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v33[1] = v25;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  view3 = [(LookAroundTrayHeaderViewController *)self view];
  topAnchor = [view3 topAnchor];
  v21 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  v20 = [DynamicTypeWizard autoscaledConstraint:v21 constant:&stru_101637AA8 withFontProvider:35.0];
  v33[2] = v20;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  view4 = [(LookAroundTrayHeaderViewController *)self view];
  leadingAnchor4 = [view4 leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v33[3] = v16;
  trailingAnchor3 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  view5 = [(LookAroundTrayHeaderViewController *)self view];
  trailingAnchor4 = [view5 trailingAnchor];
  v3 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v33[4] = v3;
  firstBaselineAnchor2 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v6 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  v7 = [DynamicTypeWizard autoscaledConstraint:v6 constant:&stru_101637A88 withFontProvider:21.0];
  v33[5] = v7;
  view6 = [(LookAroundTrayHeaderViewController *)self view];
  bottomAnchor = [view6 bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_subtitleLabel lastBaselineAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:21.0];
  v33[6] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:7];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  [(UILabel *)self->_titleLabel setText:@" "];
  LODWORD(v9) = 1132068864;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v10];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [DynamicTypeWizard autorefreshLabel:self->_titleLabel withFontProvider:&stru_101637AA8];
  v11 = +[UIColor clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v11];

  v12 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v12];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"LookAroundTrayHeaderTitle"];
  view = [(LookAroundTrayHeaderViewController *)self view];
  [view addSubview:self->_titleLabel];

  v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v14;

  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  [(UILabel *)self->_subtitleLabel setText:@" "];
  LODWORD(v16) = 1132068864;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v17];
  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [DynamicTypeWizard autorefreshLabel:self->_subtitleLabel withFontProvider:&stru_101637A88];
  v18 = +[UIColor clearColor];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v18];

  v19 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v19];

  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"LookAroundTrayHeaderSubtitle"];
  view2 = [(LookAroundTrayHeaderViewController *)self view];
  [view2 addSubview:self->_subtitleLabel];

  v22 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"trayHeaderDidReceiveTap:"];
  view3 = [(LookAroundTrayHeaderViewController *)self view];
  [view3 addGestureRecognizer:v22];
}

- (void)trayHeaderDidReceiveTap:(id)tap
{
  delegate = [(LookAroundTrayHeaderViewController *)self delegate];
  [delegate trayHeaderDidReceiveTap];
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  [(UILabel *)self->_subtitleLabel setText:v4];
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(UILabel *)self->_titleLabel setText:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundTrayHeaderViewController;
  [(LookAroundTrayHeaderViewController *)&v3 viewDidLoad];
  [(LookAroundTrayHeaderViewController *)self _setupViews];
  [(LookAroundTrayHeaderViewController *)self _setupConstraints];
}

@end