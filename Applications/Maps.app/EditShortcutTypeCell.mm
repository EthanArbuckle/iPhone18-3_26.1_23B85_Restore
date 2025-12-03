@interface EditShortcutTypeCell
- (EditShortcutTypeCell)initWithShortcut:(id)shortcut shortcutType:(id)type;
- (void)_updateFonts;
- (void)setChecked:(BOOL)checked;
@end

@implementation EditShortcutTypeCell

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  if (sub_10000FA08(self) == 5)
  {
    if (checkedCopy)
    {
      v5 = +[UIColor systemWhiteColor];
      v14[0] = v5;
      theme = [(EditShortcutTypeCell *)self theme];
      keyColor = [theme keyColor];
      v14[1] = keyColor;
      v8 = [NSArray arrayWithObjects:v14 count:2];
      v9 = [UIImageSymbolConfiguration configurationWithPaletteColors:v8];

      v10 = [UIImage systemImageNamed:@"record.circle.fill" withConfiguration:v9];
      [(UIImageView *)self->_imageView setImage:v10];
    }

    else
    {
      v12 = +[UIColor systemWhiteColor];
      [(UIImageView *)self->_imageView setTintColor:v12];

      v13 = [UIImage systemImageNamed:@"circle.fill"];
      [(UIImageView *)self->_imageView setImage:?];
    }
  }

  else
  {
    if (checkedCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    [(EditShortcutTypeCell *)self setAccessoryType:v11];
  }
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17Tall];
  }

  else
  {
    +[UIFont system17];
  }
  v3 = ;
  [(UILabel *)self->_label setFont:v3];

  v4 = +[UIFont accessibilityTextEnabled]^ 1;
  label = self->_label;

  [(UILabel *)label setNumberOfLines:v4];
}

- (EditShortcutTypeCell)initWithShortcut:(id)shortcut shortcutType:(id)type
{
  shortcutCopy = shortcut;
  typeCopy = type;
  v71.receiver = self;
  v71.super_class = EditShortcutTypeCell;
  v8 = [(EditShortcutTypeCell *)&v71 initWithStyle:0 reuseIdentifier:@"EditShortcutTypeCell"];
  v9 = v8;
  if (v8)
  {
    [(EditShortcutTypeCell *)v8 setAccessibilityIdentifier:@"EditShortcutTypeCell"];
    contentView = [(EditShortcutTypeCell *)v9 contentView];
    v11 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setAccessibilityIdentifier:@"EditShortcutTypeImage"];
    [contentView addSubview:v15];
    objc_storeStrong(&v9->_imageView, v15);
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setAccessibilityIdentifier:@"EditShortcutTypeLabel"];
    [contentView addSubview:v16];
    v67 = v9;
    objc_storeStrong(&v9->_label, v16);
    heightAnchor = [v15 heightAnchor];
    v62 = [heightAnchor constraintEqualToConstant:30.0];
    v72[0] = v62;
    widthAnchor = [v15 widthAnchor];
    v60 = [widthAnchor constraintEqualToConstant:30.0];
    v72[1] = v60;
    centerYAnchor = [v15 centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v72[2] = v57;
    leadingAnchor = [v15 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v72[3] = v54;
    leadingAnchor3 = [v16 leadingAnchor];
    v65 = v15;
    trailingAnchor = [v15 trailingAnchor];
    v51 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v72[4] = v51;
    trailingAnchor2 = [v16 trailingAnchor];
    trailingAnchor3 = [contentView trailingAnchor];
    v48 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
    v72[5] = v48;
    centerYAnchor3 = [v16 centerYAnchor];
    centerYAnchor4 = [contentView centerYAnchor];
    v18 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v72[6] = v18;
    topAnchor = [v16 topAnchor];
    topAnchor2 = [contentView topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
    v21 = v68 = shortcutCopy;
    v72[7] = v21;
    v64 = v16;
    bottomAnchor = [v16 bottomAnchor];
    v66 = contentView;
    bottomAnchor2 = [contentView bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
    v25 = v24 = typeCopy;
    v72[8] = v25;
    v26 = [NSArray arrayWithObjects:v72 count:9];
    [NSLayoutConstraint activateConstraints:v26];

    typeCopy = v24;
    shortcutCopy = v68;

    v27 = [MKMapItem alloc];
    geoMapItem = [v68 geoMapItem];
    v29 = [v27 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];

    type = [v24 type];
    v31 = v29;
    v32 = v31;
    if (type <= 5 && ((1 << type) & 0x2C) != 0)
    {
      v33 = MapsSuggestionsLocalizedMyTitleForShortcutType();
      v9 = v67;
      v35 = v64;
      v34 = v65;
    }

    else
    {
      _firstLocalizedCategoryName = [v31 _firstLocalizedCategoryName];
      v37 = _firstLocalizedCategoryName;
      if (_firstLocalizedCategoryName)
      {
        v33 = _firstLocalizedCategoryName;
      }

      else
      {
        v38 = +[NSBundle mainBundle];
        v33 = [v38 localizedStringForKey:@"[Shortcut] Address Label" value:@"localized string not found" table:0];
      }

      v35 = v64;
      v34 = v65;

      v9 = v67;
    }

    [v35 setText:v33];
    if (sub_10000FA08(v9) != 5)
    {
      type2 = [typeCopy type];
      v40 = v32;
      v41 = v40;
      if (type2 <= 5 && ((1 << type2) & 0x2C) != 0)
      {
        _styleAttributes = MapsSuggestionsShortcutTypeStyleAttributes();
      }

      else
      {
        _styleAttributes = [v40 _styleAttributes];
      }

      v43 = _styleAttributes;

      v44 = +[MapsUIImageCache sharedCache];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_100AF5848;
      v69[3] = &unk_1016519B0;
      v70 = v34;
      [v44 getImageForStyleAttributes:v43 completion:v69];
    }

    v45 = +[NSNotificationCenter defaultCenter];
    [v45 addObserver:v9 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(EditShortcutTypeCell *)v9 _updateFonts];
  }

  return v9;
}

@end