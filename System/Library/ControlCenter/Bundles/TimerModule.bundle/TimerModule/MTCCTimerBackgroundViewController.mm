@interface MTCCTimerBackgroundViewController
- (MTCCTimerBackgroundViewController)init;
- (MTCCTimerBackgroundViewControllerDelegate)delegate;
- (id)accessibilityCappedFontForStyle:(id)style;
- (id)landscapeConstraints;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)portraitConstraints;
- (void)_reloadForCurrentState;
- (void)_updateLabels;
- (void)addTimerButtonTapped:(id)tapped forEvent:(id)event;
- (void)dealloc;
- (void)handleContentSizeChange:(id)change;
- (void)setTimer:(id)timer;
- (void)setupAxFonts;
- (void)setupConstraints;
- (void)setupFonts;
- (void)setupImage;
- (void)setupRegularFonts;
- (void)startStopButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTCCTimerBackgroundViewController

- (MTCCTimerBackgroundViewController)init
{
  v13 = *MEMORY[0x29EDCA608];
  v10.receiver = self;
  v10.super_class = MTCCTimerBackgroundViewController;
  v2 = [(MTCCTimerBackgroundViewController *)&v10 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v2;
      _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }

    v4 = objc_opt_new();
    dateComponentsFormatter = v2->_dateComponentsFormatter;
    v2->_dateComponentsFormatter = v4;

    objc_msgSend_setAllowedUnits_(v2->_dateComponentsFormatter, v6, 224);
    objc_msgSend_setUnitsStyle_(v2->_dateComponentsFormatter, v7, 3);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

- (void)dealloc
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing", buf, 0xCu);
  }

  v6 = objc_msgSend_displayLink(self, v4, v5);
  objc_msgSend_invalidate(v6, v7, v8);

  v10.receiver = self;
  v10.super_class = MTCCTimerBackgroundViewController;
  [(MTCCTimerBackgroundViewController *)&v10 dealloc];
  v9 = *MEMORY[0x29EDCA608];
}

- (void)setTimer:(id)timer
{
  timerCopy = timer;
  if ((objc_msgSend_isEqual_(self->_timer, v4, timerCopy) & 1) == 0)
  {
    v7 = objc_msgSend_copy(timerCopy, v5, v6);
    timer = self->_timer;
    self->_timer = v7;

    objc_msgSend__reloadForCurrentState(self, v9, v10);
  }
}

- (void)viewDidLoad
{
  v179.receiver = self;
  v179.super_class = MTCCTimerBackgroundViewController;
  [(MTCCTimerBackgroundViewController *)&v179 viewDidLoad];
  v3 = objc_opt_new();
  objc_msgSend_setCurrentConstraints_(self, v4, v3);

  v5 = objc_opt_new();
  objc_msgSend_setTitleLabel_(self, v6, v5);

  v9 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v7, v8);
  v12 = objc_msgSend_titleLabel(self, v10, v11);
  objc_msgSend_setTextColor_(v12, v13, v9);

  v16 = objc_msgSend_titleLabel(self, v14, v15);
  objc_msgSend_setText_(v16, v17, @"Set timer for:");

  v20 = objc_msgSend_titleLabel(self, v18, v19);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(v20, v21, 1);

  v24 = objc_msgSend_titleLabel(self, v22, v23);
  objc_msgSend_setTextAlignment_(v24, v25, 1);

  v28 = objc_msgSend_titleLabel(self, v26, v27);
  objc_msgSend_controlCenterApplyPrimaryContentShadow(v28, v29, v30);

  v33 = objc_msgSend_titleLabel(self, v31, v32);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v33, v34, 0);

  v37 = objc_msgSend_view(self, v35, v36);
  v40 = objc_msgSend_titleLabel(self, v38, v39);
  objc_msgSend_addSubview_(v37, v41, v40);

  v42 = objc_opt_new();
  objc_msgSend_setTimeLabel_(self, v43, v42);

  v46 = objc_msgSend_whiteColor(MEMORY[0x29EDC7A00], v44, v45);
  v49 = objc_msgSend_timeLabel(self, v47, v48);
  objc_msgSend_setTextColor_(v49, v50, v46);

  v53 = objc_msgSend_timeLabel(self, v51, v52);
  objc_msgSend_controlCenterApplyPrimaryContentShadow(v53, v54, v55);

  v58 = objc_msgSend_timeLabel(self, v56, v57);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v58, v59, 0);

  v62 = objc_msgSend_timeLabel(self, v60, v61);
  objc_msgSend_setTextAlignment_(v62, v63, 1);

  v66 = objc_msgSend_view(self, v64, v65);
  v69 = objc_msgSend_timeLabel(self, v67, v68);
  objc_msgSend_addSubview_(v66, v70, v69);

  v71 = objc_alloc_init(MTCCRoundButton);
  objc_msgSend_setStartStopButton_(self, v72, v71);

  v75 = objc_msgSend_startStopButton(self, v73, v74);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v75, v76, 0);

  v79 = objc_msgSend_startStopButton(self, v77, v78);
  objc_msgSend_addTarget_action_forControlEvents_(v79, v80, self, sel_startStopButtonTapped_, 64);

  v83 = objc_msgSend_startStopButton(self, v81, v82);
  v84 = objc_alloc(MEMORY[0x29EDC7BD8]);
  v86 = objc_msgSend_initWithDelegate_(v84, v85, self);
  objc_msgSend_addInteraction_(v83, v87, v86);

  v90 = objc_msgSend_startStopButton(self, v88, v89);
  v93 = objc_msgSend_systemGreenColor(MEMORY[0x29EDC7A00], v91, v92);
  objc_msgSend_setBackgroundColor_forState_(v90, v94, v93, 0);

  v97 = objc_msgSend_startStopButton(self, v95, v96);
  v100 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x29EDC7A00], v98, v99, 0.0, 0.2);
  objc_msgSend_setBackgroundColor_forState_(v97, v101, v100, 1);

  v104 = objc_msgSend_startStopButton(self, v102, v103);
  v107 = objc_msgSend_systemOrangeColor(MEMORY[0x29EDC7A00], v105, v106);
  objc_msgSend_setBackgroundColor_forState_(v104, v108, v107, 4);

  v111 = objc_msgSend_view(self, v109, v110);
  v114 = objc_msgSend_startStopButton(self, v112, v113);
  objc_msgSend_addSubview_(v111, v115, v114);

  v116 = objc_alloc_init(MTCCRoundButton);
  objc_msgSend_setAddTimerButton_(self, v117, v116);

  v120 = objc_msgSend_addTimerButton(self, v118, v119);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v120, v121, 0);

  v124 = objc_msgSend_addTimerButton(self, v122, v123);
  objc_msgSend_addTarget_action_forControlEvents_(v124, v125, self, sel_addTimerButtonTapped_forEvent_, 64);

  v128 = objc_msgSend_addTimerButton(self, v126, v127);
  v129 = objc_alloc(MEMORY[0x29EDC7BD8]);
  v131 = objc_msgSend_initWithDelegate_(v129, v130, self);
  objc_msgSend_addInteraction_(v128, v132, v131);

  v135 = objc_msgSend_addTimerButton(self, v133, v134);
  v138 = objc_msgSend_controlCenterDarkMaterial(MEMORY[0x29EDC0CC8], v136, v137);
  objc_msgSend_setBackgroundMaterialView_forState_(v135, v139, v138, 0);

  v142 = objc_msgSend_addTimerButton(self, v140, v141);
  v145 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x29EDC7A00], v143, v144, 0.0, 0.2);
  objc_msgSend_setBackgroundColor_forState_(v142, v146, v145, 1);

  v148 = objc_msgSend_configurationWithPointSize_weight_(MEMORY[0x29EDC7AD0], v147, 7, 17.0);
  v150 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v149, @"plus", v148);
  v153 = objc_msgSend_addTimerButton(self, v151, v152);
  objc_msgSend_setImage_(v153, v154, v150);

  v157 = objc_msgSend_systemWhiteColor(MEMORY[0x29EDC7A00], v155, v156);
  v160 = objc_msgSend_addTimerButton(self, v158, v159);
  objc_msgSend_setTintColor_(v160, v161, v157);

  v164 = objc_msgSend_view(self, v162, v163);
  v167 = objc_msgSend_addTimerButton(self, v165, v166);
  objc_msgSend_addSubview_(v164, v168, v167);

  objc_msgSend_setupFonts(self, v169, v170);
  objc_msgSend_setupImage(self, v171, v172);
  objc_msgSend__reloadForCurrentState(self, v173, v174);
  v177 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v175, v176);
  objc_msgSend_addObserver_selector_name_object_(v177, v178, self, sel_handleContentSizeChange_, *MEMORY[0x29EDC8078], 0);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = MTCCTimerBackgroundViewController;
  [(MTCCTimerBackgroundViewController *)&v5 viewWillLayoutSubviews];
  objc_msgSend_setupConstraints(self, v3, v4);
}

