@interface NTKGalleonFaceView
+ (id)_galleonSimpleComplicationFontDescriptor;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (id)galleonFontDescriptor;
+ (id)imageViewWithSymbolName:(id)a3 font:(id)a4;
- (BOOL)_loadCompassModeFromCustomData;
- (BOOL)_wantsStatusBarIconShadow;
- (CGAffineTransform)_transformForBreathingFraction:(SEL)a3;
- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)a3;
- (NTKGalleonFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_horizontalPaddingForStatusBar;
- (double)_verticalPaddingForStatusBar;
- (id)_complicationContainerViewForSlot:(id)a3;
- (id)_createLowPowerTemplate;
- (id)_filterProviderForSlot:(id)a3;
- (id)_lowPowerTemplate;
- (id)_multiPalette;
- (id)_nightModeTemplate;
- (id)_statusBarColorForNightModeFraction:(double)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (id)idealizedLocation;
- (unint64_t)_effectiveBezelStyleForCompassMode:(unint64_t)a3 bezelStyle:(unint64_t)a4;
- (unint64_t)_effectiveBezelStyleForCompassMode:(unint64_t)a3 bezelStyle:(unint64_t)a4 editMode:(int64_t)a5;
- (unint64_t)_effectiveCompassRingModeForTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5;
- (unint64_t)_effectiveCompassRingModeForTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5 editMode:(int64_t)a6;
- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3;
- (void)_alignCenterSignalStrengthView;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyCompassRingMode:(unint64_t)a3 bezelStyle:(unint64_t)a4;
- (void)_applyComplicationColor:(id)a3 slot:(id)a4;
- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5;
- (void)_applyComplicationFont:(id)a3;
- (void)_applyDefaultViewOrdering;
- (void)_applyFullSignalStrengthForSnapshot;
- (void)_applyHeadingLabelCompassFraction:(double)a3;
- (void)_applyHeadingLabelConfiguration;
- (void)_applyHeadingLabelVisible:(BOOL)a3;
- (void)_applyLowPowerModeFraction:(double)a3;
- (void)_applyMultiPaletteFractions;
- (void)_applyNightModeFraction:(double)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteToComplications:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowsCanonicalContent;
- (void)_applyTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromBezelStyle:(unint64_t)a4 toBezelStyle:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromTimeMode:(unint64_t)a4 toTimeMode:(unint64_t)a5;
- (void)_applyTransitionFromCompassRingMode:(unint64_t)a3 fromBezelStyle:(unint64_t)a4 fromNightMode:(unint64_t)a5 toCompassRingMode:(unint64_t)a6 toBezelStyle:(unint64_t)a7 toNightMode:(unint64_t)a8 animationStyle:(unint64_t)a9 fraction:(double)a10;
- (void)_applyTransitionFromTimeMode:(unint64_t)a3 fromCompassMode:(unint64_t)a4 fromBezelStyle:(unint64_t)a5 fromNightMode:(unint64_t)a6 toTimeMode:(unint64_t)a7 toCompassMode:(unint64_t)a8 toBezelStyle:(unint64_t)a9 toNightMode:(unint64_t)a10 animationStyle:(unint64_t)a11 fraction:(double)a12;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateStatusBar;
- (void)_updateViewColorsWithMultiPalette;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)applyColorOnAnalogHands;
- (void)configureComplicationViewDisplayWrapper:(id)a3 forSlot:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setNightMode:(unint64_t)a3;
@end

@implementation NTKGalleonFaceView

- (NTKGalleonFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v86[7] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v85.receiver = self;
  v85.super_class = NTKGalleonFaceView;
  v12 = [(NTKAnalogFaceView *)&v85 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v12)
  {
    v13 = MEMORY[0x277CBBB08];
    v14 = objc_msgSend_galleonFontDescriptor(NTKGalleonFaceView, v9, v10, v11);
    v17 = objc_msgSend_fontWithDescriptor_size_(v13, v15, v14, v16, 5.0);
    v18 = *(v12 + 111);
    *(v12 + 111) = v17;

    v19 = objc_alloc(MEMORY[0x277D2C080]);
    v22 = objc_msgSend_initWithDevice_(v19, v20, v8, v21);
    v23 = *(v12 + 133);
    *(v12 + 133) = v22;

    v24 = objc_alloc(MEMORY[0x277D2C080]);
    v27 = objc_msgSend_initWithDevice_(v24, v25, v8, v26);
    v28 = *(v12 + 134);
    *(v12 + 134) = v27;

    v29 = objc_alloc_init(MEMORY[0x277D2BFC8]);
    v30 = objc_alloc(MEMORY[0x277D2C138]);
    v34 = objc_msgSend_device(v12, v31, v32, v33);
    sub_23BE9F174(v34, v84);
    v36 = objc_msgSend_initWithFaceView_dialDiameter_device_(v30, v35, v12, v8, v84[0]);
    v37 = *(v12 + 128);
    *(v12 + 128) = v36;

    v38 = *(v12 + 128);
    v39 = *MEMORY[0x277D2BF10];
    v86[0] = *MEMORY[0x277D2BF08];
    v86[1] = v39;
    v40 = *MEMORY[0x277D2BEE8];
    v86[2] = *MEMORY[0x277D2BEE0];
    v86[3] = v40;
    v41 = *MEMORY[0x277D2BEC0];
    v86[4] = *MEMORY[0x277D2BEB8];
    v86[5] = v41;
    v86[6] = *MEMORY[0x277D2BEC8];
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v86, 7);
    objc_msgSend_registerFactory_forSlots_(v29, v44, v38, v43);

    v45 = objc_alloc_init(MEMORY[0x277D2C0F8]);
    objc_msgSend_setFaceView_(v45, v46, v12, v47);
    v51 = objc_msgSend_device(v12, v48, v49, v50);
    sub_23BE9F174(v51, v82);
    objc_msgSend_setVerticalCenterOffset_(v45, v52, v53, v54, v83);

    objc_msgSend_registerFactory_forSlot_(v29, v55, v45, *MEMORY[0x277D2BEF8]);
    objc_msgSend_setComplicationFactory_(v12, v56, v29, v57);
    v58 = objc_alloc(MEMORY[0x277D75D18]);
    objc_msgSend_bounds(v12, v59, v60, v61);
    v65 = objc_msgSend_initWithFrame_(v58, v62, v63, v64);
    v66 = *(v12 + 130);
    *(v12 + 130) = v65;

    v67 = objc_alloc(MEMORY[0x277D75D18]);
    objc_msgSend_bounds(v12, v68, v69, v70);
    v74 = objc_msgSend_initWithFrame_(v67, v71, v72, v73);
    v75 = *(v12 + 131);
    *(v12 + 131) = v74;

    *(v12 + 138) = 0;
    *(v12 + 116) = 0;
    *(v12 + 136) = 0;
    v79 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v76, v77, v78, 0.188235294, 0.0470588235, 0.0352941176, 1.0);
    v80 = *(v12 + 132);
    *(v12 + 132) = v79;
  }

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKGalleonFaceView;
  [(NTKAnalogFaceView *)&v2 dealloc];
}

- (id)_complicationContainerViewForSlot:(id)a3
{
  isCornerComplicationForSlot = objc_msgSend_isCornerComplicationForSlot_(self->_whistlerComplicationFactory, a2, a3, v3);
  v6 = &OBJC_IVAR___NTKGalleonFaceView__subdialComplicationContainerView;
  if (isCornerComplicationForSlot)
  {
    v6 = &OBJC_IVAR___NTKGalleonFaceView__cornerComplicationContainerView;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);

  return v7;
}

- (id)_filterProviderForSlot:(id)a3
{
  isCornerComplicationForSlot = objc_msgSend_isCornerComplicationForSlot_(self->_whistlerComplicationFactory, a2, a3, v3);
  v6 = &OBJC_IVAR___NTKGalleonFaceView__centerFilterProvider;
  if (isCornerComplicationForSlot)
  {
    v6 = &OBJC_IVAR___NTKGalleonFaceView__cornerFilterProvider;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);

  return v7;
}

- (void)_reorderSwitcherSnapshotView
{
  v5 = objc_msgSend_switcherSnapshotView(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_superview(self->_cornerComplicationContainerView, v6, v7, v8);

    if (v9 == self)
    {
      objc_msgSend_bringSubviewToFront_(self, v10, self->_cornerComplicationContainerView, v12);
    }

    v13 = objc_msgSend_superview(self->_subdialComplicationContainerView, v10, v11, v12);

    if (v13 == self)
    {
      objc_msgSend_bringSubviewToFront_(self, v14, self->_subdialComplicationContainerView, v16);
    }

    v23 = objc_msgSend_timeViewContainer(self, v14, v15, v16);
    v20 = objc_msgSend_timeViewContainer(self, v17, v18, v19);
    objc_msgSend_bringSubviewToFront_(self, v21, v20, v22);
  }
}

