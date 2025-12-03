@interface NTKCircularBezelView
+ (void)drawSnapshotInContext:(CGContext *)context hiVizComplicationStyle:(unint64_t)style colorPalette:(id)palette poiFilter:(id)filter forDevice:(id)device;
- (CGRect)_dirtyRectFromSeconds:(double)seconds toSeconds:(double)toSeconds;
- (NTKCircularBezelView)initWithFrame:(CGRect)frame forDevice:(id)device withDisplayMode:(unint64_t)mode;
- (__CTLine)radiusLabelCTLineForRadius:(double)radius;
- (id)_accessibilityStringForCurrentHeading;
- (id)_accessibilityStringForCurrentWaypointRadius;
- (id)_accessibilityStringForDistanceAccuracyToWaypoint:(id)waypoint;
- (id)_accessibilityStringForRelativeBearingToTargetWaypoint;
- (id)_initWithFrame:(CGRect)frame layoutConstants:(id *)constants forDevice:(id)device withDisplayMode:(unint64_t)mode;
- (id)accessibilityLabel;
- (id)attributedStringForCardinalDirectionLabel:(double)label;
- (id)attributedStringForDistanceAccuracyToWaypoint:(id)waypoint;
- (id)attributedStringForTargetWaypoint:(id)waypoint;
- (id)initForDevice:(id)device frame:(CGRect)frame displayMode:(unint64_t)mode;
- (unint64_t)hiVizComplicationStyle;
- (void)_addConstraintsForDevice:(id)device;
- (void)_addSubViews;
- (void)_drawCircularCompassBezelInContext:(CGContext *)context tritiumProgress:(double)progress backgroundAlpha:(double)alpha compassAlpha:(double)compassAlpha waypointsAlpha:(double)waypointsAlpha secondsAlpha:(double)secondsAlpha;
- (void)_invalidateRadiusLabelCTLine;
- (void)_labelVShiftForDevice:(id)device nameLabel:(double *)label distanceLabel:(double *)distanceLabel;
- (void)_setHeading:(double)heading duration:(double)duration completion:(id)completion;
- (void)_updateLabelsFromDisplayMode:(unint64_t)mode toDislayMode:(unint64_t)dislayMode progress:(double)progress onlyUpdateDistanceLabel:(BOOL)label;
- (void)_updateLabelsIfNeeded;
- (void)_updateWaypointAhead;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)radiusLabelColor:(id)color;
- (void)seTtritiumMedialColor:(id)color;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setColorPalette:(id)palette;
- (void)setCompassAlpha:(double)alpha;
- (void)setCompassBackgroundColor:(id)color;
- (void)setCompassCardinalColor:(id)color;
- (void)setCompassMajorTickColor:(id)color;
- (void)setCompassMedialTickColor:(id)color;
- (void)setCompassMinorTickColor:(id)color;
- (void)setCompassNorthColor:(id)color;
- (void)setCompassOrientingArrowColor:(id)color;
- (void)setFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle fraction:(double)fraction;
- (void)setFromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode fraction:(double)transitoryDisplayModeProgress;
- (void)setFromHiVizComplicationStyle:(unint64_t)style toHiVizComplicationStyle:(unint64_t)complicationStyle fraction:(double)fraction;
- (void)setFromTargetWaypoint:(id)waypoint toTargetWaypoint:(id)targetWaypoint fraction:(double)fraction;
- (void)setFromWaypointRadius:(double)radius toWaypointRadius:(double)waypointRadius fraction:(double)fraction;
- (void)setFromWaypointsState:(unint64_t)state toWaypointsState:(unint64_t)waypointsState fraction:(double)fraction;
- (void)setHeading:(double)heading animated:(BOOL)animated;
- (void)setLiveSecondsInTritium:(BOOL)tritium;
- (void)setLocation:(id)location;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setPreserveColorsInTritium:(BOOL)tritium;
- (void)setPrimaryBackgroundColor:(id)color;
- (void)setSecondaryBackgroundColor:(id)color;
- (void)setSeconds:(double)seconds;
- (void)setSecondsAlpha:(double)alpha;
- (void)setSecondsInactiveMajorTickColor:(id)color;
- (void)setSecondsInactiveMedialTickColor:(id)color;
- (void)setSecondsInactiveMinorTickColor:(id)color;
- (void)setSecondsMajorTickColor:(id)color;
- (void)setSecondsMedialTickColor:(id)color;
- (void)setSecondsMinorTickColor:(id)color;
- (void)setTertiaryBackgroundColor:(id)color;
- (void)setToSnapshotValuesWithPOIFilter:(id)filter;
- (void)setTritiumMajorColor:(id)color;
- (void)setTritiumMinorColor:(id)color;
- (void)setTritiumProgress:(double)progress;
- (void)setUsePOIDerivedColors:(BOOL)colors;
- (void)setWaypointActiveConeColor:(id)color;
- (void)setWaypointAheadColor:(id)color;
- (void)setWaypointColor:(id)color;
- (void)setWaypointInactiveConeColor:(id)color;
- (void)setWaypointLabelPrimaryColor:(id)color;
- (void)setWaypointLabelSecondaryColor:(id)color;
- (void)setWaypointRingColor:(id)color;
- (void)setWaypointTargetRingColor:(id)color;
- (void)setWaypoints:(id)waypoints;
- (void)setWaypointsAlpha:(double)alpha;
- (void)setsecondsCompassRingColor:(id)color;
@end

@implementation NTKCircularBezelView

- (NTKCircularBezelView)initWithFrame:(CGRect)frame forDevice:(id)device withDisplayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  sub_23BECF628(deviceCopy, v15);
  v13 = objc_msgSend__initWithFrame_layoutConstants_forDevice_withDisplayMode_(self, v12, x, v15, deviceCopy, mode, y, width, height);

  return v13;
}

- (id)initForDevice:(id)device frame:(CGRect)frame displayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  memset(__src, 0, 512);
  deviceCopy = device;
  v12 = sub_23BECF75C(deviceCopy, __src, 0.0, 0.0, width, height);
  objc_msgSend_sizeClass(deviceCopy, v13, v12);

  *&__src[21] = 0x3FE0000000000000;
  *(&__src[21] + 1) = *(&__src[19] + 1) + 4.0;
  __src[20] = xmmword_23BEED230;
  __asm { FMOV            V0.2D, #1.0 }

  __src[22] = _Q0;
  __src[23] = _Q0;
  __asm { FMOV            V2.2D, #3.0 }

  __src[24] = _Q2;
  *&__src[19] = 0x401A000000000000;
  *&__src[25] = 0x3FFC000000000000;
  *(&__src[25] + 1) = *(&__src[19] + 1) + -7.0;
  *(&__src[33] + 1) = 0x3FF0000000000000;
  __src[34] = _Q0;
  __src[35] = xmmword_23BEED240;
  *&__src[36] = 0x4008000000000000;
  memcpy(v23, __src, sizeof(v23));
  v21 = objc_msgSend__initWithFrame_layoutConstants_forDevice_withDisplayMode_(self, v20, x, v23, deviceCopy, mode, y, width, height);

  return v21;
}

- (id)_initWithFrame:(CGRect)frame layoutConstants:(id *)constants forDevice:(id)device withDisplayMode:(unint64_t)mode
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v168 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v161.receiver = self;
  v161.super_class = NTKCircularBezelView;
  height = [(NTKCircularBezelView *)&v161 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    modeCopy = mode;
    p_x = &height->_dirtyRect.origin.x;
    objc_msgSend_bounds(height, v15, v16);
    *p_x = v19;
    v17->_dirtyRect.origin.y = v20;
    v17->_dirtyRect.size.width = v21;
    v17->_dirtyRect.size.height = v22;
    v24 = objc_msgSend_clearColor(MEMORY[0x277D75348], v23, v19);
    objc_msgSend_setBackgroundColor_(v17, v25, v26, v24);

    memcpy(&v17->_layoutConstants, constants, sizeof(v17->_layoutConstants));
    v27 = v17->_layoutConstants.bezelCircularOuterRadius * 6.28318531;
    v17->_pixelsPerDegree = v27 / 360.0;
    v28 = v27 / 60.0;
    v17->_pixelsPerSecond = v28;
    v158 = deviceCopy;
    objc_msgSend_screenScale(deviceCopy, v29, v28);
    obj = &v17->_layoutConstants.bezelOuterRect.origin.x;
    v157 = v17;
    v17->_pixelsPerVisibleChange = 1.0 / (v30 * 4.0);
    v32 = objc_msgSend_foghornCompassBezelCardinalFontOfSize_(MEMORY[0x277CBBB08], v31, v17->_layoutConstants.bezelCircularCompassCardinalFontSize);
    v35 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v33, v34);
    v38 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v36, v37, 4);
    v39 = 0;
    v159 = *MEMORY[0x277D740C0];
    v40 = *MEMORY[0x277D740A8];
    v41 = *MEMORY[0x277D74118];
    do
    {
      v42 = NTKFoghornFaceLocalizedString(off_278BA1268[v39]);
      v43 = objc_alloc_init(MEMORY[0x277D74240]);
      objc_msgSend_setAlignment_(v43, v44, v45, 1);
      v162 = v159;
      v163 = v40;
      v165 = v35;
      v166 = v32;
      v164 = v41;
      v167 = v43;
      v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, v47, &v165, &v162, 3);
      v49 = objc_alloc(MEMORY[0x277CCA898]);
      v52 = objc_msgSend_initWithString_attributes_(v49, v50, v51, v42, v48);
      objc_msgSend_setObject_atIndexedSubscript_(v38, v53, v54, v52, v39);

      ++v39;
    }

    while (v39 != 4);
    v57 = objc_msgSend_copy(v38, v55, v56);

    v17 = v157;
    circularCompassLabels = v157->_circularCompassLabels;
    v157->_circularCompassLabels = v57;

    v157->_circularCompassTextLines = sub_23BEC66A4(v157->_circularCompassLabels);
    v60 = objc_msgSend_foghornCompassBezelCardinalFontOfSize_(MEMORY[0x277CBBB08], v59, obj[80]);
    v63 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v61, v62);
    v66 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v64, v65, 1);
    v67 = NTKFoghornFaceLocalizedString(@"LEGHORN_LOCATION_UNAVAILABLE");
    v68 = objc_alloc_init(MEMORY[0x277D74240]);
    objc_msgSend_setAlignment_(v68, v69, v70, 1);
    v162 = v159;
    v163 = v40;
    v165 = v63;
    v166 = v60;
    v164 = v41;
    v167 = v68;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v72, &v165, &v162, 3);
    v74 = objc_alloc(MEMORY[0x277CCA898]);
    v77 = objc_msgSend_initWithString_attributes_(v74, v75, v76, v67, v73);
    objc_msgSend_setObject_atIndexedSubscript_(v66, v78, v79, v77, 0);

    v160 = objc_msgSend_copy(v66, v80, v81);
    v157->_informationLabelLines = sub_23BEC66A4(v160);
    v157->_displayMode = modeCopy;
    v157->_transitoryDisplayMode = modeCopy;
    v157->_transitoryDisplayModeProgress = 1.0;
    targetWaypoint = v157->_targetWaypoint;
    v157->_targetWaypoint = 0;

    waypoints = v157->_waypoints;
    v157->_waypoints = MEMORY[0x277CBEBF8];

    location = v157->_location;
    v157->_location = 0;

    objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v85, v86);
    v157->_waypointRadius = v87;
    v157->_transitoryWaypointRadius = v87;
    v157->_transitoryWaypointRadiusProgress = 1.0;
    v157->_preserveColorsInTritium = 1;
    v157->_waypointsConeDynamicBreadthEnabled = 0;
    v157->_waypointsConeWaypointTrackingEnabled = 0;
    v88 = *MEMORY[0x277D74410];
    v90 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v89, obj[82], *MEMORY[0x277D74410]);
    waypointLabelPrimaryFont = v157->_waypointLabelPrimaryFont;
    v157->_waypointLabelPrimaryFont = v90;

    v92 = *MEMORY[0x277D74420];
    v94 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v93, obj[83], *MEMORY[0x277D74420]);
    waypointLabelSecondaryFont = v157->_waypointLabelSecondaryFont;
    v157->_waypointLabelSecondaryFont = v94;

    v97 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v96, obj[84], v92);
    waypointLabelSecondarySmallcapsFont = v157->_waypointLabelSecondarySmallcapsFont;
    v157->_waypointLabelSecondarySmallcapsFont = v97;

    v100 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277CBBB08], v99, obj[85], v88);
    waypointLabelHeadingFont = v157->_waypointLabelHeadingFont;
    v157->_waypointLabelHeadingFont = v100;

    v103 = objc_msgSend_monospacedDigitSystemFontOfSize_weight_(MEMORY[0x277D74300], v102, obj[85], v88);
    waypointLabelHeadingMonospacedFont = v157->_waypointLabelHeadingMonospacedFont;
    v157->_waypointLabelHeadingMonospacedFont = v103;

    v106 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v105, 1.0, 0.682352941, 0.803921569, 1.0);
    obja = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v107, 0.729411765, 0.31372549, 0.552941176, 1.0);
    v109 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v108, 0.556862745, 0.352941176, 0.439215686, 1.0);
    v111 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v110, 0.4, 0.274509804, 0.321568627, 1.0);
    v113 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v112, 0.117647059, 0.0274509804, 0.0784313725, 1.0);
    v154 = objc_msgSend_grayColor(MEMORY[0x277D75348], v114, v115);
    v117 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v116, 0.662745098, 0.447058824, 0.552941176, 1.0);
    v119 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v118, 0.850980392, 0.537254902, 0.678431373, 1.0);
    v121 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v120, 0.376470588, 0.258823529, 0.321568627, 1.0);
    v123 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v122, 0.466666667, 0.352941176, 0.415686275, 1.0);
    v150 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v124, v125);
    primaryBackgroundColor = v157->_primaryBackgroundColor;
    v157->_primaryBackgroundColor = v123;
    v152 = v123;

    v157->_fractionBezelBackgroundOn = 0.0;
    objc_storeStrong(&v157->_compassOrientingArrowColor, v106);
    objc_storeStrong(&v157->_compassNorthColor, v106);
    objc_storeStrong(&v157->_compassCardinalColor, v106);
    objc_storeStrong(&v157->_compassMajorTickColor, v106);
    objc_storeStrong(&v157->_compassMedialTickColor, v106);
    compassMinorTickColor = v157->_compassMinorTickColor;
    v157->_compassMinorTickColor = v109;
    v151 = v109;

    compassBackgroundColor = v157->_compassBackgroundColor;
    v157->_compassBackgroundColor = v113;
    v129 = v113;

    objc_storeStrong(&v157->_waypointColor, v106);
    objc_storeStrong(&v157->_waypointAheadColor, v106);
    waypointRingColor = v157->_waypointRingColor;
    v157->_waypointRingColor = v117;
    v131 = v117;

    waypointTargetRingColor = v157->_waypointTargetRingColor;
    v157->_waypointTargetRingColor = v119;
    v133 = v119;

    objc_storeStrong(&v157->_waypointActiveConeColor, v106);
    waypointInactiveConeColor = v157->_waypointInactiveConeColor;
    v157->_waypointInactiveConeColor = v121;
    v135 = v121;

    objc_storeStrong(&v157->_secondsMajorTickColor, v106);
    objc_storeStrong(&v157->_secondsMedialTickColor, v106);
    objc_storeStrong(&v157->_secondsMinorTickColor, v106);
    objc_storeStrong(&v157->_secondsInactiveMajorTickColor, v111);
    objc_storeStrong(&v157->_secondsInactiveMedialTickColor, v111);
    secondsInactiveMinorTickColor = v157->_secondsInactiveMinorTickColor;
    v157->_secondsInactiveMinorTickColor = v111;
    v137 = v111;

    waypointLabelPrimaryColor = v157->_waypointLabelPrimaryColor;
    v157->_waypointLabelPrimaryColor = v106;
    v139 = v106;

    objc_storeStrong(&v157->_waypointLabelSecondaryColor, obja);
    waypointLabelTertiaryColor = v157->_waypointLabelTertiaryColor;
    v157->_waypointLabelTertiaryColor = v150;
    v141 = v150;

    radiusLabelColor = v157->_radiusLabelColor;
    v157->_radiusLabelColor = obja;
    v143 = obja;

    objc_storeStrong(&v157->_tritiumMajorColor, v154);
    objc_storeStrong(&v157->_tritiumMedialColor, v154);
    tritiumMinorColor = v157->_tritiumMinorColor;
    v157->_tritiumMinorColor = v154;

    v157->_compassAlpha = 1.0;
    v157->_waypointsAlpha = 1.0;
    v157->_secondsAlpha = 1.0;
    v157->_backgroundAlpha = 1.0;
    v157->_seconds = 0.0;
    v157->_heading = 0.0;
    v157->_secondsTritiumAnimationStyle = 3;
    v157->_secondsEndOfMinuteAnimationStyle = 3;
    v157->_secondsEndOfMinuteAnimationDuration = 0.5;
    objc_msgSend__addSubViews(v157, v145, v146);
    deviceCopy = v158;
    objc_msgSend__addConstraintsForDevice_(v157, v147, v148, v158);
  }

  return v17;
}

