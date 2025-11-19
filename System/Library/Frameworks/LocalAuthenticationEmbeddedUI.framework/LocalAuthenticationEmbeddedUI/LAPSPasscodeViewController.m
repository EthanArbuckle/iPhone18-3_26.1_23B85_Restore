@interface LAPSPasscodeViewController
- (BOOL)_shouldShowNextButton;
- (BOOL)_shouldUseStandardKeyboardGuide;
- (NSDirectionalEdgeInsets)_mainStackInsets;
- (double)_bodyStackHorizontalPadding;
- (double)_mainStackSpacing;
- (double)_widthMultiplier;
- (id)setup;
- (void)_scrollTo:(id)a3;
- (void)_scrollToPasscodeField;
- (void)_showPasscodeOptions:(id)a3;
- (void)setErrorMessage:(id)a3;
- (void)setupNavigationItem;
- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation LAPSPasscodeViewController

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v3 viewDidLayoutSubviews];
  [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v6 willMoveToParentViewController:?];
  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [WeakRetained setHidden:a3 == 0];
}

- (id)setup
{
  v237[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  v4 = [(LAPSPasscodeViewController *)self view];
  [v4 addSubview:v3];

  v214 = MEMORY[0x277CCAAD0];
  v5 = [v3 centerXAnchor];
  v6 = [(LAPSPasscodeViewController *)self view];
  v7 = [v6 centerXAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v237[0] = v8;
  v213 = v3;
  v9 = [v3 widthAnchor];
  v10 = [(LAPSPasscodeViewController *)self view];
  v11 = [v10 widthAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v237[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v237 count:2];
  [v214 activateConstraints:v13];

  v14 = self;
  if ([(LAPSPasscodeViewController *)self _shouldUseStandardKeyboardGuide])
  {
    v15 = [(LAPSPasscodeViewController *)self view];
    v16 = [v15 keyboardLayoutGuide];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D241C8]);
    v15 = [(LAPSPasscodeViewController *)self view];
    v16 = [v17 initWithView:v15];
  }

  v18 = v16;

  v19 = v213;
  v20 = [v213 bottomAnchor];
  v209 = v18;
  v21 = [v18 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  v208 = v22;
  [v22 setActive:1];
  v215 = self;
  if (_UISolariumEnabled())
  {
    v23 = [v213 topAnchor];
    v24 = [(LAPSPasscodeViewController *)self view];
    v25 = [v24 topAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277D756D0]);
    v27 = [(LAPSPasscodeViewController *)self view];
    [v27 addLayoutGuide:v23];

    v183 = MEMORY[0x277CCAAD0];
    v204 = [v23 topAnchor];
    v210 = [(LAPSPasscodeViewController *)self view];
    v200 = [v210 topAnchor];
    v196 = [v204 constraintEqualToAnchor:v200];
    v236[0] = v196;
    v189 = [v23 heightAnchor];
    v192 = [(LAPSPasscodeViewController *)self view];
    v186 = [v192 heightAnchor];
    v179 = [v189 constraintEqualToAnchor:v186 multiplier:0.5];
    v236[1] = v179;
    v28 = [v23 leadingAnchor];
    v29 = [(LAPSPasscodeViewController *)self view];
    v30 = [v29 leadingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    v236[2] = v31;
    v32 = [v23 trailingAnchor];
    v33 = [(LAPSPasscodeViewController *)v14 view];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    v236[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v236 count:4];
    [v183 activateConstraints:v36];

    v14 = v215;
    v19 = v213;

    LODWORD(v31) = [(LAPSPasscodeViewControllerBase *)v215 isAccessibilityTextEnabled];
    v24 = [v213 topAnchor];
    if (v31)
    {
      v25 = [v23 topAnchor];
      v37 = 20.0;
    }

    else
    {
      v25 = [v23 centerYAnchor];
      v37 = -40.0;
    }

    v26 = [v24 constraintEqualToAnchor:v25 constant:v37];
  }

  v38 = v26;
  [v26 setActive:1];

  objc_storeWeak(&v14->_scrollView, v19);
  v39 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v39 setAxis:1];
  [v39 setAlignment:0];
  [v39 setDistribution:3];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LAPSPasscodeViewController *)v14 _mainStackSpacing];
  [v39 setSpacing:?];
  [v19 addSubview:v39];
  v193 = MEMORY[0x277CCAAD0];
  v211 = [v39 topAnchor];
  v205 = [v19 topAnchor];
  v201 = [v211 constraintEqualToAnchor:v205];
  v235[0] = v201;
  [v39 bottomAnchor];
  v197 = v40 = v19;
  v41 = [v19 bottomAnchor];
  v42 = [v197 constraintEqualToAnchor:v41];
  v235[1] = v42;
  v43 = [v39 widthAnchor];
  v44 = [v19 widthAnchor];
  [(LAPSPasscodeViewController *)v14 _widthMultiplier];
  v45 = [v43 constraintEqualToAnchor:v44 multiplier:?];
  v235[2] = v45;
  v46 = [v39 centerXAnchor];
  v47 = [v40 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v235[3] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:4];
  [v193 activateConstraints:v49];

  p_isa = &v215->super.super.super.super.isa;
  [v39 setLayoutMarginsRelativeArrangement:1];
  [(LAPSPasscodeViewController *)v215 _mainStackInsets];
  [v39 setDirectionalLayoutMargins:?];
  v212 = v39;
  if (_UISolariumEnabled())
  {
    v51 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = objc_alloc(MEMORY[0x277D755E8]);
    v53 = [MEMORY[0x277D755B8] systemImageNamed:@"lock"];
    v54 = [v52 initWithImage:v53];

    [v54 setContentMode:1];
    v55 = [MEMORY[0x277D75348] systemBlueColor];
    [v54 setTintColor:v55];

    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v51 addSubview:v54];
    v184 = MEMORY[0x277CCAAD0];
    v206 = [v54 widthAnchor];
    v202 = [v206 constraintEqualToConstant:72.0];
    v234[0] = v202;
    v198 = [v54 heightAnchor];
    v194 = [v198 constraintEqualToConstant:72.0];
    v234[1] = v194;
    v190 = [v54 centerXAnchor];
    v180 = [v51 centerXAnchor];
    v56 = [v190 constraintEqualToAnchor:v180];
    v234[2] = v56;
    v57 = [v54 topAnchor];
    v58 = [v51 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v234[3] = v59;
    v60 = [v54 bottomAnchor];
    v61 = [v51 bottomAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    v234[4] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:5];
    [v184 activateConstraints:v63];

    p_isa = &v215->super.super.super.super.isa;
    v39 = v212;

    [v212 addArrangedSubview:v51];
    [v212 setCustomSpacing:v51 afterView:56.0];
  }

  v64 = objc_alloc_init(MEMORY[0x277D75A68]);
  [p_isa _bodyStackSpacing];
  [v64 setSpacing:?];
  [v64 setAxis:1];
  [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
  [p_isa _bodyStackHorizontalPadding];
  v66 = v65;
  [p_isa _bodyStackHorizontalPadding];
  [v64 setDirectionalLayoutMargins:{0.0, v66, 0.0, v67}];
  [v64 setLayoutMarginsRelativeArrangement:1];
  [v39 addArrangedSubview:v64];
  v68 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v68 setNumberOfLines:0];
  v69 = _UISolariumEnabled();
  v70 = MEMORY[0x277D76A28];
  if (v69)
  {
    [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] weight:*MEMORY[0x277D743F8]];
  }

  else
  {
    [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }
  v71 = ;
  [v68 setFont:v71];

  if (_UISolariumEnabled())
  {
    v72 = 4;
  }

  else
  {
    v72 = 1;
  }

  [v68 setTextAlignment:v72];
  if (_UISolariumEnabled())
  {
    [v64 addArrangedSubview:v68];
  }

  else
  {
    [v39 insertArrangedSubview:v68 atIndex:0];
  }

  LODWORD(v73) = 1144750080;
  [v68 setContentHuggingPriority:1 forAxis:v73];
  v195 = v68;
  objc_storeWeak(p_isa + 130, v68);
  v74 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v74 setNumberOfLines:0];
  v75 = MEMORY[0x277D74300];
  v76 = _UISolariumEnabled();
  v77 = *v70;
  v78 = *MEMORY[0x277D769D0];
  if (v76)
  {
    v79 = *v70;
  }

  else
  {
    v79 = *MEMORY[0x277D769D0];
  }

  v80 = [v75 preferredFontForTextStyle:v79];
  [v74 setFont:v80];

  v81 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v74 setTextColor:v81];

  if (_UISolariumEnabled())
  {
    v82 = 4;
  }

  else
  {
    v82 = 1;
  }

  [v74 setTextAlignment:v82];
  [v64 addArrangedSubview:v74];
  LODWORD(v83) = 1144750080;
  [v74 setContentHuggingPriority:1 forAxis:v83];
  v191 = v74;
  objc_storeWeak(p_isa + 131, v74);
  v84 = objc_alloc(MEMORY[0x277D241D8]);
  v85 = [p_isa passcodeType];
  v86 = [v84 initWithStyle:{objc_msgSend(p_isa, "styleWithPasscodeType:", v85)}];

  [v86 setCanShowInLockScreen:{objc_msgSend(p_isa, "_canShowWhileLocked")}];
  [p_isa addChildViewController:v86];
  v87 = [v86 view];
  v207 = v64;
  [v64 addArrangedSubview:v87];

  [v86 setDelegate:p_isa];
  [v86 didMoveToParentViewController:p_isa];
  v185 = v86;
  objc_storeWeak(p_isa + 136, v86);
  v88 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v88 setTranslatesAutoresizingMaskIntoConstraints:0];
  v89 = objc_alloc_init(MEMORY[0x277D241A0]);
  [v89 setNumberOfLines:0];
  v90 = [MEMORY[0x277D74300] preferredFontForTextStyle:v78];
  [v89 setFont:v90];

  [v89 setStyle:1];
  [v89 setTextAlignment:1];
  [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v88 addSubview:v89];
  v91 = MEMORY[0x277CCAAD0];
  v92 = [v89 topAnchor];
  v93 = [v88 topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];
  v233[0] = v94;
  v95 = [v89 bottomAnchor];
  v96 = [v88 bottomAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];
  v233[1] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:2];
  [v91 activateConstraints:v98];

  v99 = v88;
  LODWORD(v93) = _UISolariumEnabled();
  v181 = MEMORY[0x277CCAAD0];
  v100 = [v89 leadingAnchor];
  v101 = [v88 leadingAnchor];
  v199 = v89;
  v203 = v99;
  if (v93)
  {
    v102 = [v100 constraintEqualToAnchor:v101];
    v232[0] = v102;
    v103 = [v89 trailingAnchor];
    v104 = [v99 trailingAnchor];
    v105 = [v103 constraintLessThanOrEqualToAnchor:v104];
    v232[1] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:2];
    [v181 activateConstraints:v106];
  }

  else
  {
    v102 = [v100 constraintGreaterThanOrEqualToAnchor:v101];
    v231[0] = v102;
    v103 = [v89 trailingAnchor];
    v104 = [v99 trailingAnchor];
    v105 = [v103 constraintLessThanOrEqualToAnchor:v104];
    v231[1] = v105;
    v106 = [v89 centerXAnchor];
    v107 = [v99 centerXAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];
    v231[2] = v108;
    v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:3];
    [v181 activateConstraints:v109];

    v99 = v203;
    v89 = v199;
  }

  [v207 addArrangedSubview:v99];
  objc_storeWeak(&v215->_errorCapsule, v89);
  objc_storeWeak(&v215->_errorCapsuleContainer, v99);
  v110 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v110 setNumberOfLines:0];
  v111 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v110 setFont:v111];

  v112 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v110 setTextColor:v112];

  if (_UISolariumEnabled())
  {
    v113 = 4;
  }

  else
  {
    v113 = 1;
  }

  [v110 setTextAlignment:v113];
  [v207 addArrangedSubview:v110];
  LODWORD(v114) = 1144750080;
  [v110 setContentHuggingPriority:1 forAxis:v114];
  v182 = v110;
  objc_storeWeak(&v215->_footerLabel, v110);
  v115 = objc_alloc_init(MEMORY[0x277D75D18]);
  v116 = [(LAPSPasscodeViewController *)v215 view];
  v117 = [v116 backgroundColor];
  [v115 setBackgroundColor:v117];

  [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
  v118 = [(LAPSPasscodeViewController *)v215 view];
  [v118 addSubview:v115];

  v119 = MEMORY[0x277CCAAD0];
  v230 = v208;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v230 count:1];
  [v119 deactivateConstraints:v120];

  v169 = MEMORY[0x277CCAAD0];
  v177 = [v115 topAnchor];
  WeakRetained = objc_loadWeakRetained(&v215->_scrollView);
  v175 = [WeakRetained bottomAnchor];
  v173 = [v177 constraintEqualToAnchor:v175 constant:8.0];
  v229[0] = v173;
  v171 = [v115 bottomAnchor];
  v167 = [v209 topAnchor];
  v121 = [v171 constraintEqualToAnchor:v167];
  v229[1] = v121;
  v122 = [v115 leadingAnchor];
  v123 = [v212 leadingAnchor];
  v124 = [v122 constraintEqualToAnchor:v123];
  v229[2] = v124;
  v125 = [v115 trailingAnchor];
  v126 = [v212 trailingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];
  v229[3] = v127;
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:4];
  [v169 activateConstraints:v128];

  if ([(LAPSPasscodeViewControllerBase *)v215 shouldShowPasscodeOptionsButton])
  {
    v129 = [MEMORY[0x277D75220] buttonWithType:1];
    v130 = [v129 titleLabel];
    [v130 setNumberOfLines:0];

    v131 = [v129 titleLabel];
    if (_UISolariumEnabled())
    {
      v132 = 4;
    }

    else
    {
      v132 = 1;
    }

    [v131 setTextAlignment:v132];

    v133 = objc_alloc(MEMORY[0x277CCA898]);
    v134 = [(LAPSPasscodeViewControllerBase *)v215 config];
    v135 = [v134 optionsConfiguration];
    v136 = [v135 title];
    v227 = *MEMORY[0x277D740A8];
    v137 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v228 = v137;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
    v139 = [v133 initWithString:v136 attributes:v138];
    [v129 setAttributedTitle:v139 forState:0];

    [v129 addTarget:v215 action:sel__showPasscodeOptions_ forControlEvents:64];
    [v115 addSubview:v129];
    [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
    v168 = MEMORY[0x277CCAAD0];
    v178 = [v129 heightAnchor];
    v188 = [v129 titleLabel];
    v176 = [v188 heightAnchor];
    v174 = [v178 constraintEqualToAnchor:v176];
    v226[0] = v174;
    v172 = [v129 topAnchor];
    v170 = [v115 topAnchor];
    v140 = [v172 constraintEqualToAnchor:v170];
    v226[1] = v140;
    v141 = [v129 trailingAnchor];
    v142 = [v115 trailingAnchor];
    v143 = [v141 constraintLessThanOrEqualToAnchor:v142 constant:-10.0];
    v226[2] = v143;
    [v129 bottomAnchor];
    v145 = v144 = v115;
    v146 = [v144 bottomAnchor];
    v147 = [v145 constraintEqualToAnchor:v146 constant:-8.0];
    v226[3] = v147;
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:4];
    [v168 activateConstraints:v148];

    v115 = v144;
    LODWORD(v142) = _UISolariumEnabled();
    v149 = MEMORY[0x277CCAAD0];
    v150 = [v129 leadingAnchor];
    v151 = [v144 leadingAnchor];
    if (v142)
    {
      v152 = [v150 constraintEqualToAnchor:v151 constant:37.0];
      v225 = v152;
      v153 = [MEMORY[0x277CBEA60] arrayWithObjects:&v225 count:1];
      [v149 activateConstraints:v153];
    }

    else
    {
      v152 = [v150 constraintGreaterThanOrEqualToAnchor:v151 constant:10.0];
      v224[0] = v152;
      v153 = [v129 centerXAnchor];
      v154 = [v115 centerXAnchor];
      v155 = [v153 constraintEqualToAnchor:v154];
      v224[1] = v155;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:2];
      [v149 activateConstraints:v156];
    }

    objc_storeWeak(&v215->_optionsButton, v129);
  }

  v216[0] = MEMORY[0x277D85DD0];
  v216[1] = 3221225472;
  v216[2] = __35__LAPSPasscodeViewController_setup__block_invoke;
  v216[3] = &unk_278A653B8;
  v217 = v195;
  v218 = v191;
  v219 = v182;
  v220 = v213;
  v221 = v199;
  v222 = v203;
  v223 = v185;
  v157 = v185;
  v158 = v203;
  v159 = v199;
  v160 = v213;
  v161 = v182;
  v162 = v191;
  v163 = v195;
  v164 = __35__LAPSPasscodeViewController_setup__block_invoke(v216);

  v165 = *MEMORY[0x277D85DE8];

  return v164;
}