- (void)_prepareForSnapshotting
{
  v14.receiver = self;
  v14.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v14 _prepareForSnapshotting];
  v6 = objc_msgSend_device(self, v3, v4, v5);
  isExplorer = objc_msgSend_isExplorer(v6, v7, v8, v9);

  if (isExplorer)
  {
    objc_msgSend__applyFullSignalStrengthForSnapshot(self, v11, v12, v13);
  }

  objc_msgSend__applyHeadingLabelConfiguration(self, v11, v12, v13);
}

- (void)_loadSnapshotContentViews
{
  v18.receiver = self;
  v18.super_class = NTKGalleonFaceView;
  [(NTKAnalogFaceView *)&v18 _loadSnapshotContentViews];
  objc_msgSend__setupViews(self, v3, v4, v5);
  v9 = objc_msgSend_contentView(self, v6, v7, v8);
  objc_msgSend_setHidden_(v9, v10, 0, v11);

  CompassModeFromCustomData = objc_msgSend__loadCompassModeFromCustomData(self, v12, v13, v14);
  objc_msgSend_setCompassMode_(self, v16, CompassModeFromCustomData, v17);
}

- (void)_unloadSnapshotContentViews
{
  v12.receiver = self;
  v12.super_class = NTKGalleonFaceView;
  [(NTKAnalogFaceView *)&v12 _unloadSnapshotContentViews];
  objc_msgSend__removeViews(self, v3, v4, v5);
  v9 = objc_msgSend_contentView(self, v6, v7, v8);
  objc_msgSend_setHidden_(v9, v10, 1, v11);
}

- (void)_setupViews
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(self, v4, v5, v6);
  v10 = objc_msgSend_initWithFrame_(v3, v7, v8, v9);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v10;

  v15 = objc_msgSend_contentView(self, v12, v13, v14);
  objc_msgSend_addSubview_(v15, v16, self->_backgroundView, v17);

  v220 = 0u;
  v221 = 0u;
  v219 = 0u;
  memset(v218, 0, sizeof(v218));
  v21 = objc_msgSend_device(self, v18, v19, v20);
  sub_23BE9F174(v21, v218);

  v25 = objc_msgSend__multiPalette(self, v22, v23, v24);
  v26 = *v218;
  v30 = objc_msgSend_bounds(self, v27, v28, v29);
  v31 = MEMORY[0x23EEC04E0](v30);
  v33 = v32 - v26 * 0.5;
  self->_outerTapRadius = v31 - (v31 - v26 * 0.5);
  v34 = [NTKGalleonCompassLayeredRingView alloc];
  v38 = objc_msgSend_device(self, v35, v36, v37);
  v41 = objc_msgSend_initWithDevice_(v34, v39, v38, v40);
  compassRingView = self->_compassRingView;
  self->_compassRingView = v41;

  objc_msgSend_setPalette_(self->_compassRingView, v43, v25, v44);
  v48 = objc_msgSend_contentView(self, v45, v46, v47);
  objc_msgSend_addSubview_(v48, v49, self->_compassRingView, v50);

  objc_msgSend_ringThickness(self->_compassRingView, v51, v52, v53);
  v55 = v54;
  v222.origin.x = v31 - v26 * 0.5;
  v222.origin.y = v33;
  v222.size.width = v26;
  v222.size.height = v26;
  v223 = CGRectInset(v222, v55, v55);
  x = v223.origin.x;
  y = v223.origin.y;
  width = v223.size.width;
  height = v223.size.height;
  v60 = [NTKGalleonGPSRingView alloc];
  v64 = objc_msgSend_device(self, v61, v62, v63);
  v67 = objc_msgSend_initWithFrame_device_(v60, v65, v64, v66, x, y, width, height);
  gpsRingView = self->_gpsRingView;
  self->_gpsRingView = v67;

  objc_msgSend_setPalette_(self->_gpsRingView, v69, v25, v70);
  v74 = objc_msgSend_contentView(self, v71, v72, v73);
  objc_msgSend_addSubview_(v74, v75, self->_gpsRingView, v76);

  objc_msgSend_ringThickness(self->_gpsRingView, v77, v78, v79);
  v81 = v80;
  v224.origin.x = x;
  v224.origin.y = y;
  v224.size.width = width;
  v224.size.height = height;
  v225 = CGRectInset(v224, v81, v81);
  v82 = v225.origin.x;
  v83 = v225.origin.y;
  v84 = v225.size.width;
  v85 = v225.size.height;
  self->_innerTapRadius = v31 - v225.origin.x;
  v86 = [NTKGalleonTimeRingView alloc];
  v90 = objc_msgSend_device(self, v87, v88, v89);
  v226.origin.x = v82;
  v226.origin.y = v83;
  v226.size.width = v84;
  v226.size.height = v85;
  v91 = CGRectGetWidth(v226);
  v94 = objc_msgSend_initWithDevice_diameter_(v86, v92, v90, v93, v91);
  timeRingView = self->_timeRingView;
  self->_timeRingView = v94;

  objc_msgSend_setPalette_(self->_timeRingView, v96, v25, v97);
  v101 = objc_msgSend_contentView(self, v98, v99, v100);
  objc_msgSend_addSubview_(v101, v102, self->_timeRingView, v103);

  v227.origin.x = v82;
  v227.origin.y = v83;
  v227.size.width = v84;
  v227.size.height = v85;
  MidX = CGRectGetMidX(v227);
  v105 = *(&v219 + 1);
  v106 = *&v220;
  v107 = MidX - *(&v219 + 1) * 0.5;
  v108 = v83 + *(&v220 + 1);
  v109 = [NTKGalleonPrerenderedHeadingView alloc];
  v113 = objc_msgSend_initWithFrame_(v109, v110, v111, v112, v107, v108, v105, v106);
  headingView = self->_headingView;
  self->_headingView = v113;

  v117 = objc_msgSend_normalComplicationDisplayWrapperForSlot_(self, v115, *MEMORY[0x277D2BEF8], v116);
  objc_msgSend_setHidden_(v117, v118, 1, v119);
  v123 = objc_msgSend_headingLabelColor(v25, v120, v121, v122);
  objc_msgSend_setTextColor_(self->_headingView, v124, v123, v125);
  v129 = objc_msgSend_contentView(self, v126, v127, v128);
  objc_msgSend_addSubview_(v129, v130, self->_headingView, v131);

  v228.origin.x = v82;
  v228.origin.y = v83;
  v228.size.width = v84;
  v228.size.height = v85;
  v132 = CGRectGetMidX(v228);
  v133 = v221;
  v134 = v132 - *&v221 * 0.5;
  v135 = [NTKGalleonSignalStrengthView alloc];
  v139 = objc_msgSend_initWithFrame_(v135, v136, v137, v138, v134, v83 + 31.0, v133);
  signalStrengthView = self->_signalStrengthView;
  self->_signalStrengthView = v139;

  objc_msgSend_setPalette_(self->_signalStrengthView, v141, v25, v142);
  v146 = objc_msgSend_contentView(self, v143, v144, v145);
  objc_msgSend_addSubview_(v146, v147, self->_signalStrengthView, v148);

  v150 = objc_msgSend_imageViewWithSymbolName_font_(NTKGalleonFaceView, v149, @"triangle.fill", self->_symbolFont);
  triangleView = self->_triangleView;
  self->_triangleView = v150;

  v152 = *(MEMORY[0x277CBF2C0] + 16);
  *&v216.a = *MEMORY[0x277CBF2C0];
  *&v216.c = v152;
  *&v216.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v217, &v216, 3.14159265);
  v153 = self->_triangleView;
  v216 = v217;
  objc_msgSend_setTransform_(v153, v154, &v216, v155);
  v156 = self->_triangleView;
  v160 = objc_msgSend_compassMarkerColor(v25, v157, v158, v159);
  objc_msgSend_setTintColor_(v156, v161, v160, v162);

  v166 = objc_msgSend_contentView(self, v163, v164, v165);
  objc_msgSend_addSubview_(v166, v167, self->_triangleView, v168);

  v169 = objc_alloc(MEMORY[0x277D2C0E0]);
  objc_msgSend_bounds(self, v170, v171, v172);
  v174 = v173;
  v176 = v175;
  v178 = v177;
  v180 = v179;
  v184 = objc_msgSend_device(self, v181, v182, v183);
  v187 = objc_msgSend_initWithFrame_forDeviceCornerRadius_(v169, v185, v184, v186, v174, v176, v178, v180);
  cornerView = self->_cornerView;
  self->_cornerView = v187;

  v192 = objc_msgSend_contentView(self, v189, v190, v191);
  objc_msgSend_addSubview_(v192, v193, self->_cornerView, v194);

  objc_msgSend__applyDefaultViewOrdering(self, v195, v196, v197);
  objc_msgSend_applyColorOnAnalogHands(self, v198, v199, v200);
  objc_msgSend__applyConfiguration(self, v201, v202, v203);
  objc_msgSend_setIncline_(self->_gpsRingView, v204, v205, v206, 45.0);
  objc_msgSend_setAltitude_(self->_gpsRingView, v207, v208, v209, 4420.0);
  objc_msgSend_setLatency_(self->_gpsRingView, v210, v211, v212, 0.0);
  objc_msgSend__alignCenterSignalStrengthView(self, v213, v214, v215);
}

