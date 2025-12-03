@interface BCBrandedHeaderViewController
- (BCBrandedHeaderViewController)initWithBusinessItem:(id)item;
- (BCBrandedHeaderViewController)initWithBusinessItem:(id)item isCallMenu:(BOOL)menu;
- (BCBrandedHeaderViewControllerDelegate)delegate;
- (void)_fetchLogo;
- (void)viewDidLoad;
@end

@implementation BCBrandedHeaderViewController

- (BCBrandedHeaderViewController)initWithBusinessItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = BCBrandedHeaderViewController;
  v6 = [(BCBrandedHeaderViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessItem, item);
  }

  return v7;
}

- (BCBrandedHeaderViewController)initWithBusinessItem:(id)item isCallMenu:(BOOL)menu
{
  result = [(BCBrandedHeaderViewController *)self initWithBusinessItem:item];
  if (result)
  {
    result->_isCallMenu = menu;
  }

  return result;
}

- (void)viewDidLoad
{
  v153[6] = *MEMORY[0x277D85DE8];
  v146.receiver = self;
  v146.super_class = BCBrandedHeaderViewController;
  [(BCBrandedHeaderViewController *)&v146 viewDidLoad];
  if (self->_isCallMenu)
  {
    view2 = objc_alloc_init(MEMORY[0x277D75D18]);
    view = [(BCBrandedHeaderViewController *)self view];
    [view addSubview:view2];

    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    view2 = [(BCBrandedHeaderViewController *)self view];
  }

  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAccessibilityIgnoresInvertColors:1];
  [view2 addSubview:v5];
  v143 = v5;
  [(BCBrandedHeaderViewController *)self setLogoImageView:v5];
  v140 = objc_alloc_init(MEMORY[0x277D756D0]);
  [view2 addLayoutGuide:?];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  businessItem = [(BCBrandedHeaderViewController *)self businessItem];
  name = [businessItem name];
  [v6 setText:name];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 addSubview:v6];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  businessItem2 = [(BCBrandedHeaderViewController *)self businessItem];
  LODWORD(name) = [businessItem2 isVerified];

  if (name)
  {
    v11 = +[BCShared classBundle];
    v12 = [v11 localizedStringForKey:@"VERIFIED" value:&stru_2849DDCD8 table:0];
    [v9 setText:v12];
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 addSubview:v9];
  v13 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  businessItem3 = [(BCBrandedHeaderViewController *)self businessItem];
  [v13 setHidden:{objc_msgSend(businessItem3, "isVerified") ^ 1}];

  [view2 addSubview:v13];
  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
  v16 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76988]];
  v17 = [v16 scaledFontForFont:v15];
  [v6 setFont:v17];

  [v6 setAdjustsFontForContentSizeCategory:1];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v6 setTextColor:labelColor];

  [v6 setNumberOfLines:4];
  [v6 setLineBreakMode:4];
  LODWORD(v19) = 1144766464;
  [v6 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1144766464;
  [v6 setContentCompressionResistancePriority:1 forAxis:v20];
  LODWORD(v21) = 1148829696;
  [v6 setContentHuggingPriority:0 forAxis:v21];
  v142 = v6;
  LODWORD(v22) = 1148829696;
  [v6 setContentHuggingPriority:1 forAxis:v22];
  v23 = [MEMORY[0x277D74300] systemFontOfSize:13.0];

  if (v9)
  {
    v24 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76938]];
    v25 = [v24 scaledFontForFont:v23];
    [v9 setFont:v25];

    [v9 setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:secondaryLabelColor];

    [v9 setNumberOfLines:1];
    [v9 setLineBreakMode:4];
    LODWORD(v27) = 1148829696;
    [v9 setContentCompressionResistancePriority:0 forAxis:v27];
    LODWORD(v28) = 1148829696;
    [v9 setContentCompressionResistancePriority:1 forAxis:v28];
    LODWORD(v29) = 1148829696;
    [v9 setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148829696;
    [v9 setContentHuggingPriority:1 forAxis:v30];
    v31 = MEMORY[0x277D755D0];
    font = [v9 font];
    v33 = [v31 configurationWithFont:font scale:1];

    v34 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.seal.fill" withConfiguration:v33];
    v35 = [v34 imageWithRenderingMode:2];

    [v13 setImage:v35];
  }

  v137 = v23;
  layer = [v143 layer];
  [layer setCornerRadius:3.0];

  layer2 = [v143 layer];
  [layer2 setMasksToBounds:1];

  v139 = v9;
  textColor = [v9 textColor];
  v138 = v13;
  [v13 setTintColor:textColor];

  v145 = objc_opt_new();
  selfCopy = self;
  v144 = view2;
  if ([(BCBrandedHeaderViewController *)self isCallMenu])
  {
    view3 = [(BCBrandedHeaderViewController *)self view];
    heightAnchor = [view3 heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:45.0];

    v132 = v41;
    LODWORD(v42) = 1144766464;
    [v41 setPriority:v42];
    v153[0] = v41;
    view4 = [(BCBrandedHeaderViewController *)self view];
    widthAnchor = [view4 widthAnchor];
    v120 = [widthAnchor constraintEqualToConstant:300.0];
    v153[1] = v120;
    leadingAnchor = [view2 leadingAnchor];
    view5 = [(BCBrandedHeaderViewController *)self view];
    leadingAnchor2 = [view5 leadingAnchor];
    v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
    v153[2] = v111;
    topAnchor = [view2 topAnchor];
    view6 = [(BCBrandedHeaderViewController *)self view];
    topAnchor2 = [view6 topAnchor];
    v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v153[3] = v43;
    bottomAnchor = [view2 bottomAnchor];
    view7 = [(BCBrandedHeaderViewController *)selfCopy view];
    bottomAnchor2 = [view7 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v153[4] = v47;
    centerYAnchor = [view2 centerYAnchor];
    view8 = [(BCBrandedHeaderViewController *)selfCopy view];
    centerYAnchor2 = [view8 centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v153[5] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:6];
    [v145 addObjectsFromArray:v52];

    view2 = v144;
  }

  leadingAnchor3 = [v143 leadingAnchor];
  leadingAnchor4 = [view2 leadingAnchor];
  v125 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v152[0] = v125;
  centerYAnchor3 = [v143 centerYAnchor];
  centerYAnchor4 = [view2 centerYAnchor];
  v116 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v152[1] = v116;
  topAnchor3 = [v143 topAnchor];
  topAnchor4 = [view2 topAnchor];
  v53 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v152[2] = v53;
  bottomAnchor3 = [v143 bottomAnchor];
  bottomAnchor4 = [view2 bottomAnchor];
  v56 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v152[3] = v56;
  widthAnchor2 = [v143 widthAnchor];
  v58 = [widthAnchor2 constraintEqualToConstant:45.0];
  v152[4] = v58;
  heightAnchor2 = [v143 heightAnchor];
  v60 = [heightAnchor2 constraintEqualToConstant:45.0];
  v152[5] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:6];
  [v145 addObjectsFromArray:v61];

  leadingAnchor5 = [v140 leadingAnchor];
  trailingAnchor = [v143 trailingAnchor];
  v126 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:16.0];
  v151[0] = v126;
  topAnchor5 = [v140 topAnchor];
  topAnchor6 = [v144 topAnchor];
  v62 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v151[1] = v62;
  bottomAnchor5 = [v140 bottomAnchor];
  bottomAnchor6 = [v144 bottomAnchor];
  v65 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
  v151[2] = v65;
  centerYAnchor5 = [v140 centerYAnchor];
  centerYAnchor6 = [v143 centerYAnchor];
  v68 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v151[3] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  [v145 addObjectsFromArray:v69];

  isCallMenu = selfCopy->_isCallMenu;
  trailingAnchor2 = [v140 trailingAnchor];
  if (isCallMenu)
  {
    view9 = [(BCBrandedHeaderViewController *)selfCopy view];
    trailingAnchor3 = [view9 trailingAnchor];
    v74 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v145 addObject:v74];
  }

  else
  {
    view9 = [v144 trailingAnchor];
    trailingAnchor3 = [trailingAnchor2 constraintEqualToAnchor:view9];
    [v145 addObject:trailingAnchor3];
  }

  leadingAnchor6 = [v142 leadingAnchor];
  leadingAnchor7 = [v140 leadingAnchor];
  v135 = leadingAnchor6;
  v76 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v77 = v76;
  if (v139)
  {
    v150[0] = v76;
    trailingAnchor4 = [v142 trailingAnchor];
    trailingAnchor5 = [v140 trailingAnchor];
    v80 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v150[1] = v80;
    topAnchor7 = [v142 topAnchor];
    topAnchor8 = [v140 topAnchor];
    v83 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v150[2] = v83;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
    [v145 addObjectsFromArray:v84];

    leadingAnchor8 = [v139 leadingAnchor];
    leadingAnchor9 = [v140 leadingAnchor];
    v86 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v149[0] = v86;
    topAnchor9 = [v139 topAnchor];
    bottomAnchor7 = [v142 bottomAnchor];
    v89 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
    v149[1] = v89;
    bottomAnchor8 = [v139 bottomAnchor];
    bottomAnchor9 = [v140 bottomAnchor];
    v92 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v149[2] = v92;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
    v94 = v145;
    [v145 addObjectsFromArray:v93];

    v95 = v138;
    leadingAnchor10 = [v138 leadingAnchor];
    trailingAnchor6 = [v139 trailingAnchor];
    v77 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor6 constant:4.0];
    v148[0] = v77;
    centerYAnchor7 = [v138 centerYAnchor];
    v99 = v139;
    centerYAnchor8 = [v139 centerYAnchor];
    v101 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v148[1] = v101;
    topAnchor10 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
    [v145 addObjectsFromArray:topAnchor10];
  }

  else
  {
    v147[0] = v76;
    centerYAnchor7 = [v142 trailingAnchor];
    centerYAnchor8 = [v140 trailingAnchor];
    v101 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v147[1] = v101;
    topAnchor10 = [v142 topAnchor];
    topAnchor11 = [v140 topAnchor];
    v123 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v147[2] = v123;
    bottomAnchor10 = [v142 bottomAnchor];
    bottomAnchor11 = [v140 bottomAnchor];
    v105 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v147[3] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
    v94 = v145;
    [v145 addObjectsFromArray:v106];

    v95 = v138;
    v99 = 0;
    trailingAnchor6 = leadingAnchor7;
    leadingAnchor10 = v135;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v94];
  if (selfCopy->_isCallMenu)
  {
    [(BCBrandedHeaderViewController *)selfCopy updateSize];
  }

  [(BCBrandedHeaderViewController *)selfCopy _fetchLogo];

  v107 = *MEMORY[0x277D85DE8];
}