- (void)dealloc
{
  circularCompassTextLines = self->_circularCompassTextLines;
  if (circularCompassTextLines)
  {
    CFRelease(circularCompassTextLines);
    self->_circularCompassTextLines = 0;
  }

  informationLabelLines = self->_informationLabelLines;
  if (informationLabelLines)
  {
    CFRelease(informationLabelLines);
    self->_informationLabelLines = 0;
  }

  objc_msgSend__invalidateRadiusLabelCTLine(self, a2, v2);
  v6.receiver = self;
  v6.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v6 dealloc];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_dirtyRect = &self->_dirtyRect;
  v9 = self->_dirtyRect.origin.x;
  v10 = self->_dirtyRect.origin.y;
  v11 = self->_dirtyRect.size.width;
  v12 = self->_dirtyRect.size.height;
  v18.origin.x = v9;
  v18.origin.y = v10;
  v18.size.width = v11;
  v18.size.height = v12;
  if (CGRectIsEmpty(v18))
  {
    v13 = height;
    v14 = width;
    v15 = y;
    v16 = x;
  }

  else
  {
    v19.origin.x = v9;
    v19.origin.y = v10;
    v19.size.width = v11;
    v19.size.height = v12;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    *&v16 = CGRectUnion(v19, v20);
  }

  p_dirtyRect->origin.x = v16;
  p_dirtyRect->origin.y = v15;
  p_dirtyRect->size.width = v14;
  p_dirtyRect->size.height = v13;
  v17.receiver = self;
  v17.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v17 setNeedsDisplayInRect:x, y, width, height];
}

- (void)setNeedsDisplay
{
  p_dirtyRect = &self->_dirtyRect;
  objc_msgSend_bounds(self, a2, v2);
  p_dirtyRect->origin.x = v5;
  p_dirtyRect->origin.y = v6;
  p_dirtyRect->size.width = v7;
  p_dirtyRect->size.height = v8;
  v9.receiver = self;
  v9.super_class = NTKCircularBezelView;
  [(NTKCircularBezelView *)&v9 setNeedsDisplay];
}

- (void)_addSubViews
{
  if ((self->_displayMode | 2) != 3)
  {
    v4 = objc_opt_new();
    v7 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v5, v6);
    objc_msgSend_setTextColor_(v4, v8, v9, v7);

    objc_msgSend_setNumberOfLines_(v4, v10, v11, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v4, v12, v13, 0);
    objc_msgSend_setLineBreakMode_(v4, v14, v15, 4);
    objc_msgSend_setTextAlignment_(v4, v16, v17, 1);
    v18 = *MEMORY[0x277D74410];
    v20 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v19, 14.0, *MEMORY[0x277D74410]);
    objc_msgSend_setFont_(v4, v21, v22, v20);

    v25 = objc_msgSend_greenColor(MEMORY[0x277D75348], v23, v24);
    objc_msgSend_setTextColor_(v4, v26, v27, v25);

    objc_msgSend_setText_(v4, v28, v29, @"TENT");
    objc_msgSend_addSubview_(self, v30, v31, v4);
    circularPOIInformationPrimaryLabel = self->_circularPOIInformationPrimaryLabel;
    self->_circularPOIInformationPrimaryLabel = v4;
    v33 = v4;

    v34 = objc_opt_new();
    v37 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v35, v36);
    objc_msgSend_setTextColor_(v34, v38, v39, v37);

    objc_msgSend_setNumberOfLines_(v34, v40, v41, 1);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v34, v42, v43, 0);
    objc_msgSend_setLineBreakMode_(v34, v44, v45, 4);
    objc_msgSend_setTextAlignment_(v34, v46, v47, 1);
    v49 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v48, 9.0, v18);
    objc_msgSend_setFont_(v34, v50, v51, v49);

    v54 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v52, v53);
    objc_msgSend_setTextColor_(v34, v55, v56, v54);

    objc_msgSend_setText_(v34, v57, v58, @"385FT - 3MIN AGO");
    objc_msgSend_addSubview_(self, v59, v60, v34);
    circularPOIInformationSecondaryLabel = self->_circularPOIInformationSecondaryLabel;
    self->_circularPOIInformationSecondaryLabel = v34;
    v62 = v34;
  }
}

- (void)_labelVShiftForDevice:(id)device nameLabel:(double *)label distanceLabel:(double *)distanceLabel
{
  v8 = objc_msgSend_sizeClass(device, a2, v5);
  UICeilToViewScale();
  v10 = v9;
  if (v8 == 9)
  {
    UIFloorToViewScale();
  }

  v24 = NTKFoghornFaceLocalizedString(@"LEGHORN_DISTANCE_LABEL_VSPACING_PIXELS");
  if ((objc_msgSend_isEqualToString_(v24, v11, v12, @"LEGHORN_DISTANCE_LABEL_VSPACING_PIXELS") & 1) != 0 || (objc_msgSend_floatValue(v24, v13, v14), v15 <= 0.0))
  {
    v16 = NTKFoghornFaceLocalizedString(@"LEGHORN_DISTANCE_LABEL_VSPACING");
    if ((objc_msgSend_isEqualToString_(v16, v17, v18, @"LEGHORN_DISTANCE_LABEL_VSPACING") & 1) == 0)
    {
      objc_msgSend_BOOLValue(v16, v19, v20);
    }
  }

  UIFloorToViewScale();
  if (v21 >= v10)
  {
    v21 = v10;
  }

  v22 = fmax(v21, 0.0);
  UICeilToViewScale();
  if (label)
  {
    *label = v23;
  }

  if (distanceLabel)
  {
    *distanceLabel = v22;
  }
}

- (void)_addConstraintsForDevice:(id)device
{
  v84[6] = *MEMORY[0x277D85DE8];
  p_layoutConstants = &self->_layoutConstants;
  bezelCircularSecondsActiveTickWidth = self->_layoutConstants.bezelCircularSecondsActiveTickWidth;
  bezelCircularSecondsTickMinorLength = self->_layoutConstants.bezelCircularSecondsTickMinorLength;
  bezelCircularSecondsOutsideRadius = self->_layoutConstants.bezelCircularSecondsOutsideRadius;
  v76 = bezelCircularSecondsOutsideRadius;
  bezelLabelBaseRadius = self->_layoutConstants.bezelLabelBaseRadius;
  bezelLabelTopRadius = self->_layoutConstants.bezelLabelTopRadius;
  v82 = 0.0;
  v83 = 0.0;
  objc_msgSend__labelVShiftForDevice_nameLabel_distanceLabel_(self, a2, bezelCircularSecondsOutsideRadius, device, &v83, &v82);
  v9 = v82;
  v8 = v83;
  v10 = p_layoutConstants->bezelLabelBaseRadius;
  poiInformationLabelFontSize = p_layoutConstants->poiInformationLabelFontSize;
  objc_msgSend_bounds(self, v12, v13);
  v15 = v14;
  v16 = p_layoutConstants->poiInformationLabelFontSize;
  objc_msgSend_bounds(self, v17, v18);
  if (self->_circularPOIInformationPrimaryLabel)
  {
    circularPOIInformationSecondaryLabel = self->_circularPOIInformationSecondaryLabel;
    if (circularPOIInformationSecondaryLabel)
    {
      v22 = bezelLabelTopRadius + v8;
      v23 = v76 - bezelCircularSecondsTickMinorLength - bezelCircularSecondsActiveTickWidth;
      v24 = v15 * 0.5 - sqrt(v23 * v23 - (v22 + poiInformationLabelFontSize) * (v22 + poiInformationLabelFontSize));
      v25 = sqrt(v23 * v23 - (v10 + v16) * (v10 + v16));
      v26 = v20 * 0.5 - v25;
      v71 = MEMORY[0x277CCAAD0];
      v81 = objc_msgSend_firstBaselineAnchor(circularPOIInformationSecondaryLabel, v19, v25);
      v79 = objc_msgSend_centerYAnchor(self, v27, v28);
      v77 = objc_msgSend_constraintEqualToAnchor_constant_(v81, v29, -(bezelLabelBaseRadius - v9), v79);
      v84[0] = v77;
      v75 = objc_msgSend_leadingAnchor(self->_circularPOIInformationSecondaryLabel, v30, v31);
      v74 = objc_msgSend_leadingAnchor(self, v32, v33);
      v73 = objc_msgSend_constraintEqualToAnchor_constant_(v75, v34, v26, v74);
      v84[1] = v73;
      v72 = objc_msgSend_trailingAnchor(self->_circularPOIInformationSecondaryLabel, v35, v36);
      v70 = objc_msgSend_trailingAnchor(self, v37, v38);
      v69 = objc_msgSend_constraintEqualToAnchor_constant_(v72, v39, -v26, v70);
      v84[2] = v69;
      v42 = objc_msgSend_lastBaselineAnchor(self->_circularPOIInformationPrimaryLabel, v40, v41);
      v45 = objc_msgSend_centerYAnchor(self, v43, v44);
      v47 = objc_msgSend_constraintEqualToAnchor_constant_(v42, v46, -v22, v45);
      v84[3] = v47;
      v50 = objc_msgSend_leadingAnchor(self->_circularPOIInformationPrimaryLabel, v48, v49);
      v53 = objc_msgSend_leadingAnchor(self, v51, v52);
      v55 = objc_msgSend_constraintEqualToAnchor_constant_(v50, v54, v24, v53);
      v84[4] = v55;
      v58 = objc_msgSend_trailingAnchor(self->_circularPOIInformationPrimaryLabel, v56, v57);
      v61 = objc_msgSend_trailingAnchor(self, v59, v60);
      v63 = objc_msgSend_constraintEqualToAnchor_constant_(v58, v62, -v24, v61);
      v84[5] = v63;
      v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, v65, v84, 6);
      objc_msgSend_activateConstraints_(v71, v67, v68, v66);
    }
  }
}

- (__CTLine)radiusLabelCTLineForRadius:(double)radius
{
  p_layoutConstants = &self->_layoutConstants;
  v5 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, radius);
  v8 = objc_msgSend_objectForKey_(v5, v6, v7, *MEMORY[0x277CBE718]);
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  v13 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v12, p_layoutConstants->bezelRadiusLabelFontSize);
  v15 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v14, p_layoutConstants->bezelRadiusLabelFontSize * 0.8);
  v18 = objc_msgSend_cyanColor(MEMORY[0x277D75348], v16, v17);
  v20 = objc_msgSend__attributedStringForRadius_useMetric_formatPrefix_valueFont_valueColor_unitFont_unitColor_(MEMORY[0x277CCA898], v19, radius, v11, @"LEGHORN_RADIUS", v13, v18, v15, v18);
  v21 = CTLineCreateWithAttributedString(v20);

  return v21;
}

- (void)_drawCircularCompassBezelInContext:(CGContext *)context tritiumProgress:(double)progress backgroundAlpha:(double)alpha compassAlpha:(double)compassAlpha waypointsAlpha:(double)waypointsAlpha secondsAlpha:(double)secondsAlpha
{
  selfCopy = self;
  v853 = *MEMORY[0x277D85DE8];
  preserveColorsInTritium = self->_preserveColorsInTritium;
  liveSecondsInTritium = self->_liveSecondsInTritium;
  transitoryDisplayMode = self->_transitoryDisplayMode;
  displayMode = self->_displayMode;
  transitoryDisplayModeProgress = self->_transitoryDisplayModeProgress;
  heading = self->_heading;
  seconds = self->_seconds;
  v690 = self->_tritiumMajorColor;
  v689 = selfCopy->_tritiumMedialColor;
  v703 = selfCopy->_tritiumMinorColor;
  x = selfCopy->_compassOrientingArrowColor;
  v716 = selfCopy->_compassNorthColor;
  v717 = selfCopy->_compassCardinalColor;
  v718 = selfCopy->_compassMedialTickColor;
  v719 = selfCopy->_compassMinorTickColor;
  v720 = selfCopy->_secondsCompassRingColor;
  fractionUsePOIDerivedColors = selfCopy->_fractionUsePOIDerivedColors;
  v713 = selfCopy->_waypointColor;
  v714 = selfCopy->_waypointAheadColor;
  v721 = selfCopy->_waypointRingColor;
  v712 = selfCopy->_waypointTargetRingColor;
  v724 = selfCopy->_waypointActiveConeColor;
  v14 = selfCopy->_waypointInactiveConeColor;
  v723 = selfCopy->_waypointOutOfRangeColor;
  v725 = selfCopy->_secondsMajorTickColor;
  v15 = selfCopy->_secondsMinorTickColor;
  v729 = selfCopy->_secondsInactiveMajorTickColor;
  v728 = selfCopy->_secondsInactiveMinorTickColor;
  v702 = selfCopy->_radiusLabelColor;
  v726 = selfCopy->_primaryBackgroundColor;
  v16 = selfCopy->_secondaryBackgroundColor;
  v17 = selfCopy->_tertiaryBackgroundColor;
  v685 = 0.0;
  v804 = transitoryDisplayModeProgress;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v18) >= 0.00000011920929)
  {
    v685 = v18;
    if (fabs(v18 + -1.0) < 0.00000011920929)
    {
      v685 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  v20 = 0.0;
  if (fabs(v19) >= 0.00000011920929)
  {
    v20 = v19;
    if (fabs(v19 + -1.0) < 0.00000011920929)
    {
      v20 = 1.0;
    }
  }

  v696 = v20;
  CLKInterpolateBetweenFloatsClipped();
  v22 = 0.0;
  v23 = 0.0;
  if (fabs(v21) >= 0.00000011920929)
  {
    v23 = v21;
    if (fabs(v21 + -1.0) < 0.00000011920929)
    {
      v23 = 1.0;
    }
  }

  v784 = v23;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v24) >= 0.00000011920929)
  {
    v22 = v24;
    if (fabs(v24 + -1.0) < 0.00000011920929)
    {
      v22 = 1.0;
    }
  }

  v25 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  v693 = 0.0;
  if (fabs(v26) >= 0.00000011920929)
  {
    v693 = v26;
    if (fabs(v26 + -1.0) < 0.00000011920929)
    {
      v693 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v27) >= 0.00000011920929)
  {
    v25 = v27;
    if (fabs(v27 + -1.0) < 0.00000011920929)
    {
      v25 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  v29 = 0.0;
  v30 = 0.0;
  if (fabs(v28) >= 0.00000011920929)
  {
    v30 = v28;
    if (fabs(v28 + -1.0) < 0.00000011920929)
    {
      v30 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v32) >= 0.00000011920929)
  {
    v29 = v32;
    if (fabs(v32 + -1.0) < 0.00000011920929)
    {
      v29 = 1.0;
    }
  }

  v33 = fabs(progress + -1.0);
  v706 = selfCopy;
  v802 = transitoryDisplayMode;
  v801 = displayMode;
  v684 = v33;
  if (progress > 1.0 || v33 < 0.00000011920929)
  {
    j = 0.0;
    v66 = 345.0;
    if (heading < 345.0)
    {
      v66 = 30.0;
      j = round(heading / 30.0) * 30.0;
    }

    v67 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, v66);

    v68 = v67;
    v69 = v68;

    if (preserveColorsInTritium)
    {
      v730 = v15;
      v72 = objc_msgSend_clearColor(MEMORY[0x277D75348], v70, v71);

      v73 = v72;
      v74 = v73;

      v75 = v74;
      v65 = v75;
      v723 = v65;
      v724 = v65;
      v691 = 0.0;
      v76 = v69;
      v44 = v69;
      v713 = v65;
      v714 = v65;
    }

    else
    {
      v77 = v690;

      v78 = v77;
      v79 = v78;

      v80 = v79;
      v81 = v703;

      v82 = v689;
      v85 = objc_msgSend_clearColor(MEMORY[0x277D75348], v83, v84);

      v86 = v85;
      v87 = v69;
      v88 = v86;

      v89 = v81;
      v90 = v82;

      v91 = v80;
      v65 = objc_msgSend_clearColor(MEMORY[0x277D75348], v92, v93);

      v94 = v91;
      v95 = v90;

      v96 = v89;
      v97 = v96;

      v14 = v702;
      v691 = 0.0;
      v721 = v97;
      v723 = v88;
      v724 = v94;
      v725 = v94;
      v728 = v97;
      v729 = v97;
      v702 = v95;
      v76 = v87;
      v44 = v87;
      v712 = v702;
      v713 = v88;
      v714 = v88;
      x = v94;
      v69 = v87;
      v730 = v702;
      v719 = v97;
      v720 = v702;
      v717 = v94;
      v718 = v94;
      v716 = v94;
    }
  }

  else
  {
    v730 = v15;
    v691 = v29 * waypointsAlpha;
    if (progress <= 0.0 || fabs(progress) < 0.00000011920929)
    {
      goto LABEL_50;
    }

    v34 = 0.0;
    if (heading < 345.0)
    {
      v34 = round(heading / 30.0) * 30.0;
    }

      ;
    }

      ;
    }

      ;
    }

    while (j < 0.0)
    {
      j = j + 360.0;
    }

    v691 = (1.0 - progress) * v691;
    v37 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, 1.0 - progress);
    v780 = MEMORY[0x23EEC10C0](v726, v37, progress);

    v40 = objc_msgSend_clearColor(MEMORY[0x277D75348], v38, v39);
    v776 = MEMORY[0x23EEC10C0](v16, v40, progress);

    v43 = objc_msgSend_clearColor(MEMORY[0x277D75348], v41, v42);
    v44 = MEMORY[0x23EEC10C0](v17, v43, progress);

    if (preserveColorsInTritium)
    {
      v47 = objc_msgSend_clearColor(MEMORY[0x277D75348], v45, v46);
      v48 = MEMORY[0x23EEC10C0](v713, v47, progress);

      v51 = objc_msgSend_clearColor(MEMORY[0x277D75348], v49, v50);
      v52 = MEMORY[0x23EEC10C0](v714, v51, progress);

      v55 = objc_msgSend_clearColor(MEMORY[0x277D75348], v53, v54);
      MEMORY[0x23EEC10C0](v723, v55, progress);
      v57 = v56 = v14;

      v60 = objc_msgSend_clearColor(MEMORY[0x277D75348], v58, v59);
      v61 = MEMORY[0x23EEC10C0](v724, v60, progress);

      v64 = objc_msgSend_clearColor(MEMORY[0x277D75348], v62, v63);
      v65 = MEMORY[0x23EEC10C0](v56, v64, progress);

      v723 = v57;
      v724 = v61;
      v14 = v64;
      v713 = v48;
      v714 = v52;
    }

    else
    {
      v98 = MEMORY[0x23EEC10C0](x, v690, progress);

      v772 = MEMORY[0x23EEC10C0](v716, v690, progress);

      v766 = MEMORY[0x23EEC10C0](v717, v690, progress);

      v762 = MEMORY[0x23EEC10C0](v718, v690, progress);

      theArrayc = MEMORY[0x23EEC10C0](v719, v703, progress);

      v750 = MEMORY[0x23EEC10C0](v720, v689, progress);

      v101 = objc_msgSend_clearColor(MEMORY[0x277D75348], v99, v100);
      v745 = MEMORY[0x23EEC10C0](v713, v101, progress);

      v104 = objc_msgSend_clearColor(MEMORY[0x277D75348], v102, v103);
      v740 = MEMORY[0x23EEC10C0](v714, v104, progress);

      v107 = objc_msgSend_clearColor(MEMORY[0x277D75348], v105, v106);
      v735 = MEMORY[0x23EEC10C0](v723, v107, progress);

      v108 = MEMORY[0x23EEC10C0](v721, v703, progress);

      v727 = MEMORY[0x23EEC10C0](v712, v689, progress);

      v722 = MEMORY[0x23EEC10C0](v724, v690, progress);

      v111 = objc_msgSend_clearColor(MEMORY[0x277D75348], v109, v110);
      v65 = MEMORY[0x23EEC10C0](v14, v111, progress);

      v112 = MEMORY[0x23EEC10C0](v725, v690, progress);

      v113 = MEMORY[0x23EEC10C0](v730, v689, progress);

      v114 = MEMORY[0x23EEC10C0](v729, v703, progress);

      v115 = MEMORY[0x23EEC10C0](v728, v703, progress);

      MEMORY[0x23EEC10C0](v702, v689, progress);
      v725 = v112;
      v729 = v114;
      v730 = v113;
      v14 = v702;
      v702 = v728 = v115;
      v723 = v735;
      v724 = v722;
      v714 = v740;
      x = v98;
      v712 = v727;
      v713 = v745;
      v720 = v750;
      v721 = v108;
      v718 = v762;
      v719 = theArrayc;
      v716 = v772;
      v717 = v766;
    }

    selfCopy = v706;
    v76 = v776;
    v69 = v780;
  }

  v14 = v65;
  v726 = v69;
  v16 = v76;
  v17 = v44;
  heading = j;