- (void)_applyDefaultViewOrdering
{
  objc_msgSend_removeFromSuperview(self->_cornerComplicationContainerView, a2, v2, v3);
  v8 = objc_msgSend_superview(self->_backgroundView, v5, v6, v7);
  v12 = objc_msgSend_contentView(self, v9, v10, v11);

  if (v8 == v12)
  {
    v19 = objc_msgSend_contentView(self, v13, v14, v15);
    objc_msgSend_insertSubview_belowSubview_(v19, v20, self->_cornerComplicationContainerView, self->_signalStrengthView);
  }

  else
  {
    objc_msgSend_addSubview_(self, v13, self->_cornerComplicationContainerView, v15);
  }

  objc_msgSend_removeFromSuperview(self->_subdialComplicationContainerView, v16, v17, v18);
  v24 = objc_msgSend_superview(self->_signalStrengthView, v21, v22, v23);
  v28 = objc_msgSend_contentView(self, v25, v26, v27);

  if (v24 == v28)
  {
    v34 = objc_msgSend_contentView(self, v29, v30, v31);
    objc_msgSend_insertSubview_belowSubview_(v34, v33, self->_subdialComplicationContainerView, self->_signalStrengthView);
  }

  else
  {
    subdialComplicationContainerView = self->_subdialComplicationContainerView;

    objc_msgSend_addSubview_(self, v29, subdialComplicationContainerView, v31);
  }
}

- (void)_applyShowsCanonicalContent
{
  v17.receiver = self;
  v17.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v17 _applyShowsCanonicalContent];
  if (objc_msgSend_showsCanonicalContent(self, v3, v4, v5))
  {
    v9 = objc_msgSend_device(self, v6, v7, v8);
    isExplorer = objc_msgSend_isExplorer(v9, v10, v11, v12);

    if (isExplorer)
    {
      objc_msgSend__applyFullSignalStrengthForSnapshot(self, v14, v15, v16);
    }
  }
}

- (void)_applyFullSignalStrengthForSnapshot
{
  objc_msgSend_setHidden_(self->_signalStrengthView, a2, 0, v2);
  objc_msgSend_setState_(self->_signalStrengthView, v4, 1, v5);
  objc_msgSend_setShowsFullSignalStrength_(self->_signalStrengthView, v6, 1, v7);

  objc_msgSend__alignCenterSignalStrengthView(self, v8, v9, v10);
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = NTKGalleonFaceView;
  [(NTKAnalogFaceView *)&v40 layoutSubviews];
  memset(v39, 0, sizeof(v39));
  v6 = objc_msgSend_device(self, v3, v4, v5);
  sub_23BE9F174(v6, v39);

  v10 = objc_msgSend_bounds(self, v7, v8, v9);
  v11 = MEMORY[0x23EEC04E0](v10);
  v13 = v12;
  objc_msgSend_setCenter_(self->_timeRingView, v14, v15, v16);
  objc_msgSend_setCenter_(self->_compassRingView, v17, v18, v19, v11, v13);
  objc_msgSend_setCenter_(self->_gpsRingView, v20, v21, v22, v11, v13);
  v23 = v13 - *&v39[0].receiver * 0.5;
  objc_msgSend_frame(self->_triangleView, v24, v25, v26);
  objc_msgSend_setFrame_(self->_triangleView, v29, v30, v31, v11 - v27 * 0.5, v23 - *&v39[0].super_class - v28);
  cornerView = self->_cornerView;
  objc_msgSend_bounds(self, v33, v34, v35);
  objc_msgSend_ntk_setBoundsAndPositionFromFrame_(cornerView, v36, v37, v38);
}

- (void)_removeViews
{
  objc_msgSend_removeFromSuperview(self->_triangleView, a2, v2, v3);
  triangleView = self->_triangleView;
  self->_triangleView = 0;

  objc_msgSend_removeFromSuperview(self->_timeRingView, v6, v7, v8);
  timeRingView = self->_timeRingView;
  self->_timeRingView = 0;

  objc_msgSend_removeFromSuperview(self->_compassRingView, v10, v11, v12);
  compassRingView = self->_compassRingView;
  self->_compassRingView = 0;

  objc_msgSend_removeFromSuperview(self->_gpsRingView, v14, v15, v16);
  gpsRingView = self->_gpsRingView;
  self->_gpsRingView = 0;

  objc_msgSend_removeFromSuperview(self->_headingView, v18, v19, v20);
  headingView = self->_headingView;
  self->_headingView = 0;

  objc_msgSend_removeFromSuperview(self->_signalStrengthView, v22, v23, v24);
  signalStrengthView = self->_signalStrengthView;
  self->_signalStrengthView = 0;

  objc_msgSend_removeFromSuperview(self->_cornerView, v26, v27, v28);
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_loadLayoutRules
{
  v8.receiver = self;
  v8.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v8 _loadLayoutRules];
  memset(v7, 0, sizeof(v7));
  v6 = objc_msgSend_device(self, v3, v4, v5);
  sub_23BE9F174(v6, v7);

  NTKEnumerateComplicationStates();
}

- (void)applyColorOnAnalogHands
{
  v11 = objc_msgSend_timeView(self, a2, v2, v3);
  v8 = objc_msgSend__multiPalette(self, v5, v6, v7);
  objc_msgSend_setPalette_(v11, v9, v8, v10);
}

- (void)setDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v7 setDelegate:a3];
  self->_compassMode = objc_msgSend__loadCompassModeFromCustomData(self, v4, v5, v6);
}

