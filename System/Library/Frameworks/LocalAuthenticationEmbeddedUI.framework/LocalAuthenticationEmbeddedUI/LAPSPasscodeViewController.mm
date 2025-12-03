@interface LAPSPasscodeViewController
- (BOOL)_shouldShowNextButton;
- (BOOL)_shouldUseStandardKeyboardGuide;
- (NSDirectionalEdgeInsets)_mainStackInsets;
- (double)_bodyStackHorizontalPadding;
- (double)_mainStackSpacing;
- (double)_widthMultiplier;
- (id)setup;
- (void)_scrollTo:(id)to;
- (void)_scrollToPasscodeField;
- (void)_showPasscodeOptions:(id)options;
- (void)setErrorMessage:(id)message;
- (void)setupNavigationItem;
- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)needed;
- (void)viewDidLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation LAPSPasscodeViewController

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v3 viewDidLayoutSubviews];
  [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v6 willMoveToParentViewController:?];
  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [WeakRetained setHidden:controller == 0];
}

- (id)setup
{
  v237[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setShowsHorizontalScrollIndicator:0];
  view = [(LAPSPasscodeViewController *)self view];
  [view addSubview:v3];

  v214 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v3 centerXAnchor];
  view2 = [(LAPSPasscodeViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v237[0] = v8;
  v213 = v3;
  widthAnchor = [v3 widthAnchor];
  view3 = [(LAPSPasscodeViewController *)self view];
  widthAnchor2 = [view3 widthAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v237[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v237 count:2];
  [v214 activateConstraints:v13];

  selfCopy = self;
  if ([(LAPSPasscodeViewController *)self _shouldUseStandardKeyboardGuide])
  {
    view4 = [(LAPSPasscodeViewController *)self view];
    keyboardLayoutGuide = [view4 keyboardLayoutGuide];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277D241C8]);
    view4 = [(LAPSPasscodeViewController *)self view];
    keyboardLayoutGuide = [v17 initWithView:view4];
  }

  v18 = keyboardLayoutGuide;

  v19 = v213;
  bottomAnchor = [v213 bottomAnchor];
  v209 = v18;
  topAnchor = [v18 topAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:topAnchor];

  v208 = v22;
  [v22 setActive:1];
  selfCopy2 = self;
  if (_UISolariumEnabled())
  {
    topAnchor2 = [v213 topAnchor];
    view5 = [(LAPSPasscodeViewController *)self view];
    topAnchor3 = [view5 topAnchor];
    v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  }

  else
  {
    topAnchor2 = objc_alloc_init(MEMORY[0x277D756D0]);
    view6 = [(LAPSPasscodeViewController *)self view];
    [view6 addLayoutGuide:topAnchor2];

    v183 = MEMORY[0x277CCAAD0];
    v23TopAnchor = [topAnchor2 topAnchor];
    view7 = [(LAPSPasscodeViewController *)self view];
    topAnchor4 = [view7 topAnchor];
    v196 = [v23TopAnchor constraintEqualToAnchor:topAnchor4];
    v236[0] = v196;
    heightAnchor = [topAnchor2 heightAnchor];
    view8 = [(LAPSPasscodeViewController *)self view];
    heightAnchor2 = [view8 heightAnchor];
    v179 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
    v236[1] = v179;
    leadingAnchor = [topAnchor2 leadingAnchor];
    view9 = [(LAPSPasscodeViewController *)self view];
    leadingAnchor2 = [view9 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v236[2] = v31;
    trailingAnchor = [topAnchor2 trailingAnchor];
    view10 = [(LAPSPasscodeViewController *)selfCopy view];
    trailingAnchor2 = [view10 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v236[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v236 count:4];
    [v183 activateConstraints:v36];

    selfCopy = selfCopy2;
    v19 = v213;

    LODWORD(v31) = [(LAPSPasscodeViewControllerBase *)selfCopy2 isAccessibilityTextEnabled];
    view5 = [v213 topAnchor];
    if (v31)
    {
      topAnchor3 = [topAnchor2 topAnchor];
      v37 = 20.0;
    }

    else
    {
      topAnchor3 = [topAnchor2 centerYAnchor];
      v37 = -40.0;
    }

    v26 = [view5 constraintEqualToAnchor:topAnchor3 constant:v37];
  }

  v38 = v26;
  [v26 setActive:1];

  objc_storeWeak(&selfCopy->_scrollView, v19);
  v39 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v39 setAxis:1];
  [v39 setAlignment:0];
  [v39 setDistribution:3];
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LAPSPasscodeViewController *)selfCopy _mainStackSpacing];
  [v39 setSpacing:?];
  [v19 addSubview:v39];
  v193 = MEMORY[0x277CCAAD0];
  topAnchor5 = [v39 topAnchor];
  topAnchor6 = [v19 topAnchor];
  v201 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v235[0] = v201;
  [v39 bottomAnchor];
  v197 = v40 = v19;
  bottomAnchor2 = [v19 bottomAnchor];
  v42 = [v197 constraintEqualToAnchor:bottomAnchor2];
  v235[1] = v42;
  widthAnchor3 = [v39 widthAnchor];
  widthAnchor4 = [v19 widthAnchor];
  [(LAPSPasscodeViewController *)selfCopy _widthMultiplier];
  v45 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:?];
  v235[2] = v45;
  centerXAnchor3 = [v39 centerXAnchor];
  centerXAnchor4 = [v40 centerXAnchor];
  v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v235[3] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:4];
  [v193 activateConstraints:v49];

  p_isa = &selfCopy2->super.super.super.super.isa;
  [v39 setLayoutMarginsRelativeArrangement:1];
  [(LAPSPasscodeViewController *)selfCopy2 _mainStackInsets];
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
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v54 setTintColor:systemBlueColor];

    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v51 addSubview:v54];
    v184 = MEMORY[0x277CCAAD0];
    widthAnchor5 = [v54 widthAnchor];
    v202 = [widthAnchor5 constraintEqualToConstant:72.0];
    v234[0] = v202;
    heightAnchor3 = [v54 heightAnchor];
    v194 = [heightAnchor3 constraintEqualToConstant:72.0];
    v234[1] = v194;
    centerXAnchor5 = [v54 centerXAnchor];
    centerXAnchor6 = [v51 centerXAnchor];
    v56 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v234[2] = v56;
    topAnchor7 = [v54 topAnchor];
    topAnchor8 = [v51 topAnchor];
    v59 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v234[3] = v59;
    bottomAnchor3 = [v54 bottomAnchor];
    bottomAnchor4 = [v51 bottomAnchor];
    v62 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v234[4] = v62;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v234 count:5];
    [v184 activateConstraints:v63];

    p_isa = &selfCopy2->super.super.super.super.isa;
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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v74 setTextColor:secondaryLabelColor];

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
  passcodeType = [p_isa passcodeType];
  v86 = [v84 initWithStyle:{objc_msgSend(p_isa, "styleWithPasscodeType:", passcodeType)}];

  [v86 setCanShowInLockScreen:{objc_msgSend(p_isa, "_canShowWhileLocked")}];
  [p_isa addChildViewController:v86];
  view11 = [v86 view];
  v207 = v64;
  [v64 addArrangedSubview:view11];

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
  topAnchor9 = [v89 topAnchor];
  topAnchor10 = [v88 topAnchor];
  v94 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v233[0] = v94;
  bottomAnchor5 = [v89 bottomAnchor];
  bottomAnchor6 = [v88 bottomAnchor];
  v97 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v233[1] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:2];
  [v91 activateConstraints:v98];

  v99 = v88;
  LODWORD(topAnchor10) = _UISolariumEnabled();
  v181 = MEMORY[0x277CCAAD0];
  leadingAnchor3 = [v89 leadingAnchor];
  leadingAnchor4 = [v88 leadingAnchor];
  v199 = v89;
  v203 = v99;
  if (topAnchor10)
  {
    v102 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v232[0] = v102;
    trailingAnchor3 = [v89 trailingAnchor];
    trailingAnchor4 = [v99 trailingAnchor];
    v105 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v232[1] = v105;
    centerXAnchor7 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:2];
    [v181 activateConstraints:centerXAnchor7];
  }

  else
  {
    v102 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    v231[0] = v102;
    trailingAnchor3 = [v89 trailingAnchor];
    trailingAnchor4 = [v99 trailingAnchor];
    v105 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    v231[1] = v105;
    centerXAnchor7 = [v89 centerXAnchor];
    centerXAnchor8 = [v99 centerXAnchor];
    v108 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v231[2] = v108;
    v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v231 count:3];
    [v181 activateConstraints:v109];

    v99 = v203;
    v89 = v199;
  }

  [v207 addArrangedSubview:v99];
  objc_storeWeak(&selfCopy2->_errorCapsule, v89);
  objc_storeWeak(&selfCopy2->_errorCapsuleContainer, v99);
  v110 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v110 setNumberOfLines:0];
  v111 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v110 setFont:v111];

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v110 setTextColor:secondaryLabelColor2];

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
  objc_storeWeak(&selfCopy2->_footerLabel, v110);
  v115 = objc_alloc_init(MEMORY[0x277D75D18]);
  view12 = [(LAPSPasscodeViewController *)selfCopy2 view];
  backgroundColor = [view12 backgroundColor];
  [v115 setBackgroundColor:backgroundColor];

  [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
  view13 = [(LAPSPasscodeViewController *)selfCopy2 view];
  [view13 addSubview:v115];

  v119 = MEMORY[0x277CCAAD0];
  v230 = v208;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v230 count:1];
  [v119 deactivateConstraints:v120];

  v169 = MEMORY[0x277CCAAD0];
  topAnchor11 = [v115 topAnchor];
  WeakRetained = objc_loadWeakRetained(&selfCopy2->_scrollView);
  bottomAnchor7 = [WeakRetained bottomAnchor];
  v173 = [topAnchor11 constraintEqualToAnchor:bottomAnchor7 constant:8.0];
  v229[0] = v173;
  bottomAnchor8 = [v115 bottomAnchor];
  topAnchor12 = [v209 topAnchor];
  v121 = [bottomAnchor8 constraintEqualToAnchor:topAnchor12];
  v229[1] = v121;
  leadingAnchor5 = [v115 leadingAnchor];
  leadingAnchor6 = [v212 leadingAnchor];
  v124 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v229[2] = v124;
  trailingAnchor5 = [v115 trailingAnchor];
  trailingAnchor6 = [v212 trailingAnchor];
  v127 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v229[3] = v127;
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v229 count:4];
  [v169 activateConstraints:v128];

  if ([(LAPSPasscodeViewControllerBase *)selfCopy2 shouldShowPasscodeOptionsButton])
  {
    v129 = [MEMORY[0x277D75220] buttonWithType:1];
    titleLabel = [v129 titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [v129 titleLabel];
    if (_UISolariumEnabled())
    {
      v132 = 4;
    }

    else
    {
      v132 = 1;
    }

    [titleLabel2 setTextAlignment:v132];

    v133 = objc_alloc(MEMORY[0x277CCA898]);
    config = [(LAPSPasscodeViewControllerBase *)selfCopy2 config];
    optionsConfiguration = [config optionsConfiguration];
    title = [optionsConfiguration title];
    v227 = *MEMORY[0x277D740A8];
    v137 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v228 = v137;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
    v139 = [v133 initWithString:title attributes:v138];
    [v129 setAttributedTitle:v139 forState:0];

    [v129 addTarget:selfCopy2 action:sel__showPasscodeOptions_ forControlEvents:64];
    [v115 addSubview:v129];
    [v129 setTranslatesAutoresizingMaskIntoConstraints:0];
    v168 = MEMORY[0x277CCAAD0];
    heightAnchor4 = [v129 heightAnchor];
    titleLabel3 = [v129 titleLabel];
    heightAnchor5 = [titleLabel3 heightAnchor];
    v174 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v226[0] = v174;
    topAnchor13 = [v129 topAnchor];
    topAnchor14 = [v115 topAnchor];
    v140 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
    v226[1] = v140;
    trailingAnchor7 = [v129 trailingAnchor];
    trailingAnchor8 = [v115 trailingAnchor];
    v143 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8 constant:-10.0];
    v226[2] = v143;
    [v129 bottomAnchor];
    v145 = v144 = v115;
    bottomAnchor9 = [v144 bottomAnchor];
    v147 = [v145 constraintEqualToAnchor:bottomAnchor9 constant:-8.0];
    v226[3] = v147;
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:4];
    [v168 activateConstraints:v148];

    v115 = v144;
    LODWORD(trailingAnchor8) = _UISolariumEnabled();
    v149 = MEMORY[0x277CCAAD0];
    leadingAnchor7 = [v129 leadingAnchor];
    leadingAnchor8 = [v144 leadingAnchor];
    if (trailingAnchor8)
    {
      v152 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:37.0];
      v225 = v152;
      centerXAnchor9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v225 count:1];
      [v149 activateConstraints:centerXAnchor9];
    }

    else
    {
      v152 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:10.0];
      v224[0] = v152;
      centerXAnchor9 = [v129 centerXAnchor];
      centerXAnchor10 = [v115 centerXAnchor];
      v155 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
      v224[1] = v155;
      v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:2];
      [v149 activateConstraints:v156];
    }

    objc_storeWeak(&selfCopy2->_optionsButton, v129);
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
    navigationItem = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    config = [(LAPSPasscodeViewControllerBase *)self config];
    title = [config title];
    [navigationItem setTitle:title];
  }

  navigationItem2 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  [navigationItem2 setHidesBackButton:1 animated:0];

  _shouldShowNextButton = [(LAPSPasscodeViewController *)self _shouldShowNextButton];
  navigationItem3 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
  v9 = navigationItem3;
  if (_shouldShowNextButton)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke;
    v18[3] = &unk_278A653E0;
    v18[4] = self;
    v10 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke(v18);
    [v9 setLeftBarButtonItem:v10];

    navigationItem4 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2;
    v17[3] = &unk_278A653E0;
    v17[4] = self;
    v12 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_2(v17);
    [navigationItem4 setRightBarButtonItem:v12];

    navigationItem5 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    rightBarButtonItem = [navigationItem5 rightBarButtonItem];
    [rightBarButtonItem setEnabled:self->_isNextButtonEnabled];
  }

  else
  {
    [navigationItem3 setLeftBarButtonItem:0];

    navigationItem5 = [(LAPSPasscodeViewControllerBase *)self navigationItem];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3;
    v16[3] = &unk_278A653E0;
    v16[4] = self;
    v15 = __49__LAPSPasscodeViewController_setupNavigationItem__block_invoke_3(v16);
    [navigationItem5 setRightBarButtonItem:v15];
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

- (void)updateLayoutAfterPasscodeLengthChangeIfNeeded:(int64_t)needed
{
  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  self->_isNextButtonEnabled = [passcodeType allowsLength:needed];

  [(LAPSPasscodeViewController *)self setupNavigationItem];
}

- (void)setErrorMessage:(id)message
{
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  isHidden = [WeakRetained isHidden];

  v8.receiver = self;
  v8.super_class = LAPSPasscodeViewController;
  [(LAPSPasscodeViewControllerBase *)&v8 setErrorMessage:messageCopy];

  v7 = objc_loadWeakRetained(&self->_errorCapsuleContainer);
  LODWORD(WeakRetained) = [v7 isHidden];

  if (isHidden != WeakRetained)
  {
    [(LAPSPasscodeViewController *)self _scrollToPasscodeField];
  }
}

- (void)_showPasscodeOptions:(id)options
{
  if (_UISolariumEnabled())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
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
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v7 = (userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_optionsButton);
  [(LAPSPasscodeViewControllerBase *)self showPasscodeOptionsSourceWithView:WeakRetained presentationStyle:v6 shouldResignFirstResponder:v7];
}

- (BOOL)_shouldShowNextButton
{
  passcodeType = [(LAPSPasscodeViewControllerBase *)self passcodeType];
  v3 = [passcodeType length] == -1;

  return v3;
}

- (BOOL)_shouldUseStandardKeyboardGuide
{
  mEMORY[0x277D24068] = [MEMORY[0x277D24068] sharedInstance];
  featureFlagPasscodeServicesUseKeyboardGuideEnabled = [mEMORY[0x277D24068] featureFlagPasscodeServicesUseKeyboardGuideEnabled];

  if (!featureFlagPasscodeServicesUseKeyboardGuideEnabled)
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 1;
  }

  mEMORY[0x277D24068]2 = [MEMORY[0x277D24068] sharedInstance];
  featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled = [mEMORY[0x277D24068]2 featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled];

  if (featureFlagPasscodeServicesUseKeyboardGuidePadsEnabled)
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
  view = [WeakRetained view];
  [(LAPSPasscodeViewController *)self _scrollTo:view];
}

- (void)_scrollTo:(id)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  v6 = [toCopy isDescendantOfView:WeakRetained];

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
      subviews = [v13 subviews];
      firstObject = [subviews firstObject];

      if (firstObject)
      {
        v16 = objc_loadWeakRetained(&self->_scrollView);
        v18 = MEMORY[0x277D85DD0];
        v19 = 3221225472;
        v20 = __40__LAPSPasscodeViewController__scrollTo___block_invoke;
        v21 = &unk_278A65408;
        selfCopy = self;
        v23 = firstObject;
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
  isAccessibilityTextEnabled = [(LAPSPasscodeViewControllerBase *)self isAccessibilityTextEnabled];
  result = 20.0;
  if (isAccessibilityTextEnabled)
  {
    return 10.0;
  }

  return result;
}

- (double)_widthMultiplier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 1.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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