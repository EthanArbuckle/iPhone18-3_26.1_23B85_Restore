@interface BuddyPosedDeviceView
- (BuddyPosedDeviceView)initWithFrame:(CGRect)frame;
- (BuddyPosedDeviceView)initWithPairForProductType:(id)type;
- (id)_helloBackgroundForProductType:(id)type;
- (id)_helloScreenViewForProductType:(id)type helloVerticalOffset:(double)offset;
- (id)_helloScreenViewWithHelloShaderOverBackgroundImage:(id)image helloVerticalOffset:(double)offset;
- (id)_homeScreenImageForProductType:(id)type;
- (id)_homeScreenViewForProductType:(id)type;
- (id)_homeScreenViewWithImage:(id)image;
- (id)_screenImagePrefixForProductType:(id)type;
- (int64_t)_deviceTypeForProductType:(id)type;
- (void)_addPairForiPad;
- (void)_addPairForiPhone:(id)phone;
- (void)pauseAnimation;
- (void)startAnimation;
@end

@implementation BuddyPosedDeviceView

- (BuddyPosedDeviceView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyPosedDeviceView;
  location = [(BuddyPosedDeviceView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = +[UIColor systemGray6Color];
    [location setBackgroundColor:v3];

    [location setClipsToBounds:1];
    [location setAccessibilityIgnoresInvertColors:1];
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BuddyPosedDeviceView)initWithPairForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [v3 initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if ([location[0] containsString:@"iPad"])
    {
      [selfCopy _addPairForiPad];
    }

    else
    {
      [selfCopy _addPairForiPhone:location[0]];
    }
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)startAnimation
{
  v2 = [(BuddyPosedDeviceView *)self helloProvider:a2];
  [(SASBookendViewProvider *)v2 startAnimation];
}

- (void)pauseAnimation
{
  v2 = [(BuddyPosedDeviceView *)self helloProvider:a2];
  [(SASBookendViewProvider *)v2 pauseAnimation];
}

- (void)_addPairForiPad
{
  selfCopy = self;
  v41[1] = a2;
  v3 = [UIImage imageNamed:@"iPad Pair Hello"];
  v41[0] = [(BuddyPosedDeviceView *)self _helloScreenViewWithHelloShaderOverBackgroundImage:v3 helloVerticalOffset:44.0];

  v4 = [UIImage imageNamed:@"iPad Phone Pair Home"];
  v40 = [(BuddyPosedDeviceView *)selfCopy _homeScreenViewWithImage:v4];

  [(BuddyPosedDeviceView *)selfCopy addSubview:v41[0]];
  [(BuddyPosedDeviceView *)selfCopy addSubview:v40];
  location = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemGray6Color];
  [location setBackgroundColor:v5];

  [(BuddyPosedDeviceView *)selfCopy addSubview:location];
  leadingAnchor = [v41[0] leadingAnchor];
  leadingAnchor2 = [(BuddyPosedDeviceView *)selfCopy leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:?];
  v43[0] = v36;
  trailingAnchor = [v41[0] trailingAnchor];
  trailingAnchor2 = [(BuddyPosedDeviceView *)selfCopy trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:?];
  v43[1] = v33;
  topAnchor = [v41[0] topAnchor];
  topAnchor2 = [(BuddyPosedDeviceView *)selfCopy topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:?];
  v43[2] = v30;
  bottomAnchor = [v41[0] bottomAnchor];
  bottomAnchor2 = [(BuddyPosedDeviceView *)selfCopy bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:?];
  v43[3] = v27;
  topAnchor3 = [v40 topAnchor];
  topAnchor4 = [(BuddyPosedDeviceView *)selfCopy topAnchor];
  v24 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:28.0 constant:?];
  v43[4] = v24;
  bottomAnchor3 = [v40 bottomAnchor];
  bottomAnchor4 = [v41[0] bottomAnchor];
  v21 = [bottomAnchor3 constraintEqualToAnchor:?];
  v43[5] = v21;
  trailingAnchor3 = [(BuddyPosedDeviceView *)selfCopy trailingAnchor];
  trailingAnchor4 = [v40 trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:28.0 constant:?];
  v43[6] = v18;
  leadingAnchor3 = [location leadingAnchor];
  leadingAnchor4 = [(BuddyPosedDeviceView *)selfCopy leadingAnchor];
  v6 = [leadingAnchor3 constraintEqualToAnchor:?];
  v43[7] = v6;
  trailingAnchor5 = [location trailingAnchor];
  trailingAnchor6 = [(BuddyPosedDeviceView *)selfCopy trailingAnchor];
  v9 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v43[8] = v9;
  bottomAnchor5 = [location bottomAnchor];
  bottomAnchor6 = [(BuddyPosedDeviceView *)selfCopy bottomAnchor];
  v12 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v43[9] = v12;
  heightAnchor = [location heightAnchor];
  v14 = [heightAnchor constraintEqualToConstant:0.5];
  v43[10] = v14;
  v15 = [NSArray arrayWithObjects:v43 count:11];
  [NSLayoutConstraint activateConstraints:v15];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v41, 0);
}