- (void)setupFonts
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x29EDC7938], a2, v2);
  lhs = objc_msgSend_preferredContentSizeCategory(v4, v5, v6);

  if (UIContentSizeCategoryCompareToCategory(lhs, *MEMORY[0x29EDC8060]) == NSOrderedDescending)
  {
    objc_msgSend_setupAxFonts(self, v7, v8);
  }

  else
  {
    objc_msgSend_setupRegularFonts(self, v7, v8);
  }
}

- (void)setupRegularFonts
{
  v3 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x29EDC76B0], a2, *MEMORY[0x29EDC80E0]);
  v6 = objc_msgSend_titleLabel(self, v4, v5);
  objc_msgSend_setFont_(v6, v7, v3);

  v20 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x29EDC76B0], v8, *MEMORY[0x29EDC8128]);
  v9 = MEMORY[0x29EDC76B0];
  objc_msgSend_pointSize(v20, v10, v11);
  v12 = *MEMORY[0x29EDC76F8];
  v15 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(v9, v13, v14);
  v18 = objc_msgSend_timeLabel(self, v16, v17);
  objc_msgSend_setFont_(v18, v19, v15);
}

- (void)setupImage
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x29EDC7938], a2, v2);
  lhs = objc_msgSend_preferredContentSizeCategory(v4, v5, v6);

  if (UIContentSizeCategoryCompareToCategory(lhs, *MEMORY[0x29EDC8060]) == NSOrderedDescending)
  {
    objc_msgSend_accessibilityCappedFontForStyle_(self, v7, *MEMORY[0x29EDC8100]);
  }

  else
  {
    objc_msgSend_preferredFontForTextStyle_(MEMORY[0x29EDC76B0], v7, *MEMORY[0x29EDC8100]);
  }
  v8 = ;
  objc_msgSend_pointSize(v8, v9, v10);
  v12 = v11;

  v14 = objc_msgSend_configurationWithPointSize_weight_(MEMORY[0x29EDC7AD0], v13, 7, v12);
  v17 = objc_msgSend_addTimerButton(self, v15, v16);
  v19 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x29EDC7AC8], v18, @"plus", v14);
  objc_msgSend_setImage_(v17, v20, v19);
}

- (void)setupAxFonts
{
  v3 = objc_msgSend_accessibilityCappedFontForStyle_(self, a2, *MEMORY[0x29EDC80E0]);
  v6 = objc_msgSend_titleLabel(self, v4, v5);
  objc_msgSend_setFont_(v6, v7, v3);

  v20 = objc_msgSend_accessibilityCappedFontForStyle_(self, v8, *MEMORY[0x29EDC8128]);
  v9 = MEMORY[0x29EDC76B0];
  objc_msgSend_pointSize(v20, v10, v11);
  v12 = *MEMORY[0x29EDC76F8];
  v15 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(v9, v13, v14);
  v18 = objc_msgSend_timeLabel(self, v16, v17);
  objc_msgSend_setFont_(v18, v19, v15);
}

- (id)accessibilityCappedFontForStyle:(id)style
{
  v3 = MEMORY[0x29EDC7D80];
  v4 = *MEMORY[0x29EDC8060];
  styleCopy = style;
  v7 = objc_msgSend_traitCollectionWithPreferredContentSizeCategory_(v3, v6, v4);
  v9 = objc_msgSend_preferredFontForTextStyle_compatibleWithTraitCollection_(MEMORY[0x29EDC76B0], v8, styleCopy, v7);

  return v9;
}