- (BOOL)_loadCompassModeFromCustomData
{
  v8 = objc_msgSend_delegate(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_delegate(self, v5, v6, v7);
    v12 = objc_msgSend_faceViewDidRequestCustomDataForKey_(v9, v10, @"compassMode", v11);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_msgSend_BOOLValue(v12, v13, v14, v15);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_applyTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5
{
  v8 = objc_msgSend__effectiveCompassRingModeForTimeMode_compassMode_bezelStyle_(self, a2, a3, a4);
  v10 = objc_msgSend__effectiveBezelStyleForCompassMode_bezelStyle_(self, v9, a4, a5);

  MEMORY[0x2821F9670](self, sel__applyCompassRingMode_bezelStyle_, v8, v10);
}

- (void)_applyTransitionFromTimeMode:(unint64_t)a3 fromCompassMode:(unint64_t)a4 fromBezelStyle:(unint64_t)a5 fromNightMode:(unint64_t)a6 toTimeMode:(unint64_t)a7 toCompassMode:(unint64_t)a8 toBezelStyle:(unint64_t)a9 toNightMode:(unint64_t)a10 animationStyle:(unint64_t)a11 fraction:(double)a12
{
  v17 = objc_msgSend__effectiveCompassRingModeForTimeMode_compassMode_bezelStyle_(self, a2, a3, a4);
  v19 = objc_msgSend__effectiveBezelStyleForCompassMode_bezelStyle_(self, v18, a4, a5);
  objc_msgSend__effectiveCompassRingModeForTimeMode_compassMode_bezelStyle_(self, v20, a7, a8, a9);
  objc_msgSend__effectiveBezelStyleForCompassMode_bezelStyle_(self, v21, a8, a9);

  MEMORY[0x2821F9670](self, sel__applyTransitionFromCompassRingMode_fromBezelStyle_fromNightMode_toCompassRingMode_toBezelStyle_toNightMode_animationStyle_fraction_, v17, v19);
}

- (void)_applyCompassRingMode:(unint64_t)a3 bezelStyle:(unint64_t)a4
{
  objc_msgSend_setRingMode_(self->_compassRingView, a2, a3, a4);
  compassRingView = self->_compassRingView;
  v11 = 1.0;
  if (a4 == 2)
  {
    objc_msgSend_applyGPSRingEnableFraction_(compassRingView, v7, v8, v9, 0.0);
  }

  else
  {
    objc_msgSend_applyGPSRingEnableFraction_(compassRingView, v7, v8, v9, 1.0);
  }

  v15 = self->_compassRingView;
  objc_msgSend_getRingDiameter(self->_gpsRingView, v12, v13, v14);
  objc_msgSend_setGPSRingDiameter_(v15, v16, v17, v18);
  gpsRingView = self->_gpsRingView;
  v23 = objc_msgSend_idealizedLocation(self, v20, v21, v22);
  objc_msgSend_locationUpdated_(gpsRingView, v24, v23, v25);

  objc_msgSend_setBezelStyle_(self->_gpsRingView, v26, a4, v27);
  if (a3 != 2)
  {
    v11 = 0.0;
  }

  objc_msgSend__applyHeadingLabelVisible_(self, v28, a3 == 2, v29);
  v38 = objc_msgSend_timeView(self, v30, v31, v32);
  objc_msgSend_setCompassMode_(v38, v33, a3 == 2, v34);
  self->_compassFraction = v11;
  objc_msgSend__applyMultiPaletteFractions(self, v35, v36, v37);
}

- (void)_applyTransitionFromCompassRingMode:(unint64_t)a3 fromBezelStyle:(unint64_t)a4 fromNightMode:(unint64_t)a5 toCompassRingMode:(unint64_t)a6 toBezelStyle:(unint64_t)a7 toNightMode:(unint64_t)a8 animationStyle:(unint64_t)a9 fraction:(double)a10
{
  if (a9 >= 3)
  {
    v19 = a10;
    if (a9 == 3)
    {
      v20 = fmin(fmax((fmin(fmax((a10 + -0.05) / 0.85, 0.0), 1.0) + -0.33) / 0.34, 0.0), 1.0);
      if (a3 == 2)
      {
        v19 = 1.0 - v20;
      }

      else
      {
        v19 = v20;
      }
    }
  }

  else
  {
    CLKInterpolateBetweenFloatsClipped();
    v19 = v18;
  }

  if (a3 != a6)
  {
    objc_msgSend_applyRingModeTransitionFraction_fromMode_toMode_withAnimationStyle_(self->_compassRingView, a2, a3, a6, a9, a10);
  }

  if (a4 != a7)
  {
    CLKInterpolateBetweenFloatsClipped();
    if (a9 != 1)
    {
      objc_msgSend_applyGPSRingEnableFraction_(self->_compassRingView, v21, v22, v23);
    }

    compassRingView = self->_compassRingView;
    objc_msgSend_getRingDiameter(self->_gpsRingView, v21, v22, v23);
    objc_msgSend_setGPSRingDiameter_(compassRingView, v25, v26, v27);
    objc_msgSend_applyTransitionFraction_fromBezelStyle_toBezelStyle_(self->_gpsRingView, v28, a4, a7, a10);
  }

  if (a3 == a6)
  {
    if (a5 == a8)
    {
      return;
    }
  }

  else
  {
    objc_msgSend__applyHeadingLabelCompassFraction_(self, a2, a3, a4, v19);
    v32 = objc_msgSend_timeView(self, v29, v30, v31);
    v35 = v32;
    if (a3 == 2 && a6 != 2 || a3 != 2 && a6 == 2)
    {
      objc_msgSend_applyTransitionFractionToCompassMode_fraction_(v32, v33, a6 == 2, v34, a10);
    }
  }

  if (a5 != a8)
  {
    v36 = 1.0 - a10;
    if (a8 == 1)
    {
      v36 = a10;
    }

    self->_nightModeFraction = v36;
  }

  if (a3 != a6)
  {
    v37 = 1.0 - a10;
    if (self->_compassMode == 1)
    {
      v37 = a10;
    }

    self->_compassFraction = v37;
  }

  objc_msgSend__applyMultiPaletteFractions(self, a2, a3, a4);
}

- (unint64_t)_effectiveCompassRingModeForTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5
{
  objc_msgSend_toEditMode(self, a2, a3, a4);

  return MEMORY[0x2821F9670](self, sel__effectiveCompassRingModeForTimeMode_compassMode_bezelStyle_editMode_, a3, a4);
}

- (unint64_t)_effectiveCompassRingModeForTimeMode:(unint64_t)a3 compassMode:(unint64_t)a4 bezelStyle:(unint64_t)a5 editMode:(int64_t)a6
{
  if ((a6 - 10) < 2)
  {
    return a3 != 0;
  }

  if (a6 == 12)
  {
    return 2;
  }

  if (a6 == 1)
  {
    return a3 != 0;
  }

  if (a4 == 1)
  {
    return 2;
  }

  else
  {
    return a3 != 0;
  }
}

- (unint64_t)_effectiveBezelStyleForCompassMode:(unint64_t)a3 bezelStyle:(unint64_t)a4
{
  objc_msgSend_toEditMode(self, a2, a3, a4);

  return MEMORY[0x2821F9670](self, sel__effectiveBezelStyleForCompassMode_bezelStyle_editMode_, a3, a4);
}

- (unint64_t)_effectiveBezelStyleForCompassMode:(unint64_t)a3 bezelStyle:(unint64_t)a4 editMode:(int64_t)a5
{
  v5 = 2;
  if (a3 == 1)
  {
    v5 = a4;
  }

  if (a5 == 12)
  {
    v5 = a4;
  }

  if ((a5 - 10) < 2 || a5 == 1)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3
{
  result = 0;
  if (a3 != 1 && a3 != 10)
  {
    return objc_msgSend__nightModeActive(self, a2, a3, v3);
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v34 = a3;
  v11 = a5;
  if (a4 > 11)
  {
    if (a4 == 18)
    {
      v31 = objc_msgSend_nightMode(v34, v8, v9, v10);
      objc_msgSend_setNightMode_(self, v32, v31, v33);
    }

    else if (a4 == 12)
    {
      v15 = objc_msgSend_bezelStyle(v34, v8, v9, v10);
      objc_msgSend_setBezelStyle_(self, v16, v15, v17);
    }
  }

  else if (a4 == 10)
  {
    lowPowerTemplate = self->_lowPowerTemplate;
    self->_lowPowerTemplate = 0;

    nightModeTemplate = self->_nightModeTemplate;
    self->_nightModeTemplate = 0;

    multiPalette = self->_multiPalette;
    self->_multiPalette = 0;

    objc_msgSend__updateViewColorsWithMultiPalette(self, v21, v22, v23);
    v27 = objc_msgSend_delegate(self, v24, v25, v26);
    objc_msgSend_faceViewDidChangeWantsStatusBarIconShadow(v27, v28, v29, v30);
  }

  else if (a4 == 11)
  {
    v12 = objc_msgSend_timeMode(v34, v8, v9, v10);
    objc_msgSend_setTimeMode_(self, v13, v12, v14);
  }
}

+ (id)imageViewWithSymbolName:(id)a3 font:(id)a4
{
  v5 = MEMORY[0x277D755D0];
  v6 = a3;
  v9 = objc_msgSend_configurationWithFont_(v5, v7, a4, v8);
  v11 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v10, v6, v9);

  v14 = objc_msgSend_imageWithRenderingMode_(v11, v12, 2, v13);

  v15 = objc_alloc(MEMORY[0x277D755E8]);
  v18 = objc_msgSend_initWithImage_(v15, v16, v14, v17);

  return v18;
}

- (void)setNightMode:(unint64_t)a3
{
  self->_nightMode = a3;
  v5 = 0.0;
  if (a3 == 1)
  {
    v5 = 1.0;
  }

  self->_nightModeFraction = v5;
  objc_msgSend__applyMultiPaletteFractions(self, a2, a3, v3);
  v12 = objc_msgSend_delegate(self, v6, v7, v8);
  objc_msgSend_faceViewDidChangeWantsStatusBarIconShadow(v12, v9, v10, v11);
}

- (double)_horizontalPaddingForStatusBar
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = objc_msgSend_device(self, a2, v2, v3, 0, 0, 0, 0, 0);
  sub_23BE9F174(v4, &v6);

  return *(&v7 + 1);
}

- (double)_verticalPaddingForStatusBar
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v4 = objc_msgSend_device(self, a2, v2, v3, 0, 0, 0, 0, 0, 0);
  sub_23BE9F174(v4, &v6);

  return *&v7;
}

- (BOOL)_wantsStatusBarIconShadow
{
  v4 = objc_msgSend__multiPalette(self, a2, v2, v3);
  v8 = objc_msgSend_isFullScreen(v4, v5, v6, v7);
  objc_msgSend_floatValue(v8, v9, v10, v11);
  v13 = v12 > 0.0;

  return v13;
}

- (void)_alignCenterSignalStrengthView
{
  v5 = objc_msgSend_complicationFactory(self, a2, v2, v3);
  v8 = objc_msgSend_factoryAtSlot_(v5, v6, *MEMORY[0x277D2BEF8], v7);
  isHidden = objc_msgSend_isHidden(self->_signalStrengthView, v9, v10, v11);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  v16 = objc_msgSend_device(self, v13, v14, v15);
  sub_23BE9F174(v16, v38);

  v20 = *&v41 * 0.5;
  if (isHidden)
  {
    v21 = *(&v39 + 1);
  }

  else
  {
    v21 = *(&v39 + 1) - *&v41 * 0.5;
  }

  objc_msgSend_verticalCenterOffset(v8, v17, v18, v19);
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    objc_msgSend_setVerticalCenterOffset_(v8, v22, v23, v24, v21);
    objc_msgSend__loadLayoutRules(self, v25, v26, v27);
    objc_msgSend_layoutComplicationViews(self, v28, v29, v30);
  }

  if (isHidden)
  {
    CGAffineTransformMakeTranslation(&v34, 0.0, v20);
    headingView = self->_headingView;
    v35 = *&v34.a;
    v36 = *&v34.c;
    v32 = *&v34.tx;
  }

  else
  {
    headingView = self->_headingView;
    v33 = *(MEMORY[0x277CBF2C0] + 16);
    v35 = *MEMORY[0x277CBF2C0];
    v36 = v33;
    v32 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v37 = v32;
  objc_msgSend_setTransform_(headingView, v22, &v35, v24);
}

- (void)_applyHeadingLabelConfiguration
{
  v4 = objc_msgSend__effectiveCompassRingModeForTimeMode_compassMode_bezelStyle_(self, a2, self->_timeMode, self->_compassMode, self->_bezelStyle) == 2;

  objc_msgSend__applyHeadingLabelVisible_(self, v3, v4, v5);
}

- (void)_applyHeadingLabelVisible:(BOOL)a3
{
  v4 = a3;
  objc_msgSend_setHidden_(self->_headingView, a2, !a3, v3);
  if (v4)
  {
    objc_msgSend_setAlpha_(self->_headingView, v6, v7, v8, 1.0);
  }

  else
  {
    objc_msgSend_setAlpha_(self->_headingView, v6, v7, v8, 0.0);
  }

  v13 = objc_msgSend_normalComplicationDisplayWrapperForSlot_(self, v9, *MEMORY[0x277D2BEF8], v10);
  objc_msgSend_setHidden_(v13, v11, v4, v12);
}

- (void)_applyHeadingLabelCompassFraction:(double)a3
{
  v4 = a3 + -0.5 + a3 + -0.5;
  CLKInterpolateBetweenFloatsClipped();
  v6 = v5;
  objc_msgSend_setHidden_(self->_headingView, v7, v4 == 0.0, v8);
  objc_msgSend_setAlpha_(self->_headingView, v9, v10, v11, v4);
  v14 = objc_msgSend_normalComplicationDisplayWrapperForSlot_(self, v12, *MEMORY[0x277D2BEF8], v13);
  if (v14)
  {
    v24 = v14;
    objc_msgSend_setHidden_(v14, v15, fabs(v6) < 0.00000011920929, v16);
    v20 = objc_msgSend_display(v24, v17, v18, v19);
    objc_msgSend_setAlpha_(v20, v21, v22, v23, v6);

    v14 = v24;
  }
}

- (void)configureComplicationViewDisplayWrapper:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = NTKGalleonFaceView;
  v7 = a4;
  [(NTKGalleonFaceView *)&v18 configureComplicationViewDisplayWrapper:v6 forSlot:v7];
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277D2BEF8], v9, v18.receiver, v18.super_class);

  if (isEqualToString)
  {
    headingView = self->_headingView;
    if (headingView)
    {
      v15 = objc_msgSend_isHidden(headingView, v11, v12, v13) ^ 1;
      objc_msgSend_setHidden_(v6, v16, v15, v17);
    }

    else
    {
      objc_msgSend_setHidden_(v6, v11, 1, v13);
    }
  }
}

