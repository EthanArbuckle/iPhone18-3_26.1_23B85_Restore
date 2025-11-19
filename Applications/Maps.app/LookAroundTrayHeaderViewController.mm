@interface LookAroundTrayHeaderViewController
- (TrayHeaderDelegate)delegate;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)trayHeaderDidReceiveTap:(id)a3;
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
  v31 = [(UILabel *)self->_titleLabel leadingAnchor];
  v32 = [(LookAroundTrayHeaderViewController *)self view];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:16.0];
  v33[0] = v29;
  v27 = [(UILabel *)self->_titleLabel trailingAnchor];
  v28 = [(LookAroundTrayHeaderViewController *)self view];
  v26 = [v28 trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:-16.0];
  v33[1] = v25;
  v23 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v24 = [(LookAroundTrayHeaderViewController *)self view];
  v22 = [v24 topAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v20 = [DynamicTypeWizard autoscaledConstraint:v21 constant:&stru_101637AA8 withFontProvider:35.0];
  v33[2] = v20;
  v18 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v19 = [(LookAroundTrayHeaderViewController *)self view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17 constant:16.0];
  v33[3] = v16;
  v14 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v15 = [(LookAroundTrayHeaderViewController *)self view];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:-16.0];
  v33[4] = v3;
  v4 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  v5 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v7 = [DynamicTypeWizard autoscaledConstraint:v6 constant:&stru_101637A88 withFontProvider:21.0];
  v33[5] = v7;
  v8 = [(LookAroundTrayHeaderViewController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [(UILabel *)self->_subtitleLabel lastBaselineAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:21.0];
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
  v13 = [(LookAroundTrayHeaderViewController *)self view];
  [v13 addSubview:self->_titleLabel];

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
  v20 = [(LookAroundTrayHeaderViewController *)self view];
  [v20 addSubview:self->_subtitleLabel];

  v22 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"trayHeaderDidReceiveTap:"];
  v21 = [(LookAroundTrayHeaderViewController *)self view];
  [v21 addGestureRecognizer:v22];
}

- (void)trayHeaderDidReceiveTap:(id)a3
{
  v3 = [(LookAroundTrayHeaderViewController *)self delegate];
  [v3 trayHeaderDidReceiveTap];
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  [(UILabel *)self->_subtitleLabel setText:v4];
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
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