LAPSPasscodeViewControllerManagedViews *__35__LAPSPasscodeViewController_setup__block_invoke(void *a1)
{
  v2 = objc_alloc_init(LAPSPasscodeViewControllerManagedViews);
  [(LAPSPasscodeViewControllerManagedViews *)v2 setHeaderLabel:a1[4]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setSubHeaderLabel:a1[5]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setFooterLabel:a1[6]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setScrollView:a1[7]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setErrorCapsule:a1[8]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setErrorCapsuleContainer:a1[9]];
  [(LAPSPasscodeViewControllerManagedViews *)v2 setPasscodeFieldVC:a1[10]];

  return v2;
}

- (void)setupNavigationItem
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v4 = [(LAPSPasscodeViewControllerBase *)self config];
    v5 = [v4 title];
    [v3 setTitle:v5];
  }

  v6 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  [v6 setHidesBackButton:1 animated:0];

  v7 = [(LAPSPasscodeViewController *)self _shouldShowNextButton];
  v8 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  v9 = v8;
  if (v7)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke;
    v18[3] = &unk_278A653E0;
    v18[4] = self;
    v10 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke(v18);
    [v9 setLeftBarButtonItem:v10];

    v11 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2;
    v17[3] = &unk_278A653E0;
    v17[4] = self;
    v12 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2(v17);
    [v11 setRightBarButtonItem:v12];

    v13 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v14 = [v13 rightBarButtonItem];
    [v14 setEnabled:self->_isNextButtonEnabled];
  }

  else
  {
    [v8 setLeftBarButtonItem:0];

    v13 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3;
    v16[3] = &unk_278A653E0;
    v16[4] = self;
    v15 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3(v16);
    [v13 setRightBarButtonItem:v15];
  }
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__handleCancel_];

  return v1;
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  if (v2)
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v5 = [v3 initWithImage:v4 menu:0];

    [v5 setStyle:2];
    [v5 setTarget:*(a1 + 32)];
    [v5 setAction:sel__handleNext_];
  }

  else
  {
    v6 = [*(a1 + 32) config];
    v7 = [v6 nextButton];
    v5 = [v3 initWithTitle:v7 style:2 target:*(a1 + 32) action:sel__handleNext_];
  }

  return v5;
}