- (void)setupConstraints
{
  v4 = objc_msgSend_currentConstraints(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = MEMORY[0x29EDBA008];
    v11 = objc_msgSend_currentConstraints(self, v8, v9);
    objc_msgSend_deactivateConstraints_(v10, v12, v11);

    v15 = objc_msgSend_currentConstraints(self, v13, v14);
    objc_msgSend_removeAllObjects(v15, v16, v17);
  }

  v18 = objc_msgSend_view(self, v8, v9);
  objc_msgSend_bounds(v18, v19, v20);
  Width = CGRectGetWidth(v41);
  v24 = objc_msgSend_view(self, v22, v23);
  objc_msgSend_bounds(v24, v25, v26);
  Height = CGRectGetHeight(v42);

  if (Width > Height)
  {
    objc_msgSend_landscapeConstraints(self, v28, v29);
  }

  else
  {
    objc_msgSend_portraitConstraints(self, v28, v29);
  }
  v39 = ;
  v32 = objc_msgSend_mutableCopy(v39, v30, v31);
  objc_msgSend_setCurrentConstraints_(self, v33, v32);

  v34 = MEMORY[0x29EDBA008];
  v37 = objc_msgSend_currentConstraints(self, v35, v36);
  objc_msgSend_activateConstraints_(v34, v38, v37);
}