- (void)_addPairForiPhone:(id)phone
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, phone);
  v48 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BuddyPosedDeviceView *)selfCopy addSubview:v48];
  centerXAnchor = [v48 centerXAnchor];
  centerXAnchor2 = [(BuddyPosedDeviceView *)selfCopy centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v52[0] = v5;
  topAnchor = [v48 topAnchor];
  topAnchor2 = [(BuddyPosedDeviceView *)selfCopy topAnchor];
  v8 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v52[1] = v8;
  bottomAnchor = [v48 bottomAnchor];
  bottomAnchor2 = [(BuddyPosedDeviceView *)selfCopy bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[2] = v11;
  v12 = [NSArray arrayWithObjects:v52 count:3];
  [NSLayoutConstraint activateConstraints:v12];

  v47 = [(BuddyPosedDeviceView *)selfCopy _helloScreenViewForProductType:location[0] helloVerticalOffset:0.0];
  v46 = [(BuddyPosedDeviceView *)selfCopy _homeScreenViewForProductType:location[0]];
  LODWORD(v13) = 1148846080;
  [v47 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v46 setContentCompressionResistancePriority:0 forAxis:v14];
  [v48 addSubview:v47];
  [v48 addSubview:v46];
  v45 = 0.0;
  v15 = [(BuddyPosedDeviceView *)selfCopy _deviceTypeForProductType:location[0]];
  if (v15 == 1)
  {
    v45 = 59.0;
  }

  else if (v15 == 2)
  {
    v45 = 62.0;
  }

  else if (v15 == 3)
  {
    v45 = 60.0;
  }

  else if (v15 == 4)
  {
    v45 = 74.0;
  }

  else if (v15 == 5)
  {
    v45 = 71.0;
  }

  topAnchor3 = [v48 topAnchor];
  topAnchor4 = [v47 topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:?];
  v51[0] = v40;
  bottomAnchor3 = [v48 bottomAnchor];
  bottomAnchor4 = [v46 bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:?];
  v51[1] = v37;
  leftAnchor = [v48 leftAnchor];
  leftAnchor2 = [v47 leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:?];
  v51[2] = v34;
  rightAnchor = [v48 rightAnchor];
  rightAnchor2 = [v46 rightAnchor];
  v31 = [rightAnchor constraintEqualToAnchor:?];
  v51[3] = v31;
  bottomAnchor5 = [v48 bottomAnchor];
  bottomAnchor6 = [v47 bottomAnchor];
  v18 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:20.0];
  v51[4] = v18;
  topAnchor5 = [v46 topAnchor];
  topAnchor6 = [v47 topAnchor];
  v21 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v45];
  v51[5] = v21;
  rightAnchor3 = [v47 rightAnchor];
  leftAnchor3 = [v46 leftAnchor];
  v24 = [rightAnchor3 constraintEqualToAnchor:leftAnchor3 constant:20.0];
  v51[6] = v24;
  v25 = [NSArray arrayWithObjects:v51 count:7];
  [NSLayoutConstraint activateConstraints:v25];

  layer = [v46 layer];
  LODWORD(v27) = 1045220557;
  [layer setShadowOpacity:v27];

  layer2 = [v46 layer];
  [layer2 setShadowRadius:18.0];

  v43 = sub_1000999B0();
  v44 = v29;
  layer3 = [v46 layer];
  [layer3 setShadowOffset:{v43, v44}];

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
}