- (id)idealizedLocation
{
  v2 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_GPS_RING_LAT_DEFAULT", @"default latitude");
  objc_msgSend_doubleValue(v2, v3, v4, v5);
  v7 = v6;
  v9 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v8, @"GALLEON_GPS_RING_LONG_DEFAULT", @"default longitude");
  objc_msgSend_doubleValue(v9, v10, v11, v12);
  v14 = v13;
  v15 = objc_alloc(MEMORY[0x277CE41F8]);
  v19 = objc_msgSend_initWithLatitude_longitude_(v15, v16, v17, v18, v7, v14);

  return v19;
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v35 = a4;
  v12 = a5;
  v16 = a7;
  if (a6 > 11)
  {
    if (a6 == 18)
    {
      v29 = objc_msgSend_nightMode(v35, v13, v14, v15);
      v33 = objc_msgSend_nightMode(v12, v30, v31, v32);
      objc_msgSend__applyTransitionFraction_fromNightMode_toNightMode_(self, v34, v29, v33, a3);
    }

    else if (a6 == 12)
    {
      v23 = objc_msgSend_bezelStyle(v35, v13, v14, v15);
      v27 = objc_msgSend_bezelStyle(v12, v24, v25, v26);
      objc_msgSend__applyTransitionFraction_fromBezelStyle_toBezelStyle_(self, v28, v23, v27, a3);
    }
  }

  else if (a6 == 10)
  {
    objc_msgSend__applyTransitionFraction_fromColor_toColor_(self, v13, v35, v12, a3);
  }

  else if (a6 == 11)
  {
    v17 = objc_msgSend_timeMode(v35, v13, v14, v15);
    v21 = objc_msgSend_timeMode(v12, v18, v19, v20);
    objc_msgSend__applyTransitionFraction_fromTimeMode_toTimeMode_(self, v22, v17, v21, a3);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromBezelStyle:(unint64_t)a4 toBezelStyle:(unint64_t)a5
{
  if (a3 != 0.0 || a4 != a5)
  {
    objc_msgSend__applyTransitionFromTimeMode_fromCompassMode_fromBezelStyle_fromNightMode_toTimeMode_toCompassMode_toBezelStyle_toNightMode_animationStyle_fraction_(self, a2, self->_timeMode, self->_compassMode, a4, a5, self->_nightMode, 0);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromTimeMode:(unint64_t)a4 toTimeMode:(unint64_t)a5
{
  if (a3 != 0.0 || a4 != a5)
  {
    compassMode = self->_compassMode;
    bezelStyle = self->_bezelStyle;
    if (self->_timeMode == a5)
    {
      objc_msgSend__applyTransitionFromTimeMode_fromCompassMode_fromBezelStyle_fromNightMode_toTimeMode_toCompassMode_toBezelStyle_toNightMode_animationStyle_fraction_(self, a2, a5, compassMode, 1.0 - a3, bezelStyle, self->_nightMode, 2);
    }

    else
    {
      objc_msgSend__applyTransitionFromTimeMode_fromCompassMode_fromBezelStyle_fromNightMode_toTimeMode_toCompassMode_toBezelStyle_toNightMode_animationStyle_fraction_(self, a2, a4, compassMode, a3, bezelStyle, self->_nightMode, 2);
    }
  }
}

- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5
{
  if (a4 != 2 && a5 != 2)
  {
    objc_msgSend__nightModeActiveFor_(self, a2, a4, a5);
    objc_msgSend__nightModeActiveFor_(self, v7, a5, v8);

    MEMORY[0x2821F9670](self, sel__applyNightModeFraction_, v9, v10);
  }
}

- (id)_lowPowerTemplate
{
  lowPowerTemplate = self->_lowPowerTemplate;
  if (!lowPowerTemplate)
  {
    v6 = objc_msgSend__createLowPowerTemplate(self, a2, v2, v3);
    v7 = self->_lowPowerTemplate;
    self->_lowPowerTemplate = v6;

    lowPowerTemplate = self->_lowPowerTemplate;
  }

  return lowPowerTemplate;
}

- (void)_applyLowPowerModeFraction:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_23BE91000, v5, OS_LOG_TYPE_DEFAULT, "LowPowerMonitor updating multi-palette with low power fraction %f", &v9, 0xCu);
  }

  self->_lowPowerFraction = a3;
  if (a3 == 0.0 || a3 == 1.0)
  {
    objc_msgSend__updateAveragePixelLuminance(self, v6, v7, v8);
  }

  objc_msgSend__applyMultiPaletteFractions(self, v6, v7, v8);
}