- (id)portraitConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_view(self, v5, v6);
  objc_msgSend_addLayoutGuide_(v7, v8, v4);

  v11 = objc_msgSend_widthAnchor(v4, v9, v10);
  CCUISliderExpandedContentModuleWidth();
  v14 = objc_msgSend_constraintEqualToConstant_(v11, v12, v13);
  objc_msgSend_addObject_(v3, v15, v14);

  v18 = objc_msgSend_heightAnchor(v4, v16, v17);
  CCUISliderExpandedContentModuleHeight();
  v21 = objc_msgSend_constraintEqualToConstant_(v18, v19, v20);
  objc_msgSend_addObject_(v3, v22, v21);

  v25 = objc_msgSend_centerXAnchor(v4, v23, v24);
  v28 = objc_msgSend_view(self, v26, v27);
  v31 = objc_msgSend_layoutMarginsGuide(v28, v29, v30);
  v34 = objc_msgSend_centerXAnchor(v31, v32, v33);
  v36 = objc_msgSend_constraintEqualToAnchor_(v25, v35, v34);
  objc_msgSend_addObject_(v3, v37, v36);

  v40 = objc_msgSend_centerYAnchor(v4, v38, v39);
  v43 = objc_msgSend_view(self, v41, v42);
  v46 = objc_msgSend_layoutMarginsGuide(v43, v44, v45);
  v49 = objc_msgSend_centerYAnchor(v46, v47, v48);
  v51 = objc_msgSend_constraintEqualToAnchor_(v40, v50, v49);
  objc_msgSend_addObject_(v3, v52, v51);

  v53 = objc_opt_new();
  v56 = objc_msgSend_view(self, v54, v55);
  objc_msgSend_addLayoutGuide_(v56, v57, v53);

  v60 = objc_msgSend_topAnchor(v53, v58, v59);
  v63 = objc_msgSend_view(self, v61, v62);
  v66 = objc_msgSend_layoutMarginsGuide(v63, v64, v65);
  v69 = objc_msgSend_topAnchor(v66, v67, v68);
  v71 = objc_msgSend_constraintEqualToAnchor_(v60, v70, v69);
  objc_msgSend_addObject_(v3, v72, v71);

  v75 = objc_msgSend_bottomAnchor(v53, v73, v74);
  v78 = objc_msgSend_topAnchor(v4, v76, v77);
  v80 = objc_msgSend_constraintEqualToAnchor_(v75, v79, v78);
  objc_msgSend_addObject_(v3, v81, v80);

  v84 = objc_msgSend_leadingAnchor(v53, v82, v83);
  v87 = objc_msgSend_view(self, v85, v86);
  v90 = objc_msgSend_layoutMarginsGuide(v87, v88, v89);
  v93 = objc_msgSend_leadingAnchor(v90, v91, v92);
  v95 = objc_msgSend_constraintEqualToAnchor_(v84, v94, v93);
  objc_msgSend_addObject_(v3, v96, v95);

  v99 = objc_msgSend_trailingAnchor(v53, v97, v98);
  v102 = objc_msgSend_view(self, v100, v101);
  v105 = objc_msgSend_layoutMarginsGuide(v102, v103, v104);
  v108 = objc_msgSend_trailingAnchor(v105, v106, v107);
  v110 = objc_msgSend_constraintEqualToAnchor_(v99, v109, v108);
  objc_msgSend_addObject_(v3, v111, v110);

  v112 = objc_opt_new();
  v115 = objc_msgSend_view(self, v113, v114);
  objc_msgSend_addLayoutGuide_(v115, v116, v112);

  v119 = objc_msgSend_leadingAnchor(v112, v117, v118);
  v122 = objc_msgSend_view(self, v120, v121);
  v125 = objc_msgSend_leadingAnchor(v122, v123, v124);
  v127 = objc_msgSend_constraintEqualToAnchor_(v119, v126, v125);
  objc_msgSend_addObject_(v3, v128, v127);

  v131 = objc_msgSend_trailingAnchor(v112, v129, v130);
  v134 = objc_msgSend_view(self, v132, v133);
  v137 = objc_msgSend_trailingAnchor(v134, v135, v136);
  v139 = objc_msgSend_constraintEqualToAnchor_(v131, v138, v137);
  objc_msgSend_addObject_(v3, v140, v139);

  v143 = objc_msgSend_centerYAnchor(v112, v141, v142);
  v405 = v53;
  v146 = objc_msgSend_centerYAnchor(v53, v144, v145);
  v148 = objc_msgSend_constraintEqualToAnchor_(v143, v147, v146);
  objc_msgSend_addObject_(v3, v149, v148);

  v152 = objc_msgSend_titleLabel(self, v150, v151);
  v155 = objc_msgSend_topAnchor(v152, v153, v154);
  v158 = objc_msgSend_topAnchor(v112, v156, v157);
  v160 = objc_msgSend_constraintEqualToAnchor_(v155, v159, v158);
  objc_msgSend_addObject_(v3, v161, v160);

  v164 = objc_msgSend_titleLabel(self, v162, v163);
  v167 = objc_msgSend_bottomAnchor(v164, v165, v166);
  v170 = objc_msgSend_timeLabel(self, v168, v169);
  v173 = objc_msgSend_topAnchor(v170, v171, v172);
  v175 = objc_msgSend_constraintEqualToAnchor_(v167, v174, v173);
  objc_msgSend_addObject_(v3, v176, v175);

  v179 = objc_msgSend_timeLabel(self, v177, v178);
  v182 = objc_msgSend_bottomAnchor(v179, v180, v181);
  v185 = objc_msgSend_bottomAnchor(v112, v183, v184);
  v187 = objc_msgSend_constraintEqualToAnchor_(v182, v186, v185);
  objc_msgSend_addObject_(v3, v188, v187);

  v191 = objc_msgSend_titleLabel(self, v189, v190);
  v194 = objc_msgSend_centerXAnchor(v191, v192, v193);
  v197 = objc_msgSend_centerXAnchor(v112, v195, v196);
  v199 = objc_msgSend_constraintEqualToAnchor_(v194, v198, v197);
  objc_msgSend_addObject_(v3, v200, v199);

  v203 = objc_msgSend_timeLabel(self, v201, v202);
  v206 = objc_msgSend_centerXAnchor(v203, v204, v205);
  v209 = objc_msgSend_centerXAnchor(v112, v207, v208);
  v211 = objc_msgSend_constraintEqualToAnchor_(v206, v210, v209);
  objc_msgSend_addObject_(v3, v212, v211);

  v213 = objc_opt_new();
  v216 = objc_msgSend_view(self, v214, v215);
  objc_msgSend_addLayoutGuide_(v216, v217, v213);

  v220 = objc_msgSend_topAnchor(v213, v218, v219);
  v406 = v4;
  v223 = objc_msgSend_bottomAnchor(v4, v221, v222);
  v225 = objc_msgSend_constraintEqualToAnchor_(v220, v224, v223);
  objc_msgSend_addObject_(v3, v226, v225);

  v229 = objc_msgSend_leadingAnchor(v213, v227, v228);
  v232 = objc_msgSend_view(self, v230, v231);
  v235 = objc_msgSend_layoutMarginsGuide(v232, v233, v234);
  v238 = objc_msgSend_leadingAnchor(v235, v236, v237);
  v240 = objc_msgSend_constraintEqualToAnchor_(v229, v239, v238);
  objc_msgSend_addObject_(v3, v241, v240);

  v244 = objc_msgSend_trailingAnchor(v213, v242, v243);
  v247 = objc_msgSend_view(self, v245, v246);
  v250 = objc_msgSend_layoutMarginsGuide(v247, v248, v249);
  v253 = objc_msgSend_trailingAnchor(v250, v251, v252);
  v255 = objc_msgSend_constraintEqualToAnchor_(v244, v254, v253);
  objc_msgSend_addObject_(v3, v256, v255);

  v259 = objc_msgSend_bottomAnchor(v213, v257, v258);
  v262 = objc_msgSend_view(self, v260, v261);
  v265 = objc_msgSend_layoutMarginsGuide(v262, v263, v264);
  v268 = objc_msgSend_bottomAnchor(v265, v266, v267);
  v270 = objc_msgSend_constraintEqualToAnchor_(v259, v269, v268);
  objc_msgSend_addObject_(v3, v271, v270);

  v274 = objc_msgSend_startStopButton(self, v272, v273);
  v277 = objc_msgSend_centerXAnchor(v274, v275, v276);
  v280 = objc_msgSend_centerXAnchor(v213, v278, v279);
  v282 = objc_msgSend_constraintEqualToAnchor_(v277, v281, v280);
  objc_msgSend_addObject_(v3, v283, v282);

  v286 = objc_msgSend_startStopButton(self, v284, v285);
  v289 = objc_msgSend_centerYAnchor(v286, v287, v288);
  v292 = objc_msgSend_centerYAnchor(v213, v290, v291);
  v294 = objc_msgSend_constraintEqualToAnchor_(v289, v293, v292);
  objc_msgSend_addObject_(v3, v295, v294);

  v296 = objc_opt_new();
  v299 = objc_msgSend_view(self, v297, v298);
  objc_msgSend_addLayoutGuide_(v299, v300, v296);

  v303 = objc_msgSend_topAnchor(v296, v301, v302);
  v306 = objc_msgSend_topAnchor(v213, v304, v305);
  v308 = objc_msgSend_constraintEqualToAnchor_(v303, v307, v306);
  objc_msgSend_addObject_(v3, v309, v308);

  v312 = objc_msgSend_leadingAnchor(v296, v310, v311);
  v315 = objc_msgSend_startStopButton(self, v313, v314);
  v318 = objc_msgSend_trailingAnchor(v315, v316, v317);
  v320 = objc_msgSend_constraintEqualToAnchor_(v312, v319, v318);
  objc_msgSend_addObject_(v3, v321, v320);

  v324 = objc_msgSend_trailingAnchor(v296, v322, v323);
  v327 = objc_msgSend_view(self, v325, v326);
  v330 = objc_msgSend_layoutMarginsGuide(v327, v328, v329);
  v333 = objc_msgSend_trailingAnchor(v330, v331, v332);
  v335 = objc_msgSend_constraintEqualToAnchor_(v324, v334, v333);
  objc_msgSend_addObject_(v3, v336, v335);

  v339 = objc_msgSend_bottomAnchor(v296, v337, v338);
  v342 = objc_msgSend_bottomAnchor(v213, v340, v341);
  v344 = objc_msgSend_constraintEqualToAnchor_(v339, v343, v342);
  objc_msgSend_addObject_(v3, v345, v344);

  v348 = objc_msgSend_addTimerButton(self, v346, v347);
  v351 = objc_msgSend_centerXAnchor(v348, v349, v350);
  v354 = objc_msgSend_centerXAnchor(v296, v352, v353);
  v356 = objc_msgSend_constraintEqualToAnchor_(v351, v355, v354);
  objc_msgSend_addObject_(v3, v357, v356);

  v360 = objc_msgSend_addTimerButton(self, v358, v359);
  v363 = objc_msgSend_centerYAnchor(v360, v361, v362);
  v366 = objc_msgSend_centerYAnchor(v296, v364, v365);
  v368 = objc_msgSend_constraintEqualToAnchor_(v363, v367, v366);
  objc_msgSend_addObject_(v3, v369, v368);

  v372 = objc_msgSend_traitCollection(self, v370, v371);
  v375 = objc_msgSend_preferredContentSizeCategory(v372, v373, v374);
  LODWORD(v366) = UIContentSizeCategoryIsAccessibilityCategory(v375);

  if (v366)
  {
    v378 = objc_msgSend_startStopButton(self, v376, v377);
    v381 = objc_msgSend_widthAnchor(v378, v379, v380);
    CCUISliderExpandedContentModuleWidth();
    objc_msgSend_constraintEqualToConstant_(v381, v382, v383, v384);
  }

  else
  {
    v385 = objc_msgSend_addTimerButton(self, v376, v377);
    v388 = objc_msgSend_widthAnchor(v385, v386, v387);
    v391 = objc_msgSend_constraintEqualToConstant_(v388, v389, v390, 50.0);
    objc_msgSend_addObject_(v3, v392, v391);

    v378 = objc_msgSend_addTimerButton(self, v393, v394);
    v381 = objc_msgSend_heightAnchor(v378, v395, v396);
    objc_msgSend_constraintEqualToConstant_(v381, v397, v398, 50.0);
  }
  v399 = ;
  objc_msgSend_addObject_(v3, v400, v399);

  v403 = objc_msgSend_copy(v3, v401, v402);

  return v403;
}