LABEL_50:
  fractionBezelBackgroundOn = selfCopy->_fractionBezelBackgroundOn;
  v117 = fractionBezelBackgroundOn <= 1.0 && fractionBezelBackgroundOn > 0.0;
  v692 = heading;
  if (fractionBezelBackgroundOn < 1.0 && v117)
  {
    v118 = objc_msgSend_clearColor(MEMORY[0x277D75348], v31, 1.0);
    v119 = MEMORY[0x23EEC10C0](v118, v726, fractionBezelBackgroundOn);

    v122 = objc_msgSend_clearColor(MEMORY[0x277D75348], v120, v121);
    v123 = MEMORY[0x23EEC10C0](v122, v16, fractionBezelBackgroundOn);

    v126 = objc_msgSend_clearColor(MEMORY[0x277D75348], v124, v125);
    v127 = MEMORY[0x23EEC10C0](v126, v17, fractionBezelBackgroundOn);

    v726 = v119;
    v16 = v123;
    v17 = v127;
  }

  v699 = v16;
  v700 = v17;
  v704 = v14;
  v128 = v30 * alpha;
  waypointRadius = selfCopy->_waypointRadius;
  v129 = selfCopy->_waypoints;
  v701 = selfCopy->_location;
  if (v129 && !selfCopy->_sortedWaypoints)
  {
    v818[0] = MEMORY[0x277D85DD0];
    v818[1] = 3221225472;
    v818[2] = sub_23BECB49C;
    v818[3] = &unk_278BA1220;
    v819 = v701;
    v132 = objc_msgSend_sortedArrayUsingComparator_(v129, v130, v131, v818);
    objc_storeStrong(&selfCopy->_sortedWaypoints, v132);
  }

  v688 = selfCopy->_sortedWaypoints;

  v698 = selfCopy->_targetWaypoint;
  v687 = selfCopy->_waypointAhead;
  CGContextSaveGState(context);
  progressCopy = progress;
  if (v128 <= 0.0)
  {
    v179 = v730;
  }

  else
  {
    if (v128 < 1.0)
    {
      v134 = objc_msgSend_colorWithAlphaComponent_(v726, v133, v128);

      v136 = objc_msgSend_colorWithAlphaComponent_(v16, v135, v128);

      v138 = objc_msgSend_colorWithAlphaComponent_(v17, v137, v128);

      v726 = v134;
      v699 = v136;
      v700 = v138;
    }

    if (v117)
    {
      fromHiVizComplicationStyle = selfCopy->_fromHiVizComplicationStyle;
      toHiVizComplicationStyle = selfCopy->_toHiVizComplicationStyle;
      fractionHiVizComplicationStyle = selfCopy->_fractionHiVizComplicationStyle;
      bezelCircularOuterRadius = selfCopy->_layoutConstants.bezelCircularOuterRadius;
      v142 = v726;
      v143 = v700;
      v144 = v699;
      v147 = objc_msgSend_CGColor(v726, v145, v146);
      v148 = -CGRectGetMinX(selfCopy->_layoutConstants.bezelOuterRect);
      v149 = -CGRectGetMinY(selfCopy->_layoutConstants.bezelOuterRect);
      v855 = CGRectInset(selfCopy->_layoutConstants.bezelOuterRect, v148, v149);
      v150 = v855.origin.x;
      v151 = v855.origin.y;
      v152 = v855.size.width;
      height = v855.size.height;
      CGContextAddRect(context, v855);
      v856.origin.x = v150;
      v856.origin.y = v151;
      v856.size.width = v152;
      v856.size.height = height;
      v154 = CGRectGetMidX(v856) - bezelCircularOuterRadius;
      v857.origin.x = v150;
      v857.origin.y = v151;
      v857.size.width = v152;
      v857.size.height = height;
      v858.origin.y = CGRectGetMidY(v857) - bezelCircularOuterRadius;
      v858.size.width = bezelCircularOuterRadius + bezelCircularOuterRadius;
      v858.origin.x = v154;
      v858.size.height = bezelCircularOuterRadius + bezelCircularOuterRadius;
      CGContextAddEllipseInRect(context, v858);
      CGContextSetFillColorWithColor(context, v147);
      CGContextEOFillPath(context);
      v155 = selfCopy->_layoutConstants.bezelCircularOuterRadius;
      bezelCircularWaypointOuterRingRadius = selfCopy->_layoutConstants.bezelCircularWaypointOuterRingRadius;
      v157 = v144;
      v160 = objc_msgSend_CGColor(v157, v158, v159);
      v699 = v144;

      MidX = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
      MidY = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
      v859.origin.x = MidX - v155;
      v859.origin.y = MidY - v155;
      v859.size.width = v155 + v155;
      v859.size.height = v155 + v155;
      CGContextAddEllipseInRect(context, v859);
      v860.origin.x = MidX - bezelCircularWaypointOuterRingRadius;
      v860.origin.y = MidY - bezelCircularWaypointOuterRingRadius;
      v860.size.width = bezelCircularWaypointOuterRingRadius + bezelCircularWaypointOuterRingRadius;
      v860.size.height = bezelCircularWaypointOuterRingRadius + bezelCircularWaypointOuterRingRadius;
      CGContextAddEllipseInRect(context, v860);
      CGContextSetFillColorWithColor(context, v160);
      CGContextEOFillPath(context);
      bezelCircularWaypointInnerRingRadius = selfCopy->_layoutConstants.bezelCircularWaypointInnerRingRadius;
      v164 = v143;
      v167 = objc_msgSend_CGColor(v164, v165, v166);
      v700 = v143;

      v168 = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
      v169 = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
      v861.origin.x = v168 - bezelCircularWaypointInnerRingRadius;
      v861.origin.y = v169 - bezelCircularWaypointInnerRingRadius;
      v861.size.width = bezelCircularWaypointInnerRingRadius + bezelCircularWaypointInnerRingRadius;
      v861.size.height = bezelCircularWaypointInnerRingRadius + bezelCircularWaypointInnerRingRadius;
      CGContextAddEllipseInRect(context, v861);
      v833.b = 0.0;
      v833.a = 0.0;
      v831 = 0.0;
      NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(fromHiVizComplicationStyle, toHiVizComplicationStyle, &v833.a, &v831, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.x, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.y, fractionHiVizComplicationStyle);
      if (v831 <= 0.0)
      {
        v174 = *MEMORY[0x277CBF3A0];
        v175 = *(MEMORY[0x277CBF3A0] + 8);
        v176 = *(MEMORY[0x277CBF3A0] + 16);
        v177 = *(MEMORY[0x277CBF3A0] + 24);
        v171 = *MEMORY[0x277CBF3A0];
        v172 = v175;
        v173 = v176;
        v178 = v177;
      }

      else
      {
        v170 = v831 * (selfCopy->_layoutConstants.bezelCircularSecondsHiVizRadius + selfCopy->_layoutConstants.bezelCircularSecondsHiVizPlatterPadding);
        v171 = v833.a - v170;
        v172 = v833.b - v170;
        v173 = v170 + v170;
        v174 = *MEMORY[0x277CBF3A0];
        v175 = *(MEMORY[0x277CBF3A0] + 8);
        v176 = *(MEMORY[0x277CBF3A0] + 16);
        v177 = *(MEMORY[0x277CBF3A0] + 24);
        v178 = v170 + v170;
      }

      v862.origin.x = v171;
      v862.origin.y = v172;
      v862.size.width = v173;
      v862.size.height = v178;
      selfCopy = v706;
      v179 = v730;
      if (!CGRectEqualToRect(v862, *&v174))
      {
        v863.origin.x = v168 + v171;
        v863.origin.y = v169 + v172;
        v863.size.width = v173;
        v863.size.height = v178;
        CGContextAddEllipseInRect(context, v863);
      }

      CGContextSetFillColorWithColor(context, v167);
      CGContextFillPath(context);
    }

    else
    {
      v179 = v730;
    }
  }

  p_x = &selfCopy->_layoutConstants.bezelOuterRect.origin.x;
  v181 = CGRectGetMidX(selfCopy->_layoutConstants.bezelOuterRect);
  v182 = CGRectGetMidY(selfCopy->_layoutConstants.bezelOuterRect);
  CGContextTranslateCTM(context, v181, v182);
  v183 = selfCopy->_fromHiVizComplicationStyle;
  v184 = selfCopy->_toHiVizComplicationStyle;
  v185 = selfCopy->_fractionHiVizComplicationStyle;
  v833.b = 0.0;
  v833.a = 0.0;
  v831 = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(v183, v184, &v833.a, &v831, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.x, selfCopy->_layoutConstants.bezelCircularSecondsHiVizCenterOffset.y, v185);
  v186 = v802;
  CLKInterpolateBetweenFloatsClipped();
  v188 = 0.0;
  contextCopy10 = context;
  if (fabs(v187) >= 0.00000011920929)
  {
    v188 = v187;
    if (fabs(v187 + -1.0) < 0.00000011920929)
    {
      v188 = 1.0;
    }
  }

  if (v188 * v831 <= 0.0)
  {
    v194 = *MEMORY[0x277CBF3A0];
    v195 = *(MEMORY[0x277CBF3A0] + 8);
    v196 = *(MEMORY[0x277CBF3A0] + 16);
    v197 = *(MEMORY[0x277CBF3A0] + 24);
    v191 = *MEMORY[0x277CBF3A0];
    v192 = v195;
    v193 = v196;
    v198 = v197;
  }

  else
  {
    v190 = v188 * v831 * (selfCopy->_layoutConstants.bezelCircularSecondsHiVizRadius + selfCopy->_layoutConstants.bezelCircularSecondsHiVizPlatterPadding);
    v191 = v833.a - v190;
    v192 = v833.b - v190;
    v193 = v190 + v190;
    v194 = *MEMORY[0x277CBF3A0];
    v195 = *(MEMORY[0x277CBF3A0] + 8);
    v196 = *(MEMORY[0x277CBF3A0] + 16);
    v197 = *(MEMORY[0x277CBF3A0] + 24);
    v198 = v190 + v190;
  }

  v199 = v22 * waypointsAlpha;
  v864.origin.x = v191;
  v864.origin.y = v192;
  v864.size.width = v193;
  v864.size.height = v198;
  if (!CGRectEqualToRect(v864, *&v194))
  {
    v865.origin.x = *p_x;
    v865.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v865.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v865.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v201 = -CGRectGetMidX(v865);
    v866.origin.x = *p_x;
    v866.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v866.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v866.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v202 = -CGRectGetMidY(v866);
    v867.origin.x = *p_x;
    v867.origin.y = selfCopy->_layoutConstants.bezelOuterRect.origin.y;
    v867.size.width = selfCopy->_layoutConstants.bezelOuterRect.size.width;
    v867.size.height = selfCopy->_layoutConstants.bezelOuterRect.size.height;
    v868 = CGRectInset(v867, v201, v202);
    CGContextAddRect(context, v868);
    v869.origin.x = v191;
    v869.origin.y = v192;
    v869.size.width = v193;
    v869.size.height = v198;
    CGContextAddEllipseInRect(context, v869);
    CGContextEOClip(context);
  }

  v203 = v784 * compassAlpha;
  v204 = progressCopy;
  if (v199 > 0.0)
  {
    v205 = v720;
    v206 = v721;
    v207 = sub_23BECFD10(v206, v205, v802);
    v208 = sub_23BECFD10(v206, v205, v801);

    v209 = MEMORY[0x23EEC10C0](v207, v208, v804);

    if (v199 < 1.0)
    {
      v211 = objc_msgSend_colorWithAlphaComponent_(v209, v210, v199);

      v209 = v211;
    }

    sub_23BECFDA0(p_x, v802);
    sub_23BECFDA0(p_x, v801);
    v212 = v209;
    CLKInterpolateBetweenFloatsClipped();
    v214 = fabs(v213);
    if (fabs(v213 + -1.0) < 0.00000011920929)
    {
      v213 = 1.0;
    }

    if (v214 >= 0.00000011920929)
    {
      v215 = v213;
    }

    else
    {
      v215 = 0.0;
    }

    sub_23BECB538(selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidth, selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidthTritium, progressCopy);
    v217 = v215 + (selfCopy->_layoutConstants.bezelCircularWaypointOuterRingWidth - v216) * 0.5;
    v218 = -v217;
    v219 = v217 + v217;
    CGContextSetLineWidth(context, v216);
    v220 = v212;
    v223 = objc_msgSend_CGColor(v220, v221, v222);

    CGContextSetStrokeColorWithColor(context, v223);
    v870.origin.x = v218;
    v870.origin.y = v218;
    v870.size.width = v219;
    v870.size.height = v219;
    CGContextStrokeEllipseInRect(context, v870);
  }

  v224 = v25 * secondsAlpha;
  p_layoutConstants = &selfCopy->_layoutConstants;
  if (v203 > 0.0)
  {
    if (v203 >= 1.0)
    {
      v233 = v719;
      v235 = v720;
      v229 = v717;
      v231 = v718;
      v225 = x;
      v227 = v716;
    }

    else
    {
      v225 = objc_msgSend_colorWithAlphaComponent_(x, v200, v203);

      v227 = objc_msgSend_colorWithAlphaComponent_(v716, v226, v203);

      v229 = objc_msgSend_colorWithAlphaComponent_(v717, v228, v203);

      v231 = objc_msgSend_colorWithAlphaComponent_(v718, v230, v203);

      v233 = objc_msgSend_colorWithAlphaComponent_(v719, v232, v203);

      v235 = objc_msgSend_colorWithAlphaComponent_(v720, v234, v203);
    }

    theArray = selfCopy->_circularCompassTextLines;
    v236 = v225;
    v237 = v227;
    v238 = v229;
    v239 = v231;
    v240 = v233;
    v241 = v235;
    v242 = p_layoutConstants;
    v785 = *(p_layoutConstants + 384);
    v777 = *(p_layoutConstants + 392);
    sub_23BECB538(*(p_layoutConstants + 352), *(p_layoutConstants + 368), progressCopy);
    widtha = v243;
    sub_23BECB538(v242[45], v242[47], progressCopy);
    v773 = v244;
    v245 = *(p_layoutConstants + 312);
    v246 = *(p_layoutConstants + 408);
    v767 = *(p_layoutConstants + 400);
    sub_23BECB538(v242[53], v242[55], progressCopy);
    v763 = v247;
    v248 = v245 - v246;
    CLKInterpolateBetweenFloatsClipped();
    v250 = 0.0;
    if (fabs(v249) >= 0.00000011920929)
    {
      v250 = v249;
      if (fabs(v249 + -1.0) < 0.00000011920929)
      {
        v250 = 1.0;
      }
    }

    v680 = v224;
    v720 = v241;
    v251 = v250 + *(p_layoutConstants + 344) - *(p_layoutConstants + 408);
    v736 = v250;
    v782 = v248 + v250;
    v252 = v239;
    v718 = v239;
    v255 = objc_msgSend_CGColor(v252, v253, v254);
    v256 = v240;
    v719 = v240;
    v260 = objc_msgSend_CGColor(v256, v257, v258);
    v716 = v237;
    v717 = v238;
    if (fabs(progressCopy) < 2.22044605e-16 || v684 < 2.22044605e-16)
    {
      v282 = v237;
      v285 = objc_msgSend_CGColor(v282, v283, v284);
      v286 = v238;
      v281 = objc_msgSend_CGColor(v286, v287, v288);
      v741 = v281;
      v746 = v285;
      v751 = v285;
    }

    else
    {
      objc_msgSend_colorWithAlphaComponent_(v237, v259, 1.0 - progressCopy, v684);
      v262 = v261 = v236;
      v264 = objc_msgSend_colorWithAlphaComponent_(v238, v263, 1.0 - progressCopy);
      v266 = objc_msgSend_colorWithAlphaComponent_(v237, v265, progressCopy);
      v268 = objc_msgSend_colorWithAlphaComponent_(v238, v267, progressCopy);
      v269 = v262;
      v751 = objc_msgSend_CGColor(v269, v270, v271);
      v272 = v264;
      v741 = objc_msgSend_CGColor(v272, v273, v274);
      v275 = v266;
      v746 = objc_msgSend_CGColor(v275, v276, v277);
      v278 = v268;
      v281 = objc_msgSend_CGColor(v278, v279, v280);

      contextCopy10 = context;
      v236 = v261;
    }

    CGContextSaveGState(contextCopy10);
    v289 = *(p_layoutConstants + 328);
    v290 = *(p_layoutConstants + 336);
    v291 = v289 + v290 * -2.0;
    v292 = v251 - v289 * 0.5;
    v293 = (*(p_layoutConstants + 320) + v290 * -2.0) * 0.5;
    v294 = atan2(v291, v293);
    v295 = 0.0;
    v296 = v291 * 0.5;
    v297 = v292 + v291 * 0.5;
    ye = v292 - v296;
    v298 = -v294;
    v299 = v236;
    CGContextAddArc(contextCopy10, v293 + 0.0, v297, v290, -v294, 1.57079633, 0);
    v300 = v294 + 3.14159265;
    CGContextAddArc(contextCopy10, 0.0 - v293, v297, v290, 1.57079633, v300, 0);
    CGContextAddArc(contextCopy10, 0.0, ye, v290, v300, v298, 0);
    CGContextClosePath(contextCopy10);
    v301 = v299;
    v304 = objc_msgSend_CGColor(v301, v302, v303);
    x = v299;

    CGContextSetFillColorWithColor(contextCopy10, v304);
    CGContextFillPath(contextCopy10);
    CGContextSetShouldSubpixelPositionFonts(contextCopy10, 1);
    CGContextSetShouldSubpixelQuantizeFonts(contextCopy10, 0);
    CGContextSetShouldAntialias(contextCopy10, 1);
    CGContextSetShouldSmoothFonts(contextCopy10, 1);
    CGContextSetLineCap(contextCopy10, kCGLineCapRound);
    CGContextSetLineWidth(contextCopy10, *(p_layoutConstants + 80));
    v305 = *(MEMORY[0x277CBF2C0] + 16);
    *&v833.a = *MEMORY[0x277CBF2C0];
    *&v833.c = v305;
    *&v833.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGContextSetTextMatrix(contextCopy10, &v833);
    CGContextSetShouldSmoothFonts(contextCopy10, 1);
    v306 = v782 - v736;
    CGContextSetLineWidth(contextCopy10, widtha);
    CGContextSetLineCap(contextCopy10, kCGLineCapRound);
    v307 = 0;
    v737 = v767 + v736;
    v764 = v763 * 0.5;
    v768 = v306;
    v710 = v782 - (v306 - v785 - v764) * 0.5;
    radius = v710 - v785;
    while (1)
    {
      v308 = fmod(v692 * 3.14159265 / -180.0 + 6.28318531 + v295, 6.28318531);
      v309 = -v308;
      if (v307 % 0x12u)
      {
        v310 = v785;
        if (v307 % 6u)
        {
          v310 = v777;
          v311 = v773;
        }

        else
        {
          v311 = widtha;
        }

        if (v307 % 6u)
        {
          v312 = v260;
        }

        else
        {
          v312 = v255;
        }

        v313 = v782 + (v768 - v310 - v764) * -0.5;
        v314 = v313 - v310;
        v315 = cos(v308);
        v316 = sin(v309);
        v317 = v316 * v313;
        v318 = v315 * v314;
        v319 = v316 * v314;
        contextCopy4 = context;
        v321 = v315 * v313;
        v322 = v312;
        v323 = v311;
      }

      else
      {
        if (progressCopy < 1.0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v307 / 0x12u);
          if (v307)
          {
            v325 = v741;
          }

          else
          {
            v325 = v751;
          }

          CGContextSetFillColorWithColor(context, v325);
          sub_23BECFE88(context, ValueAtIndex, 0, v309, 0.0, 0.0, v737, 0.5);
        }

        if (progressCopy <= 0.0)
        {
          goto LABEL_119;
        }

        if (v307)
        {
          v326 = v281;
        }

        else
        {
          v326 = v746;
        }

        v327 = cos(v308);
        v328 = sin(v309);
        v317 = v710 * v328;
        v318 = radius * v327;
        v319 = radius * v328;
        contextCopy4 = context;
        v321 = v710 * v327;
        v322 = v326;
        v323 = widtha;
      }

      sub_23BECFDF8(contextCopy4, v322, v321, v317, v318, v319, v323);
LABEL_119:
      v295 = v295 + 0.0872664626;
      if (++v307 == 72)
      {
        contextCopy10 = context;
        CGContextRestoreGState(context);

        selfCopy = v706;
        v179 = v730;
        v204 = progressCopy;
        v186 = v802;
        p_x = p_layoutConstants;
        v224 = v680;
        break;
      }
    }
  }

  v329 = v696;
  if (v224 > 0.0)
  {
    if (v224 < 1.0)
    {
      v330 = objc_msgSend_colorWithAlphaComponent_(v725, v200, v224);

      v332 = objc_msgSend_colorWithAlphaComponent_(v179, v331, v224);

      v334 = objc_msgSend_colorWithAlphaComponent_(v729, v333, v224);

      v336 = objc_msgSend_colorWithAlphaComponent_(v728, v335, v224);

      v725 = v330;
      v179 = v332;
      v728 = v336;
      v729 = v334;
    }

    sub_23BECB538(p_x[67], p_x[69], v204);
    *&v821 = v337;
    sub_23BECB538(p_x[68], p_x[70], v204);
    v339 = v338;
    secondsEndOfMinuteAnimationDuration = selfCopy->_secondsEndOfMinuteAnimationDuration;
    if (v204 <= 0.0 || liveSecondsInTritium)
    {
      if (seconds <= 60.0 - secondsEndOfMinuteAnimationDuration)
      {
        v346 = v204;
        v347 = v725;
LABEL_131:
        v349 = *&v821;
        v350 = seconds;
        v351 = selfCopy->_fromHiVizComplicationStyle;
        v352 = selfCopy->_toHiVizComplicationStyle;
        v353 = selfCopy->_fractionHiVizComplicationStyle;
        v354 = v347;
        v355 = v179;
        v356 = v729;
        v357 = v728;
        *&__y = 0;
        v358 = modf(v350, &__y);
        v359 = *&__y;
        CGContextSaveGState(contextCopy10);
        v360 = v354;
        v725 = v354;
        v363 = objc_msgSend_CGColor(v360, v361, v362);
        v364 = v355;
        v731 = v355;
        v367 = objc_msgSend_CGColor(v364, v365, v366);
        v368 = v356;
        v729 = v356;
        v371 = objc_msgSend_CGColor(v368, v369, v370);
        v372 = v357;
        v728 = v357;
        v375 = objc_msgSend_CGColor(v372, v373, v374);
        CGContextSetStrokeColorWithColor(contextCopy10, v363);
        CGContextSetLineCap(contextCopy10, kCGLineCapRound);
        CGContextSetLineWidth(contextCopy10, v349);
        v835 = 0u;
        v834 = 0u;
        memset(&v833, 0, sizeof(v833));
        sub_23BED01D0(p_layoutConstants, v351, v352, &v833, v353);
        v376 = 0;
        y = v359 % 0x3C;
        v377 = v359 % 0x3C + 1;
        do
        {
          v832 = 0.0;
          v831 = 0.0;
          if (5 * (v376 / 5) == v376)
          {
            v378 = v363;
          }

          else
          {
            v378 = v367;
          }

          v830 = 0.0;
          v829 = 0.0;
          sub_23BED02E8(p_layoutConstants, &v833, v376, &v829, &v831);
          sub_23BECFDF8(contextCopy10, v378, v829, v830, v831, v832, v349);
          ++v376;
        }

        while (v377 != v376);
        v379 = y + 1;
        if (v358 > 0.0)
        {
          CLKInterpolateBetweenFloatsClipped();
          v381 = v380;
          CGContextSetLineWidth(contextCopy10, v380);
          v382 = v729;
          if (v379 == 5 * (v379 / 5))
          {
            v383 = v725;
          }

          else
          {
            v382 = v728;
            v383 = v731;
          }

          v384 = v382;
          v385 = v383;
          v386 = MEMORY[0x23EEC10C0](v384, v385, v358);
          v387 = v386;
          v390 = objc_msgSend_CGColor(v387, v388, v389);
          v832 = 0.0;
          v831 = 0.0;
          v830 = 0.0;
          v829 = 0.0;
          sub_23BED02E8(p_layoutConstants, &v833, v379, &v829, &v831);
          sub_23BECFDF8(contextCopy10, v390, v829, v830, v831, v832, v381);
          v379 = y + 2;
        }

        selfCopy = v706;
        v329 = v696;
        v204 = v346;
        CGContextSetLineWidth(contextCopy10, v339);
        if (v379 <= 0x3B)
        {
          do
          {
            v832 = 0.0;
            v831 = 0.0;
            if (-858993459 * v379 >= 0x33333334)
            {
              v391 = v375;
            }

            else
            {
              v391 = v371;
            }

            v830 = 0.0;
            v829 = 0.0;
            sub_23BED02E8(p_layoutConstants, &v833, v379, &v829, &v831);
            sub_23BECFDF8(contextCopy10, v391, v829, v830, v831, v832, v339);
            ++v379;
          }

          while (v379 != 60);
        }

        CGContextRestoreGState(contextCopy10);

        v179 = v731;
        v186 = v802;
        goto LABEL_147;
      }

      secondsEndOfMinuteAnimationStyle = selfCopy->_secondsEndOfMinuteAnimationStyle;
      v342 = v725;
      v815 = v725;
      v814 = v179;
      v343 = &v815;
      v344 = &v814;
      sub_23BECB57C(v725, v179, v729, v728, secondsEndOfMinuteAnimationStyle, &seconds, &v815, &v814, seconds, *&v821, v338, (seconds - (60.0 - secondsEndOfMinuteAnimationDuration)) / secondsEndOfMinuteAnimationDuration, &v821);
    }

    else
    {
      secondsTritiumAnimationStyle = selfCopy->_secondsTritiumAnimationStyle;
      v342 = v725;
      v817 = v725;
      v816 = v179;
      v343 = &v817;
      v344 = &v816;
      sub_23BECB57C(v725, v179, v729, v728, secondsTritiumAnimationStyle, &seconds, &v817, &v816, seconds, *&v821, v338, v204, &v821);
    }

    v346 = v204;
    v347 = *v343;

    v348 = *v344;
    v179 = v348;
    goto LABEL_131;
  }

