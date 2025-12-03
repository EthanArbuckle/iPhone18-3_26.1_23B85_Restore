@interface EditShortcutTitleCell
- (EditShortcutTitleCell)initWithShortcut:(id)shortcut delegate:(id)delegate;
- (void)_updateFonts;
- (void)updateContent;
@end

@implementation EditShortcutTitleCell

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system20Semibold];
  }

  else
  {
    +[UIFont system17];
  }
  v3 = ;
  [(UITextField *)self->_textField setFont:v3];
}

- (void)updateContent
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  shortcut = self->_shortcut;
  if (v3)
  {
    [(MapsSuggestionsShortcutLike *)shortcut placeName];
  }

  else
  {
    [(MapsSuggestionsShortcutLike *)shortcut title];
  }
  v5 = ;
  [(UITextField *)self->_textField setText:v5];

  if (sub_10000FA08(self) != 5)
  {
    styleAttributes = [(MapsSuggestionsShortcutLike *)self->_shortcut styleAttributes];
    v7 = self->_imageView;
    v8 = +[MapsUIImageCache sharedCache];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1008A2CD4;
    v10[3] = &unk_1016519B0;
    v11 = v7;
    v9 = v7;
    [v8 getImageForStyleAttributes:styleAttributes completion:v10];
  }

  [(EditShortcutTitleCell *)self _updateFonts];
}

- (EditShortcutTitleCell)initWithShortcut:(id)shortcut delegate:(id)delegate
{
  shortcutCopy = shortcut;
  delegateCopy = delegate;
  v61.receiver = self;
  v61.super_class = EditShortcutTitleCell;
  v9 = [(EditShortcutTitleCell *)&v61 initWithStyle:0 reuseIdentifier:@"EditShortcutTitleCell"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_shortcut, shortcut);
    [(EditShortcutTitleCell *)v10 setAccessibilityIdentifier:@"EditShortcutTitleCell"];
    contentView = [(EditShortcutTitleCell *)v10 contentView];
    v59 = shortcutCopy;
    v60 = delegateCopy;
    if (sub_10000FA08(v10) == 5)
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    else
    {
      v16 = [UIImageView alloc];
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v17 = [v16 initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(UIImageView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)v17 setAccessibilityIdentifier:@"EditShortcutTitleImage"];
      [contentView addSubview:v17];
      imageView = v10->_imageView;
      v10->_imageView = v17;
      v19 = v17;

      heightAnchor = [(UIImageView *)v19 heightAnchor];
      v56 = [heightAnchor constraintEqualToConstant:30.0];
      v63[0] = v56;
      widthAnchor = [(UIImageView *)v19 widthAnchor];
      v52 = [widthAnchor constraintEqualToConstant:30.0];
      v63[1] = v52;
      centerYAnchor = [(UIImageView *)v19 centerYAnchor];
      centerYAnchor2 = [contentView centerYAnchor];
      v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v63[2] = v22;
      leadingAnchor = [(UIImageView *)v19 leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v63[3] = v25;
      v26 = [NSArray arrayWithObjects:v63 count:4];
      [NSLayoutConstraint activateConstraints:v26];

      delegateCopy = v60;
    }

    v27 = [[UITextField alloc] initWithFrame:{x, y, width, height}];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setDelegate:delegateCopy];
    if (sub_10000FA08(v10) == 5)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    [v27 setBorderStyle:v28];
    [v27 setAccessibilityIdentifier:@"EditShortcutTitleTextField"];
    [contentView addSubview:v27];
    objc_storeStrong(&v10->_textField, v27);
    v29 = 15.0;
    if (sub_10000FA08(v10) == 5)
    {
      heightAnchor2 = [v27 heightAnchor];
      v31 = [heightAnchor2 constraintEqualToConstant:32.0];
      [v31 setActive:1];

      v29 = 0.0;
    }

    leadingAnchor3 = [v27 leadingAnchor];
    if (sub_10000FA08(v10) == 5)
    {
      [contentView leadingAnchor];
    }

    else
    {
      [(UIImageView *)v10->_imageView trailingAnchor];
    }
    v33 = ;
    v46 = v33;
    v34 = sub_10000FA08(v10);
    v35 = 10.0;
    if (v34 == 5)
    {
      v35 = 16.0;
    }

    v58 = [leadingAnchor3 constraintEqualToAnchor:v33 constant:v35];
    v62[0] = v58;
    trailingAnchor = [v27 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v62[1] = v51;
    centerYAnchor3 = [v27 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v36 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v62[2] = v36;
    topAnchor = [v27 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v29];
    v62[3] = v39;
    [v27 bottomAnchor];
    v40 = v48 = leadingAnchor3;
    bottomAnchor = [contentView bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:bottomAnchor constant:-v29];
    v62[4] = v42;
    [NSArray arrayWithObjects:v62 count:5];
    v43 = v50 = contentView;
    [NSLayoutConstraint activateConstraints:v43];

    v44 = +[NSNotificationCenter defaultCenter];
    [v44 addObserver:v10 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(EditShortcutTitleCell *)v10 updateContent];
    shortcutCopy = v59;
    delegateCopy = v60;
  }

  return v10;
}

@end