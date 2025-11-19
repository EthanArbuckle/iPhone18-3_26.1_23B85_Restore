@interface FCUICustomModeHeaderView
- (FCUICustomModeHeaderView)initWithFrame:(CGRect)a3;
- (void)configureHeaderWithImage:(id)a3 text:(id)a4 delegate:(id)a5;
- (void)prepareForReuse;
@end

@implementation FCUICustomModeHeaderView

- (FCUICustomModeHeaderView)initWithFrame:(CGRect)a3
{
  v59.receiver = self;
  v59.super_class = FCUICustomModeHeaderView;
  v3 = [(FCUICustomModeHeaderView *)&v59 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FCUICustomModeHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIColor systemBackgroundColor];
    [(FCUICustomModeHeaderView *)v4 setBackgroundColor:v5];

    v6 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    imageBackgroundView = v4->_imageBackgroundView;
    v4->_imageBackgroundView = v10;

    [(UIView *)v4->_imageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = v4->_imageBackgroundView;
    v13 = +[UIColor systemGray5Color];
    [(UIView *)v12 setBackgroundColor:v13];

    [(UIView *)v4->_imageBackgroundView _setCornerRadius:46.0];
    [(FCUICustomModeHeaderView *)v4 addSubview:v4->_imageBackgroundView];
    v14 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v14;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setContentMode:4];
    v16 = v4->_iconImageView;
    v17 = +[UIColor systemBlueColor];
    [(UIImageView *)v16 setTintColor:v17];

    [(FCUICustomModeHeaderView *)v4 addSubview:v4->_iconImageView];
    v18 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    textField = v4->_textField;
    v4->_textField = v18;

    [(UITextField *)v4->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
    v21 = v4->_textField;
    v22 = +[NSBundle fcui_focusSettingsLocalizationBundle];
    v23 = [v22 localizedStringForKey:@"ONBOARDING_MODE_TITLE_CUSTOM_PLACEHOLDER_TEXT" value:&stru_21648 table:0];
    [(UITextField *)v21 setPlaceholder:v23];

    [(UITextField *)v4->_textField setFont:v20];
    [(UITextField *)v4->_textField setTextAlignment:1];
    v24 = v4->_textField;
    v25 = +[UIColor systemGray5Color];
    [(UITextField *)v24 setBackgroundColor:v25];

    v26 = v4->_textField;
    v27 = +[UIColor systemBlueColor];
    [(UITextField *)v26 setTextColor:v27];

    [(UITextField *)v4->_textField _setContinuousCornerRadius:8.0];
    [(FCUICustomModeHeaderView *)v4 addSubview:v4->_textField];
    v28 = objc_alloc_init(NSMutableArray);
    v29 = [(UIView *)v4->_imageBackgroundView topAnchor];
    v30 = [(FCUICustomModeHeaderView *)v4 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];
    [v28 addObject:v31];

    v32 = [(UIView *)v4->_imageBackgroundView centerXAnchor];
    v33 = [(FCUICustomModeHeaderView *)v4 centerXAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v28 addObject:v34];

    v35 = [(UIView *)v4->_imageBackgroundView heightAnchor];
    v36 = [v35 constraintEqualToConstant:92.0];
    [v28 addObject:v36];

    v37 = [(UIView *)v4->_imageBackgroundView widthAnchor];
    v38 = [v37 constraintEqualToConstant:92.0];
    [v28 addObject:v38];

    v39 = [(UIImageView *)v4->_iconImageView centerXAnchor];
    v40 = [(UIView *)v4->_imageBackgroundView centerXAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v28 addObject:v41];

    v42 = [(UIImageView *)v4->_iconImageView centerYAnchor];
    v43 = [(UIView *)v4->_imageBackgroundView centerYAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    [v28 addObject:v44];

    [v20 pointSize];
    v46 = v45 + 32.0;
    v47 = [(UITextField *)v4->_textField heightAnchor];
    v48 = [v47 constraintEqualToConstant:v46];
    [v28 addObject:v48];

    v49 = [(UITextField *)v4->_textField leadingAnchor];
    v50 = [(FCUICustomModeHeaderView *)v4 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];
    [v28 addObject:v51];

    v52 = [(FCUICustomModeHeaderView *)v4 trailingAnchor];
    v53 = [(UITextField *)v4->_textField trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:16.0];
    [v28 addObject:v54];

    v55 = [(FCUICustomModeHeaderView *)v4 bottomAnchor];
    v56 = [(UITextField *)v4->_textField bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:32.0];
    [v28 addObject:v57];

    [NSLayoutConstraint activateConstraints:v28];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = FCUICustomModeHeaderView;
  [(FCUICustomModeHeaderView *)&v3 prepareForReuse];
  [(FCUICustomModeHeaderView *)self dismissKeyboardIfNeeded];
  [(UITextField *)self->_textField setDelegate:0];
  [(UIImageView *)self->_iconImageView setImage:0];
}

- (void)configureHeaderWithImage:(id)a3 text:(id)a4 delegate:(id)a5
{
  iconImageView = self->_iconImageView;
  v10 = a5;
  v9 = a4;
  [(UIImageView *)iconImageView setImage:a3];
  [(UITextField *)self->_textField setText:v9];

  [(UITextField *)self->_textField setDelegate:v10];
}

@end