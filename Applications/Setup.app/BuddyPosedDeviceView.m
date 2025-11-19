@interface BuddyPosedDeviceView
- (BuddyPosedDeviceView)initWithFrame:(CGRect)a3;
- (BuddyPosedDeviceView)initWithPairForProductType:(id)a3;
- (id)_helloBackgroundForProductType:(id)a3;
- (id)_helloScreenViewForProductType:(id)a3 helloVerticalOffset:(double)a4;
- (id)_helloScreenViewWithHelloShaderOverBackgroundImage:(id)a3 helloVerticalOffset:(double)a4;
- (id)_homeScreenImageForProductType:(id)a3;
- (id)_homeScreenViewForProductType:(id)a3;
- (id)_homeScreenViewWithImage:(id)a3;
- (id)_screenImagePrefixForProductType:(id)a3;
- (int64_t)_deviceTypeForProductType:(id)a3;
- (void)_addPairForiPad;
- (void)_addPairForiPhone:(id)a3;
- (void)pauseAnimation;
- (void)startAnimation;
@end

@implementation BuddyPosedDeviceView

- (BuddyPosedDeviceView)initWithFrame:(CGRect)a3
{
  v9 = a3;
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyPosedDeviceView;
  location = [(BuddyPosedDeviceView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (BuddyPosedDeviceView)initWithPairForProductType:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    if ([location[0] containsString:@"iPad"])
    {
      [v7 _addPairForiPad];
    }

    else
    {
      [v7 _addPairForiPhone:location[0]];
    }
  }

  v4 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
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
  v42 = self;
  v41[1] = a2;
  v3 = [UIImage imageNamed:@"iPad Pair Hello"];
  v41[0] = [(BuddyPosedDeviceView *)self _helloScreenViewWithHelloShaderOverBackgroundImage:v3 helloVerticalOffset:44.0];

  v4 = [UIImage imageNamed:@"iPad Phone Pair Home"];
  v40 = [(BuddyPosedDeviceView *)v42 _homeScreenViewWithImage:v4];

  [(BuddyPosedDeviceView *)v42 addSubview:v41[0]];
  [(BuddyPosedDeviceView *)v42 addSubview:v40];
  location = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemGray6Color];
  [location setBackgroundColor:v5];

  [(BuddyPosedDeviceView *)v42 addSubview:location];
  v38 = [v41[0] leadingAnchor];
  v37 = [(BuddyPosedDeviceView *)v42 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:?];
  v43[0] = v36;
  v35 = [v41[0] trailingAnchor];
  v34 = [(BuddyPosedDeviceView *)v42 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:?];
  v43[1] = v33;
  v32 = [v41[0] topAnchor];
  v31 = [(BuddyPosedDeviceView *)v42 topAnchor];
  v30 = [v32 constraintEqualToAnchor:?];
  v43[2] = v30;
  v29 = [v41[0] bottomAnchor];
  v28 = [(BuddyPosedDeviceView *)v42 bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:?];
  v43[3] = v27;
  v26 = [v40 topAnchor];
  v25 = [(BuddyPosedDeviceView *)v42 topAnchor];
  v24 = [v26 constraintGreaterThanOrEqualToAnchor:28.0 constant:?];
  v43[4] = v24;
  v23 = [v40 bottomAnchor];
  v22 = [v41[0] bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:?];
  v43[5] = v21;
  v20 = [(BuddyPosedDeviceView *)v42 trailingAnchor];
  v19 = [v40 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:28.0 constant:?];
  v43[6] = v18;
  v17 = [location leadingAnchor];
  v16 = [(BuddyPosedDeviceView *)v42 leadingAnchor];
  v6 = [v17 constraintEqualToAnchor:?];
  v43[7] = v6;
  v7 = [location trailingAnchor];
  v8 = [(BuddyPosedDeviceView *)v42 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v43[8] = v9;
  v10 = [location bottomAnchor];
  v11 = [(BuddyPosedDeviceView *)v42 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v43[9] = v12;
  v13 = [location heightAnchor];
  v14 = [v13 constraintEqualToConstant:0.5];
  v43[10] = v14;
  v15 = [NSArray arrayWithObjects:v43 count:11];
  [NSLayoutConstraint activateConstraints:v15];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v41, 0);
}

- (void)_addPairForiPhone:(id)a3
{
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BuddyPosedDeviceView *)v50 addSubview:v48];
  v3 = [v48 centerXAnchor];
  v4 = [(BuddyPosedDeviceView *)v50 centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v52[0] = v5;
  v6 = [v48 topAnchor];
  v7 = [(BuddyPosedDeviceView *)v50 topAnchor];
  v8 = [v6 constraintGreaterThanOrEqualToAnchor:v7];
  v52[1] = v8;
  v9 = [v48 bottomAnchor];
  v10 = [(BuddyPosedDeviceView *)v50 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v52[2] = v11;
  v12 = [NSArray arrayWithObjects:v52 count:3];
  [NSLayoutConstraint activateConstraints:v12];

  v47 = [(BuddyPosedDeviceView *)v50 _helloScreenViewForProductType:location[0] helloVerticalOffset:0.0];
  v46 = [(BuddyPosedDeviceView *)v50 _homeScreenViewForProductType:location[0]];
  LODWORD(v13) = 1148846080;
  [v47 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v46 setContentCompressionResistancePriority:0 forAxis:v14];
  [v48 addSubview:v47];
  [v48 addSubview:v46];
  v45 = 0.0;
  v15 = [(BuddyPosedDeviceView *)v50 _deviceTypeForProductType:location[0]];
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

  v42 = [v48 topAnchor];
  v41 = [v47 topAnchor];
  v40 = [v42 constraintEqualToAnchor:?];
  v51[0] = v40;
  v39 = [v48 bottomAnchor];
  v38 = [v46 bottomAnchor];
  v37 = [v39 constraintEqualToAnchor:?];
  v51[1] = v37;
  v36 = [v48 leftAnchor];
  v35 = [v47 leftAnchor];
  v34 = [v36 constraintEqualToAnchor:?];
  v51[2] = v34;
  v33 = [v48 rightAnchor];
  v32 = [v46 rightAnchor];
  v31 = [v33 constraintEqualToAnchor:?];
  v51[3] = v31;
  v16 = [v48 bottomAnchor];
  v17 = [v47 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];
  v51[4] = v18;
  v19 = [v46 topAnchor];
  v20 = [v47 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v45];
  v51[5] = v21;
  v22 = [v47 rightAnchor];
  v23 = [v46 leftAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:20.0];
  v51[6] = v24;
  v25 = [NSArray arrayWithObjects:v51 count:7];
  [NSLayoutConstraint activateConstraints:v25];

  v26 = [v46 layer];
  LODWORD(v27) = 1045220557;
  [v26 setShadowOpacity:v27];

  v28 = [v46 layer];
  [v28 setShadowRadius:18.0];

  v43 = sub_1000999B0();
  v44 = v29;
  v30 = [v46 layer];
  [v30 setShadowOffset:{v43, v44}];

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
}

- (id)_helloScreenViewForProductType:(id)a3 helloVerticalOffset:(double)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = *&a4;
  v7[0] = [(BuddyPosedDeviceView *)v9 _helloBackgroundForProductType:location[0]];
  v5 = [(BuddyPosedDeviceView *)v9 _helloScreenViewWithHelloShaderOverBackgroundImage:v7[0] helloVerticalOffset:a4];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_helloScreenViewWithHelloShaderOverBackgroundImage:(id)a3 helloVerticalOffset:(double)a4
{
  v68 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v66 = a4;
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
  v55 = [v64 topAnchor];
  v54 = [v65 topAnchor];
  v52 = [v55 constraintEqualToAnchor:?];
  v70[0] = v52;
  v8 = [v64 bottomAnchor];
  v9 = [v65 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v70[1] = v10;
  v11 = [v64 centerXAnchor];
  v12 = [v65 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v70[2] = v13;
  v14 = [v64 widthAnchor];
  v15 = [v64 heightAnchor];
  [location[0] size];
  v63[3] = v16;
  v63[4] = v17;
  v18 = *&v16;
  [location[0] size];
  v63[1] = v19;
  v63[2] = v20;
  v21 = [v14 constraintEqualToAnchor:v15 multiplier:v18 / *&v20];
  v70[3] = v21;
  v22 = [NSArray arrayWithObjects:v70 count:4];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [SASBookendViewProvider alloc];
  v24 = +[NSLocale preferredLanguages];
  v25 = [v23 initWithBookendType:0 onlyShowLanguages:v24];
  [(BuddyPosedDeviceView *)v68 setHelloProvider:v25];

  v26 = [(BuddyPosedDeviceView *)v68 helloProvider];
  [(SASBookendViewProvider *)v26 shouldRenderBackgroundTexture:0];

  v63[0] = objc_alloc_init(SASBookendAnimationConfiguration);
  [v63[0] setPreferedAnimationStartingPoint:1];
  v27 = [(BuddyPosedDeviceView *)v68 helloProvider];
  [(SASBookendViewProvider *)v27 setAnimationConfiguration:v63[0]];

  v28 = [BuddyHelloTextureDataSource alloc];
  v29 = [(BuddyHelloTextureDataSource *)v28 initWithImage:location[0]];
  [(BuddyPosedDeviceView *)v68 setTextureLoader:v29];

  [v64 frame];
  v59 = v30;
  v58 = v31;
  v61 = v32;
  v60 = v33;
  v62 = v32;
  v57 = 1.0 - (v32 - v66) / v32;
  v34 = [(BuddyPosedDeviceView *)v68 textureLoader];
  [(BuddyHelloTextureDataSource *)v34 setTextureVerticalOffset:v57];

  v35 = [(BuddyPosedDeviceView *)v68 helloProvider];
  v36 = [(BuddyPosedDeviceView *)v68 textureLoader];
  [(SASBookendViewProvider *)v35 setBackgroundTextureDataSource:v36];

  v37 = [(BuddyPosedDeviceView *)v68 helloProvider];
  v56 = [(SASBookendViewProvider *)v37 view];

  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v65 addSubview:v56];
  v53 = [v56 centerXAnchor];
  v51 = [v64 centerXAnchor];
  v50 = [v53 constraintEqualToAnchor:?];
  v69[0] = v50;
  v38 = [v56 topAnchor];
  v39 = [v64 topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v66];
  v69[1] = v40;
  v41 = [v56 bottomAnchor];
  v42 = [v64 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:v66];
  v69[2] = v43;
  v44 = [v56 widthAnchor];
  v45 = [v64 widthAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  v69[3] = v46;
  v47 = [NSArray arrayWithObjects:v69 count:4];
  [NSLayoutConstraint activateConstraints:v47];

  [v65 addSubview:v56];
  v48 = v65;
  objc_storeStrong(&v56, 0);
  objc_storeStrong(v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  return v48;
}

- (id)_homeScreenViewForProductType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPosedDeviceView *)v8 _homeScreenImageForProductType:location[0]];
  v4 = [(BuddyPosedDeviceView *)v8 _homeScreenViewWithImage:v3, v3];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_homeScreenViewWithImage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [UIImageView alloc];
  v6 = [v3 initWithImage:location[0]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];
  v4 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_homeScreenImageForProductType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(BuddyPosedDeviceView *)v8 _screenImagePrefixForProductType:location[0]];
  v3 = [NSString stringWithFormat:@"%@ Pair Home", v6];
  v4 = [UIImage imageNamed:v3];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_helloBackgroundForProductType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPosedDeviceView *)v8 _screenImagePrefixForProductType:location[0]];
  v4 = [NSString stringWithFormat:@"%@ Pair Hello", v3];
  v5 = [UIImage imageNamed:v4];

  objc_storeStrong(location, 0);

  return v5;
}

- (id)_screenImagePrefixForProductType:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPosedDeviceView *)v8 _deviceTypeForProductType:location[0]];
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

- (int64_t)_deviceTypeForProductType:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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