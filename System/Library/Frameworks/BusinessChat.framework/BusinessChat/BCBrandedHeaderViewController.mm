@interface BCBrandedHeaderViewController
- (BCBrandedHeaderViewController)initWithBusinessItem:(id)a3;
- (BCBrandedHeaderViewController)initWithBusinessItem:(id)a3 isCallMenu:(BOOL)a4;
- (BCBrandedHeaderViewControllerDelegate)delegate;
- (void)_fetchLogo;
- (void)viewDidLoad;
@end

@implementation BCBrandedHeaderViewController

- (BCBrandedHeaderViewController)initWithBusinessItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCBrandedHeaderViewController;
  v6 = [(BCBrandedHeaderViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessItem, a3);
  }

  return v7;
}

- (BCBrandedHeaderViewController)initWithBusinessItem:(id)a3 isCallMenu:(BOOL)a4
{
  result = [(BCBrandedHeaderViewController *)self initWithBusinessItem:a3];
  if (result)
  {
    result->_isCallMenu = a4;
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
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    v4 = [(BCBrandedHeaderViewController *)self view];
    [v4 addSubview:v3];

    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v3 = [(BCBrandedHeaderViewController *)self view];
  }

  v5 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAccessibilityIgnoresInvertColors:1];
  [v3 addSubview:v5];
  v143 = v5;
  [(BCBrandedHeaderViewController *)self setLogoImageView:v5];
  v140 = objc_alloc_init(MEMORY[0x277D756D0]);
  [v3 addLayoutGuide:?];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  v7 = [(BCBrandedHeaderViewController *)self businessItem];
  v8 = [v7 name];
  [v6 setText:v8];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v6];
  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  v10 = [(BCBrandedHeaderViewController *)self businessItem];
  LODWORD(v8) = [v10 isVerified];

  if (v8)
  {
    v11 = +[BCShared classBundle];
    v12 = [v11 localizedStringForKey:@"VERIFIED" value:&stru_2849DDCD8 table:0];
    [v9 setText:v12];
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v9];
  v13 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(BCBrandedHeaderViewController *)self businessItem];
  [v13 setHidden:{objc_msgSend(v14, "isVerified") ^ 1}];

  [v3 addSubview:v13];
  v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
  v16 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76988]];
  v17 = [v16 scaledFontForFont:v15];
  [v6 setFont:v17];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v18 = [MEMORY[0x277D75348] labelColor];
  [v6 setTextColor:v18];

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
    v26 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:v26];

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
    v32 = [v9 font];
    v33 = [v31 configurationWithFont:v32 scale:1];

    v34 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.seal.fill" withConfiguration:v33];
    v35 = [v34 imageWithRenderingMode:2];

    [v13 setImage:v35];
  }

  v137 = v23;
  v36 = [v143 layer];
  [v36 setCornerRadius:3.0];

  v37 = [v143 layer];
  [v37 setMasksToBounds:1];

  v139 = v9;
  v38 = [v9 textColor];
  v138 = v13;
  [v13 setTintColor:v38];

  v145 = objc_opt_new();
  v141 = self;
  v144 = v3;
  if ([(BCBrandedHeaderViewController *)self isCallMenu])
  {
    v39 = [(BCBrandedHeaderViewController *)self view];
    v40 = [v39 heightAnchor];
    v41 = [v40 constraintEqualToConstant:45.0];

    v132 = v41;
    LODWORD(v42) = 1144766464;
    [v41 setPriority:v42];
    v153[0] = v41;
    v128 = [(BCBrandedHeaderViewController *)self view];
    v124 = [v128 widthAnchor];
    v120 = [v124 constraintEqualToConstant:300.0];
    v153[1] = v120;
    v115 = [v3 leadingAnchor];
    v117 = [(BCBrandedHeaderViewController *)self view];
    v113 = [v117 leadingAnchor];
    v111 = [v115 constraintEqualToAnchor:v113 constant:24.0];
    v153[2] = v111;
    v109 = [v3 topAnchor];
    v110 = [(BCBrandedHeaderViewController *)self view];
    v108 = [v110 topAnchor];
    v43 = [v109 constraintEqualToAnchor:v108];
    v153[3] = v43;
    v44 = [v3 bottomAnchor];
    v45 = [(BCBrandedHeaderViewController *)v141 view];
    v46 = [v45 bottomAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    v153[4] = v47;
    v48 = [v3 centerYAnchor];
    v49 = [(BCBrandedHeaderViewController *)v141 view];
    v50 = [v49 centerYAnchor];
    v51 = [v48 constraintEqualToAnchor:v50];
    v153[5] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:6];
    [v145 addObjectsFromArray:v52];

    v3 = v144;
  }

  v133 = [v143 leadingAnchor];
  v129 = [v3 leadingAnchor];
  v125 = [v133 constraintEqualToAnchor:v129];
  v152[0] = v125;
  v121 = [v143 centerYAnchor];
  v118 = [v3 centerYAnchor];
  v116 = [v121 constraintEqualToAnchor:v118];
  v152[1] = v116;
  v114 = [v143 topAnchor];
  v112 = [v3 topAnchor];
  v53 = [v114 constraintGreaterThanOrEqualToAnchor:v112];
  v152[2] = v53;
  v54 = [v143 bottomAnchor];
  v55 = [v3 bottomAnchor];
  v56 = [v54 constraintLessThanOrEqualToAnchor:v55];
  v152[3] = v56;
  v57 = [v143 widthAnchor];
  v58 = [v57 constraintEqualToConstant:45.0];
  v152[4] = v58;
  v59 = [v143 heightAnchor];
  v60 = [v59 constraintEqualToConstant:45.0];
  v152[5] = v60;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:6];
  [v145 addObjectsFromArray:v61];

  v134 = [v140 leadingAnchor];
  v130 = [v143 trailingAnchor];
  v126 = [v134 constraintEqualToAnchor:v130 constant:16.0];
  v151[0] = v126;
  v122 = [v140 topAnchor];
  v119 = [v144 topAnchor];
  v62 = [v122 constraintGreaterThanOrEqualToAnchor:v119];
  v151[1] = v62;
  v63 = [v140 bottomAnchor];
  v64 = [v144 bottomAnchor];
  v65 = [v63 constraintLessThanOrEqualToAnchor:v64];
  v151[2] = v65;
  v66 = [v140 centerYAnchor];
  v67 = [v143 centerYAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];
  v151[3] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];
  [v145 addObjectsFromArray:v69];

  isCallMenu = v141->_isCallMenu;
  v71 = [v140 trailingAnchor];
  if (isCallMenu)
  {
    v72 = [(BCBrandedHeaderViewController *)v141 view];
    v73 = [v72 trailingAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    [v145 addObject:v74];
  }

  else
  {
    v72 = [v144 trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    [v145 addObject:v73];
  }

  v75 = [v142 leadingAnchor];
  v131 = [v140 leadingAnchor];
  v135 = v75;
  v76 = [v75 constraintEqualToAnchor:v131];
  v77 = v76;
  if (v139)
  {
    v150[0] = v76;
    v78 = [v142 trailingAnchor];
    v79 = [v140 trailingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];
    v150[1] = v80;
    v81 = [v142 topAnchor];
    v82 = [v140 topAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];
    v150[2] = v83;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:3];
    [v145 addObjectsFromArray:v84];

    v136 = [v139 leadingAnchor];
    v85 = [v140 leadingAnchor];
    v86 = [v136 constraintEqualToAnchor:v85];
    v149[0] = v86;
    v87 = [v139 topAnchor];
    v88 = [v142 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:0.0];
    v149[1] = v89;
    v90 = [v139 bottomAnchor];
    v91 = [v140 bottomAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    v149[2] = v92;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
    v94 = v145;
    [v145 addObjectsFromArray:v93];

    v95 = v138;
    v96 = [v138 leadingAnchor];
    v97 = [v139 trailingAnchor];
    v77 = [v96 constraintEqualToAnchor:v97 constant:4.0];
    v148[0] = v77;
    v98 = [v138 centerYAnchor];
    v99 = v139;
    v100 = [v139 centerYAnchor];
    v101 = [v98 constraintEqualToAnchor:v100];
    v148[1] = v101;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
    [v145 addObjectsFromArray:v102];
  }

  else
  {
    v147[0] = v76;
    v98 = [v142 trailingAnchor];
    v100 = [v140 trailingAnchor];
    v101 = [v98 constraintEqualToAnchor:v100];
    v147[1] = v101;
    v102 = [v142 topAnchor];
    v127 = [v140 topAnchor];
    v123 = [v102 constraintEqualToAnchor:v127];
    v147[2] = v123;
    v103 = [v142 bottomAnchor];
    v104 = [v140 bottomAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];
    v147[3] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:4];
    v94 = v145;
    [v145 addObjectsFromArray:v106];

    v95 = v138;
    v99 = 0;
    v97 = v131;
    v96 = v135;
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v94];
  if (v141->_isCallMenu)
  {
    [(BCBrandedHeaderViewController *)v141 updateSize];
  }

  [(BCBrandedHeaderViewController *)v141 _fetchLogo];

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

  v4 = [(BCBrandedHeaderViewController *)self delegate];
  objc_initWeak(buf, v4);

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(buf);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(BCBrandedHeaderViewController *)self businessItem];
    [WeakRetained brandedHeaderViewController:self logoFetchingWillBeginForBusinessItem:v6];
  }

  v7 = CACurrentMediaTime();
  v8 = objc_alloc_init(MEMORY[0x277CF3620]);
  v9 = [(BCBrandedHeaderViewController *)self businessItem];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__BCBrandedHeaderViewController__fetchLogo__block_invoke;
  v11[3] = &unk_278A0E6E8;
  objc_copyWeak(&v12, &location);
  v13[1] = *&v7;
  objc_copyWeak(v13, buf);
  v11[4] = self;
  [v8 fetchSquareIconDataForBusinessItem:v9 completion:v11];

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