- (id)landscapeConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_view(self, v5, v6);
  objc_msgSend_addLayoutGuide_(v7, v8, v4);

  v11 = objc_msgSend_widthAnchor(v4, v9, v10);
  CCUISliderExpandedContentModuleWidth();
  v14 = objc_msgSend_constraintEqualToConstant_(v11, v12, v13);
  objc_msgSend_addObject_(v3, v15, v14);

  v18 = objc_msgSend_heightAnchor(v4, v16, v17);
  CCUISliderExpandedContentModuleHeight();
  v21 = objc_msgSend_constraintEqualToConstant_(v18, v19, v20);
  objc_msgSend_addObject_(v3, v22, v21);

  v25 = objc_msgSend_centerXAnchor(v4, v23, v24);
  v28 = objc_msgSend_view(self, v26, v27);
  v31 = objc_msgSend_layoutMarginsGuide(v28, v29, v30);
  v34 = objc_msgSend_centerXAnchor(v31, v32, v33);
  v36 = objc_msgSend_constraintEqualToAnchor_(v25, v35, v34);
  objc_msgSend_addObject_(v3, v37, v36);

  v40 = objc_msgSend_centerYAnchor(v4, v38, v39);
  v43 = objc_msgSend_view(self, v41, v42);
  v46 = objc_msgSend_layoutMarginsGuide(v43, v44, v45);
  v49 = objc_msgSend_centerYAnchor(v46, v47, v48);
  v51 = objc_msgSend_constraintEqualToAnchor_(v40, v50, v49);
  objc_msgSend_addObject_(v3, v52, v51);

  v53 = objc_opt_new();
  v56 = objc_msgSend_view(self, v54, v55);
  objc_msgSend_addLayoutGuide_(v56, v57, v53);

  v60 = objc_msgSend_topAnchor(v53, v58, v59);
  v63 = objc_msgSend_view(self, v61, v62);
  v66 = objc_msgSend_layoutMarginsGuide(v63, v64, v65);
  v69 = objc_msgSend_topAnchor(v66, v67, v68);
  v71 = objc_msgSend_constraintEqualToAnchor_(v60, v70, v69);
  objc_msgSend_addObject_(v3, v72, v71);

  v75 = objc_msgSend_bottomAnchor(v53, v73, v74);
  v78 = objc_msgSend_view(self, v76, v77);
  v81 = objc_msgSend_layoutMarginsGuide(v78, v79, v80);
  v84 = objc_msgSend_bottomAnchor(v81, v82, v83);
  v86 = objc_msgSend_constraintEqualToAnchor_(v75, v85, v84);
  objc_msgSend_addObject_(v3, v87, v86);

  v90 = objc_msgSend_leadingAnchor(v53, v88, v89);
  v93 = objc_msgSend_view(self, v91, v92);
  v96 = objc_msgSend_layoutMarginsGuide(v93, v94, v95);
  v99 = objc_msgSend_leadingAnchor(v96, v97, v98);
  v101 = objc_msgSend_constraintEqualToAnchor_(v90, v100, v99);
  objc_msgSend_addObject_(v3, v102, v101);

  v105 = objc_msgSend_trailingAnchor(v53, v103, v104);
  v108 = objc_msgSend_leadingAnchor(v4, v106, v107);
  v110 = objc_msgSend_constraintEqualToAnchor_(v105, v109, v108);
  objc_msgSend_addObject_(v3, v111, v110);

  v112 = objc_opt_new();
  v115 = objc_msgSend_view(self, v113, v114);
  objc_msgSend_addLayoutGuide_(v115, v116, v112);

  v119 = objc_msgSend_leadingAnchor(v112, v117, v118);
  v122 = objc_msgSend_leadingAnchor(v53, v120, v121);
  v124 = objc_msgSend_constraintEqualToAnchor_(v119, v123, v122);
  objc_msgSend_addObject_(v3, v125, v124);

  v128 = objc_msgSend_trailingAnchor(v112, v126, v127);
  v131 = objc_msgSend_trailingAnchor(v53, v129, v130);
  v133 = objc_msgSend_constraintEqualToAnchor_(v128, v132, v131);
  objc_msgSend_addObject_(v3, v134, v133);

  v137 = objc_msgSend_centerYAnchor(v112, v135, v136);
  v429 = v53;
  v140 = objc_msgSend_centerYAnchor(v53, v138, v139);
  v142 = objc_msgSend_constraintEqualToAnchor_(v137, v141, v140);
  objc_msgSend_addObject_(v3, v143, v142);

  v146 = objc_msgSend_titleLabel(self, v144, v145);
  v149 = objc_msgSend_topAnchor(v146, v147, v148);
  v152 = objc_msgSend_topAnchor(v112, v150, v151);
  v154 = objc_msgSend_constraintEqualToAnchor_(v149, v153, v152);
  objc_msgSend_addObject_(v3, v155, v154);

  v158 = objc_msgSend_titleLabel(self, v156, v157);
  v161 = objc_msgSend_bottomAnchor(v158, v159, v160);
  v164 = objc_msgSend_timeLabel(self, v162, v163);
  v167 = objc_msgSend_topAnchor(v164, v165, v166);
  v169 = objc_msgSend_constraintEqualToAnchor_(v161, v168, v167);
  objc_msgSend_addObject_(v3, v170, v169);

  v173 = objc_msgSend_timeLabel(self, v171, v172);
  v176 = objc_msgSend_bottomAnchor(v173, v174, v175);
  v179 = objc_msgSend_bottomAnchor(v112, v177, v178);
  v181 = objc_msgSend_constraintEqualToAnchor_(v176, v180, v179);
  objc_msgSend_addObject_(v3, v182, v181);

  v185 = objc_msgSend_titleLabel(self, v183, v184);
  v188 = objc_msgSend_centerXAnchor(v185, v186, v187);
  v191 = objc_msgSend_centerXAnchor(v112, v189, v190);
  v193 = objc_msgSend_constraintEqualToAnchor_(v188, v192, v191);
  objc_msgSend_addObject_(v3, v194, v193);

  v197 = objc_msgSend_timeLabel(self, v195, v196);
  v200 = objc_msgSend_centerXAnchor(v197, v198, v199);
  v203 = objc_msgSend_centerXAnchor(v112, v201, v202);
  v205 = objc_msgSend_constraintEqualToAnchor_(v200, v204, v203);
  objc_msgSend_addObject_(v3, v206, v205);

  v207 = objc_opt_new();
  v210 = objc_msgSend_view(self, v208, v209);
  objc_msgSend_addLayoutGuide_(v210, v211, v207);

  v214 = objc_msgSend_leadingAnchor(v207, v212, v213);
  v430 = v4;
  v217 = objc_msgSend_trailingAnchor(v4, v215, v216);
  v219 = objc_msgSend_constraintEqualToAnchor_(v214, v218, v217);
  objc_msgSend_addObject_(v3, v220, v219);

  v223 = objc_msgSend_trailingAnchor(v207, v221, v222);
  v226 = objc_msgSend_view(self, v224, v225);
  v229 = objc_msgSend_layoutMarginsGuide(v226, v227, v228);
  v232 = objc_msgSend_trailingAnchor(v229, v230, v231);
  v234 = objc_msgSend_constraintEqualToAnchor_(v223, v233, v232);
  objc_msgSend_addObject_(v3, v235, v234);

  v238 = objc_msgSend_topAnchor(v207, v236, v237);
  v241 = objc_msgSend_view(self, v239, v240);
  v244 = objc_msgSend_layoutMarginsGuide(v241, v242, v243);
  v247 = objc_msgSend_topAnchor(v244, v245, v246);
  v249 = objc_msgSend_constraintEqualToAnchor_(v238, v248, v247);
  objc_msgSend_addObject_(v3, v250, v249);

  v253 = objc_msgSend_bottomAnchor(v207, v251, v252);
  v256 = objc_msgSend_view(self, v254, v255);
  v259 = objc_msgSend_layoutMarginsGuide(v256, v257, v258);
  v262 = objc_msgSend_bottomAnchor(v259, v260, v261);
  v264 = objc_msgSend_constraintEqualToAnchor_(v253, v263, v262);
  objc_msgSend_addObject_(v3, v265, v264);

  v268 = objc_msgSend_startStopButton(self, v266, v267);
  v271 = objc_msgSend_centerXAnchor(v268, v269, v270);
  v274 = objc_msgSend_centerXAnchor(v207, v272, v273);
  v276 = objc_msgSend_constraintEqualToAnchor_(v271, v275, v274);
  objc_msgSend_addObject_(v3, v277, v276);

  v280 = objc_msgSend_startStopButton(self, v278, v279);
  v283 = objc_msgSend_centerYAnchor(v280, v281, v282);
  v286 = objc_msgSend_centerYAnchor(v207, v284, v285);
  v288 = objc_msgSend_constraintEqualToAnchor_(v283, v287, v286);
  objc_msgSend_addObject_(v3, v289, v288);

  v290 = objc_opt_new();
  v293 = objc_msgSend_view(self, v291, v292);
  objc_msgSend_addLayoutGuide_(v293, v294, v290);

  v297 = objc_msgSend_topAnchor(v290, v295, v296);
  v300 = objc_msgSend_topAnchor(v207, v298, v299);
  v302 = objc_msgSend_constraintEqualToAnchor_(v297, v301, v300);
  objc_msgSend_addObject_(v3, v303, v302);

  v306 = objc_msgSend_leadingAnchor(v290, v304, v305);
  v309 = objc_msgSend_startStopButton(self, v307, v308);
  v312 = objc_msgSend_trailingAnchor(v309, v310, v311);
  v314 = objc_msgSend_constraintEqualToAnchor_(v306, v313, v312);
  objc_msgSend_addObject_(v3, v315, v314);

  v318 = objc_msgSend_trailingAnchor(v290, v316, v317);
  v321 = objc_msgSend_view(self, v319, v320);
  v324 = objc_msgSend_layoutMarginsGuide(v321, v322, v323);
  v327 = objc_msgSend_trailingAnchor(v324, v325, v326);
  v329 = objc_msgSend_constraintEqualToAnchor_(v318, v328, v327);
  objc_msgSend_addObject_(v3, v330, v329);

  v333 = objc_msgSend_bottomAnchor(v290, v331, v332);
  v336 = objc_msgSend_bottomAnchor(v207, v334, v335);
  v338 = objc_msgSend_constraintEqualToAnchor_(v333, v337, v336);
  objc_msgSend_addObject_(v3, v339, v338);

  v342 = objc_msgSend_addTimerButton(self, v340, v341);
  v345 = objc_msgSend_centerXAnchor(v342, v343, v344);
  v348 = objc_msgSend_centerXAnchor(v290, v346, v347);
  v350 = objc_msgSend_constraintEqualToAnchor_(v345, v349, v348);
  objc_msgSend_addObject_(v3, v351, v350);

  v354 = objc_msgSend_addTimerButton(self, v352, v353);
  v357 = objc_msgSend_centerYAnchor(v354, v355, v356);
  v360 = objc_msgSend_centerYAnchor(v290, v358, v359);
  v362 = objc_msgSend_constraintEqualToAnchor_(v357, v361, v360);
  objc_msgSend_addObject_(v3, v363, v362);

  v366 = objc_msgSend_traitCollection(self, v364, v365);
  v369 = objc_msgSend_preferredContentSizeCategory(v366, v367, v368);
  LODWORD(v360) = UIContentSizeCategoryIsAccessibilityCategory(v369);

  if (v360)
  {
    v372 = objc_msgSend_startStopButton(self, v370, v371);
    v375 = objc_msgSend_widthAnchor(v372, v373, v374);
    CCUISliderExpandedContentModuleWidth();
    v378 = objc_msgSend_constraintEqualToConstant_(v375, v376, v377);
    objc_msgSend_addObject_(v3, v379, v378);

    v382 = objc_msgSend_trailingAnchor(v207, v380, v381);
    v385 = objc_msgSend_view(self, v383, v384);
    v388 = objc_msgSend_layoutMarginsGuide(v385, v386, v387);
    v391 = objc_msgSend_trailingAnchor(v388, v389, v390);
    v393 = objc_msgSend_constraintEqualToAnchor_constant_(v382, v392, v391, -50.0);
    objc_msgSend_addObject_(v3, v394, v393);
  }

  else
  {
    v395 = objc_msgSend_trailingAnchor(v207, v370, v371);
    v398 = objc_msgSend_view(self, v396, v397);
    v401 = objc_msgSend_layoutMarginsGuide(v398, v399, v400);
    v404 = objc_msgSend_trailingAnchor(v401, v402, v403);
    v406 = objc_msgSend_constraintEqualToAnchor_(v395, v405, v404);
    objc_msgSend_addObject_(v3, v407, v406);

    v410 = objc_msgSend_addTimerButton(self, v408, v409);
    v413 = objc_msgSend_widthAnchor(v410, v411, v412);
    v416 = objc_msgSend_constraintEqualToConstant_(v413, v414, v415, 50.0);
    objc_msgSend_addObject_(v3, v417, v416);

    v382 = objc_msgSend_addTimerButton(self, v418, v419);
    v385 = objc_msgSend_heightAnchor(v382, v420, v421);
    v388 = objc_msgSend_constraintEqualToConstant_(v385, v422, v423, 50.0);
    objc_msgSend_addObject_(v3, v424, v388);
  }

  v427 = objc_msgSend_copy(v3, v425, v426);

  return v427;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = MTCCTimerBackgroundViewController;
  [(MTCCTimerBackgroundViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  objc_msgSend_setupConstraints(self, v5, v6);
  v9 = objc_msgSend_view(self, v7, v8);
  objc_msgSend_setNeedsLayout(v9, v10, v11);
}

- (void)handleContentSizeChange:(id)change
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ handling content size chaged", &v17, 0xCu);
  }

  objc_msgSend_setupFonts(self, v5, v6);
  objc_msgSend_setupImage(self, v7, v8);
  objc_msgSend_setupConstraints(self, v9, v10);
  v13 = objc_msgSend_view(self, v11, v12);
  objc_msgSend_setNeedsLayout(v13, v14, v15);

  v16 = *MEMORY[0x29EDCA608];
}