- (id)_helloScreenViewForProductType:(id)type helloVerticalOffset:(double)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v7[1] = *&offset;
  v7[0] = [(BuddyPosedDeviceView *)selfCopy _helloBackgroundForProductType:location[0]];
  v5 = [(BuddyPosedDeviceView *)selfCopy _helloScreenViewWithHelloShaderOverBackgroundImage:v7[0] helloVerticalOffset:offset];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_helloScreenViewWithHelloShaderOverBackgroundImage:(id)image helloVerticalOffset:(double)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  offsetCopy = offset;
  v5 = [UIImageView alloc];
  v65 = [v5 initWithImage:location[0]];
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 setContentMode:1];
  v6 = [UIImageView alloc];
  v64 = [v6 initWithImage:location[0]];
  [v64 setHidden:1];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [v64 setContentHuggingPriority:0 forAxis:v7];
  [v65 addSubview:v64];
  topAnchor = [v64 topAnchor];
  topAnchor2 = [v65 topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:?];
  v70[0] = v52;
  bottomAnchor = [v64 bottomAnchor];
  bottomAnchor2 = [v65 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v70[1] = v10;
  centerXAnchor = [v64 centerXAnchor];
  centerXAnchor2 = [v65 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v70[2] = v13;
  widthAnchor = [v64 widthAnchor];
  heightAnchor = [v64 heightAnchor];
  [location[0] size];
  v63[3] = v16;
  v63[4] = v17;
  v18 = *&v16;
  [location[0] size];
  v63[1] = v19;
  v63[2] = v20;
  v21 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v18 / *&v20];
  v70[3] = v21;
  v22 = [NSArray arrayWithObjects:v70 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [SASBookendViewProvider alloc];
  v24 = +[NSLocale preferredLanguages];
  v25 = [v23 initWithBookendType:0 onlyShowLanguages:v24];
  [(BuddyPosedDeviceView *)selfCopy setHelloProvider:v25];

  helloProvider = [(BuddyPosedDeviceView *)selfCopy helloProvider];
  [(SASBookendViewProvider *)helloProvider shouldRenderBackgroundTexture:0];

  v63[0] = objc_alloc_init(SASBookendAnimationConfiguration);
  [v63[0] setPreferedAnimationStartingPoint:1];
  helloProvider2 = [(BuddyPosedDeviceView *)selfCopy helloProvider];
  [(SASBookendViewProvider *)helloProvider2 setAnimationConfiguration:v63[0]];

  v28 = [BuddyHelloTextureDataSource alloc];
  v29 = [(BuddyHelloTextureDataSource *)v28 initWithImage:location[0]];
  [(BuddyPosedDeviceView *)selfCopy setTextureLoader:v29];

  [v64 frame];
  v59 = v30;
  v58 = v31;
  v61 = v32;
  v60 = v33;
  v62 = v32;
  v57 = 1.0 - (v32 - offsetCopy) / v32;
  textureLoader = [(BuddyPosedDeviceView *)selfCopy textureLoader];
  [(BuddyHelloTextureDataSource *)textureLoader setTextureVerticalOffset:v57];

  helloProvider3 = [(BuddyPosedDeviceView *)selfCopy helloProvider];
  textureLoader2 = [(BuddyPosedDeviceView *)selfCopy textureLoader];
  [(SASBookendViewProvider *)helloProvider3 setBackgroundTextureDataSource:textureLoader2];

  helloProvider4 = [(BuddyPosedDeviceView *)selfCopy helloProvider];
  view = [(SASBookendViewProvider *)helloProvider4 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 addSubview:view];
  centerXAnchor3 = [view centerXAnchor];
  centerXAnchor4 = [v64 centerXAnchor];
  v50 = [centerXAnchor3 constraintEqualToAnchor:?];
  v69[0] = v50;
  topAnchor3 = [view topAnchor];
  topAnchor4 = [v64 topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:offsetCopy];
  v69[1] = v40;
  bottomAnchor3 = [view bottomAnchor];
  bottomAnchor4 = [v64 bottomAnchor];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:offsetCopy];
  v69[2] = v43;
  widthAnchor2 = [view widthAnchor];
  widthAnchor3 = [v64 widthAnchor];
  v46 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v69[3] = v46;
  v47 = [NSArray arrayWithObjects:v69 count:4];
  [NSLayoutConstraint activateConstraints:v47];

  [v65 addSubview:view];
  v48 = v65;
  objc_storeStrong(&view, 0);
  objc_storeStrong(v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  return v48;
}

- (id)_homeScreenViewForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = [(BuddyPosedDeviceView *)selfCopy _homeScreenImageForProductType:location[0]];
  v4 = [(BuddyPosedDeviceView *)selfCopy _homeScreenViewWithImage:v3, v3];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_homeScreenViewWithImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = [UIImageView alloc];
  v6 = [v3 initWithImage:location[0]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];
  v4 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_homeScreenImageForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v6 = [(BuddyPosedDeviceView *)selfCopy _screenImagePrefixForProductType:location[0]];
  v3 = [NSString stringWithFormat:@"%@ Pair Home", v6];
  v4 = [UIImage imageNamed:v3];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_helloBackgroundForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = [(BuddyPosedDeviceView *)selfCopy _screenImagePrefixForProductType:location[0]];
  v4 = [NSString stringWithFormat:@"%@ Pair Hello", v3];
  v5 = [UIImage imageNamed:v4];

  objc_storeStrong(location, 0);

  return v5;
}