LABEL_147:
  v392 = v693 * waypointsAlpha;
  if (v329 > 0.0)
  {
    v393 = v712;
    v394 = v724;
    v395 = v704;
    v396 = v703;
    v397 = v723;
    v399 = v721;
    v732 = v179;
    if (v329 >= 1.0)
    {
      v774 = v396;
      v778 = v395;
    }

    else
    {
      v400 = objc_msgSend_colorWithAlphaComponent_(v393, v398, v329);

      v402 = objc_msgSend_colorWithAlphaComponent_(v394, v401, v329);

      v404 = objc_msgSend_colorWithAlphaComponent_(v395, v403, v329);

      v406 = objc_msgSend_colorWithAlphaComponent_(v396, v405, v329);

      v408 = objc_msgSend_colorWithAlphaComponent_(v397, v407, v329);

      v410 = objc_msgSend_colorWithAlphaComponent_(v399, v409, v329);

      v393 = v400;
      v394 = v402;
      v774 = v406;
      v778 = v404;
      contextCopy10 = context;
      v397 = v408;
      v399 = v410;
    }

    v411 = v701;
    v412 = v698;
    v413 = v393;
    v414 = v394;
    v415 = v397;
    v416 = v399;
    v417 = v412;
    v418 = v413;
    v419 = v414;
    v420 = v416;
    ya = _fractionFromToDisplayMode(3, v802, v801);
    v421 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v422 = sub_23BED041C();
    v423 = (v422 + v422 + v421) * 0.5;
    v424 = *(p_layoutConstants + 424);
    v425 = *(p_layoutConstants + 432);
    v426 = v422 + v421 - v424 * 0.5;
    v427 = v422 + v425 * 0.5;
    recta = v424;
    v769 = v425;
    v738 = v425 + v427;
    radiusa = v426 - v424;
    v428 = v426 - v424 - (v425 + v427);
    v871.origin.x = -v426;
    v871.size.width = v426 + v426;
    v742 = -v426;
    v747 = v426 + v426;
    v871.origin.y = -v426;
    v871.size.height = v426 + v426;
    CGContextAddEllipseInRect(contextCopy10, v871);
    v872.origin.x = -v427;
    v752 = -v427;
    v872.origin.y = -v427;
    v872.size.width = v427 + v427;
    v872.size.height = v427 + v427;
    CGContextAddEllipseInRect(contextCopy10, v872);
    theArraya = v427 + v427;
    if (v417)
    {
      v430 = objc_msgSend_waypointLocation(v417, v429, v692 * 3.14159265);
      objc_msgSend_ntk_bearingTo_(v411, v431, v432, v430);
      v434 = v433;

        ;
      }

        ;
      }
    }

    else
    {
      k = 0.0;
    }

    widthb = v428 * 0.5;
    v436 = 1.57079633 - k;
    v437 = __sincos_stret(1.57079633 - k);
    v438 = (1.57079633 - k + -1.57079633) * (1.0 - ya) + 1.57079633;
    v440 = __sincos_stret(v438);
    v783 = v423 * v440.__sinval;
    v786 = v423 * v440.__cosval;
    v441 = (v426 - v427 + (recta + v769) * -2.0) * 0.5;
    yb = -v441;
    rectb = v423 - v441;
    v442 = v441 + v441;
    v204 = progressCopy;
    if (progressCopy < 1.0)
    {
      v683 = v423 * v437.__cosval;
      v694 = v423 * v437.__sinval;
      if (progressCopy <= 0.0)
      {
        v770 = v441 + v441;
        v446 = v418;
        v444 = -v441;
        v445 = rectb;
      }

      else
      {
        v443 = objc_msgSend_clearColor(MEMORY[0x277D75348], v439, v423 * v437.__sinval);
        v446 = MEMORY[0x23EEC10C0](v418, v443, progressCopy);

        v873.origin.x = -v441;
        v873.origin.y = v423 - v441;
        v873.size.width = v441 + v441;
        v873.size.height = v441 + v441;
        v874 = CGRectInset(v873, v441 * progressCopy, v441 * progressCopy);
        v444 = v874.origin.x;
        v445 = v874.origin.y;
        v442 = v874.size.width;
        v770 = v874.size.height;
      }

      v447 = k > 0.0;
      CGContextAddArc(contextCopy10, v786, v783, widthb, v438 + 3.14159265, v438, v447);
      CGContextAddArc(contextCopy10, 0.0, 0.0, radiusa, v438, v436, v447);
      CGContextAddArc(contextCopy10, v683, v694, widthb, v436, v436 + 3.14159265, v447);
      CGContextAddArc(contextCopy10, 0.0, 0.0, v738, v436, v438, k <= 0.0);
      CGContextClosePath(contextCopy10);
      yb = v444;
      v875.origin.x = v444;
      rectb = v445;
      v875.origin.y = v445;
      v875.size.width = v442;
      v875.size.height = v770;
      CGContextAddEllipseInRect(contextCopy10, v875);
      v448 = v446;
      v451 = objc_msgSend_CGColor(v448, v449, v450);
      CGContextSetFillColorWithColor(contextCopy10, v451);
      CGContextEOFillPath(contextCopy10);
      v204 = progressCopy;
    }

    else
    {
      v770 = v441 + v441;
      v446 = v418;
    }

    if (v204 > 0.0)
    {
      v452 = MEMORY[0x23EEC10C0](v446, v420, v204);
      v453 = *(p_layoutConstants + 440);
      v454 = *(p_layoutConstants + 448);
      v876.origin.x = v742;
      v876.size.width = v747;
      v876.origin.y = v742;
      v876.size.height = v747;
      v877 = CGRectInset(v876, v453 * 0.5, v453 * 0.5);
      v455 = v877.origin.x;
      v456 = v877.origin.y;
      v457 = v877.size.width;
      v458 = v877.size.height;
      v877.origin.x = v752;
      v877.size.width = theArraya;
      v877.origin.y = v752;
      v877.size.height = theArraya;
      v878 = CGRectInset(v877, v454 * -0.5, v454 * -0.5);
      v753 = v878.origin.y;
      theArrayd = v878.origin.x;
      v743 = v878.size.height;
      v748 = v878.size.width;
      CGContextSetLineWidth(context, v453);
      v459 = v452;
      v462 = objc_msgSend_CGColor(v459, v460, v461);
      CGContextSetStrokeColorWithColor(context, v462);
      v879.origin.x = v455;
      v879.origin.y = v456;
      v879.size.width = v457;
      v879.size.height = v458;
      CGContextStrokeEllipseInRect(context, v879);
      CGContextSetLineWidth(context, v454);
      v463 = v452;
      v466 = objc_msgSend_CGColor(v463, v464, v465);
      CGContextSetStrokeColorWithColor(context, v466);
      v880.origin.y = v753;
      v880.origin.x = theArrayd;
      v204 = progressCopy;
      v880.size.height = v743;
      v880.size.width = v748;
      CGContextStrokeEllipseInRect(context, v880);

      contextCopy10 = context;
    }

    CGContextSaveGState(contextCopy10);
    CGContextAddArc(contextCopy10, v786, v783, widthb, -3.14159265, 3.14159265, 0);
    CGContextClip(contextCopy10);
    if (v204 < 1.0)
    {
      v468 = objc_msgSend_fillColor(v417, v467, 1.0);
      v469 = sub_23BECC594(v468, v446, preserveColorsInTritium, v419, v204, fractionUsePOIDerivedColors);

      if (v204 > 0.0)
      {
        v472 = objc_msgSend_clearColor(MEMORY[0x277D75348], v470, v471);
        v473 = MEMORY[0x23EEC10C0](v469, v472, v204);

        v469 = v473;
      }

      v474 = v469;
      v477 = objc_msgSend_CGColor(v474, v475, v476);
      CGContextSetFillColorWithColor(context, v477);
      v881.origin.x = yb;
      v881.origin.y = rectb;
      v881.size.width = v442;
      v881.size.height = v770;
      CGContextFillEllipseInRect(context, v881);

      contextCopy10 = context;
    }

    CGContextRestoreGState(contextCopy10);

    v478 = *(p_layoutConstants + 408);
    v479 = *(p_layoutConstants + 416);
    v481 = sub_23BED041C();
    selfCopy = v706;
    if (v417)
    {
      v482 = v481 + v481 + v478 - v479;
      v483 = objc_msgSend_waypointLocation(v417, v480, v692 * 3.14159265);
      objc_msgSend_ntk_bearingTo_(v411, v484, v485, v483);
      v487 = v486;

        ;
      }

      v489 = v482 * 0.5;
      if (m >= -3.14159265)
      {
        v490 = v696;
      }

      else
      {
        v490 = v696;
        do
        {
          m = m + 6.28318531;
        }

        while (m < -3.14159265);
      }

      v491 = __sincos_stret(1.57079633 - m);
      sub_23BED0510(contextCopy10, p_layoutConstants, v417, v802, v801, v417, v417, 1u, v489 * v491.__cosval, v489 * v491.__sinval, v804, 1.0, 1.0, fractionUsePOIDerivedColors, v204, v490, 1u, 0, v419, v419, preserveColorsInTritium, v419, v415);
    }

    v179 = v732;
    v186 = v802;
  }

  if (v392 <= 0.0)
  {
    v495 = v704;
LABEL_293:
    v640 = v700;
    goto LABEL_296;
  }

  if (v685 * waypointsAlpha >= 1.0)
  {
    v495 = v704;
  }

  else
  {
    v492 = objc_msgSend_colorWithAlphaComponent_(v724, v200, v685 * waypointsAlpha);

    v494 = objc_msgSend_colorWithAlphaComponent_(v704, v493, v685 * waypointsAlpha);

    v495 = v494;
    v724 = v492;
  }

  v496 = v721;
  if (v392 < 1.0)
  {
    v497 = objc_msgSend_colorWithAlphaComponent_(v721, v200, v392);

    v499 = objc_msgSend_colorWithAlphaComponent_(v723, v498, v392);

    v723 = v499;
    v496 = v497;
  }

  v500 = v496;
  v501 = sub_23BED041C();
  sub_23BECB538(*(p_layoutConstants + 432), *(p_layoutConstants + 448), v204);
  v503 = v501 + (*(p_layoutConstants + 432) - v502) * -0.5;
  v504 = -v503;
  v505 = v503 + v503;
  CGContextSetLineWidth(contextCopy10, v502);
  v506 = v500;
  v509 = objc_msgSend_CGColor(v506, v507, v508);
  v721 = v500;

  CGContextSetStrokeColorWithColor(contextCopy10, v509);
  v882.origin.x = v504;
  v882.origin.y = v504;
  v882.size.width = v505;
  v882.size.height = v505;
  CGContextStrokeEllipseInRect(contextCopy10, v882);
  if (_fractionFromToDisplayMode(0, v186, v801) <= 0.0)
  {
    v514 = 0.0;
    v510 = 1.0;
    goto LABEL_202;
  }

  CLKInterpolateBetweenFloatsClipped();
  CLKInterpolateBetweenFloatsClipped();
  sub_23BECB710();
  v510 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  v512 = 0.0;
  if (fabs(v511) >= 0.00000011920929)
  {
    v512 = v511;
    if (fabs(v511 + -1.0) < 0.00000011920929)
    {
      v512 = 1.0;
    }
  }

  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v513) >= 0.00000011920929)
  {
    v510 = v513;
    if (fabs(v513 + -1.0) < 0.00000011920929)
    {
      v510 = 1.0;
    }
  }

  v514 = 0.0;
  CLKInterpolateBetweenFloatsClipped();
  if (fabs(v515) >= 0.00000011920929)
  {
    v514 = v515;
    if (fabs(v515 + -1.0) < 0.00000011920929)
    {
      v514 = 1.0;
    }
  }

  if (v512 > 0.0)
  {
    v516 = v495;
    v517 = CFArrayGetValueAtIndex(selfCopy->_informationLabelLines, 0);
    v518 = *(p_layoutConstants + 648);
    v519 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v520 = v516;
    v521 = sub_23BED041C();
    v522 = v518 + (v521 + v519 + v521) * 0.5;
    v523 = v520;
    v526 = objc_msgSend_CGColor(v523, v524, v525);

    CGContextSetFillColorWithColor(contextCopy10, v526);
    sub_23BECFE88(contextCopy10, v517, 0, 0.0, 0.0, 0.0, v522, 0.5);
  }

  if (v510 > 0.0)
  {
LABEL_202:
    transitoryWaypointRadiusProgress = selfCopy->_transitoryWaypointRadiusProgress;
    transitoryWaypointRadius = selfCopy->_transitoryWaypointRadius;
    transitoryTargetWaypoint = selfCopy->_transitoryTargetWaypoint;
    transitoryTargetWaypointProgress = selfCopy->_transitoryTargetWaypointProgress;
    waypointsConeWaypointTrackingEnabled = selfCopy->_waypointsConeWaypointTrackingEnabled;
    waypointsConeDynamicBreadthEnabled = selfCopy->_waypointsConeDynamicBreadthEnabled;
    radiusb = v688;
    v529 = v687;
    rectc = transitoryTargetWaypoint;
    widthc = v698;
    v530 = v701;
    v754 = v713;
    v531 = v714;
    v787 = v724;
    v705 = v495;
    v686 = v495;
    v532 = v723;
    v533 = v703;
    v534 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v681 = sub_23BED041C();
    v535 = v681 + v681 + v534;
    v695 = _fractionFromToDisplayMode(0, v186, v801);
    if (_fractionFromToDisplayMode(2, v186, v801) <= 0.0)
    {
      v537 = 0;
      v536 = 0;
    }

    else if (transitoryTargetWaypointProgress >= 0.5)
    {
      v536 = rectc;
      v537 = widthc;
    }

    else
    {
      v536 = widthc;
      v537 = rectc;
      transitoryTargetWaypointProgress = 1.0 - transitoryTargetWaypointProgress;
    }

    v538 = v695;
    v765 = v392 * v510;
    v539 = v535 * 0.5;
    yc = v692 * 3.14159265 / 180.0;
    v697 = v529;
    if (v695 <= 0.0)
    {
      v540 = 0;
      v544 = 0.0;
      v744 = 0.0;
      v541 = p_layoutConstants;
    }

    else
    {
      v540 = v529;
      v541 = p_layoutConstants;
      v542 = *(p_layoutConstants + 488) * 0.5;
      v543 = atan2(*(p_layoutConstants + 456), v539);
      v744 = v542 + v543;
      v544 = v542 - v543;
    }

    *&v833.a = MEMORY[0x277D85DD0];
    *&v833.b = 3221225472;
    *&v833.c = sub_23BED1338;
    *&v833.d = &unk_278BA1248;
    v545 = v530;
    *&v833.tx = v545;
    v838 = v692 * 3.14159265 / 180.0;
    v839 = v539;
    v840 = transitoryWaypointRadius;
    v841 = waypointRadius;
    contextCopy9 = context;
    v843 = v541;
    v844 = v802;
    v845 = v801;
    v846 = v804;
    v546 = v536;
    *&v833.ty = v546;
    v547 = v537;
    *&v834 = v547;
    v847 = transitoryTargetWaypointProgress;
    v848 = transitoryWaypointRadiusProgress;
    v548 = v540;
    *(&v834 + 1) = v548;
    v849 = fractionUsePOIDerivedColors;
    v739 = v531;
    *&v835 = v739;
    v850 = progressCopy;
    v771 = v533;
    *(&v835 + 1) = v771;
    v852 = preserveColorsInTritium;
    v851 = v392 * v510;
    v788 = v787;
    v836 = v788;
    v761 = v532;
    v837 = v761;
    v549 = MEMORY[0x23EEC15B0](&v833);
    v551 = v549;
    v552 = 1.0;
    *&theArrayb = v539;
    if (progressCopy < 1.0)
    {
      v678 = v549;
      v733 = v179;
      v827 = 0u;
      v828 = 0u;
      __y = 0u;
      v826 = 0u;
      v553 = radiusb;
      v556 = objc_msgSend_countByEnumeratingWithState_objects_count_(v553, v554, v555, &__y, &v831, 16);
      if (v556)
      {
        v559 = v556;
        v560 = *v826;
        do
        {
          for (n = 0; n != v559; ++n)
          {
            if (*v826 != v560)
            {
              objc_enumerationMutation(v553);
            }

            v562 = *(*(&__y + 1) + 8 * n);
            if (v562 != v546 && v562 != v547)
            {
              v564 = objc_msgSend_waypointLocation(*(*(&__y + 1) + 8 * n), v557, ii);
              objc_msgSend_ntk_bearingTo_(v545, v565, v566, v564);
              v568 = v567;

                ;
              }

              while (ii < -3.14159265)
              {
                ii = ii + 6.28318531;
              }

              if (fabs(ii) >= v544)
              {
                v569 = 1.57079633 - ii;
                v570 = objc_msgSend_waypointLocation(v562, v557, ii);
                objc_msgSend_distanceFromLocation_(v545, v571, v572, v570);
                v574 = v573;

                v575 = __sincos_stret(v569);
                sub_23BED0510(context, p_layoutConstants, v562, v802, v801, rectc, widthc, v574 <= transitoryWaypointRadius, v539 * v575.__cosval, v539 * v575.__sinval, v804, transitoryTargetWaypointProgress, transitoryWaypointRadiusProgress, fractionUsePOIDerivedColors, progressCopy, v765, v574 <= waypointRadius, 0, v754, v771, preserveColorsInTritium, v788, v761);
              }
            }
          }

          v559 = objc_msgSend_countByEnumeratingWithState_objects_count_(v553, v557, ii, &__y, &v831, 16);
        }

        while (v559);
      }

      v179 = v733;
      v551 = v678;
      v538 = v695;
    }

    v495 = v705;
    v576 = v697;
    if (v538 > 0.0)
    {
      if (v697)
      {
        if (waypointsConeWaypointTrackingEnabled)
        {
          v577 = objc_msgSend_waypointLocation(v697, v550, v552);
          objc_msgSend_ntk_bearingTo_(v545, v578, v579, v577);
          v581 = v580;

          if (v581 >= 180.0)
          {
            v582 = v692;
            do
            {
              v581 = v581 + -360.0;
            }

            while (v581 >= 180.0);
          }

          else
          {
            v582 = v692;
          }

            ;
          }

            ;
          }

            ;
          }

          v552 = jj * 3.14159265 / 180.0;
          v583 = v552 + 1.57079633;
        }

        else
        {
          v583 = 1.57079633;
        }

        if (waypointsConeDynamicBreadthEnabled)
        {
          v586 = objc_msgSend_waypointLocation(v697, v550, v552);
          objc_msgSend_distanceFromLocation_(v545, v587, v588, v586);

          CLKInterpolateBetweenFloatsClipped();
        }

        v584 = v788;
      }

      else
      {
        v583 = 1.57079633;
        v584 = v686;
      }

      v589 = v584;
      v590 = v681 + *(p_layoutConstants + 408) - *(p_layoutConstants + 416) + *(p_layoutConstants + 424) * 0.5;
      v711 = v681 - *(p_layoutConstants + 432) * 0.5;
      v591 = v589;
      CLKInterpolateBetweenFloatsClipped();
      v593 = v592 * 0.5;
      v594 = v583 - v593;
      v595 = v583 + v593;
      CGContextAddArc(context, 0.0, 0.0, v590, v583 - v593, v583 + v593, 0);
      CGContextAddArc(context, 0.0, 0.0, v711, v595, v594, 1);
      CGContextClosePath(context);
      v596 = v591;
      v599 = objc_msgSend_CGColor(v596, v597, v598);
      v749 = v591;

      CGContextSetFillColorWithColor(context, v599);
      CGContextFillPath(context);
      if (progressCopy >= 1.0 || v684 < 2.22044605e-16)
      {

        v576 = v697;
        v204 = progressCopy;
LABEL_284:

        contextCopy10 = context;
        selfCopy = v706;
        goto LABEL_285;
      }

      v679 = v551;
      v734 = v179;
      CGContextSaveGState(context);
      v600 = v681 + *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
      v601 = tan(*(p_layoutConstants + 488) * 0.5);
      CGContextMoveToPoint(context, 0.0, 0.0);
      CGContextAddLineToPoint(context, -(v600 * v601), v600);
      CGContextAddLineToPoint(context, v600 * v601, v600);
      CGContextClosePath(context);
      CGContextClip(context);
      v823 = 0u;
      v824 = 0u;
      v821 = 0u;
      v822 = 0u;
      v602 = radiusb;
      v605 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v603, v604, &v821, &v829, 16);
      if (v605)
      {
        v608 = v605;
        v609 = *v822;
        do
        {
          for (kk = 0; kk != v608; ++kk)
          {
            if (*v822 != v609)
            {
              objc_enumerationMutation(v602);
            }

            v611 = *(*(&v821 + 1) + 8 * kk);
            if (v611 != v547 && v611 != v548 && v611 != v546)
            {
              v614 = objc_msgSend_waypointLocation(*(*(&v821 + 1) + 8 * kk), v606, mm);
              objc_msgSend_ntk_bearingTo_(v545, v615, v616, v614);
              v618 = v617;

                ;
              }

              while (mm < -3.14159265)
              {
                mm = mm + 6.28318531;
              }

              if (fabs(mm) <= v744)
              {
                v619 = 1.57079633 - mm;
                v620 = objc_msgSend_waypointLocation(v611, v606, mm);
                objc_msgSend_distanceFromLocation_(v545, v621, v622, v620);
                v624 = v623;

                v625 = __sincos_stret(v619);
                sub_23BED0510(context, p_layoutConstants, v611, v802, v801, rectc, widthc, v624 <= transitoryWaypointRadius, *&theArrayb * v625.__cosval, *&theArrayb * v625.__sinval, v804, transitoryTargetWaypointProgress, transitoryWaypointRadiusProgress, fractionUsePOIDerivedColors, progressCopy, v765, v624 <= waypointRadius, v611, v739, v771, preserveColorsInTritium, v788, v761);
              }
            }
          }

          v608 = objc_msgSend_countByEnumeratingWithState_objects_count_(v602, v606, mm, &v821, &v829, 16);
        }

        while (v608);
      }

      v551 = v679;
      if (v548)
      {
        (v679)[2](v679, v548);
      }

      CGContextRestoreGState(context);

      v495 = v705;
      v179 = v734;
      v576 = v697;
    }

    if (v546 && v546 != v548)
    {
      (v551)[2](v551, v546);
    }

    v204 = progressCopy;
    if (v547 != v546 && v547 && v547 != v548)
    {
      (v551)[2](v551, v547);
    }

    goto LABEL_284;
  }

