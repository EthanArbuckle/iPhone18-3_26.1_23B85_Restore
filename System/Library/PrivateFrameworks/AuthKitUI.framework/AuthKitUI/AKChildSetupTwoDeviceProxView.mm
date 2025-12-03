@interface AKChildSetupTwoDeviceProxView
- (AKChildSetupTwoDeviceProxView)initWithFrame:(CGRect)frame;
- (id)_helloBackgroundForProductType:(id)type;
- (id)_helloScreenViewForProductType:(id)type;
- (id)_helloScreenViewWithBackgroundImage:(id)image cursiveImage:(id)cursiveImage labelBottomOffset:(double)offset labelHorizontalInset:(double)inset;
- (id)_homeScreenImageForProductType:(id)type;
- (id)_homeScreenViewForProductType:(id)type;
- (id)_homeScreenViewWithImage:(id)image;
- (id)_localizedHelloCursiveAssetForDeviceType;
- (id)_screenImagePrefixForProductType:(id)type;
- (int64_t)_deviceTypeForProductType:(id)type;
- (void)_addPairForiPad;
- (void)_addPairForiPhone;
@end

@implementation AKChildSetupTwoDeviceProxView

- (AKChildSetupTwoDeviceProxView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v11 = a2;
  v12 = 0;
  v10.receiver = self;
  v10.super_class = AKChildSetupTwoDeviceProxView;
  v12 = [(AKChildSetupTwoDeviceProxView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    [(AKChildSetupTwoDeviceProxView *)v12 setBackgroundColor:?];
    *&v3 = MEMORY[0x277D82BD8](systemGray6Color).n128_u64[0];
    [(AKChildSetupTwoDeviceProxView *)v12 setClipsToBounds:1, v3];
    [(AKChildSetupTwoDeviceProxView *)v12 setAccessibilityIgnoresInvertColors:1];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    *&v4 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (userInterfaceIdiom == 1)
    {
      [(AKChildSetupTwoDeviceProxView *)v12 _addPairForiPad];
    }

    else
    {
      [(AKChildSetupTwoDeviceProxView *)v12 _addPairForiPhone];
    }
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)_localizedHelloCursiveAssetForDeviceType
{
  v18[2] = self;
  v18[1] = a2;
  v11 = MEMORY[0x277CCA8D8];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v12 = [v11 preferredLocalizationsFromArray:&unk_2835AB060 forPreferences:?];
  v18[0] = [v12 firstObject];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](preferredLanguages);
  v17 = MEMORY[0x277D82BE0](&unk_2835AAFF0);
  v14 = [v17 objectForKey:v18[0]];
  v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v14)
  {
    v3 = [v17 objectForKey:{v18[0], *&v2}];
    v4 = v18[0];
    v18[0] = v3;
    v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cursive Hello %@", *&v2, v18[0]];
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v9 imageNamed:v16 inBundle:?];
  MEMORY[0x277D82BD8](v10);
  if (!v15)
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v7 imageNamed:@"Cursive Hello en" inBundle:?];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v8);
  }

  v6 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);

  return v6;
}