- (void)startStopButtonTapped:(id)tapped
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_timer(self, v5, v6);
    v46 = 138543618;
    selfCopy = self;
    v48 = 2050;
    v49 = objc_msgSend_state(v7, v8, v9);
    _os_log_impl(&dword_29C9FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ button tapped, current state:%{public}lu", &v46, 0x16u);
  }

  v12 = objc_msgSend_timer(self, v10, v11);
  v15 = objc_msgSend_fireDate(v12, v13, v14);

  v18 = objc_msgSend_timer(self, v16, v17);
  v21 = objc_msgSend_state(v18, v19, v20);

  if ((v21 - 1) >= 2)
  {
    if (v21 == 3)
    {
      v31 = 2;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v24 = MEMORY[0x29EDB8DB0];
    v25 = objc_msgSend_timer(self, v22, v23);
    objc_msgSend_remainingTime(v25, v26, v27);
    v30 = objc_msgSend_dateWithTimeIntervalSinceNow_(v24, v28, v29);

    v31 = 3;
    v15 = v30;
  }

  v32 = objc_msgSend_timer(self, v22, v23);
  objc_msgSend_setState_(v32, v33, v31);

  v36 = objc_msgSend_timer(self, v34, v35);
  objc_msgSend_setFireDate_(v36, v37, v15);

  v40 = objc_msgSend_delegate(self, v38, v39);
  v43 = objc_msgSend_timer(self, v41, v42);
  objc_msgSend_timerBackgroundViewController_timerDidChange_(v40, v44, self, v43);

  v45 = *MEMORY[0x29EDCA608];
}

