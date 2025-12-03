@interface BuddyPosedDeviceSelectionItemAccessoryView
- (BuddyPosedDeviceSelectionItemAccessoryView)initWithImage:(id)image text:(id)text;
- (BuddyPosedDeviceSelectionItemAccessoryView)initWithSymbol:(id)symbol text:(id)text;
- (void)setSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BuddyPosedDeviceSelectionItemAccessoryView

- (BuddyPosedDeviceSelectionItemAccessoryView)initWithImage:(id)image text:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  obj = 0;
  objc_storeStrong(&obj, text);
  v5 = selfCopy;
  selfCopy = 0;
  v49.receiver = v5;
  v49.super_class = BuddyPosedDeviceSelectionItemAccessoryView;
  v6 = [(BuddyPosedDeviceSelectionItemAccessoryView *)&v49 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(selfCopy + 3, location[0]);
    v7 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v8 = *(selfCopy + 4);
    *(selfCopy + 4) = v7;

    [*(selfCopy + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 4) setContentMode:4];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    [*(selfCopy + 4) setPreferredSymbolConfiguration:v9];

    layer = [*(selfCopy + 4) layer];
    [layer setCornerRadius:12.0];

    layer2 = [*(selfCopy + 4) layer];
    [layer2 setMasksToBounds:1];

    layer3 = [*(selfCopy + 4) layer];
    [layer3 setBorderWidth:1.0];

    traitCollection = [selfCopy traitCollection];
    v43 = _NSConcreteStackBlock;
    v44 = -1073741824;
    v45 = 0;
    v46 = sub_100129AE8;
    v47 = &unk_10032B0D0;
    v48 = selfCopy;
    [traitCollection performAsCurrentTraitCollection:&v43];

    objc_storeStrong(selfCopy + 5, obj);
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = *(selfCopy + 2);
    *(selfCopy + 2) = v14;

    [*(selfCopy + 2) setNumberOfLines:0];
    [*(selfCopy + 2) setText:obj];
    v16 = +[UIColor _labelColor];
    [*(selfCopy + 2) setTextColor:v16];

    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [selfCopy addSubview:*(selfCopy + 4)];
    [selfCopy addSubview:*(selfCopy + 2)];
    v42 = 8.0;
    v17 = +[BYDevice currentDevice];
    v18 = [v17 size];

    if (v18 == 2)
    {
      v42 = 5.0;
    }

    topAnchor = [*(selfCopy + 2) topAnchor];
    topAnchor2 = [selfCopy topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:?];
    v53[0] = v39;
    centerXAnchor = [*(selfCopy + 2) centerXAnchor];
    centerXAnchor2 = [selfCopy centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:?];
    v53[1] = v36;
    topAnchor3 = [*(selfCopy + 4) topAnchor];
    bottomAnchor = [*(selfCopy + 2) bottomAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:v42 constant:?];
    v53[2] = v33;
    centerXAnchor3 = [*(selfCopy + 4) centerXAnchor];
    centerXAnchor4 = [selfCopy centerXAnchor];
    v19 = [centerXAnchor3 constraintEqualToAnchor:?];
    v53[3] = v19;
    heightAnchor = [*(selfCopy + 4) heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:24.0];
    v53[4] = v21;
    widthAnchor = [*(selfCopy + 4) widthAnchor];
    heightAnchor2 = [*(selfCopy + 4) heightAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v53[5] = v24;
    bottomAnchor2 = [selfCopy bottomAnchor];
    bottomAnchor3 = [*(selfCopy + 4) bottomAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v53[6] = v27;
    v28 = [NSArray arrayWithObjects:v53 count:7];
    [NSLayoutConstraint activateConstraints:v28];

    [selfCopy layoutSubviews];
    objc_storeStrong(&v48, 0);
  }

  [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v29;
}

- (BuddyPosedDeviceSelectionItemAccessoryView)initWithSymbol:(id)symbol text:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, symbol);
  v13 = 0;
  objc_storeStrong(&v13, text);
  v5 = +[UIColor whiteColor];
  v16[0] = v5;
  v6 = +[UIColor systemBlueColor];
  v16[1] = v6;
  v7 = [NSArray arrayWithObjects:v16 count:2];
  v12 = [UIImageSymbolConfiguration configurationWithPaletteColors:v7];

  v11 = [UIImage systemImageNamed:location[0] withConfiguration:v12];
  v8 = selfCopy;
  selfCopy = 0;
  selfCopy = [v8 initWithImage:v11 text:v13];
  v9 = selfCopy;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)setSelected:(BOOL)selected
{
  if (selected && !self->_selected)
  {
    imageView = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    layer = [(UIImageView *)imageView layer];
    [layer setBorderWidth:0.0];

    selectedImage = [(BuddyPosedDeviceSelectionItemAccessoryView *)self selectedImage];
    imageView2 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    [(UIImageView *)imageView2 setImage:selectedImage];
  }

  if (!selected && self->_selected)
  {
    imageView3 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    layer2 = [(UIImageView *)imageView3 layer];
    [layer2 setBorderWidth:1.0];

    imageView4 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
    [(UIImageView *)imageView4 setImage:0];
  }

  self->_selected = selected;
  imageView5 = [(BuddyPosedDeviceSelectionItemAccessoryView *)self imageView];
  [(UIImageView *)imageView5 layoutIfNeeded];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v6.receiver = selfCopy;
  v6.super_class = BuddyPosedDeviceSelectionItemAccessoryView;
  [(BuddyPosedDeviceSelectionItemAccessoryView *)&v6 traitCollectionDidChange:location[0]];
  v3 = +[UIColor systemGrayColor];
  cGColor = [(UIColor *)v3 CGColor];
  layer = [(UIImageView *)selfCopy->_imageView layer];
  [layer setBorderColor:cGColor];

  objc_storeStrong(location, 0);
}

@end