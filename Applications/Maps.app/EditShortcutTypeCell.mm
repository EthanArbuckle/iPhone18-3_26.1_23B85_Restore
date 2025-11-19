@interface EditShortcutTypeCell
- (EditShortcutTypeCell)initWithShortcut:(id)a3 shortcutType:(id)a4;
- (void)_updateFonts;
- (void)setChecked:(BOOL)a3;
@end

@implementation EditShortcutTypeCell

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  if (sub_10000FA08(self) == 5)
  {
    if (v3)
    {
      v5 = +[UIColor systemWhiteColor];
      v14[0] = v5;
      v6 = [(EditShortcutTypeCell *)self theme];
      v7 = [v6 keyColor];
      v14[1] = v7;
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
    if (v3)
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

- (EditShortcutTypeCell)initWithShortcut:(id)a3 shortcutType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v71.receiver = self;
  v71.super_class = EditShortcutTypeCell;
  v8 = [(EditShortcutTypeCell *)&v71 initWithStyle:0 reuseIdentifier:@"EditShortcutTypeCell"];
  v9 = v8;
  if (v8)
  {
    [(EditShortcutTypeCell *)v8 setAccessibilityIdentifier:@"EditShortcutTypeCell"];
    v10 = [(EditShortcutTypeCell *)v9 contentView];
    v11 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setAccessibilityIdentifier:@"EditShortcutTypeImage"];
    [v10 addSubview:v15];
    objc_storeStrong(&v9->_imageView, v15);
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setAccessibilityIdentifier:@"EditShortcutTypeLabel"];
    [v10 addSubview:v16];
    v67 = v9;
    objc_storeStrong(&v9->_label, v16);
    v63 = [v15 heightAnchor];
    v62 = [v63 constraintEqualToConstant:30.0];
    v72[0] = v62;
    v61 = [v15 widthAnchor];
    v60 = [v61 constraintEqualToConstant:30.0];
    v72[1] = v60;
    v59 = [v15 centerYAnchor];
    v58 = [v10 centerYAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v72[2] = v57;
    v56 = [v15 leadingAnchor];
    v55 = [v10 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55 constant:16.0];
    v72[3] = v54;
    v53 = [v16 leadingAnchor];
    v65 = v15;
    v52 = [v15 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52 constant:10.0];
    v72[4] = v51;
    v50 = [v16 trailingAnchor];
    v49 = [v10 trailingAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 constant:-10.0];
    v72[5] = v48;
    v47 = [v16 centerYAnchor];
    v17 = [v10 centerYAnchor];
    v18 = [v47 constraintEqualToAnchor:v17];
    v72[6] = v18;
    v19 = [v16 topAnchor];
    v20 = [v10 topAnchor];
    [v19 constraintEqualToAnchor:v20 constant:15.0];
    v21 = v68 = v6;
    v72[7] = v21;
    v64 = v16;
    v22 = [v16 bottomAnchor];
    v66 = v10;
    v23 = [v10 bottomAnchor];
    [v22 constraintEqualToAnchor:v23 constant:-15.0];
    v25 = v24 = v7;
    v72[8] = v25;
    v26 = [NSArray arrayWithObjects:v72 count:9];
    [NSLayoutConstraint activateConstraints:v26];

    v7 = v24;
    v6 = v68;

    v27 = [MKMapItem alloc];
    v28 = [v68 geoMapItem];
    v29 = [v27 initWithGeoMapItem:v28 isPlaceHolderPlace:0];

    v30 = [v24 type];
    v31 = v29;
    v32 = v31;
    if (v30 <= 5 && ((1 << v30) & 0x2C) != 0)
    {
      v33 = MapsSuggestionsLocalizedMyTitleForShortcutType();
      v9 = v67;
      v35 = v64;
      v34 = v65;
    }

    else
    {
      v36 = [v31 _firstLocalizedCategoryName];
      v37 = v36;
      if (v36)
      {
        v33 = v36;
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
      v39 = [v7 type];
      v40 = v32;
      v41 = v40;
      if (v39 <= 5 && ((1 << v39) & 0x2C) != 0)
      {
        v42 = MapsSuggestionsShortcutTypeStyleAttributes();
      }

      else
      {
        v42 = [v40 _styleAttributes];
      }

      v43 = v42;

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