- (void)_applyMultiPaletteFractions
{
  v33[5] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v2, v3, self->_tritiumFraction);
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, self->_compassFraction, v5);
  v33[1] = v9;
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, v12, self->_nightModeFraction);
  v33[2] = v13;
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v14, v15, v16, self->_lowPowerFraction);
  v33[3] = v17;
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v19, v20, self->_editingComplicationsFraction);
  v33[4] = v21;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v33, 5);

  v27 = objc_msgSend__multiPalette(self, v24, v25, v26);
  objc_msgSend_setTransitionFractions_(v27, v28, v23, v29);

  objc_msgSend__updateViewColorsWithMultiPalette(self, v30, v31, v32);
}

- (void)_updateStatusBar
{
  if (fabs(self->_nightModeFraction) >= 0.00000011920929)
  {
    v5 = objc_msgSend__statusBarColorForNightModeFraction_(self, a2, v2, v3);
  }

  else
  {
    v5 = 0;
  }

  statusBarOverrideColor = self->_statusBarOverrideColor;
  self->_statusBarOverrideColor = v5;

  v12 = objc_msgSend_delegate(self, v7, v8, v9);
  objc_msgSend_faceViewDidChangeStatusBarOverrideColor_(v12, v10, fmin(fabs(self->_nightModeFraction), fabs(self->_nightModeFraction + -1.0)) < 0.00000011920929, v11);
}

- (id)_nightModeTemplate
{
  nightModeTemplate = self->_nightModeTemplate;
  if (!nightModeTemplate)
  {
    v6 = objc_msgSend_colorPalette(self, a2, v2, v3);
    v10 = objc_msgSend_copy(v6, v7, v8, v9);
    v11 = self->_nightModeTemplate;
    self->_nightModeTemplate = v10;

    objc_msgSend_setNightMode_(self->_nightModeTemplate, v12, 1, v13);
    nightModeTemplate = self->_nightModeTemplate;
  }

  return nightModeTemplate;
}

- (void)_applyNightModeFraction:(double)a3
{
  self->_nightModeFraction = a3;
  if (a3 == 0.0 || a3 == 1.0)
  {
    objc_msgSend__updateAveragePixelLuminance(self, a2, v3, v4);
  }

  objc_msgSend__applyMultiPaletteFractions(self, a2, v3, v4);
}

- (id)_statusBarColorForNightModeFraction:(double)a3
{
  v7 = objc_msgSend_blackColor(MEMORY[0x277D75348], a2, v3, v4);
  v11 = v7;
  if (a3 >= 0.5)
  {
    v13 = objc_msgSend_colorPalette(self, v8, v9, v10);
    v17 = objc_msgSend_statusBar_night(v13, v14, v15, v16);
    v12 = MEMORY[0x23EEC05A0](v11, v17, a3 + -0.5 + a3 + -0.5);
  }

  else
  {
    v12 = objc_msgSend_colorWithAlphaComponent_(v7, v8, v9, v10, a3 + a3);
  }

  return v12;
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v8 = objc_msgSend_interpolatedColorPalette(self, a2, a4, a5, a3);
  objc_msgSend__updateViewColorsWithPalette_(self, v6, v8, v7);
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v11.receiver = self;
  v11.super_class = NTKGalleonFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKGalleonFaceView *)&v11 _configureComplicationView:v7 forSlot:v6];
  objc_msgSend__applyComplicationFont_(self, v8, v7, v9, v11.receiver, v11.super_class);
  objc_msgSend__applyComplicationColor_slot_(self, v10, v7, v6);
}

- (void)_updateViewColorsWithMultiPalette
{
  v7 = objc_msgSend__multiPalette(self, a2, v2, v3);
  objc_msgSend__updateViewColorsWithPalette_(self, v5, v7, v6);
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v71 = a3;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v4, v5, v6);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v7, 1, v8);
  objc_msgSend__applyPaletteToComplications_(self, v9, v71, v10);
  v14 = objc_msgSend_layer(self->_backgroundView, v11, v12, v13);
  v18 = objc_msgSend_backgroundColor(v71, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_CGColor(v19, v20, v21, v22);
  objc_msgSend_setBackgroundColor_(v14, v24, v23, v25);

  if (!self->_simplifiedTransitions)
  {
    v29 = objc_msgSend_layer(self->_compassRingView, v26, v27, v28);
    v33 = objc_msgSend_outerShadow(v71, v30, v31, v32);
    v34 = v33;
    v38 = objc_msgSend_CGColor(v34, v35, v36, v37);
    objc_msgSend_setShadowColor_(v29, v39, v38, v40);
  }

  v41 = objc_msgSend_timeView(self, v26, v27, v28);
  objc_msgSend_setPalette_(v41, v42, v71, v43);
  objc_msgSend_setPalette_(self->_timeRingView, v44, v71, v45);
  objc_msgSend_setPalette_(self->_gpsRingView, v46, v71, v47);
  objc_msgSend_setPalette_(self->_compassRingView, v48, v71, v49);
  v53 = objc_msgSend_headingLabelColor(v71, v50, v51, v52);
  objc_msgSend_setTextColor_(self->_headingView, v54, v53, v55);
  objc_msgSend_setPalette_(self->_signalStrengthView, v56, v71, v57);
  triangleView = self->_triangleView;
  v62 = objc_msgSend_compassMarkerColor(v71, v59, v60, v61);
  objc_msgSend_setTintColor_(triangleView, v63, v62, v64);

  objc_msgSend__updateStatusBar(self, v65, v66, v67);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v68, v69, v70);
}

- (void)_applyPaletteToComplications:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BE9D704;
  v8[3] = &unk_278B9EEF8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v6, v8, v7);
}

- (void)_applyComplicationColor:(id)a3 slot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_msgSend__multiPalette(self, v8, v9, v10);
  objc_msgSend__applyComplicationColor_withPalette_slot_(self, v11, v7, v12, v6);
}

- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5
{
  v104 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_display(v104, v10, v11, v12);
    objc_msgSend__applyComplicationColor_withPalette_slot_(self, v14, v13, v8, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cornerFilterProvider = self->_cornerFilterProvider;
      v19 = objc_msgSend_secondaryCornerComplicationColor(v8, v15, v16, v17);
      objc_msgSend_setAccentColor_(cornerFilterProvider, v20, v19, v21);

      v22 = self->_cornerFilterProvider;
      v26 = objc_msgSend_primaryCornerComplicationColor(v8, v23, v24, v25);
      objc_msgSend_setNonAccentColor_(v22, v27, v26, v28);

      v29 = self->_cornerFilterProvider;
      v33 = objc_msgSend_backgroundColor(v8, v30, v31, v32);
      objc_msgSend_setBackgroundColor_(v29, v34, v33, v35);

      centerFilterProvider = self->_centerFilterProvider;
      v40 = objc_msgSend_secondaryComplicationColor(v8, v37, v38, v39);
      objc_msgSend_setAccentColor_(centerFilterProvider, v41, v40, v42);

      v43 = self->_centerFilterProvider;
      v47 = objc_msgSend_primaryComplicationColor(v8, v44, v45, v46);
      objc_msgSend_setNonAccentColor_(v43, v48, v47, v49);

      v13 = v104;
      if (objc_msgSend_conformsToProtocol_(v13, v50, &unk_284ECABC8, v51))
      {
        nightModeFraction = self->_nightModeFraction;
        v56 = fmin(nightModeFraction / 0.4, 1.0);
        v57 = fmax(nightModeFraction + -0.4, 0.0) / 0.6;
        nightModeWorldClockDaytimePlatterColor = self->_nightModeWorldClockDaytimePlatterColor;
        v59 = MEMORY[0x277D75348];
        v60 = nightModeWorldClockDaytimePlatterColor;
        v61 = v13;
        v65 = objc_msgSend_clearColor(v59, v62, v63, v64);
        v66 = MEMORY[0x23EEC05A0](v65, v60, v57);

        objc_msgSend_setTintedFraction_(v61, v67, v68, v69, v56);
        objc_msgSend_setTintedPlatterColor_(v61, v70, v66, v71);
      }

      v72 = objc_msgSend_isFullColor(v8, v52, v53, v54);
      objc_msgSend_floatValue(v72, v73, v74, v75);
      v79 = objc_msgSend_isNightMode(v8, v76, v77, v78);
      objc_msgSend_floatValue(v79, v80, v81, v82);
      CLKInterpolateBetweenFloatsClipped();
      v84 = 1.0 - v83;

      if (v84 == 1.0)
      {
        objc_msgSend_updateMonochromeColor(v13, v85, v86, v87);
      }

      else
      {
        objc_msgSend_transitionToMonochromeWithFraction_(v13, v85, v86, v87, v84);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = v104;
        v13 = objc_msgSend_simpleTextComplicationColor(v8, v89, v90, v91);
        v95 = objc_msgSend_label(v88, v92, v93, v94);

        objc_msgSend_setTextColor_(v95, v96, v13, v97);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        v98 = v104;
        v13 = objc_msgSend_simpleTextComplicationColor(v8, v99, v100, v101);
        objc_msgSend_setTextColor_(v98, v102, v13, v103);
      }
    }
  }

