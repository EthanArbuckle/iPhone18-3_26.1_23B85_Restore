@interface BuddyPosedDeviceSelectionItemAccessoryView
- (BuddyPosedDeviceSelectionItemAccessoryView)initWithImage:(id)a3 text:(id)a4;
- (BuddyPosedDeviceSelectionItemAccessoryView)initWithSymbol:(id)a3 text:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyPosedDeviceSelectionItemAccessoryView

- (BuddyPosedDeviceSelectionItemAccessoryView)initWithImage:(id)a3 text:(id)a4
{
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v52;
  v52 = 0;
  v49.receiver = v5;
  v49.super_class = BuddyPosedDeviceSelectionItemAccessoryView;
  v6 = [(BuddyPosedDeviceSelectionItemAccessoryView *)&v49 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v52 = v6;
  objc_storeStrong(&v52, v6);
  if (v6)
  {
    objc_storeStrong(v52 + 3, location[0]);
    v7 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v8 = *(v52 + 4);
    *(v52 + 4) = v7;

    [*(v52 + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(v52 + 4) setContentMode:4];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    [*(v52 + 4) setPreferredSymbolConfiguration:v9];

    v10 = [*(v52 + 4) layer];
    [v10 setCornerRadius:12.0];

    v11 = [*(v52 + 4) layer];
    [v11 setMasksToBounds:1];

    v12 = [*(v52 + 4) layer];
    [v12 setBorderWidth:1.0];

    v13 = [v52 traitCollection];
    v43 = _NSConcreteStackBlock;
    v44 = -1073741824;
    v45 = 0;
    v46 = sub_100129AE8;
    v47 = &unk_10032B0D0;
    v48 = v52;
    [v13 performAsCurrentTraitCollection:&v43];

    objc_storeStrong(v52 + 5, obj);
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(v52 + 2);
    *(v52 + 2) = v14;

    [*(v52 + 2) setNumberOfLines:0];
    [*(v52 + 2) setText:obj];
    v16 = +[UIColor _labelColor];
    [*(v52 + 2) setTextColor:v16];

    [*(v52 + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v52 addSubview:*(v52 + 4)];
    [v52 addSubview:*(v52 + 2)];
    v42 = 8.0;
    v17 = +[BYDevice currentDevice];
    v18 = [v17 size];

    if (v18 == 2)
    {
      v42 = 5.0;
    }

    v41 = [*(v52 + 2) topAnchor];
    v40 = [v52 topAnchor];
    v39 = [v41 constraintEqualToAnchor:?];
    v53[0] = v39;
    v38 = [*(v52 + 2) centerXAnchor];
    v37 = [v52 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:?];
    v53[1] = v36;
    v35 = [*(v52 + 4) topAnchor];
    v34 = [*(v52 + 2) bottomAnchor];
    v33 = [v35 constraintEqualToAnchor:v42 constant:?];
    v53[2] = v33;
    v32 = [*(v52 + 4) centerXAnchor];
    v31 = [v52 centerXAnchor];
    v19 = [v32 constraintEqualToAnchor:?];
    v53[3] = v19;
    v20 = [*(v52 + 4) heightAnchor];
    v21 = [v20 constraintEqualToConstant:24.0];
    v53[4] = v21;
    v22 = [*(v52 + 4) widthAnchor];
    v23 = [*(v52 + 4) heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v53[5] = v24;
    v25 = [v52 bottomAnchor];
    v26 = [*(v52 + 4) bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v53[6] = v27;
    v28 = [NSArray arrayWithObjects:v53 count:7];
    [NSLayoutConstraint activateConstraints:v28];

    [v52 layoutSubviews];
    objc_storeStrong(&v48, 0);
  }

  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = v52;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v52, 0);
  return v29;
}

- (BuddyPosedDeviceSelectionItemAccessoryView)initWithSymbol:(id)a3 text:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = +[UIColor whiteColor];
  v16[0] = v5;
  v6 = +[UIColor systemBlueColor];
  v16[1] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:2];
  v12 = [UIImageSymbolConfiguration configurationWithPaletteColors:v7];

  v11 = [UIImage systemImageNamed:location[0] withConfiguration:v12];
  v8 = v15;
  v15 = 0;
  v15 = [v8 initWithImage:v11 text:v13];
  v9 = v15;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v9;
}

- (void)setSelected:(BOOL)a3
{
  if (a3 && !self->_selected)
  {
    v3 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    v4 = [(UIImageView *)v3 layer];
    [v4 setBorderWidth:0.0];

    v5 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self selectedImage];
    v6 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    [(UIImageView *)v6 setImage:v5];
  }

  if (!a3 && self->_selected)
  {
    v7 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    v8 = [(UIImageView *)v7 layer];
    [v8 setBorderWidth:1.0];

    v9 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    [(UIImageView *)v9 setImage:0];
  }

  self->_selected = a3;
  v10 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
  [(UIImageView *)v10 layoutIfNeeded];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = BuddyPosedDeviceSelectionItemAccessoryView;
  [(BuddyPosedDeviceSelectionItemAccessoryView *)&v6 traitCollectionDidChange:location[0]];
  v3 = +[UIColor systemGrayColor];
  v4 = [(UIColor *)v3 CGColor];
  v5 = [(UIImageView *)v8->_imageView layer];
  [v5 setBorderColor:v4];

  objc_storeStrong(location, 0);
}

@end