@interface EditShortcutContactCell
- (EditShortcutContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_buttonAction:(id)a3;
- (void)_updateFonts;
- (void)setContactValue:(id)a3;
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

- (void)setContactValue:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_contactValue, a3);
  v6 = self->_imageView;
  v7 = [v5 contact];

  if (v7)
  {
    v8 = [v5 contact];
    v9 = [CNContactFormatter stringFromContact:v8 style:0];
    [(UILabel *)self->_label setText:v9];

    v10 = +[MapsUIImageCache sharedCache];
    v11 = [v5 contact];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100B33544;
    v20[3] = &unk_1016519B0;
    v12 = &v21;
    v21 = v6;
    v13 = v6;
    [v10 getImageForContact:v11 size:v20 completion:30.0];
  }

  else
  {
    v14 = [v5 stringValue];
    [(UILabel *)self->_label setText:v14];

    v10 = [(EditShortcutContactCell *)self window];
    v11 = [v10 screen];
    [v11 scale];
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

- (void)_buttonAction:(id)a3
{
  v4 = [(EditShortcutContactCell *)self action];

  if (v4)
  {
    v5 = [(EditShortcutContactCell *)self action];
    v5[2]();
  }
}

- (EditShortcutContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v54.receiver = self;
  v54.super_class = EditShortcutContactCell;
  v4 = [(EditShortcutContactCell *)&v54 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(EditShortcutContactCell *)v4 setAccessibilityIdentifier:@"EditShortcutContactCell"];
    v6 = [(EditShortcutContactCell *)v5 contentView];
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
    [v6 addSubview:v15];
    imageView = v5->_imageView;
    v5->_imageView = v15;
    v17 = v15;

    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v18 setAccessibilityIdentifier:@"EditShortcutContactLabel"];
    [v6 addSubview:v18];
    label = v5->_label;
    v5->_label = v18;
    v20 = v18;

    v52 = [(UIImageView *)v17 heightAnchor];
    v51 = [v52 constraintEqualToConstant:30.0];
    v55[0] = v51;
    v50 = [(UIImageView *)v17 widthAnchor];
    v49 = [v50 constraintEqualToConstant:30.0];
    v55[1] = v49;
    v47 = [(UIImageView *)v17 centerYAnchor];
    v46 = [v6 centerYAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v55[2] = v45;
    v48 = v17;
    v44 = [(UIImageView *)v17 leadingAnchor];
    v43 = [v6 leadingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:16.0];
    v55[3] = v42;
    v40 = [(UILabel *)v20 leadingAnchor];
    v38 = [(UIImageView *)v17 trailingAnchor];
    v37 = [v40 constraintEqualToAnchor:v38 constant:10.0];
    v55[4] = v37;
    v36 = [(UILabel *)v20 trailingAnchor];
    v35 = [v6 trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:-16.0];
    v55[5] = v34;
    v33 = [(UILabel *)v20 centerYAnchor];
    v21 = [v6 centerYAnchor];
    v22 = [v33 constraintEqualToAnchor:v21];
    v55[6] = v22;
    v39 = v20;
    v23 = [(UILabel *)v20 topAnchor];
    v24 = v6;
    v41 = v6;
    v25 = [v6 topAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:15.0];
    v55[7] = v26;
    v27 = [(UILabel *)v20 bottomAnchor];
    v28 = [v24 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-15.0];
    v55[8] = v29;
    v30 = [NSArray arrayWithObjects:v55 count:9];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v5 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

@end