LABEL_14:
}

- (void)_applyComplicationFont:(id)a3
{
  v32 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_display(v32, v4, v5, v6);
    objc_msgSend__applyComplicationFont_(self, v8, v7, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setFontStyle_(v32, v10, 2, v11);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v32;
        v16 = objc_msgSend_device(self, v13, v14, v15);
        sub_23BE9F174(v16, v33);
        v17 = v34;

        v18 = MEMORY[0x277CBBB08];
        v22 = objc_msgSend__galleonSimpleComplicationFontDescriptor(NTKGalleonFaceView, v19, v20, v21);
        v25 = objc_msgSend_fontWithDescriptor_size_(v18, v23, v22, v24, v17);
        v29 = objc_msgSend_CLKFontWithAlternativePunctuation(v25, v26, v27, v28);
        objc_msgSend_setFont_(v12, v30, v29, v31);
      }
    }
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v73.receiver = self;
  v73.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v73 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  objc_msgSend__transformForBreathingFraction_(self, v8, v9, v10, a3);
  if ((a4 - 11) > 1)
  {
    v37 = objc_msgSend_contentView(self, v11, v12, v13);
    v67 = v70;
    v68 = v71;
    v69 = v72;
    objc_msgSend_setTransform_(v37, v38, &v67, v39);

    v43 = objc_msgSend_complicationContainerView(self, v40, v41, v42);
    v67 = v70;
    v68 = v71;
    v69 = v72;
    objc_msgSend_setTransform_(v43, v44, &v67, v45);

    compassRingView = self->_compassRingView;
    v64 = *(MEMORY[0x277CBF2C0] + 16);
    v67 = *MEMORY[0x277CBF2C0];
    v66 = v67;
    v68 = v64;
    v69 = *(MEMORY[0x277CBF2C0] + 32);
    v62 = v69;
    objc_msgSend_setTransform_(compassRingView, v47, &v67, v48);
    gpsRingView = self->_gpsRingView;
    v67 = v66;
    v68 = v64;
    v69 = v62;
    objc_msgSend_setTransform_(gpsRingView, v50, &v67, v51);
    timeRingView = self->_timeRingView;
    v67 = v66;
    v68 = v64;
    v69 = v62;
    objc_msgSend_setTransform_(timeRingView, v53, &v67, v54);
    headingView = self->_headingView;
    v67 = v66;
    v68 = v64;
    v69 = v62;
    objc_msgSend_setTransform_(headingView, v56, &v67, v57);
  }

  else
  {
    v14 = self->_compassRingView;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    objc_msgSend_setTransform_(v14, v11, &v67, v13);
    v15 = self->_gpsRingView;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    objc_msgSend_setTransform_(v15, v16, &v67, v17);
    v18 = self->_timeRingView;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    objc_msgSend_setTransform_(v18, v19, &v67, v20);
    if (a4 == 12)
    {
      v24 = self->_headingView;
      v67 = v70;
      v68 = v71;
      v69 = v72;
      objc_msgSend_setTransform_(v24, v21, &v67, v23);
    }

    v25 = objc_msgSend_contentView(self, v21, v22, v23);
    v63 = *(MEMORY[0x277CBF2C0] + 16);
    v67 = *MEMORY[0x277CBF2C0];
    v65 = v67;
    v68 = v63;
    v69 = *(MEMORY[0x277CBF2C0] + 32);
    v61 = v69;
    objc_msgSend_setTransform_(v25, v26, &v67, v27);

    v31 = objc_msgSend_complicationContainerView(self, v28, v29, v30);
    v67 = v65;
    v68 = v63;
    v69 = v61;
    objc_msgSend_setTransform_(v31, v32, &v67, v33);
  }

  v58 = objc_msgSend_timeView(self, v34, v35, v36);
  v67 = v70;
  v68 = v71;
  v69 = v72;
  objc_msgSend_setTransform_(v58, v59, &v67, v60);
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKGalleonFaceView;
  [(NTKGalleonFaceView *)&v17 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    objc_msgSend__transformForRubberBandingFraction_(self, v8, v9, v10, a3);
    objc_msgSend_setTransform_(self, v11, &v16, v12);
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v13, v14, v15);
  }
}