LABEL_285:
  if (v514 <= 0.0)
  {
    goto LABEL_293;
  }

  v626 = seconds;
  v627 = v712;
  if (v204 >= 1.0 || (v630 = v392 * v514, v392 * v514 <= 0.0))
  {
    v640 = v700;
  }

  else
  {
    *v628.i64 = v626 / 6.0;
    *v629.i64 = v626 / 6.0 - trunc(v626 / 6.0);
    v631.f64[0] = NAN;
    v631.f64[1] = NAN;
    *&ca = vbslq_s8(vnegq_f64(v631), v629, v628).u64[0];
    v632 = *(p_layoutConstants + 408) - *(p_layoutConstants + 416);
    v634 = sub_23BED041C();
    v635 = v634 + v632;
    v636 = *(p_layoutConstants + 424);
    yd = *(p_layoutConstants + 432);
    v637 = 1.0 - v204;
    if (v204 <= 0.0)
    {
      v637 = 1.0;
    }

    v638 = v637 * v630;
    if (v638 < 1.0)
    {
      v639 = objc_msgSend_colorWithAlphaComponent_(v627, v633, v638);

      v627 = v639;
    }

    v640 = v700;
    v641 = *MEMORY[0x277CBF348];
    v642 = *(MEMORY[0x277CBF348] + 8);
    v643 = ca * -6.28318531 + 1.04719755;
    CGContextSaveGState(contextCopy10);
    CGContextAddArc(contextCopy10, v641, v642, v635 - v636 * 0.5, ca * -6.28318531, v643, 0);
    CGContextAddArc(contextCopy10, v641, v642, v634 + yd * 0.5, v643, ca * -6.28318531, 1);
    CGContextClip(contextCopy10);
    CGContextClosePath(contextCopy10);
    *&v833.a = xmmword_23BEED430;
    v644 = v627;
    *&v647 = COERCE_DOUBLE(objc_msgSend_CGColor(v644, v645, v646));
    v650 = objc_msgSend_clearColor(MEMORY[0x277D75348], v648, v649);
    v651 = v650;
    *&v654 = COERCE_DOUBLE(objc_msgSend_CGColor(v651, v652, v653));

    v831 = *&v647;
    v832 = *&v654;
    v657 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v655, v656, &v831, 2);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v659 = CGGradientCreateWithColors(DeviceRGB, v657, &v833.a);
    v854.x = v641;
    v854.y = v642;
    CGContextDrawConicGradient(contextCopy10, v659, v854, ca * -6.28318531);
    CGGradientRelease(v659);
    CGColorSpaceRelease(DeviceRGB);
    CGContextRestoreGState(contextCopy10);
  }

