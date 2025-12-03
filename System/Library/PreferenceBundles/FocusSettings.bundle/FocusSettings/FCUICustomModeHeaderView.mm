@interface FCUICustomModeHeaderView
- (FCUICustomModeHeaderView)initWithFrame:(CGRect)frame;
- (void)configureHeaderWithImage:(id)image text:(id)text delegate:(id)delegate;
- (void)prepareForReuse;
@end

@implementation FCUICustomModeHeaderView

- (FCUICustomModeHeaderView)initWithFrame:(CGRect)frame
{
  v59.receiver = self;
  v59.super_class = FCUICustomModeHeaderView;
  v3 = [(FCUICustomModeHeaderView *)&v59 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UIView *)v4->_imageBackgroundView topAnchor];
    topAnchor2 = [(FCUICustomModeHeaderView *)v4 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    [v28 addObject:v31];

    centerXAnchor = [(UIView *)v4->_imageBackgroundView centerXAnchor];
    centerXAnchor2 = [(FCUICustomModeHeaderView *)v4 centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v28 addObject:v34];

    heightAnchor = [(UIView *)v4->_imageBackgroundView heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:92.0];
    [v28 addObject:v36];

    widthAnchor = [(UIView *)v4->_imageBackgroundView widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:92.0];
    [v28 addObject:v38];

    centerXAnchor3 = [(UIImageView *)v4->_iconImageView centerXAnchor];
    centerXAnchor4 = [(UIView *)v4->_imageBackgroundView centerXAnchor];
    v41 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v28 addObject:v41];

    centerYAnchor = [(UIImageView *)v4->_iconImageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v4->_imageBackgroundView centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v28 addObject:v44];

    [v20 pointSize];
    v46 = v45 + 32.0;
    heightAnchor2 = [(UITextField *)v4->_textField heightAnchor];
    v48 = [heightAnchor2 constraintEqualToConstant:v46];
    [v28 addObject:v48];

    leadingAnchor = [(UITextField *)v4->_textField leadingAnchor];
    leadingAnchor2 = [(FCUICustomModeHeaderView *)v4 leadingAnchor];
    v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v28 addObject:v51];

    trailingAnchor = [(FCUICustomModeHeaderView *)v4 trailingAnchor];
    trailingAnchor2 = [(UITextField *)v4->_textField trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
    [v28 addObject:v54];

    bottomAnchor = [(FCUICustomModeHeaderView *)v4 bottomAnchor];
    bottomAnchor2 = [(UITextField *)v4->_textField bottomAnchor];
    v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:32.0];
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

- (void)configureHeaderWithImage:(id)image text:(id)text delegate:(id)delegate
{
  iconImageView = self->_iconImageView;
  delegateCopy = delegate;
  textCopy = text;
  [(UIImageView *)iconImageView setImage:image];
  [(UITextField *)self->_textField setText:textCopy];

  [(UITextField *)self->_textField setDelegate:delegateCopy];
}

@end