id __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__handleCancel_];

  return v1;
}

- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)a3
{
  v5 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  self->_isNextButtonEnabled = [v5 allowsLength:a3];

  [(LAPSPasscodeViewController *)self setupNavigationItem];
}

- (void)setErrorMessage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  v6 = [WeakRetained isHidden];

  v8.receiver = self;
  v8.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v8 setErrorMessage:v4];

  v7 = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  LODWORD(WeakRetained) = [v7 isHidden];

  if (v6 != WeakRetained)
  {
    [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
  }
}

- (void)_showPasscodeOptions:(id)a3
{
  if (_UISolariumEnabled())
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v6 = 0;
  }

  if (_UISolariumEnabled())
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v7 = (v9 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [(LAPSPasscodeViewControllerBase *)self showPasscodeOptionsSourceWithView:WeakRetained presentationStyle:v6 shouldResignFirstResponder:v7];
}

- (BOOL)_shouldShowNextButton
{
  v2 = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v3 = [v2 length] == -1;

  return v3;
}

- (BOOL)_shouldUseStandardKeyboardGuide
{
  v2 = [MEMORY[0x277D24068] sharedInstance];
  v3 = [v2 featureFlagPasscodeServicesUseKeyboardGuideEnabled];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 1;
  }

  v6 = [MEMORY[0x277D24068] sharedInstance];
  v7 = [v6 featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled];

  if (v7)
  {
    return 1;
  }

  v10 = [objc_alloc(MEMORY[0x277D24080]) initWithUserId:getuid()];
  v8 = [v10 state] == 5;

  return v8;
}

