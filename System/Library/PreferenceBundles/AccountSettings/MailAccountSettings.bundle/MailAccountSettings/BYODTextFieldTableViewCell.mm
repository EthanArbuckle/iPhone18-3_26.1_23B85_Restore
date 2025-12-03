@interface BYODTextFieldTableViewCell
- (BYODTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BYODTextFieldTableViewCell

- (BYODTextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = BYODTextFieldTableViewCell;
  identifierCopy = identifier;
  v5 = [(BYODTextFieldTableViewCell *)&v34 initWithStyle:style reuseIdentifier:?];
  if (v5)
  {
    v6 = objc_alloc_init(UIStackView);
    [v6 setAxis:0];
    [v6 setAlignment:3];
    [v6 setDistribution:2];
    v33 = objc_alloc_init(UILabel);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"BYOD_EMAIL_CREATE_LABEL" value:&stru_B9FC8 table:@"AccountPreferences"];
    [v33 setText:v8];

    [v6 addArrangedSubview:v33];
    v9 = objc_alloc_init(UITextField);
    textField = v5->_textField;
    v5->_textField = v9;

    [(UITextField *)v5->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"BYOD_UPDATE_EMAIL_TEXT_PLACEHOLDER" value:&stru_B9FC8 table:@"AccountPreferences"];
    [(UITextField *)v5->_textField setPlaceholder:v12];

    [(UITextField *)v5->_textField becomeFirstResponder];
    [v6 addArrangedSubview:v5->_textField];
    contentView = [(BYODTextFieldTableViewCell *)v5 contentView];
    [contentView addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)v5->_textField setTranslatesAutoresizingMaskIntoConstraints:0];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v6 leadingAnchor];
    contentView2 = [(BYODTextFieldTableViewCell *)v5 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
    v35[0] = v26;
    topAnchor = [v6 topAnchor];
    contentView3 = [(BYODTextFieldTableViewCell *)v5 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:?];
    v35[1] = v23;
    trailingAnchor = [v6 trailingAnchor];
    contentView4 = [(BYODTextFieldTableViewCell *)v5 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[2] = v15;
    bottomAnchor = [v6 bottomAnchor];
    contentView5 = [(BYODTextFieldTableViewCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v19;
    v20 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  return v5;
}

@end