LABEL_296:
  if (v691 <= 0.0)
  {
    v663 = v702;
  }

  else
  {
    if (v691 < 1.0)
    {
      v660 = objc_msgSend_colorWithAlphaComponent_(v702, v200, v691);

      v702 = v660;
    }

    radiusLabelCTLine = selfCopy->_radiusLabelCTLine;
    if (!radiusLabelCTLine)
    {
      radiusLabelCTLine = objc_msgSend_radiusLabelCTLineForRadius_(selfCopy, v200, waypointRadius);
      selfCopy->_radiusLabelCTLine = radiusLabelCTLine;
    }

    v662 = *(p_layoutConstants + 528) - *(p_layoutConstants + 568) - *(p_layoutConstants + 536) - *(p_layoutConstants + 632);
    v663 = v702;
    CLKInterpolateBetweenFloatsClipped();
    v665 = v664;
    CLKInterpolateBetweenFloatsClipped();
    v667 = v666;
    CLKInterpolateBetweenFloatsClipped();
    v669 = v668;
    CLKInterpolateBetweenFloatsClipped();
    v671 = v670;
    v672 = v663;
    v675 = objc_msgSend_CGColor(v672, v673, v674);

    CGContextSetFillColorWithColor(contextCopy10, v675);
    sub_23BECFE88(contextCopy10, radiusLabelCTLine, 1, v667 * 3.14159265 / 180.0, v665 * 3.14159265 / 180.0, v669 * 3.14159265 / 180.0, v662, v671);
  }

  CGContextRestoreGState(contextCopy10);
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  objc_msgSend_bounds(self, v5, v6);
  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = v9;
  v11 = v10;
  p_dirtyRect = &self->_dirtyRect;
  v16.size.height = v10;
  if (!CGRectContainsRect(self->_dirtyRect, v16))
  {
    v15.origin.x = p_dirtyRect->origin.x;
    v15.origin.y = self->_dirtyRect.origin.y;
    v15.size.width = self->_dirtyRect.size.width;
    v15.size.height = self->_dirtyRect.size.height;
    CGContextClipToRect(CurrentContext, v15);
  }

  CGContextTranslateCTM(CurrentContext, 0.0, v11);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  objc_msgSend__drawCircularCompassBezelInContext_tritiumProgress_backgroundAlpha_compassAlpha_waypointsAlpha_secondsAlpha_(self, v13, self->_tritiumProgress, CurrentContext, self->_backgroundAlpha, self->_compassAlpha, self->_waypointsAlpha, self->_secondsAlpha);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  p_dirtyRect->origin = *MEMORY[0x277CBF3A0];
  self->_dirtyRect.size = v14;
}

- (void)setToSnapshotValuesWithPOIFilter:(id)filter
{
  filterCopy = filter;
  objc_msgSend_setSeconds_(self, v5, 45.0);
  objc_msgSend_setHeading_(self, v6, 0.0);
  v9 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v7, v8);
  v12 = objc_msgSend_objectForKey_(v9, v10, v11, *MEMORY[0x277CBE718]);
  v15 = objc_msgSend_BOOLValue(v12, v13, v14);

  v34 = objc_msgSend_testAppleParkLocation(NTKLeghornWaypoint, v16, v17);
  v19 = objc_msgSend_demoPOIsFromDataSet_relativeToLocation_filterBy_filterRadius_ensureNorthPOI_useMetric_userGuides_(NTKLeghornDemoPOIDataSource, v18, 0.0, NTKLeghornPOIDataSetSnapshots, v34, filterCopy, 1, v15, 0);

  objc_msgSend_setWaypoints_(self, v20, v21, v19);
  objc_msgSend_setTargetWaypoint_(self, v22, v23, 0);
  objc_msgSend_setLocation_(self, v24, v25, v34);
  objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v26, v27);
  objc_msgSend_setWaypointRadius_(self, v28, v29);
  objc_msgSend_setDisplayMode_(self, v30, v31, 0);
  objc_msgSend_setWaypointsState_(self, v32, v33, 2);
}

+ (void)drawSnapshotInContext:(CGContext *)context hiVizComplicationStyle:(unint64_t)style colorPalette:(id)palette poiFilter:(id)filter forDevice:(id)device
{
  deviceCopy = device;
  filterCopy = filter;
  paletteCopy = palette;
  v14 = [NTKCircularBezelView alloc];
  objc_msgSend_screenBounds(deviceCopy, v15, v16);
  v30 = objc_msgSend_initWithFrame_forDevice_(v14, v17, v18, deviceCopy);

  objc_msgSend_setColorPalette_(v30, v19, v20, paletteCopy);
  objc_msgSend_setHiVizComplicationStyle_(v30, v21, v22, style);
  objc_msgSend_setToSnapshotValuesWithPOIFilter_(v30, v23, v24, filterCopy);

  v27 = objc_msgSend_layer(v30, v25, v26);
  objc_msgSend_renderInContext_(v27, v28, v29, context);
}

- (void)setPreserveColorsInTritium:(BOOL)tritium
{
  if (self->_preserveColorsInTritium != tritium)
  {
    self->_preserveColorsInTritium = tritium;
    objc_msgSend_setNeedsDisplay(self, a2, v3);
  }
}

- (void)setLiveSecondsInTritium:(BOOL)tritium
{
  if (self->_liveSecondsInTritium != tritium)
  {
    self->_liveSecondsInTritium = tritium;
    objc_msgSend_setNeedsDisplay(self, a2, v3);
  }
}

- (void)setTritiumProgress:(double)progress
{
  if (self->_tritiumProgress != progress)
  {
    self->_tritiumProgress = progress;
    objc_msgSend__updateLabels(self, a2, progress);

    objc_msgSend_setNeedsDisplay(self, v5, v6);
  }
}

- (CGRect)_dirtyRectFromSeconds:(double)seconds toSeconds:(double)toSeconds
{
  if (seconds <= toSeconds)
  {
    secondsCopy = toSeconds;
  }

  else
  {
    secondsCopy = seconds;
  }

  if (seconds <= toSeconds)
  {
    toSecondsCopy2 = seconds;
  }

  else
  {
    toSecondsCopy2 = toSeconds;
  }

  sub_23BECBCCC(&self->_layoutConstants, self->_fromHiVizComplicationStyle, self->_toHiVizComplicationStyle, secondsCopy, self->_fractionHiVizComplicationStyle);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  for (i = v14; ; i = v22)
  {
    secondsCopy = secondsCopy + -1.0;
    if (secondsCopy <= toSecondsCopy2)
    {
      break;
    }

    sub_23BECBCCC(&self->_layoutConstants, self->_fromHiVizComplicationStyle, self->_toHiVizComplicationStyle, secondsCopy, self->_fractionHiVizComplicationStyle);
    v39.origin.x = v16;
    v39.origin.y = v17;
    v39.size.width = v18;
    v39.size.height = v19;
    v35.origin.x = v9;
    v35.origin.y = v11;
    v35.size.width = v13;
    v35.size.height = i;
    *&v8 = CGRectUnion(v35, v39);
    v9 = v8;
    v11 = v20;
    v13 = v21;
  }

  objc_msgSend_bounds(self, v7, v8);
  v24 = v23;
  v26 = v25 * 0.5;
  v27 = v23 * 0.5;
  v36.origin.x = v9;
  v36.origin.y = v11;
  v36.size.width = v13;
  v36.size.height = i;
  v37 = CGRectOffset(v36, v26, v27);
  x = v37.origin.x;
  width = v37.size.width;
  height = v37.size.height;
  v31 = v24 - CGRectGetMaxY(v37);
  v32 = x;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v31;
  result.origin.x = v32;
  return result;
}

- (void)setSeconds:(double)seconds
{
  if (objc_msgSend__needUpdateForDeltaSeconds_(self, a2, seconds - self->_seconds))
  {
    seconds = self->_seconds;
    self->_seconds = seconds;
    if ((objc_msgSend__secondsParasitesNeedsDisplay(self, v5, v6) & 1) != 0 || (v9 = vabdd_f64(seconds, seconds), v9 > 1.0) || (v9 = 60.0 - self->_secondsEndOfMinuteAnimationDuration, v9 < seconds))
    {
      objc_msgSend_setNeedsDisplay(self, v8, v9);
    }

    else
    {
      objc_msgSend__dirtyRectFromSeconds_toSeconds_(self, v8, seconds, seconds);
      objc_msgSend_setNeedsDisplayInRect_(self, v12, v13);
    }

    v11 = modf(seconds + seconds, &__y);
    if (v11 < 0.133333333)
    {
      objc_msgSend__updateLabelsIfNeeded(self, v10, v11);
    }
  }
}

- (void)_setHeading:(double)heading duration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_setHeading_(self, v7, heading);
  completionCopy[2](completionCopy, 1);
}