- (id)_screenImagePrefixForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v3 = [(BuddyPosedDeviceView *)selfCopy _deviceTypeForProductType:location[0]];
  v6[1] = v3;
  v6[0] = 0;
  if (v3 == 1)
  {
    objc_storeStrong(v6, @"iPhone SE");
  }

  else if (v3 == 2)
  {
    objc_storeStrong(v6, @"iPhone 7");
  }

  else if (v3 == 3)
  {
    objc_storeStrong(v6, @"iPhone 7 Plus");
  }

  else if (v3 == 4)
  {
    objc_storeStrong(v6, @"iPhone 11 Pro");
  }

  else if (v3 == 5)
  {
    objc_storeStrong(v6, @"iPhone 11 Pro Max");
  }

  v4 = v6[0];
  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (int64_t)_deviceTypeForProductType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  if (([location[0] containsString:@"iPhone"] & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([location[0] containsString:{@"iPhone8, 4"}] & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone6"))
  {
    v8 = 1;
    v6 = 1;
    goto LABEL_22;
  }

  if ([location[0] containsString:{@"iPhone10, 3"}] & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone10,6") & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone11,2") & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone11,8") & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone12,3"))
  {
    v8 = 4;
    v6 = 1;
    goto LABEL_22;
  }

  if ([location[0] containsString:{@"iPhone11, 4"}] & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone11,6") & 1) != 0 || (objc_msgSend(location[0], "containsString:", 0x100331000))
  {
    v8 = 5;
    v6 = 1;
    goto LABEL_22;
  }

  v5 = &off_10033CE98;
  v4 = &off_10033CEB0;
  if ([v5 containsObject:location[0]])
  {
    v8 = 2;
    v6 = 1;
  }

  else if ([v4 containsObject:location[0]])
  {
    v8 = 3;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  if (!v6)
  {
LABEL_21:
    v8 = 4;
    v6 = 1;
  }

LABEL_22:
  objc_storeStrong(location, 0);
  return v8;
}

@end