- (void)addTimerButtonTapped:(id)tapped forEvent:(id)event
{
  v21 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_timer(self, v7, v8);
    v17 = 138543618;
    selfCopy = self;
    v19 = 2050;
    v20 = objc_msgSend_state(v9, v10, v11);
    _os_log_impl(&dword_29C9FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ add button tapped, current state:%{public}lu", &v17, 0x16u);
  }

  v14 = objc_msgSend_delegate(self, v12, v13);
  objc_msgSend_timerBackgroundViewControllerAddButtonTapped_withEvent_(v14, v15, self, eventCopy);

  v16 = *MEMORY[0x29EDCA608];
}

- (void)_updateLabels
{
  v84 = objc_msgSend_dateComponentsFormatter(self, a2, v2);
  v8 = objc_msgSend_timer(self, v6, v7);
  v11 = objc_msgSend_state(v8, v9, v10);

  if (v11 == 1)
  {
    objc_msgSend_setUnitsStyle_(v84, v12, 3);
  }

  else
  {
    objc_msgSend_setUnitsStyle_(v84, v12, 0);
  }

  objc_msgSend_setZeroFormattingBehavior_(v84, v13, v11 == 1);
  v16 = objc_msgSend_timer(self, v14, v15);
  v19 = objc_msgSend_state(v16, v17, v18);

  if (v19 == 3)
  {
    v23 = objc_msgSend_timer(self, v20, v21);
    v31 = objc_msgSend_fireDate(v23, v29, v30);
    objc_msgSend_timeIntervalSinceNow(v31, v32, v33);
    v22 = v34;
  }

  else
  {
    if (v19 == 2)
    {
      v23 = objc_msgSend_timer(self, v20, v21);
      objc_msgSend_remainingTime(v23, v27, v28);
    }

    else
    {
      v22 = 0.0;
      if (v19 != 1)
      {
        goto LABEL_12;
      }

      v23 = objc_msgSend_timer(self, v20, v21);
      objc_msgSend_duration(v23, v24, v25);
    }

    v22 = v26;
  }

LABEL_12:
  v35 = objc_msgSend_timer(self, v20, v21);
  v38 = objc_msgSend_state(v35, v36, v37);

  v41 = round(v22);
  v42 = fmax(v41, 1.0);
  v43 = fmax(v41, 0.0);
  if (v38 == 2)
  {
    v43 = v42;
  }

  v44 = objc_msgSend_stringFromTimeInterval_(v84, v39, v40, v43);
  v47 = objc_msgSend_timeLabel(self, v45, v46);
  objc_msgSend_setText_(v47, v48, v44);

  if (v11 == 1)
  {
    v50 = MEMORY[0x29EDB9F48];
    v51 = objc_opt_class();
    v53 = objc_msgSend_bundleForClass_(v50, v52, v51);
    v55 = objc_msgSend_localizedStringForKey_value_table_(v53, v54, @"SET_TIMER_FOR", &stru_2A23F3148, @"TimerModule");
    v58 = objc_msgSend_titleLabel(self, v56, v57);
    objc_msgSend_setText_(v58, v59, v55);

    goto LABEL_22;
  }

  objc_msgSend_setUnitsStyle_(v84, v49, 3);
  objc_msgSend_setZeroFormattingBehavior_(v84, v60, 1);
  v63 = objc_msgSend_timer(self, v61, v62);
  v68 = objc_msgSend_timerLabel(v63, v64, v65);
  if (v68)
  {
    v3 = objc_msgSend_timer(self, v66, v67);
    v4 = objc_msgSend_timerLabel(v3, v69, v70);
    if (objc_msgSend_length(v4, v71, v72))
    {
      v73 = objc_msgSend_timer(self, v66, v67);
      v53 = objc_msgSend_timerLabel(v73, v74, v75);

LABEL_20:
      goto LABEL_21;
    }
  }

  v76 = objc_msgSend_timer(self, v66, v67);
  objc_msgSend_duration(v76, v77, v78);
  v53 = objc_msgSend_stringFromTimeInterval_(v84, v79, v80);

  if (v68)
  {
    goto LABEL_20;
  }

LABEL_21:

  v55 = objc_msgSend_titleLabel(self, v81, v82);
  objc_msgSend_setText_(v55, v83, v53);
LABEL_22:
}