- (void)_updateWaypointAhead
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = self->_location;
  v4 = self->_waypoints;
  v7 = v4;
  v8 = 0.0;
  if (v3)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || (heading = self->_heading, !objc_msgSend_count(v4, v5, v6)))
  {
    v34 = 0;
  }

  else
  {
    v11 = v7;
    v40 = v3;
    v12 = v3;
    v13 = self->_layoutConstants.bezelCircularWaypointAheadMaximumArc * 0.5;
      ;
    }

    v16 = v13 + i;
      ;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v16 * 180.0;
    v39 = j / 3.14159265;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, j / 3.14159265, &v41, v45, 16);
    if (v18)
    {
      v21 = v18;
      v22 = 0;
      v23 = *v42;
      v24 = 720.0;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v41 + 1) + 8 * k);
          v27 = objc_msgSend_waypointLocation(v26, v19, m);
          objc_msgSend_ntk_bearingTo_(v12, v28, v29, v27);
          v31 = v30;

          while (v31 >= 180.0)
          {
            v31 = v31 + -360.0;
          }

          while (v31 < -180.0)
          {
            v31 = v31 + 360.0;
          }

            ;
          }

          while (m < -180.0)
          {
            m = m + 360.0;
          }

          v32 = fabs(m);
          if (v32 < v24)
          {
            v33 = v26;

            v24 = v32;
            v22 = v33;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v19, m, &v41, v45, 16);
      }

      while (v21);
    }

    else
    {
      v22 = 0;
      v24 = 720.0;
    }

    v8 = 1.0;
    v35 = v38 / 3.14159265;
    if (v24 > v39)
    {
      if (v24 < v35)
      {
        v8 = (v35 - v24) / (v35 - v39);
      }

      else
      {
        v8 = 0.0;
      }
    }

    if (v24 >= v35)
    {
      v34 = 0;
    }

    else
    {
      v34 = v22;
    }

    v3 = v40;
  }

  waypointAhead = self->_waypointAhead;
  self->_waypointAhead = v34;
  v37 = v34;

  self->_waypointAheadProgress = v8;
}

- (id)attributedStringForDistanceAccuracyToWaypoint:(id)waypoint
{
  v58[2] = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  fractionUsePOIDerivedColors = self->_fractionUsePOIDerivedColors;
  v6 = self->_waypointLabelSecondaryColor;
  v9 = objc_msgSend_labelColor(waypointCopy, v7, v8);
  tritiumProgress = self->_tritiumProgress;
  v49 = objc_msgSend_clearColor(MEMORY[0x277D75348], v11, v12);
  v51 = v9;
  v53 = v6;
  v13 = sub_23BECC594(v9, v49, 1, v6, tritiumProgress, fractionUsePOIDerivedColors);
  v14 = self->_waypointLabelSecondaryFont;
  v15 = self->_waypointLabelSecondarySmallcapsFont;
  v17 = *MEMORY[0x277D740A8];
  v57[0] = *MEMORY[0x277D740C0];
  v16 = v57[0];
  v57[1] = v17;
  v58[0] = v13;
  v58[1] = v14;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v19, v58, v57, 2);
  v55[0] = v16;
  v55[1] = v17;
  v56[0] = v13;
  v56[1] = v15;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v22, v56, v55, 2);
  v25 = self->_location;
  if (v25)
  {
    v27 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v24, v26, v49, v51, v53);
    v30 = objc_msgSend_objectForKey_(v27, v28, v29, *MEMORY[0x277CBE718]);
    v33 = objc_msgSend_BOOLValue(v30, v31, v32);

    v36 = objc_msgSend_waypointLocation(waypointCopy, v34, v35);
    objc_msgSend_distanceFromLocation_(v25, v37, v38, v36);
    v40 = v39;

    if (v40 < 0.0)
    {
      v40 = 0.0;
    }

    v42 = objc_msgSend_timestamp(v25, v41, 0.0);
    v44 = objc_msgSend__attributedStringForDistance_lastUpdatedDate_useMetric_distanceAttributes_distanceUnitAttributes_durationAttributes_durationUnitAttributes_(MEMORY[0x277CCA898], v43, v40, v42, v33, v20, v23, v20, v23);
  }

  else
  {
    v45 = objc_alloc(MEMORY[0x277CCA898]);
    v44 = objc_msgSend_initWithString_attributes_(v45, v46, v47, @" ", v20, v49, v51, v53);
  }

  return v44;
}

- (id)attributedStringForTargetWaypoint:(id)waypoint
{
  v20[2] = *MEMORY[0x277D85DE8];
  waypointLabelTertiaryColor = self->_waypointLabelTertiaryColor;
  v5 = self->_waypointLabelPrimaryFont;
  v6 = waypointLabelTertiaryColor;
  v9 = objc_msgSend_labelText(waypoint, v7, v8);
  v10 = *MEMORY[0x277D740A8];
  v19[0] = *MEMORY[0x277D740C0];
  v19[1] = v10;
  v20[0] = v6;
  v20[1] = v5;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v12, v20, v19, 2);

  v14 = objc_alloc(MEMORY[0x277CCA898]);
  v17 = objc_msgSend_initWithString_attributes_(v14, v15, v16, v9, v13);

  return v17;
}

- (id)attributedStringForCardinalDirectionLabel:(double)label
{
    ;
  }

  while (i < 0.0)
  {
    i = i + 360.0;
  }

  waypointLabelPrimaryColor = self->_waypointLabelPrimaryColor;
  waypointLabelTertiaryColor = self->_waypointLabelTertiaryColor;
  waypointLabelHeadingMonospacedFont = self->_waypointLabelHeadingMonospacedFont;
  v7 = MEMORY[0x277CCA898];
  v8 = self->_waypointLabelHeadingFont;
  v9 = waypointLabelTertiaryColor;
  v10 = waypointLabelPrimaryColor;
  v12 = objc_msgSend__attributedStringForDirection_directionFont_directionColor_cardinalFont_cardinalColor_(v7, v11, i, waypointLabelHeadingMonospacedFont, v9, v8, v10);

  return v12;
}

- (void)_updateLabelsFromDisplayMode:(unint64_t)mode toDislayMode:(unint64_t)dislayMode progress:(double)progress onlyUpdateDistanceLabel:(BOOL)label
{
  tritiumProgress = self->_tritiumProgress;
  waypointsAlpha = self->_waypointsAlpha;
  v13 = CLKInterpolateBetweenFloatsClipped();
  v15.n128_f64[0] = fabs(v14.n128_f64[0]);
  v16 = 0.0;
  if (v15.n128_f64[0] >= 0.00000011920929)
  {
    v15.n128_f64[0] = fabs(v14.n128_f64[0] + -1.0);
    v16 = v14.n128_f64[0];
    if (v15.n128_f64[0] < 0.00000011920929)
    {
      v16 = 1.0;
    }
  }

  if (mode != 3 && mode)
  {
    if (dislayMode)
    {
      mode = -1;
    }

    else
    {
      mode = 0;
    }

    if (dislayMode == 3)
    {
      goto LABEL_18;
    }
  }

  else if (dislayMode == 3 || !dislayMode)
  {
    v14.n128_u64[0] = 0.5;
    if (progress > 0.5)
    {
      mode = dislayMode;
    }
  }

  if (mode == 3)
  {
LABEL_18:
    v13 = self->_targetWaypoint;
    v17 = v13;
    v18 = 0;
    v14.n128_u64[0] = 1.0;
    goto LABEL_19;
  }

  if (mode)
  {
    v17 = 0;
    if (label)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v13 = self->_waypointAhead;
  v17 = v13;
  v14.n128_u64[0] = *&self->_waypointAheadProgress;
  v18 = 1;
LABEL_19:
  v15.n128_f64[0] = fmax(fmin(1.0 - tritiumProgress, 1.0), 0.0);
  if (v17)
  {
    v19 = v14.n128_f64[0] < 0.5;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (label)
    {
      goto LABEL_47;
    }

    if (v18)
    {
      v20 = 1.0;
      v21 = v15.n128_f64[0] * (waypointsAlpha * v16) * fmax(fmin(0.5 - v14.n128_f64[0] + 0.5 - v14.n128_f64[0], 1.0), 0.0);
      v72 = v17;
      if (v21 < 1.0 && fabs(v21 + -1.0) >= 2.22044605e-16)
      {
        if (fabs(v21) >= 2.22044605e-16 && v21 > 0.0)
        {
          v20 = v21;
        }

        else
        {
          v20 = 0.0;
        }
      }

      objc_msgSend_setText_(self->_circularPOIInformationPrimaryLabel, v17, v21, &stru_284EA8F68);
      objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v23, v24, 1);
      objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v25, v26, &stru_284EA8F68);
      v28 = objc_msgSend_attributedStringForCardinalDirectionLabel_(self, v27, self->_heading);
      objc_msgSend_setAttributedText_(self->_circularPOIInformationSecondaryLabel, v29, v30, v28);

      objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v31, v32, 0);
      objc_msgSend_setAlpha_(self->_circularPOIInformationSecondaryLabel, v33, v20);
      v13 = objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v34, v35, &stru_284EA8F68);
      goto LABEL_46;
    }

LABEL_45:
    v72 = v17;
    objc_msgSend_setText_(self->_circularPOIInformationPrimaryLabel, v17, v14.n128_f64[0], &stru_284EA8F68, v15.n128_f64[0]);
    objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v62, v63, 1);
    objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v64, v65, &stru_284EA8F68);
    objc_msgSend_setText_(self->_circularPOIInformationSecondaryLabel, v66, v67, &stru_284EA8F68);
    objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v68, v69, 1);
    v13 = objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v70, v71, &stru_284EA8F68);
LABEL_46:
    v17 = v72;
    goto LABEL_47;
  }

  v36 = 1.0;
  v37 = v15.n128_f64[0] * (waypointsAlpha * v16) * fmax(fmin(v14.n128_f64[0] + -0.5 + v14.n128_f64[0] + -0.5, 1.0), 0.0);
  if (v37 < 1.0 && fabs(v37 + -1.0) >= 2.22044605e-16)
  {
    if (fabs(v37) >= 2.22044605e-16 && v37 > 0.0)
    {
      v36 = v37;
    }

    else
    {
      v36 = 0.0;
    }
  }

  v73 = v17;
  v39 = objc_msgSend_attributedStringForTargetWaypoint_(self, v17, v37, v17);
  objc_msgSend_setAttributedText_(self->_circularPOIInformationPrimaryLabel, v40, v41, v39);

  objc_msgSend_setHidden_(self->_circularPOIInformationPrimaryLabel, v42, v43, 0);
  objc_msgSend_setAlpha_(self->_circularPOIInformationPrimaryLabel, v44, v36);
  objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationPrimaryLabel, v45, v46, 0);
  v49 = objc_msgSend_attributedStringForDistanceAccuracyToWaypoint_(self, v47, v48, v73);
  objc_msgSend_setAttributedText_(self->_circularPOIInformationSecondaryLabel, v50, v51, v49);

  objc_msgSend_setHidden_(self->_circularPOIInformationSecondaryLabel, v52, v53, 0);
  objc_msgSend_setAlpha_(self->_circularPOIInformationSecondaryLabel, v54, v36);
  v57 = objc_msgSend__accessibilityStringForDistanceAccuracyToWaypoint_(self, v55, v56, v73);
  objc_msgSend_setAccessibilityLabel_(self->_circularPOIInformationSecondaryLabel, v58, v59, v57);

  v13 = objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v60, v61);
  v17 = v73;
  *&self->_lastTimeLabelsUpdated = v14.n128_u64[0];
LABEL_47:

  MEMORY[0x2821F96F8](v13, v17, v14, v15);
}

- (void)_updateLabelsIfNeeded
{
  tritiumProgress = self->_tritiumProgress;
  if (tritiumProgress <= 0.0)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, tritiumProgress);
    v5 = v4;
    lastTimeLabelsUpdated = self->_lastTimeLabelsUpdated;
    v7 = v5 - lastTimeLabelsUpdated;
    v9 = objc_msgSend_timestamp(self->_location, v8, lastTimeLabelsUpdated);
    objc_msgSend_timeIntervalSinceReferenceDate(v9, v10, v11);
    v13 = v5 - v12;

    if (v13 <= 86400.0)
    {
      if (v13 <= 3600.0)
      {
        v14 = 30.0;
        if (v13 <= 60.0)
        {
          v14 = 0.5;
          if (v13 > 20.0)
          {
            v14 = 5.0;
          }
        }
      }

      else
      {
        v14 = 1800.0;
      }
    }

    else
    {
      v14 = 43200.0;
    }

    if (v7 > v14)
    {

      MEMORY[0x2821F9670](1.0);
    }
  }
}

- (void)setHeading:(double)heading animated:(BOOL)animated
{
  animatedCopy = animated;
  headingCopy = heading;
  if (heading >= 360.0)
  {
    v4 = -360.0;
    do
    {
      headingCopy = headingCopy + -360.0;
    }

    while (headingCopy >= 360.0);
  }

  while (headingCopy < 0.0)
  {
    headingCopy = headingCopy + 360.0;
  }

  if (objc_msgSend__needUpdateForDeltaHeading_(self, a2, headingCopy - self->_heading, v4))
  {
    if (animatedCopy)
    {

      MEMORY[0x2821F9670](headingCopy);
    }

    else
    {
      self->_heading = headingCopy;
      objc_msgSend_setNeedsDisplay(self, v8, v9);
      if (!self->_displayMode)
      {
        objc_msgSend__updateWaypointAhead(self, v10, v11);

        objc_msgSend__updateLabels(self, v12, v13);
      }
    }
  }
}

- (void)setFromDisplayMode:(unint64_t)mode toDisplayMode:(unint64_t)displayMode fraction:(double)transitoryDisplayModeProgress
{
  v5 = transitoryDisplayModeProgress;
  if (self->_transitoryDisplayMode != mode || self->_displayMode != displayMode || (transitoryDisplayModeProgress = self->_transitoryDisplayModeProgress, transitoryDisplayModeProgress != v5))
  {
    self->_transitoryDisplayMode = mode;
    self->_displayMode = displayMode;
    self->_transitoryDisplayModeProgress = v5;
    objc_msgSend_setNeedsDisplay(self, a2, transitoryDisplayModeProgress);
    objc_msgSend__updateWaypointAhead(self, v7, v8);

    MEMORY[0x2821F9670](v5);
  }
}

- (void)setFromWaypointsState:(unint64_t)state toWaypointsState:(unint64_t)waypointsState fraction:(double)fraction
{
  if (self->_transitoryWaypointsState != state || self->_waypointsState != waypointsState || self->_transitoryWaypointsStateProgress != fraction)
  {
    self->_transitoryWaypointsState = state;
    self->_waypointsState = waypointsState;
    self->_transitoryWaypointsStateProgress = fraction;
    objc_msgSend_setNeedsDisplay(self, a2, fraction);
  }
}

- (void)setFromHiVizComplicationStyle:(unint64_t)style toHiVizComplicationStyle:(unint64_t)complicationStyle fraction:(double)fraction
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = NTKLeghornHiVizComplicationStyleString(v10);
    v15 = NTKLeghornHiVizComplicationStyleString(v14);
    v16 = 136315906;
    v17 = "[NTKCircularBezelView setFromHiVizComplicationStyle:toHiVizComplicationStyle:fraction:]";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    fractionCopy = fraction;
    _os_log_debug_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEBUG, "%s: fromHiVizComplicationStyle: %@ to: %@ fraction: %f", &v16, 0x2Au);
  }

  if (self->_fromHiVizComplicationStyle != style || self->_toHiVizComplicationStyle != complicationStyle || (fractionHiVizComplicationStyle = self->_fractionHiVizComplicationStyle, fractionHiVizComplicationStyle != fraction))
  {
    self->_fromHiVizComplicationStyle = style;
    self->_toHiVizComplicationStyle = complicationStyle;
    self->_fractionHiVizComplicationStyle = fraction;
    objc_msgSend_setNeedsDisplay(self, v11, fractionHiVizComplicationStyle);
  }
}

- (unint64_t)hiVizComplicationStyle
{
  v2 = &OBJC_IVAR___NTKCircularBezelView__fromHiVizComplicationStyle;
  if (self->_fractionHiVizComplicationStyle > 0.5)
  {
    v2 = &OBJC_IVAR___NTKCircularBezelView__toHiVizComplicationStyle;
  }

  return *(&self->super.super.super.isa + *v2);
}