- (void)_fetchLogo
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[BCBrandedHeaderViewController _fetchLogo]";
    _os_log_impl(&dword_236EA0000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  delegate = [(BCBrandedHeaderViewController *)self delegate];
  objc_initWeak(buf, delegate);

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(buf);
  if (objc_opt_respondsToSelector())
  {
    businessItem = [(BCBrandedHeaderViewController *)self businessItem];
    [WeakRetained brandedHeaderViewController:self logoFetchingWillBeginForBusinessItem:businessItem];
  }

  v7 = CACurrentMediaTime();
  v8 = objc_alloc_init(MEMORY[0x277CF3620]);
  businessItem2 = [(BCBrandedHeaderViewController *)self businessItem];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__BCBrandedHeaderViewController__fetchLogo__block_invoke;
  v11[3] = &unk_278A0E6E8;
  objc_copyWeak(&v12, &location);
  v13[1] = *&v7;
  objc_copyWeak(v13, buf);
  v11[4] = self;
  [v8 fetchSquareIconDataForBusinessItem:businessItem2 completion:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __43__BCBrandedHeaderViewController__fetchLogo__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[BCBrandedHeaderViewController _fetchLogo]_block_invoke";
    v14 = 2048;
    v15 = [v3 length];
    _os_log_impl(&dword_236EA0000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched image length %ld", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BCBrandedHeaderViewController__fetchLogo__block_invoke_26;
  block[3] = &unk_278A0E6C0;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v11[1] = *(a1 + 56);
  v5 = v3;
  objc_copyWeak(v11, (a1 + 48));
  v9 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v11);

  objc_destroyWeak(&v10);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__BCBrandedHeaderViewController__fetchLogo__block_invoke_26(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) length];
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] imageWithData:*(a1 + 32)];
    v5 = [WeakRetained logoImageView];
    [v5 setImage:v4];

    v6 = (CACurrentMediaTime() + *(a1 + 64) * -1000.0);
    v7 = [WeakRetained businessItem];
    v8 = [v7 bizID];
    v9 = [WeakRetained businessItem];
    v10 = [v9 messageSubtitle];
    [BCLogger logEventWithName:@"com.apple.BusinessChatViewService.LogoAppears" businessURI:v8 callToActionText:v10 bizItemReturnedAfterAction:0 latency:v6];
  }

  else
  {
    v11 = LogCategory_Daemon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[BCBrandedHeaderViewController _fetchLogo]_block_invoke";
      _os_log_impl(&dword_236EA0000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed to fetch valid image", &v16, 0xCu);
    }
  }

  v12 = objc_loadWeakRetained((a1 + 56));
  if (objc_opt_respondsToSelector())
  {
    v13 = *(a1 + 40);
    v14 = [v13 businessItem];
    [v12 brandedHeaderViewController:v13 logoFetchingDidFinishForBusinessItem:v14 success:v3 != 0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BCBrandedHeaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end