- (void)_scrollToPasscodeField
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeFieldVC);
  v3 = [WeakRetained view];
  [(LAPSPasscodeViewController *)self _scrollTo:v3];
}

- (void)_scrollTo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v6 = [v4 isDescendantOfView:WeakRetained];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_scrollView);
    [v7 contentSize];
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_scrollView);
    [v10 bounds];
    v12 = v11;

    if (v9 > v12)
    {
      v13 = objc_loadWeakRetained(&self->_scrollView);
      v14 = [v13 subviews];
      v15 = [v14 firstObject];

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_scrollView);
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __40__LAPSPasscodeViewController__scrollTo___block_invoke;
        v21 = &unk_278A65408;
        v22 = self;
        v23 = v15;
        v17 = __40__LAPSPasscodeViewController__scrollTo___block_invoke(&v18);
        [v16 setContentOffset:1 animated:{0.0, v17, v18, v19}];
      }
    }
  }
}

double __40__LAPSPasscodeViewController__scrollTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1088));
  v3 = [WeakRetained view];
  v4 = objc_loadWeakRetained((*(a1 + 32) + 1088));
  v5 = [v4 view];
  [v5 bounds];
  [v3 convertRect:*(a1 + 40) toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained((*(a1 + 32) + 1080));
  [v14 bounds];
  v16 = v15;

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v17 = CGRectGetMidY(v23) + v16 * -0.5;
  v18 = objc_loadWeakRetained((*(a1 + 32) + 1080));
  [v18 contentSize];
  v20 = v19 - v16;

  v21 = fmax(v20, 0.0);
  if (v17 < v21)
  {
    v21 = v17;
  }

  return fmax(v21, 0.0);
}

- (double)_bodyStackHorizontalPadding
{
  v2 = _UISolariumEnabled();
  result = 27.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (NSDirectionalEdgeInsets)_mainStackInsets
{
  v2 = 20.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)_mainStackSpacing
{
  v2 = [(LAPSPasscodeViewControllerBase *)self isAccessibilityTextEnabled];
  result = 20.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (double)_widthMultiplier
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 1.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = _UISolariumEnabled();
    result = 0.85;
    if (v5)
    {
      return 0.9;
    }
  }

  return result;
}

@end