- (void)setFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  if (self->_fractionBezelBackgroundOn != v7)
  {
    self->_fractionBezelBackgroundOn = v7;

    objc_msgSend__setBackgroundNeedsDisplay(self, v6, v7);
  }
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  if (!locationCopy)
  {
    goto LABEL_5;
  }

  if (!self->_lastSignificantLocation || objc_msgSend_ntk_significantlyDiffersFromLocation_(locationCopy, v5, v6))
  {
    v7 = objc_msgSend_copy(locationCopy, v5, v6);
    lastSignificantLocation = self->_lastSignificantLocation;
    self->_lastSignificantLocation = v7;

LABEL_5:
    sortedWaypoints = self->_sortedWaypoints;
    self->_sortedWaypoints = 0;

    objc_msgSend_setNeedsDisplay(self, v10, v11);
    objc_msgSend__updateWaypointAhead(self, v12, v13);
    objc_msgSend__updateLabels(self, v14, v15);
  }
}

- (void)_invalidateRadiusLabelCTLine
{
  radiusLabelCTLine = self->_radiusLabelCTLine;
  if (radiusLabelCTLine)
  {
    CFRelease(radiusLabelCTLine);
    self->_radiusLabelCTLine = 0;
  }
}

- (void)setFromWaypointRadius:(double)radius toWaypointRadius:(double)waypointRadius fraction:(double)fraction
{
  if (self->_transitoryWaypointRadius != radius || self->_waypointRadius != waypointRadius || self->_transitoryWaypointRadiusProgress != fraction)
  {
    self->_transitoryWaypointRadius = radius;
    self->_waypointRadius = waypointRadius;
    self->_transitoryWaypointRadiusProgress = fraction;
    objc_msgSend__invalidateRadiusLabelCTLine(self, a2, radius);

    objc_msgSend_setNeedsDisplay(self, v6, v7);
  }
}

- (void)setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  if ((objc_msgSend_isEqual_(waypointsCopy, v5, v6, self->_waypoints) & 1) == 0)
  {
    objc_storeStrong(&self->_waypoints, waypoints);
    sortedWaypoints = self->_sortedWaypoints;
    self->_sortedWaypoints = 0;

    objc_msgSend_setNeedsDisplay(self, v8, v9);
    objc_msgSend__updateWaypointAhead(self, v10, v11);
    objc_msgSend__updateLabels(self, v12, v13);
  }
}

- (void)setFromTargetWaypoint:(id)waypoint toTargetWaypoint:(id)targetWaypoint fraction:(double)fraction
{
  waypointCopy = waypoint;
  targetWaypointCopy = targetWaypoint;
  if (self->_transitoryTargetWaypoint != waypointCopy || self->_targetWaypoint != targetWaypointCopy || self->_transitoryTargetWaypointProgress != fraction)
  {
    objc_storeStrong(&self->_transitoryTargetWaypoint, waypoint);
    objc_storeStrong(&self->_targetWaypoint, targetWaypoint);
    self->_transitoryTargetWaypointProgress = fraction;
    objc_msgSend_setNeedsDisplay(self, v10, v11);
    objc_msgSend__updateWaypointAhead(self, v12, v13);
    objc_msgSend__updateLabels(self, v14, v15);
  }
}

- (void)setPrimaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_primaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_primaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v7, v8);
  }
}

- (void)setTertiaryBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_tertiaryBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tertiaryBackgroundColor, color);
    objc_msgSend__setBackgroundNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassOrientingArrowColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassOrientingArrowColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassOrientingArrowColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassNorthColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassNorthColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassNorthColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassCardinalColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassCardinalColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassCardinalColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setCompassBackgroundColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_compassBackgroundColor) & 1) == 0)
  {
    objc_storeStrong(&self->_compassBackgroundColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setsecondsCompassRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsCompassRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsCompassRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointAheadColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointAheadColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointAheadColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointTargetRingColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointTargetRingColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointTargetRingColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointActiveConeColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointActiveConeColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointActiveConeColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointInactiveConeColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointInactiveConeColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointInactiveConeColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsInactiveMajorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsInactiveMajorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMajorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsInactiveMedialTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsInactiveMedialTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMedialTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setSecondsInactiveMinorTickColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_secondsInactiveMinorTickColor) & 1) == 0)
  {
    objc_storeStrong(&self->_secondsInactiveMinorTickColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointLabelPrimaryColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointLabelPrimaryColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointLabelPrimaryColor, color);
    objc_msgSend__updateLabels(self, v7, v8);
  }
}

- (void)setWaypointLabelSecondaryColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_waypointLabelSecondaryColor) & 1) == 0)
  {
    objc_storeStrong(&self->_waypointLabelSecondaryColor, color);
    objc_msgSend__updateLabels(self, v7, v8);
  }
}

- (void)radiusLabelColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_radiusLabelColor) & 1) == 0)
  {
    objc_storeStrong(&self->_radiusLabelColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setTritiumMajorColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_tritiumMajorColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMajorColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)seTtritiumMedialColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_tritiumMedialColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMedialColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setTritiumMinorColor:(id)color
{
  colorCopy = color;
  if ((objc_msgSend_isEqual_(colorCopy, v5, v6, self->_tritiumMinorColor) & 1) == 0)
  {
    objc_storeStrong(&self->_tritiumMinorColor, color);
    objc_msgSend_setNeedsDisplay(self, v7, v8);
  }
}

- (void)setWaypointsAlpha:(double)alpha
{
  if (self->_waypointsAlpha != alpha)
  {
    self->_waypointsAlpha = alpha;
    objc_msgSend__updateLabels(self, a2, alpha);

    objc_msgSend_setNeedsDisplay(self, v5, v6);
  }
}

- (void)setCompassAlpha:(double)alpha
{
  if (self->_compassAlpha != alpha)
  {
    self->_compassAlpha = alpha;
    objc_msgSend_setNeedsDisplay(self, a2, alpha);
  }
}

- (void)setSecondsAlpha:(double)alpha
{
  if (self->_secondsAlpha != alpha)
  {
    self->_secondsAlpha = alpha;
    objc_msgSend_setNeedsDisplay(self, a2, alpha);
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    objc_msgSend__setBackgroundNeedsDisplay(self, a2, alpha);
  }
}

- (void)setUsePOIDerivedColors:(BOOL)colors
{
  v3 = 0.0;
  if (colors)
  {
    v3 = 1.0;
  }

  if (self->_fractionUsePOIDerivedColors != v3)
  {
    self->_fractionUsePOIDerivedColors = v3;
    objc_msgSend_setNeedsDisplay(self, a2, v3);
  }
}

- (void)setColorPalette:(id)palette
{
  paletteCopy = palette;
  v7 = objc_msgSend_isNightModeF(paletteCopy, v5, v6);
  objc_msgSend_doubleValue(v7, v8, v9);
  v11 = 1.0 - v10;

  v14 = objc_msgSend_isMulticolorF(paletteCopy, v12, v13);
  objc_msgSend_doubleValue(v14, v15, v16);
  v18 = v17;

  v19 = fmin(v11 * v18, 1.0);
  v20 = fmax(v19, 0.0);
  v177 = objc_msgSend_bezelDepthLimitMajorTickColor(paletteCopy, v21, v19);
  v24 = objc_msgSend_clearColor(MEMORY[0x277D75348], v22, v23);
  v27 = objc_msgSend_primaryBackgroundColor(paletteCopy, v25, v26);
  objc_msgSend_setPrimaryBackgroundColor_(self, v28, v29, v27);

  v32 = objc_msgSend_secondaryBackgroundColor(paletteCopy, v30, v31);
  objc_msgSend_setSecondaryBackgroundColor_(self, v33, v34, v32);

  v37 = objc_msgSend_tertiaryBackgroundColor(paletteCopy, v35, v36);
  objc_msgSend_setTertiaryBackgroundColor_(self, v38, v39, v37);

  v42 = objc_msgSend_compassOrientingArrowColor(paletteCopy, v40, v41);
  objc_msgSend_setCompassOrientingArrowColor_(self, v43, v44, v42);

  v47 = objc_msgSend_compassNorthColor(paletteCopy, v45, v46);
  objc_msgSend_setCompassNorthColor_(self, v48, v49, v47);

  v52 = objc_msgSend_compassCardinalColor(paletteCopy, v50, v51);
  objc_msgSend_setCompassCardinalColor_(self, v53, v54, v52);

  v57 = objc_msgSend_compassMajorTickColor(paletteCopy, v55, v56);
  objc_msgSend_setCompassMajorTickColor_(self, v58, v59, v57);

  v62 = objc_msgSend_compassMedialTickColor(paletteCopy, v60, v61);
  objc_msgSend_setCompassMedialTickColor_(self, v63, v64, v62);

  v67 = objc_msgSend_compassMinorTickColor(paletteCopy, v65, v66);
  objc_msgSend_setCompassMinorTickColor_(self, v68, v69, v67);

  objc_msgSend_setCompassBackgroundColor_(self, v70, v71, v24);
  v74 = objc_msgSend_secondsCompassRingColor(paletteCopy, v72, v73);
  objc_msgSend_setSecondsCompassRingColor_(self, v75, v76, v74);

  v79 = objc_msgSend_waypointAheadColor(paletteCopy, v77, v78);
  objc_msgSend_setWaypointAheadColor_(self, v80, v81, v79);

  v84 = objc_msgSend_waypointRingColor(paletteCopy, v82, v83);
  objc_msgSend_setWaypointRingColor_(self, v85, v86, v84);

  v89 = objc_msgSend_waypointTargetRingColor(paletteCopy, v87, v88);
  objc_msgSend_setWaypointTargetRingColor_(self, v90, v91, v89);

  v94 = objc_msgSend_waypointActiveConeColor(paletteCopy, v92, v93);
  objc_msgSend_setWaypointActiveConeColor_(self, v95, v96, v94);

  v99 = objc_msgSend_waypointInactiveConeColor(paletteCopy, v97, v98);
  objc_msgSend_setWaypointInactiveConeColor_(self, v100, v101, v99);

  v104 = objc_msgSend_waypointColor(paletteCopy, v102, v103);
  objc_msgSend_setWaypointColor_(self, v105, v106, v104);

  v109 = objc_msgSend_waypointOutOfRangeColor(paletteCopy, v107, v108);
  objc_msgSend_setWaypointOutOfRangeColor_(self, v110, v111, v109);

  self->_fractionUsePOIDerivedColors = v20;
  v114 = objc_msgSend_secondsMajorTickColor(paletteCopy, v112, v113);
  objc_msgSend_setSecondsMajorTickColor_(self, v115, v116, v114);

  v119 = objc_msgSend_secondsMajorTickColor(paletteCopy, v117, v118);
  objc_msgSend_setSecondsMedialTickColor_(self, v120, v121, v119);

  v124 = objc_msgSend_secondsMinorTickColor(paletteCopy, v122, v123);
  objc_msgSend_setSecondsMinorTickColor_(self, v125, v126, v124);

  v129 = objc_msgSend_secondsInactiveMajorTickColor(paletteCopy, v127, v128);
  objc_msgSend_setSecondsInactiveMajorTickColor_(self, v130, v131, v129);

  v134 = objc_msgSend_secondsInactiveMajorTickColor(paletteCopy, v132, v133);
  objc_msgSend_setSecondsInactiveMedialTickColor_(self, v135, v136, v134);

  v139 = objc_msgSend_secondsInactiveMinorTickColor(paletteCopy, v137, v138);
  objc_msgSend_setSecondsInactiveMinorTickColor_(self, v140, v141, v139);

  v144 = objc_msgSend_waypointLabelPrimaryColor(paletteCopy, v142, v143);
  objc_msgSend_setWaypointLabelPrimaryColor_(self, v145, v146, v144);

  v149 = objc_msgSend_waypointLabelSecondaryColor(paletteCopy, v147, v148);
  objc_msgSend_setWaypointLabelSecondaryColor_(self, v150, v151, v149);

  v154 = objc_msgSend_waypointLabelTertiaryColor(paletteCopy, v152, v153);
  objc_msgSend_setWaypointLabelTertiaryColor_(self, v155, v156, v154);

  v159 = objc_msgSend_radiusLabelColor(paletteCopy, v157, v158);
  objc_msgSend_setRadiusLabelColor_(self, v160, v161, v159);

  objc_msgSend_setTritiumMajorColor_(self, v162, v163, v177);
  objc_msgSend_setTritiumMedialColor_(self, v164, v165, v177);
  objc_msgSend_setTritiumMinorColor_(self, v166, v167, v177);
  v170 = objc_msgSend_isFullScreen(paletteCopy, v168, v169);
  objc_msgSend_doubleValue(v170, v171, v172);
  v174 = v173;

  objc_msgSend_setFromBackgroundStyle_toBackgroundStyle_fraction_(self, v175, v174, 0, 1);
  colorPalette = self->_colorPalette;
  self->_colorPalette = paletteCopy;
}

- (id)accessibilityLabel
{
  v4 = objc_msgSend_accessibilityLabel(self->_circularPOIInformationPrimaryLabel, a2, v2);
  v7 = objc_msgSend__accessibilityStringForRelativeBearingToTargetWaypoint(self, v5, v6);
  v10 = objc_msgSend_accessibilityLabel(self->_circularPOIInformationSecondaryLabel, v8, v9);
  v13 = objc_msgSend__accessibilityStringForCurrentHeading(self, v11, v12);
  v18 = objc_msgSend__accessibilityStringForCurrentWaypointRadius(self, v14, v15);
  v16 = __UIAXStringForVariables();

  return v16;
}

- (id)_accessibilityStringForCurrentHeading
{
    ;
  }

  while (i < 0.0)
  {
    i = i + 360.0;
  }

  return MEMORY[0x2821F9670](i);
}

- (id)_accessibilityStringForCurrentWaypointRadius
{
  waypointRadius = self->_waypointRadius;
  v4 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v7 = objc_msgSend_objectForKey_(v4, v5, v6, *MEMORY[0x277CBE718]);
  objc_msgSend_BOOLValue(v7, v8, v9);

  return MEMORY[0x2821F9670](waypointRadius);
}

- (id)_accessibilityStringForDistanceAccuracyToWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v6 = 0;
  if (waypointCopy && IsVoiceOverRunning)
  {
    location = self->_location;
    if (location)
    {
      v8 = MEMORY[0x277CBEAF8];
      v9 = location;
      v12 = objc_msgSend_currentLocale(v8, v10, v11);
      v15 = objc_msgSend_objectForKey_(v12, v13, v14, *MEMORY[0x277CBE718]);
      v18 = objc_msgSend_BOOLValue(v15, v16, v17);

      v21 = objc_msgSend_waypointLocation(waypointCopy, v19, v20);
      objc_msgSend_distanceFromLocation_(v9, v22, v23, v21);
      v25 = v24;

      if (v25 < 0.0)
      {
        v25 = 0.0;
      }

      v27 = objc_msgSend_timestamp(v9, v26, 0.0);

      v6 = objc_msgSend__accessibilityStringForDistance_lastUpdatedDate_useMetric_(MEMORY[0x277CCA898], v28, v25, v27, v18);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_accessibilityStringForRelativeBearingToTargetWaypoint
{
  if (self->_displayMode != 3)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v3 = self->_targetWaypoint;
  v5 = self->_location;
  if (v5)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    heading = self->_heading;
    v10 = objc_msgSend_waypointLocation(v3, v4, v6);
    objc_msgSend_ntk_bearingTo_(v5, v11, v12, v10);
    v14 = v13;

      ;
    }

      ;
    }

    v16 = fabs(i);
    if (v16 >= 30.0)
    {
      if (v16 <= 150.0)
      {
        v18 = v16;
        v19 = MEMORY[0x277CCACA8];
        v20 = NTKFoghornFaceLocalizedString(@"LEGHORN_DEGREE_FORMAT_ACCESSIBILITY");
        v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, v22, v18);
        v26 = objc_msgSend_stringWithFormat_(v19, v24, v25, v20, v23);

        v27 = MEMORY[0x277CCACA8];
        if (i <= 0.0)
        {
          v28 = @"LEGHORN_TARGET_MODE_LEFT_ACCESSIBILITY";
        }

        else
        {
          v28 = @"LEGHORN_TARGET_MODE_RIGHT_ACCESSIBILITY";
        }

        v29 = NTKFoghornFaceLocalizedString(v28);
        v8 = objc_msgSend_stringWithFormat_(v27, v30, v31, v29, v26);

        goto LABEL_22;
      }

      v17 = @"LEGHORN_TARGET_MODE_BEHIND_ACCESSIBILITY";
    }

    else
    {
      v17 = @"LEGHORN_TARGET_MODE_AHEAD_ACCESSIBILITY";
    }

    v8 = NTKFoghornFaceLocalizedString(v17);
  }

LABEL_22:

LABEL_23:

  return v8;
}

@end