- (CGAffineTransform)_transformForBreathingFraction:(SEL)a3
{
  NTKLargeElementScaleForBreathingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)a3
{
  NTKScaleForRubberBandingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &unk_284EA81F0;
  v5 = &unk_284EA81C0;
  if (a3 != 12)
  {
    v5 = 0;
  }

  if (a3 != 18)
  {
    v4 = v5;
  }

  if (a3 == 11)
  {
    return &unk_284EA81D8;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, &unk_284EA7D58, v11);
  v17 = objc_msgSend_objectForKeyedSubscript_(v9, v13, &unk_284EA7D40, v14);
  if (a4 == 18)
  {
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"Night-%@", v16, v8);
    v27 = 0;
    goto LABEL_8;
  }

  if (a4 != 12)
  {
    if (a4 != 11)
    {
      goto LABEL_6;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = v12;
    v20 = v8;
    v23 = objc_msgSend_stringWithFormat_(v18, v21, @"Density-%@-%@-%@", v22, v20, v17, v19);
    v27 = objc_msgSend_timeMode(v20, v24, v25, v26);

    v12 = v19;
LABEL_8:
    v38 = 2;
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_6:
    v117.receiver = self;
    v117.super_class = NTKGalleonFaceView;
    v39 = [(NTKGalleonFaceView *)&v117 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
    goto LABEL_16;
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = v12;
  v32 = v8;
  v23 = objc_msgSend_stringWithFormat_(v30, v33, @"Bezel-%@-%@-%@", v34, v32, v17, v31);
  v38 = objc_msgSend_bezelStyle(v32, v35, v36, v37);

  v12 = v31;
  v27 = 0;
  if (!v23)
  {
    goto LABEL_6;
  }

LABEL_9:
  v40 = qword_27E1DD8D0;
  if (!qword_27E1DD8D0)
  {
    v41 = objc_opt_new();
    v42 = qword_27E1DD8D0;
    qword_27E1DD8D0 = v41;

    v40 = qword_27E1DD8D0;
  }

  v39 = objc_msgSend_objectForKey_(v40, v28, v23, v29);
  if (!v39)
  {
    v116 = v12;
    v43 = [NTKGalleonFaceView alloc];
    v47 = objc_msgSend_device(self, v44, v45, v46);
    v49 = objc_msgSend_initWithFaceStyle_forDevice_clientIdentifier_(v43, v48, 44, v47, 0);

    objc_msgSend_frame(self, v50, v51, v52);
    objc_msgSend_setFrame_(v49, v53, v54, v55);
    objc_msgSend__loadSnapshotContentViews(v49, v56, v57, v58);
    objc_msgSend_setOption_forCustomEditMode_slot_(v49, v59, v8, a4, 0);
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_23BE9E4F0;
    v118[3] = &unk_278B9EF20;
    v120 = a4;
    v60 = v49;
    v119 = v60;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v61, v118, v62);
    objc_msgSend__applyTimeMode_compassMode_bezelStyle_(v60, v63, v27, a4 == 12, v38);
    if (a4 == 12)
    {
      objc_msgSend_setHeading_(v60[123], v64, v65, v66, 330.0);
      objc_msgSend_galleon_setHeading_(v60[124], v67, v68, v69, 330.0);
      v70 = v60[122];
      objc_msgSend_setIncline_(v70, v71, v72, v73, 45.0);
      objc_msgSend_setAltitude_(v70, v74, v75, v76, 4420.0);
      objc_msgSend_setLatency_(v70, v77, v78, v79, 0.0);
      v83 = objc_msgSend_idealizedLocation(self, v80, v81, v82);
      objc_msgSend_locationUpdated_(v70, v84, v83, v85);
    }

    v86 = objc_msgSend_blackColor(MEMORY[0x277D75348], v64, v65, v66);
    objc_msgSend_setBackgroundColor_(v60[110], v87, v86, v88);

    objc_msgSend_setHidden_(v60[125], v89, 1, v90);
    objc_msgSend_setShowsCanonicalContent_(v60, v91, 1, v92);
    v93 = NTKIdealizedDate();
    objc_msgSend_setOverrideDate_duration_(v60, v94, v93, v95, 0.0);

    objc_msgSend_frame(self, v96, v97, v98);
    objc_msgSend_setFrame_(v60, v99, v100, v101);
    objc_msgSend_bounds(v60, v102, v103, v104);
    v122.width = v105;
    v122.height = v106;
    UIGraphicsBeginImageContextWithOptions(v122, 0, 0.0);
    v110 = objc_msgSend_layer(v60, v107, v108, v109);
    CurrentContext = UIGraphicsGetCurrentContext();
    objc_msgSend_renderInContext_(v110, v112, CurrentContext, v113);

    v39 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    objc_msgSend_setObject_forKey_(qword_27E1DD8D0, v114, v39, v23);

    v12 = v116;
  }

LABEL_16:

  return v39;
}

- (id)createFaceColorPalette
{
  v3 = [NTKGalleonFaceColorPalette alloc];
  v4 = objc_opt_class();
  v7 = objc_msgSend_initWithFaceClass_(v3, v5, v4, v6);
  v11 = objc_msgSend_compassMode(self, v8, v9, v10);
  objc_msgSend_setCompassMode_(v7, v12, v11, v13);

  return v7;
}

- (id)_createLowPowerTemplate
{
  v4 = objc_msgSend_colorPalette(self, a2, v2, v3);
  objc_msgSend_setLowPowerMode_(v4, v5, 1, v6);
  v10 = objc_msgSend_tritiumPalette(v4, v7, v8, v9);

  return v10;
}

- (id)_multiPalette
{
  v181[32] = *MEMORY[0x277D85DE8];
  v5 = 0x277CBE000;
  if (!self->_multiPalette)
  {
    v6 = objc_msgSend_colorPalette(self, a2, v2, v3);
    v9 = objc_msgSend_editingPaletteForEditMode_(v6, v7, 1, v8);

    v13 = objc_msgSend_colorPalette(self, v10, v11, v12);
    v17 = objc_msgSend_copy(v13, v14, v15, v16);

    objc_msgSend_setCompassMode_(v17, v18, 1, v19);
    v23 = objc_msgSend__nightModeTemplate(self, v20, v21, v22);
    v27 = objc_msgSend_copy(v23, v24, v25, v26);

    objc_msgSend_setCompassMode_(v27, v28, 1, v29);
    v33 = objc_msgSend__lowPowerTemplate(self, v30, v31, v32);
    v37 = objc_msgSend_copy(v33, v34, v35, v36);

    objc_msgSend_setCompassMode_(v37, v38, 1, v39);
    v165 = objc_alloc(MEMORY[0x277D2C088]);
    v179 = objc_msgSend_colorPalette(self, v40, v41, v42);
    v181[0] = v179;
    v177 = objc_msgSend_colorPalette(self, v43, v44, v45);
    v176 = objc_msgSend_tritiumPalette(v177, v46, v47, v48);
    v181[1] = v176;
    v181[2] = v17;
    v178 = v17;
    v175 = objc_msgSend_tritiumPalette(v17, v49, v50, v51);
    v181[3] = v175;
    v174 = objc_msgSend__nightModeTemplate(self, v52, v53, v54);
    v181[4] = v174;
    v173 = objc_msgSend__nightModeTemplate(self, v55, v56, v57);
    v171 = objc_msgSend_tritiumPalette(v173, v58, v59, v60);
    v181[5] = v171;
    v181[6] = v27;
    v170 = objc_msgSend_tritiumPalette(v27, v61, v62, v63);
    v181[7] = v170;
    v168 = objc_msgSend__lowPowerTemplate(self, v64, v65, v66);
    v181[8] = v168;
    v167 = objc_msgSend__lowPowerTemplate(self, v67, v68, v69);
    v166 = objc_msgSend_tritiumPalette(v167, v70, v71, v72);
    v181[9] = v166;
    v181[10] = v37;
    v172 = v37;
    v164 = objc_msgSend_tritiumPalette(v37, v73, v74, v75);
    v181[11] = v164;
    v163 = objc_msgSend__nightModeTemplate(self, v76, v77, v78);
    v181[12] = v163;
    v162 = objc_msgSend__nightModeTemplate(self, v79, v80, v81);
    v161 = objc_msgSend_tritiumPalette(v162, v82, v83, v84);
    v181[13] = v161;
    v181[14] = v27;
    v169 = v27;
    v160 = objc_msgSend_tritiumPalette(v27, v85, v86, v87);
    v181[15] = v160;
    v181[16] = v9;
    v159 = objc_msgSend_tritiumPalette(v9, v88, v89, v90);
    v181[17] = v159;
    v181[18] = v9;
    v158 = objc_msgSend_tritiumPalette(v9, v91, v92, v93);
    v181[19] = v158;
    v181[20] = v9;
    v97 = objc_msgSend_tritiumPalette(v9, v94, v95, v96);
    v181[21] = v97;
    v181[22] = v9;
    v101 = objc_msgSend_tritiumPalette(v9, v98, v99, v100);
    v181[23] = v101;
    v181[24] = v9;
    v105 = objc_msgSend_tritiumPalette(v9, v102, v103, v104);
    v181[25] = v105;
    v181[26] = v9;
    v109 = objc_msgSend_tritiumPalette(v9, v106, v107, v108);
    v181[27] = v109;
    v181[28] = v9;
    v113 = objc_msgSend_tritiumPalette(v9, v110, v111, v112);
    v181[29] = v113;
    v181[30] = v9;
    v117 = objc_msgSend_tritiumPalette(v9, v114, v115, v116);
    v181[31] = v117;
    v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v118, v181, 32);
    v122 = objc_msgSend_initWithPalettes_(v165, v120, v119, v121);
    multiPalette = self->_multiPalette;
    self->_multiPalette = v122;

    v5 = 0x277CBE000uLL;
  }

  v124 = objc_msgSend__nightModeInterpolator(self, a2, v2, v3);
  v125 = MEMORY[0x23EEC0850]();
  v129 = objc_msgSend_colorInterpolators(self->_multiPalette, v126, v127, v128);
  objc_msgSend_setObject_atIndexedSubscript_(v129, v130, v125, 2);

  v134 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v131, v132, v133, self->_tritiumFraction);
  v180[0] = v134;
  v138 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v135, v136, v137, self->_compassFraction);
  v180[1] = v138;
  v142 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v139, v140, v141, self->_nightModeFraction);
  v180[2] = v142;
  v146 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v143, v144, v145, self->_lowPowerFraction);
  v180[3] = v146;
  v150 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v147, v148, v149, self->_editingComplicationsFraction);
  v180[4] = v150;
  v152 = objc_msgSend_arrayWithObjects_count_(*(v5 + 2656), v151, v180, 5);

  objc_msgSend_setTransitionFractions_(self->_multiPalette, v153, v152, v154);
  v155 = self->_multiPalette;
  v156 = v155;

  return v155;
}

+ (id)galleonFontDescriptor
{
  if (qword_27E1DD8E0 != -1)
  {
    sub_23BEA427C();
  }

  v3 = qword_27E1DD8D8;

  return v3;
}

+ (id)_galleonSimpleComplicationFontDescriptor
{
  if (qword_27E1DD8F0 != -1)
  {
    sub_23BEA4290();
  }

  v3 = qword_27E1DD8E8;

  return v3;
}

@end