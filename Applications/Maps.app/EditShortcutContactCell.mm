@interface EditShortcutContactCell
- (EditShortcutContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_updateFonts;
- (void)setContactValue:(id)value;
@end

@implementation EditShortcutContactCell

- (void)_updateFonts
{
  v3 = +[UIFont system17];
  [(UILabel *)self->_label setFont:v3];

  v4 = +[UIFont accessibilityTextEnabled]^ 1;
  label = self->_label;

  [(UILabel *)label setNumberOfLines:v4];
}

- (void)setContactValue:(id)value
{
  valueCopy = value;
  objc_storeStrong(&self->_contactValue, value);
  v6 = self->_imageView;
  contact = [valueCopy contact];

  if (contact)
  {
    contact2 = [valueCopy contact];
    v9 = [CNContactFormatter stringFromContact:contact2 style:0];
    [(UILabel *)self->_label setText:v9];

    window = +[MapsUIImageCache sharedCache];
    contact3 = [valueCopy contact];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100B33544;
    v20[3] = &unk_1016519B0;
    v12 = &v21;
    v21 = v6;
    v13 = v6;
    [window getImageForContact:contact3 size:v20 completion:30.0];
  }

  else
  {
    stringValue = [valueCopy stringValue];
    [(UILabel *)self->_label setText:stringValue];

    window = [(EditShortcutContactCell *)self window];
    contact3 = [window screen];
    [contact3 scale];
    v16 = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100B33550;
    v18[3] = &unk_1016519B0;
    v12 = &v19;
    v19 = v6;
    v17 = v6;
    [CNContact _maps_imageForNoContactWithDiameter:v18 scale:30.0 completion:v16];
  }

  [(EditShortcutContactCell *)self _updateFonts];
}

- (void)_buttonAction:(id)action
{
  action = [(EditShortcutContactCell *)self action];

  if (action)
  {
    action2 = [(EditShortcutContactCell *)self action];
    action2[2]();
  }
}

- (EditShortcutContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v54.receiver = self;
  v54.super_class = EditShortcutContactCell;
  v4 = [(EditShortcutContactCell *)&v54 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(EditShortcutContactCell *)v4 setAccessibilityIdentifier:@"EditShortcutContactCell"];
    contentView = [(EditShortcutContactCell *)v5 contentView];
    v7 = [UIButton buttonWithType:0];
    v8 = +[UIColor tertiaryLabelColor];
    v53 = v7;
    [v7 setTintColor:v8];

    [v7 setFrame:{0.0, 0.0, 30.0, 30.0}];
    v9 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    [v7 setImage:v9 forState:0];

    v10 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:17.0];
    [v7 setPreferredSymbolConfiguration:v10 forImageInState:0];

    [v7 addTarget:v5 action:"_buttonAction:" forControlEvents:64];
    [v7 setAccessibilityIdentifier:@"EditShortcutContactButton"];
    [(EditShortcutContactCell *)v5 setAccessoryView:v7];
    v11 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UIImageView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v15 _setCornerRadius:15.0];
    [(UIImageView *)v15 setClipsToBounds:1];
    [(UIImageView *)v15 setAccessibilityIdentifier:@"EditShortcutContactImage"];
    [contentView addSubview:v15];
    imageView = v5->_imageView;
    v5->_imageView = v15;
    v17 = v15;

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v18 setAccessibilityIdentifier:@"EditShortcutContactLabel"];
    [contentView addSubview:v18];
    label = v5->_label;
    v5->_label = v18;
    v20 = v18;

    heightAnchor = [(UIImageView *)v17 heightAnchor];
    v51 = [heightAnchor constraintEqualToConstant:30.0];
    v55[0] = v51;
    widthAnchor = [(UIImageView *)v17 widthAnchor];
    v49 = [widthAnchor constraintEqualToConstant:30.0];
    v55[1] = v49;
    centerYAnchor = [(UIImageView *)v17 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[2] = v45;
    v48 = v17;
    leadingAnchor = [(UIImageView *)v17 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v55[3] = v42;
    leadingAnchor3 = [(UILabel *)v20 leadingAnchor];
    trailingAnchor = [(UIImageView *)v17 trailingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v55[4] = v37;
    trailingAnchor2 = [(UILabel *)v20 trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v55[5] = v34;
    centerYAnchor3 = [(UILabel *)v20 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v55[6] = v22;
    v39 = v20;
    topAnchor = [(UILabel *)v20 topAnchor];
    v24 = contentView;
    v41 = contentView;
    topAnchor2 = [contentView topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    v55[7] = v26;
    bottomAnchor = [(UILabel *)v20 bottomAnchor];
    bottomAnchor2 = [v24 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
    v55[8] = v29;
    v30 = [NSArray arrayWithObjects:v55 count:9];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v5 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

@end