- (void)_reloadForCurrentState
{
  v4 = objc_msgSend_timer(self, a2, v2);
  v7 = objc_msgSend_state(v4, v5, v6);

  switch(v7)
  {
    case 3:
      v41 = MEMORY[0x29EDB9F48];
      v42 = objc_opt_class();
      v44 = objc_msgSend_bundleForClass_(v41, v43, v42);
      v86 = objc_msgSend_localizedStringForKey_value_table_(v44, v45, @"PAUSE", &stru_2A23F3148, @"TimerModule");

      v24 = objc_msgSend_addTimerButton(self, v46, v47);
      objc_msgSend_setHidden_(v24, v48, 0);
      v32 = 1;
      goto LABEL_7;
    case 2:
      v33 = MEMORY[0x29EDB9F48];
      v34 = objc_opt_class();
      v36 = objc_msgSend_bundleForClass_(v33, v35, v34);
      v86 = objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"RESUME", &stru_2A23F3148, @"TimerModule");

      v24 = objc_msgSend_addTimerButton(self, v38, v39);
      objc_msgSend_setHidden_(v24, v40, 0);
      v32 = 0;
LABEL_7:
      v21 = 1;
      goto LABEL_8;
    case 1:
      v10 = MEMORY[0x29EDB9F48];
      v11 = objc_opt_class();
      v13 = objc_msgSend_bundleForClass_(v10, v12, v11);
      v86 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"START", &stru_2A23F3148, @"TimerModule");

      v17 = objc_msgSend_timer(self, v15, v16);
      objc_msgSend_duration(v17, v18, v19);
      v21 = v20 > 0.0;

      v24 = objc_msgSend_timer(self, v22, v23);
      v27 = objc_msgSend_editingTimer(v24, v25, v26);
      v30 = objc_msgSend_addTimerButton(self, v28, v29);
      objc_msgSend_setHidden_(v30, v31, v27 == 0);

      v32 = 0;
LABEL_8:

      goto LABEL_10;
  }

  v86 = 0;
  v32 = 0;
  v21 = 1;
LABEL_10:
  v49 = objc_msgSend_startStopButton(self, v8, v9);
  objc_msgSend_setTitle_(v49, v50, v86);

  v53 = objc_msgSend_startStopButton(self, v51, v52);
  objc_msgSend_setSelected_(v53, v54, v32);

  v57 = objc_msgSend_startStopButton(self, v55, v56);
  objc_msgSend_setEnabled_(v57, v58, v21);

  objc_msgSend__updateLabels(self, v59, v60);
  v63 = objc_msgSend_displayLink(self, v61, v62);
  objc_msgSend_invalidate(v63, v64, v65);

  v68 = objc_msgSend_timer(self, v66, v67);
  v71 = objc_msgSend_state(v68, v69, v70);

  if (v71 == 3)
  {
    v73 = objc_msgSend_displayLinkWithTarget_selector_(MEMORY[0x29EDBBA90], v72, self, sel_displayLinkTick_);
    objc_msgSend_setDisplayLink_(self, v74, v73);

    v77 = objc_msgSend_displayLink(self, v75, v76);
    objc_msgSend_setPreferredFramesPerSecond_(v77, v78, 4);

    v81 = objc_msgSend_displayLink(self, v79, v80);
    v84 = objc_msgSend_mainRunLoop(MEMORY[0x29EDB8E48], v82, v83);
    objc_msgSend_addToRunLoop_forMode_(v81, v85, v84, *MEMORY[0x29EDB8D18]);
  }

  else
  {
    objc_msgSend_setDisplayLink_(self, v72, 0);
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc(MEMORY[0x29EDC7D30]);
  v8 = objc_msgSend_startStopButton(self, v6, v7);
  v11 = objc_msgSend_containerView(v8, v9, v10);
  v13 = objc_msgSend_initWithView_(v5, v12, v11);

  v15 = objc_msgSend_effectWithPreview_(MEMORY[0x29EDC7BE0], v14, v13);
  v17 = objc_msgSend_styleWithEffect_shape_(MEMORY[0x29EDC7BF8], v16, v15, 0);

  return v17;
}

- (MTCCTimerBackgroundViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end