- (void)_addPairForiPad
{
  v53[11] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v51[1] = a2;
  v51[0] = [(AKChildSetupTwoDeviceProxView *)self _localizedHelloCursiveAssetForDeviceType];
  v6 = selfCopy;
  v5 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"iPad Pair Hello" inBundle:?];
  v50 = [AKChildSetupTwoDeviceProxView _helloScreenViewWithBackgroundImage:v6 cursiveImage:"_helloScreenViewWithBackgroundImage:cursiveImage:labelBottomOffset:labelHorizontalInset:" labelBottomOffset:88.0 labelHorizontalInset:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v10 = selfCopy;
  v9 = MEMORY[0x277D755B8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"iPad Phone Pair Home" inBundle:?];
  v49 = [(AKChildSetupTwoDeviceProxView *)v10 _homeScreenViewWithImage:?];
  MEMORY[0x277D82BD8](v11);
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  [(AKChildSetupTwoDeviceProxView *)selfCopy addSubview:v50, v2];
  [(AKChildSetupTwoDeviceProxView *)selfCopy addSubview:v49];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v48 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
  [v48 setBackgroundColor:?];
  *&v4 = MEMORY[0x277D82BD8](systemGray6Color).n128_u64[0];
  [(AKChildSetupTwoDeviceProxView *)selfCopy addSubview:v48, v4];
  v14 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v50 leadingAnchor];
  leadingAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:?];
  v53[0] = v45;
  trailingAnchor = [v50 trailingAnchor];
  trailingAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy trailingAnchor];
  v42 = [trailingAnchor constraintEqualToAnchor:?];
  v53[1] = v42;
  topAnchor = [v50 topAnchor];
  topAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:?];
  v53[2] = v39;
  bottomAnchor = [v50 bottomAnchor];
  bottomAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:?];
  v53[3] = v36;
  topAnchor3 = [v49 topAnchor];
  topAnchor4 = [(AKChildSetupTwoDeviceProxView *)selfCopy topAnchor];
  v33 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:?];
  v53[4] = v33;
  bottomAnchor3 = [v49 bottomAnchor];
  bottomAnchor4 = [(AKChildSetupTwoDeviceProxView *)selfCopy bottomAnchor];
  v30 = [bottomAnchor3 constraintEqualToAnchor:?];
  v53[5] = v30;
  trailingAnchor3 = [(AKChildSetupTwoDeviceProxView *)selfCopy trailingAnchor];
  trailingAnchor4 = [v49 trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:28.0 constant:?];
  v53[6] = v27;
  leadingAnchor3 = [v48 leadingAnchor];
  leadingAnchor4 = [(AKChildSetupTwoDeviceProxView *)selfCopy leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:?];
  v53[7] = v24;
  trailingAnchor5 = [v48 trailingAnchor];
  trailingAnchor6 = [(AKChildSetupTwoDeviceProxView *)selfCopy trailingAnchor];
  v21 = [trailingAnchor5 constraintEqualToAnchor:?];
  v53[8] = v21;
  bottomAnchor5 = [v48 bottomAnchor];
  bottomAnchor6 = [(AKChildSetupTwoDeviceProxView *)selfCopy bottomAnchor];
  v18 = [bottomAnchor5 constraintEqualToAnchor:?];
  v53[9] = v18;
  heightAnchor = [v48 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:0.5];
  v53[10] = v16;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:11];
  [v14 activateConstraints:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_addPairForiPhone
{
  v56[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v53[1] = a2;
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v53[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v53[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AKChildSetupTwoDeviceProxView *)selfCopy addSubview:v53[0]];
  v35 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v53[0] centerXAnchor];
  centerXAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:?];
  v56[0] = v43;
  topAnchor = [v53[0] topAnchor];
  topAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy topAnchor];
  v40 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
  v56[1] = v40;
  bottomAnchor = [v53[0] bottomAnchor];
  bottomAnchor2 = [(AKChildSetupTwoDeviceProxView *)selfCopy bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:?];
  v56[2] = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  [v35 activateConstraints:?];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  v52 = MGCopyAnswer();
  v51 = [(AKChildSetupTwoDeviceProxView *)selfCopy _helloScreenViewForProductType:v52];
  v50 = [(AKChildSetupTwoDeviceProxView *)selfCopy _homeScreenViewForProductType:v52];
  [v51 setContentCompressionResistancePriority:? forAxis:?];
  LODWORD(v3) = 1148846080;
  [v50 setContentCompressionResistancePriority:0 forAxis:v3];
  [v53[0] addSubview:v51];
  [v53[0] addSubview:v50];
  v49 = 0.0;
  v46 = [(AKChildSetupTwoDeviceProxView *)selfCopy _deviceTypeForProductType:v52];
  switch(v46)
  {
    case 1:
      v49 = 59.0;
      break;
    case 2:
      v49 = 62.0;
      break;
    case 3:
      v49 = 60.0;
      break;
    case 4:
      v49 = 74.0;
      break;
    case 5:
      v49 = 71.0;
      break;
  }

  v9 = MEMORY[0x277CCAAD0];
  topAnchor3 = [v53[0] topAnchor];
  topAnchor4 = [v51 topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:?];
  v55[0] = v29;
  bottomAnchor3 = [v53[0] bottomAnchor];
  bottomAnchor4 = [v50 bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:?];
  v55[1] = v26;
  leftAnchor = [v53[0] leftAnchor];
  leftAnchor2 = [v51 leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:?];
  v55[2] = v23;
  rightAnchor = [v53[0] rightAnchor];
  rightAnchor2 = [v50 rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:?];
  v55[3] = v20;
  bottomAnchor5 = [v53[0] bottomAnchor];
  bottomAnchor6 = [v51 bottomAnchor];
  v17 = [bottomAnchor5 constraintEqualToAnchor:? constant:?];
  v55[4] = v17;
  topAnchor5 = [v50 topAnchor];
  topAnchor6 = [v51 topAnchor];
  v14 = [topAnchor5 constraintEqualToAnchor:v49 constant:?];
  v55[5] = v14;
  rightAnchor3 = [v51 rightAnchor];
  leftAnchor3 = [v50 leftAnchor];
  v11 = [rightAnchor3 constraintEqualToAnchor:20.0 constant:?];
  v55[6] = v11;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:7];
  [v9 activateConstraints:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](leftAnchor3);
  MEMORY[0x277D82BD8](rightAnchor3);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](topAnchor4);
  *&v4 = MEMORY[0x277D82BD8](topAnchor3).n128_u64[0];
  layer = [v50 layer];
  LODWORD(v5) = 1045220557;
  [layer setShadowOpacity:v5];
  *&v6 = MEMORY[0x277D82BD8](layer).n128_u64[0];
  layer2 = [v50 layer];
  [layer2 setShadowRadius:?];
  MEMORY[0x277D82BD8](layer2);
  CGSizeMake_9();
  v47 = v7;
  v48 = v8;
  layer3 = [v50 layer];
  [layer3 setShadowOffset:{v47, v48}];
  MEMORY[0x277D82BD8](layer3);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(v53, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_helloScreenViewForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  _localizedHelloCursiveAssetForDeviceType = [(AKChildSetupTwoDeviceProxView *)selfCopy _localizedHelloCursiveAssetForDeviceType];
  v8 = [(AKChildSetupTwoDeviceProxView *)selfCopy _helloBackgroundForProductType:location[0]];
  v7 = 0.0;
  v6 = [(AKChildSetupTwoDeviceProxView *)selfCopy _deviceTypeForProductType:location[0]];
  switch(v6)
  {
    case 1:
      v7 = 92.0;
      break;
    case 2:
      v7 = 108.0;
      break;
    case 3:
      v7 = 122.0;
      break;
    case 4:
      v7 = 134.0;
      break;
    case 5:
      v7 = 149.0;
      break;
  }

  v5 = [(AKChildSetupTwoDeviceProxView *)selfCopy _helloScreenViewWithBackgroundImage:v8 cursiveImage:_localizedHelloCursiveAssetForDeviceType labelBottomOffset:v7 labelHorizontalInset:10.0, &v8];
  objc_storeStrong(v4, 0);
  objc_storeStrong(&_localizedHelloCursiveAssetForDeviceType, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_helloScreenViewWithBackgroundImage:(id)image cursiveImage:(id)cursiveImage labelBottomOffset:(double)offset labelHorizontalInset:(double)inset
{
  v58[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v55 = 0;
  objc_storeStrong(&v55, cursiveImage);
  offsetCopy = offset;
  insetCopy = inset;
  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v52 = [v6 initWithImage:location[0]];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52 setContentMode:?];
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v51 = [v7 initWithImage:location[0]];
  [v51 setHidden:1];
  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1148846080;
  [v51 setContentHuggingPriority:0 forAxis:v8];
  [v52 addSubview:v51];
  v33 = MEMORY[0x277CCAAD0];
  topAnchor = [v51 topAnchor];
  topAnchor2 = [v52 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:?];
  v58[0] = v44;
  bottomAnchor = [v51 bottomAnchor];
  bottomAnchor2 = [v52 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:?];
  v58[1] = v41;
  centerXAnchor = [v51 centerXAnchor];
  centerXAnchor2 = [v52 centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:?];
  v58[2] = v38;
  widthAnchor = [v51 widthAnchor];
  heightAnchor = [v51 heightAnchor];
  [location[0] size];
  v50[3] = v9;
  v50[4] = v10;
  v32 = *&v9;
  [location[0] size];
  v50[1] = v11;
  v50[2] = v12;
  v35 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v32 / *&v12];
  v58[3] = v35;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
  [v33 activateConstraints:?];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  v13 = objc_alloc(MEMORY[0x277D755E8]);
  v50[0] = [v13 initWithImage:v55];
  [v50[0] setContentMode:1];
  [v50[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v52 addSubview:v50[0]];
  v49 = 20.0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  if (userInterfaceIdiom == 1)
  {
    v49 = 30.0;
  }

  v15 = MEMORY[0x277CCAAD0];
  centerXAnchor3 = [v51 centerXAnchor];
  centerXAnchor4 = [v50[0] centerXAnchor];
  v25 = [centerXAnchor3 constraintEqualToAnchor:?];
  v57[0] = v25;
  widthAnchor2 = [v51 widthAnchor];
  widthAnchor3 = [v50[0] widthAnchor];
  v22 = [widthAnchor2 constraintGreaterThanOrEqualToAnchor:insetCopy * 2.0 constant:?];
  v57[1] = v22;
  bottomAnchor3 = [v52 bottomAnchor];
  bottomAnchor4 = [v50[0] bottomAnchor];
  v19 = [bottomAnchor3 constraintEqualToAnchor:offsetCopy constant:?];
  v57[2] = v19;
  heightAnchor2 = [v50[0] heightAnchor];
  v17 = [heightAnchor2 constraintLessThanOrEqualToConstant:v49];
  v57[3] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  [v15 activateConstraints:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](widthAnchor3);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](centerXAnchor4);
  MEMORY[0x277D82BD8](centerXAnchor3);
  v28 = MEMORY[0x277D82BE0](v52);
  objc_storeStrong(v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_homeScreenViewForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v5 = [(AKChildSetupTwoDeviceProxView *)selfCopy _homeScreenImageForProductType:location[0]];
  v4 = [(AKChildSetupTwoDeviceProxView *)selfCopy _homeScreenViewWithImage:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_homeScreenViewWithImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = [v3 initWithImage:location[0]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_homeScreenImageForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v8 = [(AKChildSetupTwoDeviceProxView *)selfCopy _screenImagePrefixForProductType:location[0]];
  v4 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Pair Home", v8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v4 imageNamed:v6 inBundle:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_helloBackgroundForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v5 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCACA8];
  v8 = [(AKChildSetupTwoDeviceProxView *)selfCopy _screenImagePrefixForProductType:location[0]];
  v7 = [v4 stringWithFormat:@"%@ Pair Hello", v8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:v7 inBundle:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)_screenImagePrefixForProductType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v6 = [(AKChildSetupTwoDeviceProxView *)selfCopy _deviceTypeForProductType:location[0]];
  v5 = 0;
  switch(v6)
  {
    case 1:
      objc_storeStrong(&v5, @"iPhone SE");
      break;
    case 2:
      objc_storeStrong(&v5, @"iPhone 7");
      break;
    case 3:
      objc_storeStrong(&v5, @"iPhone 7 Plus");
      break;
    case 4:
      objc_storeStrong(&v5, @"iPhone 11 Pro");
      break;
    case 5:
      objc_storeStrong(&v5, @"iPhone 11 Pro Max");
      break;
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
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

  if ([location[0] containsString:{@"iPhone11, 4"}] & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone11,6") & 1) != 0 || (objc_msgSend(location[0], "containsString:", @"iPhone12,5"))
  {
    v8 = 5;
    v6 = 1;
    goto LABEL_22;
  }

  v5 = MEMORY[0x277D82BE0](&unk_2835AB078);
  v4 = MEMORY[0x277D82BE0](&unk_2835AB090);
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