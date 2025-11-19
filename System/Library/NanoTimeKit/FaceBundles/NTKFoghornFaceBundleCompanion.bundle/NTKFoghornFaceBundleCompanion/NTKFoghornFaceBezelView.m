@interface NTKFoghornFaceBezelView
+ (id)_attributedStringForActiveDepth:(double)a3 maxDepth:(double)a4 beyondLimit:(BOOL)a5 inFeet:(BOOL)a6 depthAttributes:(id)a7 depthUnitAttributes:(id)a8 maxDepthAttributes:(id)a9 maxDepthUnitAttributes:(id)a10;
+ (id)_attributedStringForActiveElevation:(double)a3 accuracy:(double)a4 precision:(double)a5 showPrefix:(BOOL)a6 inFeet:(BOOL)a7 valueAttributes:(id)a8 unitAttributes:(id)a9;
+ (id)_attributedStringForBeyondLimitDepth:(double)a3 showPrefix:(BOOL)a4 inFeet:(BOOL)a5 depthAttributes:(id)a6 depthUnitAttributes:(id)a7;
+ (id)_attributedStringForMaxDepth:(double)a3 beyondLimit:(BOOL)a4 inFeet:(BOOL)a5 depthAttributes:(id)a6 depthUnitAttributes:(id)a7;
+ (id)_maxDepthImageAttributesFromMaxDepthAttributes:(id)a3;
+ (id)_stringForDepth:(double)a3 inFeet:(BOOL)a4;
+ (void)drawSnapshotInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 colorPalette:(id)a5 forDevice:(id)a6;
- (BOOL)_needBaseLabelUpdateForDeltaDepthElevation:(double)a3 range:(double)a4;
- (CGRect)_dirtyRectFromSeconds:(double)a3 toSeconds:(double)a4;
- (NTKFoghornFaceBezelView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (id)_harmoniaOvernightSummaryLabelColor;
- (id)_harmoniaTrainingSummaryLabelColor;
- (void)_addConstraints;
- (void)_addSubViews;
- (void)_drawBezelInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 tritiumProgress:(double)a5 alpha:(double)a6;
- (void)_drawDepthBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5;
- (void)_drawElevationBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5;
- (void)_drawHarmoniaBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5;
- (void)_drawSecondsBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5;
- (void)_initPixelsPerValuesForDevice:(id)a3;
- (void)_limitsForElevation:(double)a3 elevationIsValid:(BOOL)a4 limitMeters:(double *)a5 limitFeet:(double *)a6;
- (void)_registerNotifications;
- (void)_transitionBaseLabelFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5;
- (void)_updateBaseLabel;
- (void)_updateBaseLabelBaslineOffsetForAttributedText:(id)a3;
- (void)_updateBaseLabelForDepthBezel;
- (void)_updateBaseLabelForElevationBezel;
- (void)_updateDepthUnits;
- (void)_updateElevationLimitLabelsWithElevation:(double)a3 elevationIsValid:(BOOL)a4;
- (void)_updateHarmoniaSummaryLabelCache:(id *)a3 withString:(id)a4 dataState:(unint64_t)a5;
- (void)_updateLimitLabelCache:(id *)a3 limitFeet:(double)a4 limitMeters:(double)a5 limitsValid:(BOOL)a6;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setBezelFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5;
- (void)setBezelStyle:(int64_t)a3;
- (void)setColorPalette:(id)a3;
- (void)setDepthDecorationColor:(id)a3;
- (void)setDepthLabelColor:(id)a3;
- (void)setDepthLimitLabelColor:(id)a3;
- (void)setDepthLimitMajorTickColor:(id)a3;
- (void)setDepthLimitMedialTickColor:(id)a3;
- (void)setDepthLimitMinorTickColor:(id)a3;
- (void)setDepthMarkerColor:(id)a3;
- (void)setDepthMaxLabelColor:(id)a3;
- (void)setDepthMaxMajorTickColor:(id)a3;
- (void)setDepthMaxMarkerColor:(id)a3;
- (void)setDepthMaxMedialTickColor:(id)a3;
- (void)setDepthMaxMinorTickColor:(id)a3;
- (void)setDepthOverLimitColor:(id)a3;
- (void)setElevation:(double)a3;
- (void)setElevationAccuracy:(double)a3;
- (void)setElevationIsValid:(BOOL)a3;
- (void)setElevationPrecision:(double)a3;
- (void)setHarmoniaDotFillColor:(id)a3;
- (void)setHarmoniaEmphasizedTickColor:(id)a3;
- (void)setHarmoniaOvernightChangeAboveValues:(id)a3;
- (void)setHarmoniaOvernightChangeBelowValues:(id)a3;
- (void)setHarmoniaOvernightChangesThreshold:(unint64_t)a3;
- (void)setHarmoniaOvernightDataState:(unint64_t)a3;
- (void)setHarmoniaOvernightLocalizedSummary:(id)a3;
- (void)setHarmoniaOvernightMarkers:(id)a3;
- (void)setHarmoniaOvernightOutOfRangeColor:(id)a3;
- (void)setHarmoniaOvernightPartiallyOutOfRangeColor:(id)a3;
- (void)setHarmoniaOvernightTypicalColor:(id)a3;
- (void)setHarmoniaOvernightTypicalValues:(id)a3;
- (void)setHarmoniaTrainingAboveColor:(id)a3;
- (void)setHarmoniaTrainingBelowColor:(id)a3;
- (void)setHarmoniaTrainingDataState:(unint64_t)a3;
- (void)setHarmoniaTrainingLoadBand:(unint64_t)a3;
- (void)setHarmoniaTrainingLocalizedSummary:(id)a3;
- (void)setHarmoniaTrainingMarkers:(id)a3;
- (void)setHarmoniaTrainingNearColor:(id)a3;
- (void)setHarmoniaTrainingValue:(id)a3;
- (void)setHarmoniaTrainingWellAboveColor:(id)a3;
- (void)setHarmoniaTrainingWellBelowColor:(id)a3;
- (void)setHarmoniaUnitLabelColor:(id)a3;
- (void)setInactiveMajorTickColor:(id)a3;
- (void)setInactiveMedialTickColor:(id)a3;
- (void)setInactiveMinorTickColor:(id)a3;
- (void)setMajorTickColor:(id)a3;
- (void)setMedialTickColor:(id)a3;
- (void)setMinorTickColor:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setSeconds:(double)a3;
- (void)setShowingStatusIndicator:(BOOL)a3;
- (void)setSubmerged:(BOOL)a3;
- (void)setSubmergedDepth:(double)a3;
- (void)setSubmergedDepthLabelLimitFeet:(double)a3;
- (void)setSubmergedDepthLabelLimitMeters:(double)a3;
- (void)setSubmergedDepthLimit:(double)a3;
- (void)setSubmergedDepthMax:(double)a3;
- (void)setToSnapshotValues;
- (void)setTritiumProgress:(double)a3;
@end

@implementation NTKFoghornFaceBezelView

- (void)_initPixelsPerValuesForDevice:(id)a3
{
  bezelDepthStartAngle = self->_layoutConstants.bezelDepthStartAngle;
  superEllipseGeometry = self->_superEllipseGeometry;
  v6 = a3;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(superEllipseGeometry, bezelDepthStartAngle);
  self->_depthElevationBezelLength = v7 + v7;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(self->_superEllipseGeometry, 1.57079633);
  self->_pixelsPerSecond = v8 * 4.0 / 60.0;
  objc_msgSend_screenScale(v6, v9, v10, v11);
  v13 = v12;

  self->_pixelsVisibleChange = 1.0 / (v13 * 4.0);
}

- (NTKFoghornFaceBezelView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v236 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v216.receiver = self;
  v216.super_class = NTKFoghornFaceBezelView;
  v10 = [(NTKFoghornFaceBezelView *)&v216 initWithFrame:x, y, width, height];
  v14 = v10;
  if (v10)
  {
    p_dirtyRect = &v10->_dirtyRect;
    objc_msgSend_bounds(v10, v11, v12, v13);
    *&p_dirtyRect->origin.x = v16;
    v14->_dirtyRect.origin.y = v17;
    v14->_dirtyRect.size.width = v18;
    v14->_dirtyRect.size.height = v19;
    v23 = objc_msgSend_clearColor(MEMORY[0x277D75348], v20, v21, v22);
    objc_msgSend_setBackgroundColor_(v14, v24, v23, v25);

    sub_23BE69240(v9, &v217);
    *&v14->_layoutConstants.bezelHarmoniaMinorTickLength = v229;
    *&v14->_layoutConstants.bezelHarmoniaDotInnerDiameter = v230;
    *&v14->_layoutConstants.bezelHarmoniaLabelPositionOffset = v231;
    v14->_layoutConstants.statusIndicatorOuterMargin = v232;
    *&v14->_layoutConstants.bezelDepthTickWidth = v225;
    *&v14->_layoutConstants.bezelDepthBaseLabelFontSize = v226;
    *&v14->_layoutConstants.bezelDepthLabelsInset = v227;
    *&v14->_layoutConstants.bezelHarmoniaLabelFontSize = v228;
    *&v14->_layoutConstants.bezelMedialLength = v221;
    *&v14->_layoutConstants.bezelActiveWidth = v222;
    *&v14->_layoutConstants.bezelDepthStartAngle = v223;
    *&v14->_layoutConstants.bezelDepthMedialTickLength = v224;
    v14->_layoutConstants.bezelOuterRect.origin = v217;
    v14->_layoutConstants.bezelOuterRect.size = v218;
    *&v14->_layoutConstants.bezelOuterCornerRadius = v219;
    *&v14->_layoutConstants.bezelCornerEndAngle = v220;
    v26 = [NTKSuperEllipseRectGeometry alloc];
    v29 = objc_msgSend_initForDevice_tangentialInset_(v26, v27, v9, v28, v14->_layoutConstants.bezelOuterRect.origin.x);
    superEllipseGeometry = v14->_superEllipseGeometry;
    v14->_superEllipseGeometry = v29;

    v34 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v31, v32, v33, v14->_layoutConstants.bezelDepthBaseLabelFontSize);
    baseLabelFont = v14->_baseLabelFont;
    v14->_baseLabelFont = v34;

    v39 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v36, v37, v38, v14->_layoutConstants.bezelDepthBaseLabelUnitFontSize);
    baseLabelUnitFont = v14->_baseLabelUnitFont;
    v14->_baseLabelUnitFont = v39;

    v44 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v41, v42, v43, 0.411764711, 0.725490212, 0.964705884, 1.0);
    majorTickColor = v14->_majorTickColor;
    v14->_majorTickColor = v44;

    objc_storeStrong(&v14->_medialTickColor, v14->_majorTickColor);
    objc_storeStrong(&v14->_minorTickColor, v14->_majorTickColor);
    v49 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v46, v47, v48, 0.176470593, 0.356862754, 0.447058827, 1.0);
    depthMaxMajorTickColor = v14->_depthMaxMajorTickColor;
    v14->_depthMaxMajorTickColor = v49;

    objc_storeStrong(&v14->_depthMaxMedialTickColor, v14->_depthMaxMajorTickColor);
    objc_storeStrong(&v14->_depthMaxMinorTickColor, v14->_depthMaxMajorTickColor);
    v54 = objc_msgSend_grayColor(MEMORY[0x277D75348], v51, v52, v53);
    v215 = v9;
    depthLimitMajorTickColor = v14->_depthLimitMajorTickColor;
    v14->_depthLimitMajorTickColor = v54;

    objc_storeStrong(&v14->_depthLimitMedialTickColor, v14->_depthLimitMajorTickColor);
    objc_storeStrong(&v14->_depthLimitMinorTickColor, v14->_depthLimitMajorTickColor);
    objc_storeStrong(&v14->_depthMarkerColor, v14->_majorTickColor);
    objc_storeStrong(&v14->_depthMaxMarkerColor, v14->_depthMaxMajorTickColor);
    objc_storeStrong(&v14->_depthLabelColor, v14->_majorTickColor);
    objc_storeStrong(&v14->_depthMaxLabelColor, v14->_depthMaxMajorTickColor);
    objc_storeStrong(&v14->_depthLimitLabelColor, v14->_depthLimitMajorTickColor);
    objc_storeStrong(&v14->_depthLimitLabelFont, v14->_baseLabelUnitFont);
    v59 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v56, v57, v58, 1.0, 0.886274517, 0.356862754, 1.0);
    depthOverLimitColor = v14->_depthOverLimitColor;
    v14->_depthOverLimitColor = v59;
    v214 = v59;

    v61 = objc_alloc_init(MEMORY[0x277D74240]);
    objc_msgSend_setAlignment_(v61, v62, 1, v63);
    v67 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v64, v65, v66);
    v71 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v68, v69, v70, v14->_layoutConstants.bezelDepthBaseLabelUnitFontSize);
    v212 = *MEMORY[0x277D740A8];
    v72 = *MEMORY[0x277D740A8];
    v233 = *MEMORY[0x277D740C0];
    v211 = v233;
    v234 = v72;
    *&v217.x = v67;
    *&v217.y = v71;
    v235 = *MEMORY[0x277D74118];
    v210 = v235;
    *&v218.width = v61;
    v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v217, &v233, 3);
    v75 = objc_alloc(MEMORY[0x277CBEB18]);
    v78 = objc_msgSend_initWithCapacity_(v75, v76, 2, v77);
    v79 = NTKFoghornFaceLocalizedString(@"FOGHORN_LABEL_FEET");
    v80 = objc_alloc(MEMORY[0x277CCA898]);
    v82 = objc_msgSend_initWithString_attributes_(v80, v81, v79, v74);
    objc_msgSend_setObject_atIndexedSubscript_(v78, v83, v82, 0);

    v84 = NTKFoghornFaceLocalizedString(@"FOGHORN_LABEL_METERS");
    v85 = objc_alloc(MEMORY[0x277CCA898]);
    v87 = objc_msgSend_initWithString_attributes_(v85, v86, v84, v74);
    objc_msgSend_setObject_atIndexedSubscript_(v78, v88, v87, 1);

    v213 = objc_msgSend_copy(v78, v89, v90, v91);
    v14->_depthTextLines = sub_23BE61320(v213);
    v14->_harmoniaOvernightDataState = 2;
    harmoniaOvernightMarkers = v14->_harmoniaOvernightMarkers;
    v93 = MEMORY[0x277CBEBF8];
    v14->_harmoniaOvernightMarkers = MEMORY[0x277CBEBF8];

    harmoniaOvernightTypicalValues = v14->_harmoniaOvernightTypicalValues;
    v14->_harmoniaOvernightTypicalValues = v93;

    harmoniaOvernightChangeAboveValues = v14->_harmoniaOvernightChangeAboveValues;
    v14->_harmoniaOvernightChangeAboveValues = v93;

    harmoniaOvernightChangeBelowValues = v14->_harmoniaOvernightChangeBelowValues;
    v14->_harmoniaOvernightChangeBelowValues = v93;

    harmoniaOvernightLocalizedSummary = v14->_harmoniaOvernightLocalizedSummary;
    v14->_harmoniaOvernightLocalizedSummary = @" ";

    v14->_harmoniaTrainingDataState = 2;
    harmoniaTrainingMarkers = v14->_harmoniaTrainingMarkers;
    v14->_harmoniaTrainingMarkers = v93;

    harmoniaTrainingLocalizedSummary = v14->_harmoniaTrainingLocalizedSummary;
    v14->_harmoniaTrainingLocalizedSummary = @" ";

    v103 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v100, v101, v102, 0.43, 0.43, 0.44, 1.0);
    harmoniaUnitLabelColor = v14->_harmoniaUnitLabelColor;
    v14->_harmoniaUnitLabelColor = v103;

    v108 = objc_msgSend_blackColor(MEMORY[0x277D75348], v105, v106, v107);
    harmoniaDotFillColor = v14->_harmoniaDotFillColor;
    v14->_harmoniaDotFillColor = v108;

    v113 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v110, v111, v112);
    harmoniaEmphasizedTickColor = v14->_harmoniaEmphasizedTickColor;
    v14->_harmoniaEmphasizedTickColor = v113;

    v118 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v115, v116, v117, 0.333333343, 0.68235296, 1.0, 1.0);
    harmoniaOvernightTypicalColor = v14->_harmoniaOvernightTypicalColor;
    v14->_harmoniaOvernightTypicalColor = v118;

    v123 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v120, v121, v122, 0.729411781, 0.443137258, 1.0, 1.0);
    harmoniaOvernightPartiallyOutOfRangeColor = v14->_harmoniaOvernightPartiallyOutOfRangeColor;
    v14->_harmoniaOvernightPartiallyOutOfRangeColor = v123;

    v128 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v125, v126, v127, 1.0, 0.423529416, 0.898039222, 1.0);
    harmoniaOvernightOutOfRangeColor = v14->_harmoniaOvernightOutOfRangeColor;
    v14->_harmoniaOvernightOutOfRangeColor = v128;

    v133 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v130, v131, v132, 0.494117647, 0.41568628, 0.843137264, 1.0);
    harmoniaTrainingWellBelowColor = v14->_harmoniaTrainingWellBelowColor;
    v14->_harmoniaTrainingWellBelowColor = v133;

    v138 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v135, v136, v137, 0.509803951, 0.525490224, 1.0, 1.0);
    harmoniaTrainingBelowColor = v14->_harmoniaTrainingBelowColor;
    v14->_harmoniaTrainingBelowColor = v138;

    v143 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v140, v141, v142, 0.333333343, 0.68235296, 1.0, 1.0);
    harmoniaTrainingNearColor = v14->_harmoniaTrainingNearColor;
    v14->_harmoniaTrainingNearColor = v143;

    v148 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v145, v146, v147, 0.729411781, 0.443137258, 1.0, 1.0);
    harmoniaTrainingAboveColor = v14->_harmoniaTrainingAboveColor;
    v14->_harmoniaTrainingAboveColor = v148;

    v153 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v150, v151, v152, 1.0, 0.423529416, 0.898039222, 1.0);
    harmoniaTrainingWellAboveColor = v14->_harmoniaTrainingWellAboveColor;
    v14->_harmoniaTrainingWellAboveColor = v153;

    v155 = objc_alloc_init(MEMORY[0x277D74240]);
    objc_msgSend_setAlignment_(v155, v156, 1, v157);
    v161 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v158, v159, v160);
    v165 = objc_msgSend_foghornHarmoniaBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v162, v163, v164, v14->_layoutConstants.bezelHarmoniaLabelFontSize);
    v233 = v211;
    v234 = v212;
    *&v217.x = v161;
    *&v217.y = v165;
    v235 = v210;
    *&v218.width = v155;
    v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v166, &v217, &v233, 3);
    v168 = objc_alloc(MEMORY[0x277CBEB18]);
    v171 = objc_msgSend_initWithCapacity_(v168, v169, 2, v170);
    v172 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_LABEL_OVERNIGHT");
    v173 = objc_alloc(MEMORY[0x277CCA898]);
    v175 = objc_msgSend_initWithString_attributes_(v173, v174, v172, v167);
    objc_msgSend_setObject_atIndexedSubscript_(v171, v176, v175, 0);

    v177 = NTKFoghornFaceLocalizedString(@"FOGHORN_HARMONIA_LABEL_TRAINING");
    v178 = objc_alloc(MEMORY[0x277CCA898]);
    v180 = objc_msgSend_initWithString_attributes_(v178, v179, v177, v167);
    objc_msgSend_setObject_atIndexedSubscript_(v171, v181, v180, 1);

    v185 = objc_msgSend_copy(v171, v182, v183, v184);
    v9 = v215;

    v14->_harmoniaTextLines = sub_23BE61320(v185);
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(v14, v186, &v14->_harmoniaSummaryOvernightLabelCache, v14->_harmoniaOvernightLocalizedSummary, v14->_harmoniaOvernightDataState);
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(v14, v187, &v14->_harmoniaSummaryTrainingLabelCache, v14->_harmoniaTrainingLocalizedSummary, v14->_harmoniaTrainingDataState);

    objc_msgSend__initPixelsPerValuesForDevice_(v14, v188, v215, v189);
    v14->_seconds = 0.0;
    v14->_submergedDepthLimit = 40.0;
    v14->_submergedDepthLabelLimitMeters = 40.0;
    v14->_submergedDepthLabelLimitFeet = 130.0;
    v14->_submergedDepthMax = 0.0;
    v14->_submergedDepth = 0.0;
    v14->_elevation = 0.0;
    v14->_elevationIsValid = 1;
    v14->_secondsTritiumAnimationStyle = 3;
    v14->_secondsEndOfMinuteAnimationStyle = 3;
    v14->_secondsEndOfMinuteAnimationDuration = 0.5;
    objc_msgSend__updateDepthUnits(v14, v190, v191, v192);
    objc_msgSend__addSubViews(v14, v193, v194, v195);
    objc_msgSend__addConstraints(v14, v196, v197, v198);
    objc_msgSend__updateDepthLimitLabelsWithSubmergedDepthLimitMeters_feet_(v14, v199, v200, v201, v14->_submergedDepthLabelLimitMeters, v14->_submergedDepthLabelLimitFeet);
    objc_msgSend__updateElevationLimitLabelsWithElevation_elevationIsValid_(v14, v202, v14->_elevationIsValid, v203, v14->_elevation);
    objc_msgSend_setBezelStyle_(v14, v204, 1, v205);
    objc_msgSend__registerNotifications(v14, v206, v207, v208);
  }

  return v14;
}

- (void)dealloc
{
  depthTextLines = self->_depthTextLines;
  if (depthTextLines)
  {
    CFRelease(depthTextLines);
    self->_depthTextLines = 0;
  }

  harmoniaTextLines = self->_harmoniaTextLines;
  if (harmoniaTextLines)
  {
    CFRelease(harmoniaTextLines);
    self->_harmoniaTextLines = 0;
  }

  line = self->_harmoniaSummaryOvernightLabelCache.line;
  if (line)
  {
    CFRelease(line);
    self->_harmoniaSummaryOvernightLabelCache.line = 0;
  }

  v8 = self->_harmoniaSummaryTrainingLabelCache.line;
  if (v8)
  {
    CFRelease(v8);
    self->_harmoniaSummaryTrainingLabelCache.line = 0;
  }

  textLines = self->_depthLimitLabelCache.textLines;
  if (textLines)
  {
    CFRelease(textLines);
    self->_depthLimitLabelCache.textLines = 0;
  }

  v10 = self->_elevationLimitLabelCache.textLines;
  if (v10)
  {
    CFRelease(v10);
    self->_elevationLimitLabelCache.textLines = 0;
  }

  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_(v11, v12, self, v13);

  v14.receiver = self;
  v14.super_class = NTKFoghornFaceBezelView;
  [(NTKFoghornFaceBezelView *)&v14 dealloc];
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v17.super_class = NTKFoghornFaceBezelView;
  [(NTKFoghornFaceBezelView *)&v17 setNeedsDisplayInRect:x, y, width, height];
}

- (void)setNeedsDisplay
{
  p_dirtyRect = &self->_dirtyRect;
  objc_msgSend_bounds(self, a2, v2, v3);
  p_dirtyRect->origin.x = v6;
  p_dirtyRect->origin.y = v7;
  p_dirtyRect->size.width = v8;
  p_dirtyRect->size.height = v9;
  v10.receiver = self;
  v10.super_class = NTKFoghornFaceBezelView;
  [(NTKFoghornFaceBezelView *)&v10 setNeedsDisplay];
}

- (void)_registerNotifications
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_addObserver_selector_name_object_(v6, v5, self, sel__updateDepthUnits, *MEMORY[0x277D0A848], 0);
}

- (void)_addSubViews
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v4, v5, v6);
  objc_msgSend_setTextColor_(v3, v8, v7, v9);

  objc_msgSend_setNumberOfLines_(v3, v10, 1, v11);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v3, v12, 0, v13);
  objc_msgSend_setLineBreakMode_(v3, v14, 4, v15);
  objc_msgSend_setTextAlignment_(v3, v16, 1, v17);
  objc_msgSend_addSubview_(self, v18, v3, v19);
  baseLabel = self->_baseLabel;
  self->_baseLabel = v3;
}

- (void)_addConstraints
{
  v42[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_lastBaselineAnchor(self->_baseLabel, a2, v2, v3);
  v9 = objc_msgSend_bottomAnchor(self, v6, v7, v8);
  v12 = objc_msgSend_constraintEqualToAnchor_constant_(v5, v10, v9, v11, -2.5);
  baseLabelBaselineConstraint = self->_baseLabelBaselineConstraint;
  self->_baseLabelBaselineConstraint = v12;

  v14 = MEMORY[0x277CCAAD0];
  v18 = objc_msgSend_leadingAnchor(self->_baseLabel, v15, v16, v17);
  v22 = objc_msgSend_leadingAnchor(self, v19, v20, v21);
  v25 = objc_msgSend_constraintEqualToAnchor_(v18, v23, v22, v24);
  v29 = objc_msgSend_trailingAnchor(self->_baseLabel, v26, v27, v28, v25);
  v33 = objc_msgSend_trailingAnchor(self, v30, v31, v32);
  v36 = objc_msgSend_constraintEqualToAnchor_(v29, v34, v33, v35);
  v37 = self->_baseLabelBaselineConstraint;
  v42[1] = v36;
  v42[2] = v37;
  v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, v42, 3);
  objc_msgSend_activateConstraints_(v14, v40, v39, v41);
}

+ (id)_stringForDepth:(double)a3 inFeet:(BOOL)a4
{
  v4 = a3 * 3.2808399;
  if (!a4)
  {
    v4 = a3;
  }

  v5 = floor(a3) != a3 && !a4;
  return sub_23BE6952C(v5, 6, v4);
}

+ (id)_attributedStringForBeyondLimitDepth:(double)a3 showPrefix:(BOOL)a4 inFeet:(BOOL)a5 depthAttributes:(id)a6 depthUnitAttributes:(id)a7
{
  v8 = a5;
  v9 = a4;
  v30[3] = *MEMORY[0x277D85DE8];
  v12 = -a3;
  if (a3 >= 0.0)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  v14 = a7;
  v15 = a6;
  v18 = objc_msgSend__stringForDepth_inFeet_(a1, v16, v8, v17, v13);
  v19 = @"FOGHORN_BEYOND_METERS";
  if (a3 >= 0.0 && !v9)
  {
    if (v8)
    {
      v22 = @"FOGHORN_BEYOND_FEET";
    }

    else
    {
      v22 = @"FOGHORN_BEYOND_METERS";
    }
  }

  else
  {
    if (v8)
    {
      v19 = @"FOGHORN_BEYOND_FEET";
    }

    v21 = @"FOGHORN_BEYOND_NEGATIVE_FEET";
    if (!v8)
    {
      v21 = @"FOGHORN_BEYOND_NEGATIVE_METERS";
    }

    if (a3 < 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }
  }

  v23 = NTKFoghornFaceLocalizedMarkdownString(v22);
  v29[0] = *MEMORY[0x277D2BE60];
  v29[1] = @"beyond";
  v30[0] = v15;
  v30[1] = v15;
  v29[2] = @"beyondUnit";
  v30[2] = v14;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v30, v29, 3);
  v27 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v26, v25, v23, v18);

  return v27;
}

+ (id)_maxDepthImageAttributesFromMaxDepthAttributes:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKeyedSubscript_(a3, a2, *MEMORY[0x277D740C0], v3);
  v7 = objc_msgSend_configurationWithScale_(MEMORY[0x277D755D0], v5, 1, v6);
  v9 = objc_msgSend_systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v8, @"arrow.down.to.line", v7);
  v12 = objc_msgSend_imageWithTintColor_(v9, v10, v4, v11);

  v15 = objc_msgSend_textAttachmentWithImage_(MEMORY[0x277D74270], v13, v12, v14);
  v19 = *MEMORY[0x277D74060];
  v20[0] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v20, &v19, 1);

  return v17;
}

+ (id)_attributedStringForMaxDepth:(double)a3 beyondLimit:(BOOL)a4 inFeet:(BOOL)a5 depthAttributes:(id)a6 depthUnitAttributes:(id)a7
{
  v8 = a5;
  v9 = a4;
  v30[4] = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v16 = objc_msgSend__stringForDepth_inFeet_(a1, v14, v8, v15, a3);
  v19 = objc_msgSend__maxDepthImageAttributesFromMaxDepthAttributes_(a1, v17, v12, v18);
  v20 = @"FOGHORN_MAXDEPTH_METERS_PLUS";
  if (v8)
  {
    v20 = @"FOGHORN_MAXDEPTH_FEET_PLUS";
  }

  v21 = @"FOGHORN_MAXDEPTH_FEET";
  if (!v8)
  {
    v21 = @"FOGHORN_MAXDEPTH_METERS";
  }

  if (v9)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = NTKFoghornFaceLocalizedMarkdownString(v22);
  v29[0] = *MEMORY[0x277D2BE60];
  v29[1] = @"maxDepthImage";
  v30[0] = v12;
  v30[1] = v19;
  v29[2] = @"maxDepth";
  v29[3] = @"maxDepthUnit";
  v30[2] = v12;
  v30[3] = v13;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v30, v29, 4);
  v27 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v26, v25, v23, v16);

  return v27;
}

+ (id)_attributedStringForActiveElevation:(double)a3 accuracy:(double)a4 precision:(double)a5 showPrefix:(BOOL)a6 inFeet:(BOOL)a7 valueAttributes:(id)a8 unitAttributes:(id)a9
{
  v10 = a7;
  v11 = a6;
  v42[3] = *MEMORY[0x277D85DE8];
  v15 = a8;
  v16 = a9;
  shouldApproximateAltitude_accuracy_precision = objc_msgSend_shouldApproximateAltitude_accuracy_precision_(NTKFoghornElevationUtilities, v17, v18, v19, a3, a4, a5);
  v24 = a3 * 3.2808399;
  if (v10)
  {
    v25 = a5 * 3.2808399;
  }

  else
  {
    v25 = a5;
  }

  if (v10)
  {
    objc_msgSend_roundedAltitude_accuracy_precision_(NTKFoghornElevationUtilities, v20, v21, v22, a3 * 3.2808399, a4 * 3.2808399, v25, v24);
  }

  else
  {
    objc_msgSend_roundedAltitude_accuracy_precision_(NTKFoghornElevationUtilities, v20, v21, v22, a3, a4, v25, v24);
  }

  if (fabs(v26) >= 0.00000011920929)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  v28 = -v27;
  v29 = v27 < 0.0 || v11;
  if (v27 >= 0.0)
  {
    v28 = v27;
  }

  v30 = sub_23BE6952C(0, 2, v28);
  if (v29 == 1 && shouldApproximateAltitude_accuracy_precision != 0)
  {
    if (v27 < 0.0)
    {
      v32 = @"FOGHORN_ELEVATION_APPROXIMATE_NEGATIVE_METERS";
      v33 = @"FOGHORN_ELEVATION_APPROXIMATE_NEGATIVE_FEET";
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (shouldApproximateAltitude_accuracy_precision)
  {
LABEL_26:
    v32 = @"FOGHORN_ELEVATION_APPROXIMATE_METERS";
    v33 = @"FOGHORN_ELEVATION_APPROXIMATE_FEET";
    goto LABEL_28;
  }

  if (v29 && v27 < 0.0)
  {
    v32 = @"FOGHORN_ELEVATION_NEGATIVE_METERS";
    v33 = @"FOGHORN_ELEVATION_NEGATIVE_FEET";
  }

  else
  {
    v32 = @"FOGHORN_ELEVATION_METERS";
    v33 = @"FOGHORN_ELEVATION_FEET";
  }

LABEL_28:
  if (v10)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  v35 = NTKFoghornFaceLocalizedMarkdownString(v34);
  v41[0] = *MEMORY[0x277D2BE60];
  v41[1] = @"elevation";
  v42[0] = v15;
  v42[1] = v15;
  v41[2] = @"elevationUnit";
  v42[2] = v16;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v42, v41, 3);
  v39 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v38, v37, v35, v30);

  return v39;
}

+ (id)_attributedStringForActiveDepth:(double)a3 maxDepth:(double)a4 beyondLimit:(BOOL)a5 inFeet:(BOOL)a6 depthAttributes:(id)a7 depthUnitAttributes:(id)a8 maxDepthAttributes:(id)a9 maxDepthUnitAttributes:(id)a10
{
  v13 = a6;
  v14 = a5;
  v41[6] = *MEMORY[0x277D85DE8];
  v18 = a9;
  v19 = a10;
  v20 = a8;
  v21 = a7;
  v24 = objc_msgSend__stringForDepth_inFeet_(a1, v22, v13, v23, a3);
  v27 = objc_msgSend__stringForDepth_inFeet_(a1, v25, v13, v26, a4);
  v30 = objc_msgSend__maxDepthImageAttributesFromMaxDepthAttributes_(a1, v28, v18, v29);
  v31 = @"FOGHORN_DEPTH_MAXDEPTH_METERS_PLUS";
  if (v13)
  {
    v31 = @"FOGHORN_DEPTH_MAXDEPTH_FEET_PLUS";
  }

  v32 = @"FOGHORN_DEPTH_MAXDEPTH_FEET";
  if (!v13)
  {
    v32 = @"FOGHORN_DEPTH_MAXDEPTH_METERS";
  }

  if (v14)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = NTKFoghornFaceLocalizedMarkdownString(v33);
  v40[0] = *MEMORY[0x277D2BE60];
  v40[1] = @"depth";
  v41[0] = v21;
  v41[1] = v21;
  v40[2] = @"depthUnit";
  v40[3] = @"maxDepthImage";
  v41[2] = v20;
  v41[3] = v30;
  v40[4] = @"maxDepth";
  v40[5] = @"maxDepthUnit";
  v41[4] = v18;
  v41[5] = v19;
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v41, v40, 6);
  v38 = objc_msgSend_ntk_attributedStringFromAttributesTable_markdownFormat_(MEMORY[0x277CCA898], v37, v36, v34, v24, v27);

  return v38;
}

- (void)_updateDepthUnits
{
  v27 = objc_msgSend_formattingManager(MEMORY[0x277D0A7C0], a2, v2, v3);
  v8 = objc_msgSend_unitManager(v27, v5, v6, v7);
  v12 = objc_msgSend_userDepthHKUnit(v8, v9, v10, v11);
  v16 = objc_msgSend_unitString(v12, v13, v14, v15);
  v20 = objc_msgSend_meterUnit(MEMORY[0x277CCDAB0], v17, v18, v19);
  v24 = objc_msgSend_unitString(v20, v21, v22, v23);
  self->_useMetricUnitsForDepth = objc_msgSend_isEqualToString_(v16, v25, v24, v26);
}

- (void)_updateBaseLabelBaslineOffsetForAttributedText:(id)a3
{
  v4 = a3;
  objc_msgSend_frame(self, v5, v6, v7);
  objc_msgSend_boundingRectWithSize_options_context_(v4, v8, 8, 0, v9, 2.0);
  v11 = v10;

  if (v11 < -2.5)
  {
    UICeilToViewScale();
  }

  baseLabelBaselineConstraint = self->_baseLabelBaselineConstraint;

  MEMORY[0x2821F9670](baseLabelBaselineConstraint, sel_setConstant_, v12, v13);
}

- (void)_updateBaseLabelForDepthBezel
{
  v72[2] = *MEMORY[0x277D85DE8];
  useMetricUnitsForDepth = self->_useMetricUnitsForDepth;
  v4 = self->_baseLabelFont;
  v7 = self->_baseLabelUnitFont;
  submergedDepthMax = self->_submergedDepthMax;
  if (self->_submerged)
  {
    submergedDepth = self->_submergedDepth;
    if (submergedDepth <= self->_submergedDepthLimit)
    {
      v16 = self->_depthLabelColor;
      depthMaxLabelColor = self->_depthMaxLabelColor;
      v30 = *MEMORY[0x277D740A8];
      v67[0] = *MEMORY[0x277D740C0];
      v29 = v67[0];
      v67[1] = v30;
      v68[0] = v16;
      v68[1] = v4;
      v31 = MEMORY[0x277CBEAC0];
      v32 = depthMaxLabelColor;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v31, v33, v68, v67, 2);
      v65[0] = v29;
      v65[1] = v30;
      v66[0] = v16;
      v66[1] = v7;
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v66, v65, 2);
      v56 = v4;
      v63[0] = v29;
      v63[1] = v30;
      v64[0] = v32;
      v64[1] = v4;
      v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v64, v63, 2);
      v61[0] = v29;
      v61[1] = v30;
      v62[0] = v32;
      v62[1] = v7;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, v62, v61, 2);
      if (useMetricUnitsForDepth)
      {
        submergedDepthLabelLimitMeters = self->_submergedDepthLabelLimitMeters;
      }

      else
      {
        submergedDepthLabelLimitMeters = self->_submergedDepthLabelLimitFeet / 3.2808399;
      }

      v50 = submergedDepthMax > submergedDepthLabelLimitMeters;
      if (submergedDepthMax > submergedDepthLabelLimitMeters)
      {
        submergedDepthMax = submergedDepthLabelLimitMeters;
      }

      v51 = objc_opt_class();

      v40 = objc_msgSend__attributedStringForActiveDepth_maxDepth_beyondLimit_inFeet_depthAttributes_depthUnitAttributes_maxDepthAttributes_maxDepthUnitAttributes_(v51, v52, v50, !useMetricUnitsForDepth, v18, v55, v36, v38, submergedDepth, submergedDepthMax);

      v4 = v56;
      goto LABEL_23;
    }

    depthOverLimitColor = self->_depthOverLimitColor;
    v12 = *MEMORY[0x277D740A8];
    v71[0] = *MEMORY[0x277D740C0];
    v11 = v71[0];
    v71[1] = v12;
    v72[0] = depthOverLimitColor;
    v72[1] = v4;
    v13 = MEMORY[0x277CBEAC0];
    v14 = depthOverLimitColor;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v13, v15, v72, v71, 2);
    v69[0] = v11;
    v69[1] = v12;
    v70[0] = v14;
    v70[1] = v7;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v70, v69, 2);
    if (useMetricUnitsForDepth)
    {
      v19 = self->_submergedDepthLabelLimitMeters;
    }

    else
    {
      v19 = self->_submergedDepthLabelLimitFeet / 3.2808399;
    }

    v43 = objc_opt_class();

    v45 = objc_msgSend__attributedStringForBeyondLimitDepth_showPrefix_inFeet_depthAttributes_depthUnitAttributes_(v43, v44, 0, !useMetricUnitsForDepth, v16, v18, v19);
LABEL_18:
    v40 = v45;
LABEL_23:

    objc_msgSend__updateBaseLabelBaslineOffsetForAttributedText_(self, v53, v40, v54);
    goto LABEL_24;
  }

  if (submergedDepthMax > 0.0)
  {
    v20 = self->_depthMaxLabelColor;
    v22 = *MEMORY[0x277D740A8];
    v59[0] = *MEMORY[0x277D740C0];
    v21 = v59[0];
    v59[1] = v22;
    v60[0] = v20;
    v60[1] = v4;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v20;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v23, v25, v60, v59, 2);
    v57[0] = v21;
    v57[1] = v22;
    v58[0] = v24;
    v58[1] = v7;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v58, v57, 2);
    if (useMetricUnitsForDepth)
    {
      v27 = self->_submergedDepthLabelLimitMeters;
    }

    else
    {
      v27 = self->_submergedDepthLabelLimitFeet / 3.2808399;
    }

    v46 = submergedDepthMax > v27;
    if (submergedDepthMax <= v27)
    {
      v47 = submergedDepthMax;
    }

    else
    {
      v47 = v27;
    }

    v48 = objc_opt_class();

    v45 = objc_msgSend__attributedStringForMaxDepth_beyondLimit_inFeet_depthAttributes_depthUnitAttributes_(v48, v49, v46, !useMetricUnitsForDepth, v16, v18, v47);
    goto LABEL_18;
  }

  v40 = 0;
  objc_msgSend__updateBaseLabelBaslineOffsetForAttributedText_(self, v5, 0, v6);
LABEL_24:
  objc_msgSend_setAttributedText_(self->_baseLabel, v41, v40, v42);
}

- (void)_updateBaseLabelForElevationBezel
{
  v68[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, *MEMORY[0x277CBE718], v7);
  v12 = objc_msgSend_BOOLValue(v8, v9, v10, v11);

  elevationIsValid = self->_elevationIsValid;
  v14 = self->_baseLabelFont;
  v17 = self->_baseLabelUnitFont;
  v18 = 0;
  v19 = &qword_27E1DC618;
  v20 = -INFINITY;
  v21 = INFINITY;
  v22 = &qword_27E1DC618;
  v23 = &qword_27E1DC618;
  v24 = INFINITY;
  do
  {
    if (v18 > 0x317)
    {
      break;
    }

    v25 = *(v19 + 4);
    if (*(v19 + 5) < v24)
    {
      v23 = v19;
      v24 = *(v19 + 5);
    }

    if (v25 > v20)
    {
      v22 = v19;
      v20 = *(v19 + 4);
    }

    v18 += 72;
    v19 += 9;
  }

  while (v25 != INFINITY);
  if (v12)
  {
    v26 = v22[4];
    v27 = *(v23 + 5);
    if (!elevationIsValid)
    {
LABEL_10:
      v28 = 0;
      objc_msgSend__updateBaseLabelBaslineOffsetForAttributedText_(self, v15, 0, v16, v20, v21, v24);
      goto LABEL_22;
    }
  }

  else
  {
    v21 = 3.2808399;
    v26 = *v22 / 3.2808399;
    v20 = *(v23 + 1);
    v27 = v20 / 3.2808399;
    if (!elevationIsValid)
    {
      goto LABEL_10;
    }
  }

  elevation = self->_elevation;
  v32 = *MEMORY[0x277D740C0];
  if (v27 > elevation || elevation > v26)
  {
    depthOverLimitColor = self->_depthOverLimitColor;
    v35 = *MEMORY[0x277D740A8];
    v63[0] = *MEMORY[0x277D740C0];
    v63[1] = v35;
    v64[0] = depthOverLimitColor;
    v64[1] = v14;
    v36 = MEMORY[0x277CBEAC0];
    v37 = depthOverLimitColor;
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v36, v38, v64, v63, 2);
    v61[0] = v32;
    v61[1] = v35;
    v62[0] = v37;
    v62[1] = v17;
    v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v62, v61, 2);
    if (elevation >= 0.0)
    {
      v40 = v26;
    }

    else
    {
      v40 = v27;
    }

    v41 = objc_opt_class();

    v55 = objc_msgSend__attributedStringForBeyondLimitDepth_showPrefix_inFeet_depthAttributes_depthUnitAttributes_(v41, v42, 1, v12 ^ 1u, v50, v52, v40);
  }

  else
  {
    elevationAccuracy = self->_elevationAccuracy;
    elevationPrecision = self->_elevationPrecision;
    depthLabelColor = self->_depthLabelColor;
    v46 = *MEMORY[0x277D740A8];
    v67[0] = *MEMORY[0x277D740C0];
    v67[1] = v46;
    v68[0] = depthLabelColor;
    v68[1] = v14;
    v47 = MEMORY[0x277CBEAC0];
    v48 = depthLabelColor;
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v47, v49, v68, v67, 2);
    v65[0] = v32;
    v65[1] = v46;
    v66[0] = v48;
    v66[1] = v17;
    v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v66, v65, 2);
    v53 = objc_opt_class();

    v55 = objc_msgSend__attributedStringForActiveElevation_accuracy_precision_showPrefix_inFeet_valueAttributes_unitAttributes_(v53, v54, 1, v12 ^ 1u, v50, v52, elevation, elevationAccuracy, elevationPrecision);
  }

  v28 = v55;

  objc_msgSend__updateBaseLabelBaslineOffsetForAttributedText_(self, v56, v28, v57, v58, v59, v60);
LABEL_22:
  objc_msgSend_setAttributedText_(self->_baseLabel, v29, v28, v30);
}

- (void)_drawSecondsBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5
{
  v9 = self->_majorTickColor;
  v10 = self->_minorTickColor;
  v11 = self->_inactiveMajorTickColor;
  v15 = self->_inactiveMinorTickColor;
  seconds = self->_seconds;
  p_layoutConstants = &self->_layoutConstants;
  bezelActiveWidth = self->_layoutConstants.bezelActiveWidth;
  bezelInactiveWidth = self->_layoutConstants.bezelInactiveWidth;
  if (seconds > 60.0 - self->_secondsEndOfMinuteAnimationDuration)
  {
    secondsEndOfMinuteAnimationStyle = self->_secondsEndOfMinuteAnimationStyle;
    if (secondsEndOfMinuteAnimationStyle == 3)
    {
      CLKInterpolateBetweenFloatsClipped();
      bezelActiveWidth = v22;
    }

    else if (secondsEndOfMinuteAnimationStyle == 2 || secondsEndOfMinuteAnimationStyle == 1)
    {
      CLKInterpolateBetweenFloatsClipped();
      seconds = v21;
    }
  }

  if (a4 > 1.0 || fabs(a4 + -1.0) < 0.00000011920929)
  {
    v24 = v11;

    v25 = v15;
    seconds = 0.0;
    bezelActiveWidth = bezelInactiveWidth;
    v10 = v25;
    v9 = v24;
  }

  else if (a4 > 0.0 && fabs(a4) >= 0.00000011920929)
  {
    secondsTritiumAnimationStyle = self->_secondsTritiumAnimationStyle;
    if (secondsTritiumAnimationStyle == 3)
    {
      CLKInterpolateBetweenFloatsClipped();
      bezelActiveWidth = v94;
    }

    else if (secondsTritiumAnimationStyle == 2 || secondsTritiumAnimationStyle == 1)
    {
      CLKInterpolateBetweenFloatsClipped();
      seconds = v93;
    }
  }

  if (a5 < 1.0)
  {
    v26 = objc_msgSend_colorWithAlphaComponent_(v9, v12, v13, v14, a5);

    v30 = objc_msgSend_colorWithAlphaComponent_(v10, v27, v28, v29, a5);

    v34 = objc_msgSend_colorWithAlphaComponent_(v11, v31, v32, v33, a5);

    v38 = objc_msgSend_colorWithAlphaComponent_(v15, v35, v36, v37, a5);

    v11 = v34;
    v15 = v38;
    v10 = v30;
    v9 = v26;
  }

  showingStatusIndicator = self->_showingStatusIndicator;
  v39 = self->_superEllipseGeometry;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v15;
  __y[0] = 0.0;
  v44 = modf(seconds + seconds, __y);
  v45 = __y[0];
  CGContextSaveGState(a3);
  v46 = v40;
  v101 = v40;
  v50 = objc_msgSend_CGColor(v46, v47, v48, v49);
  v51 = v41;
  v100 = v41;
  v55 = objc_msgSend_CGColor(v51, v52, v53, v54);
  v56 = v42;
  v99 = v42;
  v97 = objc_msgSend_CGColor(v56, v57, v58, v59);
  v60 = v43;
  v98 = v43;
  v96 = objc_msgSend_CGColor(v60, v61, v62, v63);
  CGContextSetStrokeColorWithColor(a3, v50);
  CGContextSetLineCap(a3, kCGLineCapRound);
  CGContextSetLineWidth(a3, bezelActiveWidth);
  MidX = CGRectGetMidX(p_layoutConstants->bezelOuterRect);
  MidY = CGRectGetMidY(p_layoutConstants->bezelOuterRect);
  CGContextTranslateCTM(a3, MidX, MidY);
  v66 = 0;
  v95 = v45 % 0x78;
  v67 = v45 % 0x78 + 1;
  v68 = 0.0;
  do
  {
    v69 = v66;
    v70 = 1.57079633 - v68 + 6.28318531;
    if (1.57079633 - v68 >= 0.0)
    {
      v70 = 1.57079633 - v68;
    }

    if (v66)
    {
      v71 = v55;
    }

    else
    {
      v71 = v50;
    }

    v105 = 0.0;
    v106 = 0.0;
    v103 = 0.0;
    v104 = 0.0;
    if (v66)
    {
      v72 = 72;
    }

    else
    {
      v72 = 64;
    }

    NTKSuperEllipseRectGeometryGetRadialPoints(v39, &v103, &v105, v70, *(&p_layoutConstants->bezelOuterRect.origin.x + v72));
    sub_23BE6965C(a3, v71, showingStatusIndicator, 1.57079633 - v68, v103, v104, v105, v106, bezelActiveWidth);
    v68 = v68 + 0.0523598776;
    v66 = v69 + 1;
  }

  while (v67 != v69 + 1);
  if (v44 <= 0.0)
  {
    v89 = v95 + 1;
  }

  else
  {
    CLKInterpolateBetweenFloatsClipped();
    v74 = v73;
    v75 = a3;
    CGContextSetLineWidth(a3, v73);
    if (v69)
    {
      v76 = v99;
    }

    else
    {
      v76 = v98;
    }

    v77 = v101;
    if (v69)
    {
      v78 = 64;
    }

    else
    {
      v77 = v41;
      v78 = 72;
    }

    v79 = v77;
    v80 = v76;
    a3 = v75;
    v81 = v80;
    v82 = MEMORY[0x23EEBFD00](v44);
    v83 = v82;
    v87 = objc_msgSend_CGColor(v83, v84, v85, v86);
    v105 = 0.0;
    v106 = 0.0;
    v103 = 0.0;
    v104 = 0.0;
    v88 = 1.57079633 - v68 + 6.28318531;
    if (1.57079633 - v68 >= 0.0)
    {
      v88 = 1.57079633 - v68;
    }

    NTKSuperEllipseRectGeometryGetRadialPoints(v39, &v103, &v105, v88, *(&p_layoutConstants->bezelOuterRect.origin.x + v78));

    sub_23BE6965C(a3, v87, showingStatusIndicator, 1.57079633 - v68, v103, v104, v105, v106, v74);
    v68 = v68 + 0.0523598776;
    v89 = v95 + 2;
  }

  CGContextSetLineWidth(a3, bezelInactiveWidth);
  if (v89 <= 0x77)
  {
    do
    {
      v90 = 1.57079633 - v68 + 6.28318531;
      if (1.57079633 - v68 >= 0.0)
      {
        v90 = 1.57079633 - v68;
      }

      if (v89)
      {
        v91 = v96;
      }

      else
      {
        v91 = v97;
      }

      v105 = 0.0;
      v106 = 0.0;
      v103 = 0.0;
      v104 = 0.0;
      if (v89)
      {
        v92 = 72;
      }

      else
      {
        v92 = 64;
      }

      NTKSuperEllipseRectGeometryGetRadialPoints(v39, &v103, &v105, v90, *(&p_layoutConstants->bezelOuterRect.origin.x + v92));
      sub_23BE6965C(a3, v91, showingStatusIndicator, 1.57079633 - v68, v103, v104, v105, v106, bezelInactiveWidth);
      v68 = v68 + 0.0523598776;
      ++v89;
    }

    while (v89 != 120);
  }

  CGContextRestoreGState(a3);
}

- (void)_drawDepthBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5
{
  submerged = self->_submerged;
  if (submerged && self->_submergedDepth > self->_submergedDepthLimit)
  {
    v151 = self->_depthOverLimitColor;
    v147 = objc_msgSend_clearColor(MEMORY[0x277D75348], v9, v10, v11);
    v15 = 0;
    v141 = v151;
    v143 = v151;
    v148 = v151;
    v16 = v151;
    v17 = v151;
    v18 = v151;
    v19 = v151;
    v20 = v151;
    v134 = v151;
    v145 = v151;
    v21 = v151;
  }

  else
  {
    v151 = self->_majorTickColor;
    v141 = self->_medialTickColor;
    v143 = self->_minorTickColor;
    v148 = self->_depthMaxMajorTickColor;
    v16 = self->_depthMaxMedialTickColor;
    v17 = self->_depthMaxMinorTickColor;
    v18 = self->_depthLimitMajorTickColor;
    v19 = self->_depthLimitMedialTickColor;
    v20 = self->_depthLimitMinorTickColor;
    v134 = self->_depthMarkerColor;
    v145 = self->_depthMaxMarkerColor;
    v21 = self->_depthLimitLabelColor;
    v147 = self->_depthDecorationColor;
    v15 = 1;
  }

  v22 = a4 <= 1.0;
  if (fabs(a4 + -1.0) < 0.00000011920929)
  {
    v22 = 0;
  }

  v136 = v22;
  if (!v22)
  {
    v139 = self->_depthLimitMajorTickColor;

    v129 = self->_depthLimitMedialTickColor;
    v127 = self->_depthLimitMinorTickColor;

    v125 = self->_depthLimitMajorTickColor;
    v123 = self->_depthLimitMedialTickColor;

    v121 = self->_depthLimitMinorTickColor;
    v119 = self->_depthLimitMajorTickColor;

    v23 = self->_depthLimitMedialTickColor;
    v42 = self->_depthLimitMinorTickColor;

    v46 = objc_msgSend_clearColor(MEMORY[0x277D75348], v43, v44, v45);

    objc_msgSend_clearColor(MEMORY[0x277D75348], v47, v48, v49);
    v51 = v50 = v21;

    v52 = self->_depthLimitLabelColor;
    v40 = objc_msgSend_clearColor(MEMORY[0x277D75348], v53, v54, v55);
    v131 = 0;
    v133 = 0;
    v151 = v139;
    v141 = v129;
    v143 = v127;
    v148 = v125;
    v17 = v121;
    v16 = v123;
    v138 = v119;
    v20 = v42;
    v41 = v46;
    v145 = v51;
    v21 = v52;
    goto LABEL_12;
  }

  v138 = v18;
  v133 = v15;
  v23 = v19;
  if (a4 <= 0.0)
  {
    v41 = v134;
    goto LABEL_13;
  }

  v24 = v151;
  if (fabs(a4) >= 0.00000011920929)
  {
    v25 = v20;
    v131 = submerged;
    v128 = MEMORY[0x23EEBFD00](v151, self->_depthLimitMajorTickColor, a4);

    v126 = MEMORY[0x23EEBFD00](v141, self->_depthLimitMedialTickColor, a4);

    v124 = MEMORY[0x23EEBFD00](v143, self->_depthLimitMinorTickColor, a4);

    v122 = MEMORY[0x23EEBFD00](v148, self->_depthLimitMajorTickColor, a4);

    v120 = MEMORY[0x23EEBFD00](v16, self->_depthLimitMedialTickColor, a4);

    v118 = MEMORY[0x23EEBFD00](v17, self->_depthLimitMinorTickColor, a4);

    v117 = MEMORY[0x23EEBFD00](v138, self->_depthLimitMajorTickColor, a4);

    v26 = v23;
    v23 = MEMORY[0x23EEBFD00](v23, v23, a4);

    v20 = MEMORY[0x23EEBFD00](v25, self->_depthLimitMinorTickColor, a4);

    v30 = objc_msgSend_colorWithAlphaComponent_(self->_depthMarkerColor, v27, v28, v29, 1.0 - a4);

    v34 = objc_msgSend_colorWithAlphaComponent_(self->_depthMaxMarkerColor, v31, v32, v33, 1.0 - a4);

    v35 = MEMORY[0x23EEBFD00](v21, self->_depthLimitLabelColor, a4);
    v36 = v21;
    v21 = v35;

    v40 = objc_msgSend_colorWithAlphaComponent_(v147, v37, v38, v39, 1.0 - a4);
    v151 = v128;
    v141 = v126;
    v143 = v124;
    v148 = v122;
    v17 = v118;
    v16 = v120;
    v138 = v117;
    v145 = v34;
    v41 = v30;
LABEL_12:

    v147 = v40;
    LOBYTE(submerged) = v131;
LABEL_13:
    v24 = v151;
    goto LABEL_14;
  }

  v41 = v134;
LABEL_14:
  if (a5 >= 1.0)
  {
    v101 = v143;
    v85 = v145;
    v102 = v138;
    v99 = v141;
    v104 = v133;
    v100 = v148;
  }

  else
  {
    v152 = v24;
    v135 = objc_msgSend_colorWithAlphaComponent_(v24, v12, v13, v14, a5);

    v153 = objc_msgSend_colorWithAlphaComponent_(v141, v56, v57, v58, a5);

    v142 = objc_msgSend_colorWithAlphaComponent_(v143, v59, v60, v61, a5);

    v144 = objc_msgSend_colorWithAlphaComponent_(v148, v62, v63, v64, a5);

    v149 = objc_msgSend_colorWithAlphaComponent_(v16, v65, v66, v67, a5);

    v132 = objc_msgSend_colorWithAlphaComponent_(v17, v68, v69, v70, a5);

    v130 = objc_msgSend_colorWithAlphaComponent_(v138, v71, v72, v73, a5);

    v140 = objc_msgSend_colorWithAlphaComponent_(v23, v74, v75, v76, a5);

    objc_msgSend_colorWithAlphaComponent_(v20, v77, v78, v79, a5);
    v81 = v80 = v41;

    v85 = objc_msgSend_colorWithAlphaComponent_(v145, v82, v83, v84, a5);

    objc_msgSend_colorWithAlphaComponent_(v80, v86, v87, v88, a5);
    v90 = v89 = v21;

    v94 = objc_msgSend_colorWithAlphaComponent_(v89, v91, v92, v93, a5);

    v98 = objc_msgSend_colorWithAlphaComponent_(v147, v95, v96, v97, a5);

    v24 = v135;
    v16 = v149;
    v99 = v153;
    v101 = v142;
    v100 = v144;
    v102 = v130;
    v17 = v132;
    v23 = v140;
    v103 = v81;
    v41 = v90;
    v21 = v94;
    v147 = v98;
    v20 = v103;
    v104 = v133;
  }

  v146 = v16;
  v150 = v100;
  superEllipseGeometry = self->_superEllipseGeometry;
  depthTextLines = self->_depthTextLines;
  textLines = self->_depthLimitLabelCache.textLines;
  submergedDepthLabelLimitFeet = self->_submergedDepthLabelLimitFeet;
  submergedDepth = self->_submergedDepth;
  submergedDepthMax = self->_submergedDepthMax;
  v111 = -self->_submergedDepthLabelLimitMeters;
  v155[4] = 0;
  v155[8] = 0;
  *&v155[5] = v111;
  v155[6] = 0x3FF0000000000000;
  v155[7] = 0x50000000ALL;
  v155[0] = 0;
  *&v155[1] = -submergedDepthLabelLimitFeet;
  v155[2] = 0x4014000000000000;
  v155[3] = 0x200000004;
  p_layoutConstants = &self->_layoutConstants;
  v116 = v16;
  v154 = v24;
  v113 = v99;
  v114 = v101;
  v115 = v102;
  sub_23BE69794(a3, p_layoutConstants, superEllipseGeometry, depthTextLines, textLines, v24, v99, v101, submergedDepth, submergedDepthMax, v100, v116, v17, v102, v23, v20, v41, v85, v21, v104, v147, v155, submerged, v136);
}

- (void)_drawElevationBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5
{
  elevationIsValid = self->_elevationIsValid;
  elevation = 0.0;
  if (elevationIsValid)
  {
    elevation = self->_elevation;
  }

  v155[0] = 0;
  v10 = sub_23BE642C4(v155, elevation);
  v14 = v155[0];
  v140 = v10;
  if ((v155[0] & 1) == 0)
  {
    v15 = v10;
    v16 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v11, v12, v13);
    v19 = objc_msgSend_objectForKey_(v16, v17, *MEMORY[0x277CBE718], v18);
    v23 = objc_msgSend_BOOLValue(v19, v20, v21, v22);

    if (v23)
    {
      v14 = 0;
      if (elevation >= 0.0)
      {
        elevation = v15[4];
      }

      else
      {
        elevation = v15[5];
      }
    }

    else
    {
      v24 = v15[1];
      if (v24 / 3.2808399 < elevation && elevation < *v15 / 3.2808399)
      {
        v155[0] = 1;
        v26 = elevationIsValid;
        if (elevationIsValid)
        {
          goto LABEL_19;
        }

LABEL_20:
        v150 = self->_depthMaxMajorTickColor;
        v28 = self->_depthMaxMedialTickColor;
        v129 = self->_depthMaxMinorTickColor;
        v29 = self->_depthMaxMajorTickColor;
        v30 = self->_depthMaxMedialTickColor;
        v144 = self->_depthMaxMinorTickColor;
        v132 = self->_depthMaxMajorTickColor;
        v135 = self->_depthMaxMedialTickColor;
        v138 = self->_depthMaxMinorTickColor;
        v148 = objc_msgSend_clearColor(MEMORY[0x277D75348], v32, v33, v34);
        v31 = objc_msgSend_clearColor(MEMORY[0x277D75348], v35, v36, v37);
        goto LABEL_21;
      }

      v14 = 0;
      if (elevation >= 0.0)
      {
        elevation = *v15 / 3.2808399;
      }

      else
      {
        elevation = v24 / 3.2808399;
      }
    }
  }

  v26 = elevationIsValid;
  if (!elevationIsValid)
  {
    goto LABEL_20;
  }

  if (v14)
  {
LABEL_19:
    v150 = self->_majorTickColor;
    v28 = self->_medialTickColor;
    v129 = self->_minorTickColor;
    v29 = self->_depthMaxMajorTickColor;
    v30 = self->_depthMaxMedialTickColor;
    v144 = self->_depthMaxMinorTickColor;
    v132 = self->_depthLimitMajorTickColor;
    v135 = self->_depthLimitMedialTickColor;
    v138 = self->_depthLimitMinorTickColor;
    v148 = self->_depthMarkerColor;
    v31 = self->_depthMaxMarkerColor;
LABEL_21:
    v142 = v31;
    depthLimitLabelColor = self->_depthLimitLabelColor;
    goto LABEL_22;
  }

  depthLimitLabelColor = self->_depthOverLimitColor;
  v150 = depthLimitLabelColor;
  v28 = depthLimitLabelColor;
  v129 = depthLimitLabelColor;
  v29 = depthLimitLabelColor;
  v30 = depthLimitLabelColor;
  v144 = depthLimitLabelColor;
  v132 = depthLimitLabelColor;
  v135 = depthLimitLabelColor;
  v138 = depthLimitLabelColor;
  v148 = depthLimitLabelColor;
  v142 = depthLimitLabelColor;
LABEL_22:
  v149 = depthLimitLabelColor;
  if (a4 > 1.0 || fabs(a4 + -1.0) < 0.00000011920929)
  {
    v53 = v149;
    v127 = self->_depthLimitMajorTickColor;

    v151 = self->_depthLimitMedialTickColor;
    v126 = self->_depthLimitMinorTickColor;

    v130 = self->_depthLimitMajorTickColor;
    v42 = self->_depthLimitMedialTickColor;

    v52 = self->_depthLimitMinorTickColor;
    v145 = self->_depthLimitMajorTickColor;

    v133 = self->_depthLimitMedialTickColor;
    v136 = self->_depthLimitMinorTickColor;

    v47 = objc_msgSend_clearColor(MEMORY[0x277D75348], v56, v57, v58);

    v51 = objc_msgSend_clearColor(MEMORY[0x277D75348], v59, v60, v61);

    v54 = self->_depthLimitLabelColor;
    v55 = 0;
    goto LABEL_28;
  }

  if (a4 <= 0.0)
  {
    v63 = v28;
    v65 = v29;
    v42 = v30;
    v55 = v26;
    v68 = v142;
    v64 = v135;
    v67 = v138;
    v62 = v129;
    v66 = v132;
    v52 = v144;
    v41 = v150;
  }

  else
  {
    v125 = v26;
    v41 = v150;
    if (fabs(a4) >= 0.00000011920929)
    {
      v127 = MEMORY[0x23EEBFD00](v150, self->_depthLimitMajorTickColor, a4);

      v151 = MEMORY[0x23EEBFD00](v28, self->_depthLimitMedialTickColor, a4);

      v126 = MEMORY[0x23EEBFD00](v129, self->_depthLimitMinorTickColor, a4);

      v130 = MEMORY[0x23EEBFD00](v29, self->_depthLimitMajorTickColor, a4);

      v42 = MEMORY[0x23EEBFD00](v30, self->_depthLimitMedialTickColor, a4);

      v43 = MEMORY[0x23EEBFD00](v144, self->_depthLimitMinorTickColor, a4);

      v145 = MEMORY[0x23EEBFD00](v132, self->_depthLimitMajorTickColor, a4);

      v133 = MEMORY[0x23EEBFD00](v135, self->_depthLimitMedialTickColor, a4);

      v136 = MEMORY[0x23EEBFD00](v138, self->_depthLimitMinorTickColor, a4);

      v47 = objc_msgSend_colorWithAlphaComponent_(v148, v44, v45, v46, 1.0 - a4);

      v51 = objc_msgSend_colorWithAlphaComponent_(v142, v48, v49, v50, 1.0 - a4);

      v52 = v43;
      v53 = v149;
      v54 = MEMORY[0x23EEBFD00](a4);
      v55 = v125;
LABEL_28:

      v62 = v126;
      v41 = v127;
      v63 = v151;
      v65 = v130;
      v64 = v133;
      v66 = v145;
      v67 = v136;
      v148 = v47;
      v149 = v54;
      v68 = v51;
      goto LABEL_29;
    }

    v63 = v28;
    v65 = v29;
    v42 = v30;
    v68 = v142;
    v64 = v135;
    v67 = v138;
    v62 = v129;
    v66 = v132;
    v52 = v144;
    v55 = v125;
  }

LABEL_29:
  if (a5 >= 1.0)
  {
    v111 = v65;
    v110 = v63;
  }

  else
  {
    v69 = v64;
    v70 = v66;
    v143 = v68;
    v71 = v62;
    v152 = v41;
    v146 = objc_msgSend_colorWithAlphaComponent_(v41, v38, v39, v40, a5);

    v153 = objc_msgSend_colorWithAlphaComponent_(v63, v72, v73, v74, a5);

    v78 = objc_msgSend_colorWithAlphaComponent_(v71, v75, v76, v77, a5);

    v139 = objc_msgSend_colorWithAlphaComponent_(v65, v79, v80, v81, a5);

    v137 = objc_msgSend_colorWithAlphaComponent_(v42, v82, v83, v84, a5);

    v134 = objc_msgSend_colorWithAlphaComponent_(v52, v85, v86, v87, a5);

    v131 = objc_msgSend_colorWithAlphaComponent_(v70, v88, v89, v90, a5);

    v128 = objc_msgSend_colorWithAlphaComponent_(v69, v91, v92, v93, a5);

    v97 = objc_msgSend_colorWithAlphaComponent_(v67, v94, v95, v96, a5);

    v101 = objc_msgSend_colorWithAlphaComponent_(v143, v98, v99, v100, a5);

    v105 = objc_msgSend_colorWithAlphaComponent_(v148, v102, v103, v104, a5);

    v109 = objc_msgSend_colorWithAlphaComponent_(v149, v106, v107, v108, a5);

    v41 = v146;
    v110 = v153;
    v62 = v78;
    v42 = v137;
    v111 = v139;
    v66 = v131;
    v52 = v134;
    v64 = v128;
    v148 = v105;
    v149 = v109;
    v68 = v101;
    v67 = v97;
  }

  v147 = v52;
  superEllipseGeometry = self->_superEllipseGeometry;
  depthTextLines = self->_depthTextLines;
  textLines = self->_elevationLimitLabelCache.textLines;
  v115 = -elevation;
  if (elevation >= 0.0)
  {
    v115 = elevation;
  }

  v124 = v67;
  p_layoutConstants = &self->_layoutConstants;
  v123 = v52;
  v117 = v64;
  v118 = v66;
  v119 = v67;
  v120 = v68;
  v154 = v41;
  v121 = v62;
  v122 = v111;
  sub_23BE69794(a3, p_layoutConstants, superEllipseGeometry, depthTextLines, textLines, v41, v110, v62, v115, v115, v111, v42, v123, v66, v64, v124, v148, v68, v149, 0, 0, v140, v55, 0);
}

- (id)_harmoniaOvernightSummaryLabelColor
{
  dataState = self->_harmoniaSummaryOvernightLabelCache.dataState;
  if (dataState < 4)
  {
    v4 = &OBJC_IVAR___NTKFoghornFaceBezelView__harmoniaUnitLabelColor;
LABEL_3:
    a2 = *(&self->super.super.super.isa + *v4);
    goto LABEL_4;
  }

  if (dataState == 4)
  {
    harmoniaOvernightChangesThreshold = self->_harmoniaOvernightChangesThreshold;
    if (harmoniaOvernightChangesThreshold <= 2)
    {
      v4 = off_278B9C930[harmoniaOvernightChangesThreshold];
      goto LABEL_3;
    }
  }

LABEL_4:

  return a2;
}

- (id)_harmoniaTrainingSummaryLabelColor
{
  dataState = self->_harmoniaSummaryTrainingLabelCache.dataState;
  if (dataState < 4)
  {
    v4 = &OBJC_IVAR___NTKFoghornFaceBezelView__harmoniaUnitLabelColor;
LABEL_3:
    a2 = *(&self->super.super.super.isa + *v4);
    goto LABEL_4;
  }

  if (dataState == 4)
  {
    harmoniaTrainingLoadBand = self->_harmoniaTrainingLoadBand;
    if (harmoniaTrainingLoadBand <= 4)
    {
      v4 = off_278B9C948[harmoniaTrainingLoadBand];
      goto LABEL_3;
    }
  }

LABEL_4:

  return a2;
}

- (void)_drawHarmoniaBezelInContext:(CGContext *)a3 tritiumProgress:(double)a4 alpha:(double)a5
{
  v473 = *MEMORY[0x277D85DE8];
  v8 = self->_harmoniaUnitLabelColor;
  v429 = self->_harmoniaOvernightTypicalColor;
  obj = self->_harmoniaOvernightPartiallyOutOfRangeColor;
  v423 = self->_harmoniaOvernightOutOfRangeColor;
  v420 = self->_harmoniaTrainingWellBelowColor;
  v416 = self->_harmoniaTrainingBelowColor;
  v410 = self->_harmoniaTrainingNearColor;
  v396 = self->_harmoniaTrainingAboveColor;
  v9 = self->_harmoniaTrainingWellAboveColor;
  v10 = self->_depthLimitMinorTickColor;
  v427 = self->_harmoniaEmphasizedTickColor;
  v418 = self->_harmoniaDotFillColor;
  v392 = objc_msgSend__harmoniaOvernightSummaryLabelColor(self, v11, v12, v13);
  v390 = objc_msgSend__harmoniaTrainingSummaryLabelColor(self, v14, v15, v16);
  if (a4 > 1.0 || fabs(a4 + -1.0) < 0.00000011920929)
  {
    v388 = self->_harmoniaUnitLabelColor;

    v385 = self->_harmoniaOvernightTypicalColor;
    v382 = self->_harmoniaOvernightPartiallyOutOfRangeColor;

    v379 = self->_harmoniaOvernightOutOfRangeColor;
    v376 = self->_harmoniaTrainingWellBelowColor;

    v373 = self->_harmoniaTrainingBelowColor;
    v413 = self->_harmoniaTrainingNearColor;

    v35 = self->_harmoniaTrainingAboveColor;
    v36 = self->_harmoniaTrainingWellAboveColor;

    v37 = self->_depthLimitMinorTickColor;
    v38 = self->_harmoniaEmphasizedTickColor;

    v34 = objc_msgSend__harmoniaOvernightSummaryLabelColor(self, v39, v40, v41);

    v32 = objc_msgSend__harmoniaTrainingSummaryLabelColor(self, v42, v43, v44);
    v33 = v388;
    v427 = v38;
    v429 = v385;
    v423 = v379;
    obj = v382;
    v420 = v376;
    v416 = v373;
    v410 = v413;
    v9 = v36;
    v10 = v37;
    v31 = v390;
    goto LABEL_7;
  }

  if (a4 > 0.0 && fabs(a4) >= 0.00000011920929)
  {
    v387 = MEMORY[0x23EEBFD00](v8, self->_harmoniaUnitLabelColor, a4);

    v384 = MEMORY[0x23EEBFD00](v429, self->_harmoniaOvernightTypicalColor, a4);

    v381 = MEMORY[0x23EEBFD00](obj, self->_harmoniaOvernightPartiallyOutOfRangeColor, a4);

    v378 = MEMORY[0x23EEBFD00](v423, self->_harmoniaOvernightOutOfRangeColor, a4);

    v20 = MEMORY[0x23EEBFD00](v420, self->_harmoniaTrainingWellBelowColor, a4);

    v375 = MEMORY[0x23EEBFD00](v416, self->_harmoniaTrainingBelowColor, a4);

    v412 = MEMORY[0x23EEBFD00](v410, self->_harmoniaTrainingNearColor, a4);

    v407 = MEMORY[0x23EEBFD00](v396, self->_harmoniaTrainingAboveColor, a4);

    v404 = MEMORY[0x23EEBFD00](v9, self->_harmoniaTrainingWellAboveColor, a4);

    v21 = MEMORY[0x23EEBFD00](v10, self->_depthLimitMinorTickColor, a4);

    v22 = MEMORY[0x23EEBFD00](v427, self->_harmoniaEmphasizedTickColor, a4);

    v26 = objc_msgSend__harmoniaOvernightSummaryLabelColor(self, v23, v24, v25);
    v27 = MEMORY[0x23EEBFD00](v392, v26, a4);

    v31 = objc_msgSend__harmoniaTrainingSummaryLabelColor(self, v28, v29, v30);
    v32 = MEMORY[0x23EEBFD00](v390, v31, a4);

    v33 = v387;
    v427 = v22;
    v429 = v384;
    v423 = v378;
    obj = v381;
    v420 = v20;
    v416 = v375;
    v410 = v412;
    v9 = v404;
    v10 = v21;
    v34 = v27;
    v35 = v407;
LABEL_7:

    v45 = v33;
    goto LABEL_9;
  }

  v32 = v390;
  v34 = v392;
  v35 = v396;
  v45 = v8;
LABEL_9:
  v46 = v9;
  if (a5 >= 1.0)
  {
    v97 = v418;
    v391 = v32;
    v394 = v34;
    v371 = v9;
    v96 = v10;
    v398 = v35;
    v368 = v45;
  }

  else
  {
    v47 = v32;
    v48 = v45;
    v49 = objc_msgSend_colorWithAlphaComponent_(v45, v17, v18, v19, a5);

    v414 = objc_msgSend_colorWithAlphaComponent_(v429, v50, v51, v52, a5);

    v408 = objc_msgSend_colorWithAlphaComponent_(obj, v53, v54, v55, a5);

    v405 = objc_msgSend_colorWithAlphaComponent_(v423, v56, v57, v58, a5);

    v402 = objc_msgSend_colorWithAlphaComponent_(v420, v59, v60, v61, a5);

    v400 = objc_msgSend_colorWithAlphaComponent_(v416, v62, v63, v64, a5);

    v397 = objc_msgSend_colorWithAlphaComponent_(v410, v65, v66, v67, a5);

    v393 = objc_msgSend_colorWithAlphaComponent_(v35, v68, v69, v70, a5);

    v74 = objc_msgSend_colorWithAlphaComponent_(v46, v71, v72, v73, a5);

    v78 = objc_msgSend_colorWithAlphaComponent_(v10, v75, v76, v77, a5);

    v82 = objc_msgSend_colorWithAlphaComponent_(v418, v79, v80, v81, a5);

    v86 = objc_msgSend_colorWithAlphaComponent_(v427, v83, v84, v85, a5);

    v90 = objc_msgSend_colorWithAlphaComponent_(v34, v87, v88, v89, a5);

    v94 = objc_msgSend_colorWithAlphaComponent_(v47, v91, v92, v93, a5);

    v368 = v49;
    v427 = v86;
    v429 = v414;
    v423 = v405;
    obj = v408;
    v420 = v402;
    v416 = v400;
    v95 = v393;
    v410 = v397;
    v394 = v90;
    v398 = v95;
    v371 = v74;
    v96 = v78;
    v97 = v82;
    v391 = v94;
  }

  p_layoutConstants = &self->_layoutConstants;
  theArray = self->_harmoniaTextLines;
  line = self->_harmoniaSummaryTrainingLabelCache.line;
  v367 = self->_harmoniaSummaryOvernightLabelCache.line;
  harmoniaOvernightTypicalValues = self->_harmoniaOvernightTypicalValues;
  harmoniaOvernightChangeAboveValues = self->_harmoniaOvernightChangeAboveValues;
  harmoniaOvernightChangeBelowValues = self->_harmoniaOvernightChangeBelowValues;
  harmoniaOvernightMarkers = self->_harmoniaOvernightMarkers;
  harmoniaTrainingMarkers = self->_harmoniaTrainingMarkers;
  harmoniaTrainingLoadBand = self->_harmoniaTrainingLoadBand;
  harmoniaOvernightChangesThreshold = self->_harmoniaOvernightChangesThreshold;
  harmoniaTrainingValue = self->_harmoniaTrainingValue;
  v105 = self->_superEllipseGeometry;
  v409 = harmoniaOvernightTypicalValues;
  v415 = harmoniaOvernightChangeAboveValues;
  v406 = harmoniaOvernightChangeBelowValues;
  v106 = harmoniaOvernightMarkers;
  v107 = harmoniaTrainingMarkers;
  v401 = harmoniaTrainingValue;
  v419 = v96;
  v403 = v97;
  v389 = v427;
  v428 = v429;
  v383 = obj;
  v386 = v423;
  v370 = v420;
  v374 = v416;
  v380 = v410;
  v377 = v398;
  v372 = v371;
  v108 = v368;
  v399 = v394;
  v411 = v391;
  bezelDepthStartAngle = p_layoutConstants->bezelDepthStartAngle;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(v105, 3.14159265);
  v111 = v110;
  NTKSuperEllipseRectGeometryGetPositionAtAngle(v105, bezelDepthStartAngle);
  v113 = v112;
  v114 = v111 - v112;
  MidX = CGRectGetMidX(p_layoutConstants->bezelOuterRect);
  MidY = CGRectGetMidY(p_layoutConstants->bezelOuterRect);
  CGContextSaveGState(a3);
  CGContextTranslateCTM(a3, MidX, MidY);
  bezelHarmoniaLabelPositionOffset = p_layoutConstants->bezelHarmoniaLabelPositionOffset;
  v417 = p_layoutConstants;
  v118 = (p_layoutConstants->bezelHarmoniaMajorTickLength - p_layoutConstants->bezelHarmoniaMinorTickLength) * 0.5;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v120 = v108;
  v395 = v108;
  v124 = objc_msgSend_CGColor(v120, v121, v122, v123);
  v421 = v105;
  sub_23BE6A688(a3, v105, v124, ValueAtIndex, 0, 0, v114 - bezelHarmoniaLabelPositionOffset, v118);
  v430 = objc_opt_new();
  v460 = 0u;
  v461 = 0u;
  v462 = 0u;
  v463 = 0u;
  obja = v106;
  v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v125, &v460, v472, 16);
  if (v129)
  {
    v130 = *v461;
    do
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v461 != v130)
        {
          objc_enumerationMutation(obja);
        }

        objc_msgSend_floatValue(*(*(&v460 + 1) + 8 * i), v126, v127, v128);
        objc_msgSend_addIndex_(v430, v133, ((v132 * -24.0) + 24.0), v134);
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v126, &v460, v472, 16);
    }

    while (v129);
  }

  v135 = v419;
  v139 = objc_msgSend_CGColor(v419, v136, v137, v138);
  v140 = v419;
  v144 = objc_msgSend_CGColor(v419, v141, v142, v143);
  v145 = v113 + v113;
  v146 = sub_23BE6ACBC(a3, &p_layoutConstants->bezelOuterRect.origin.x, v421, v139, v144, v430, v113 + v113, v114);
  v147 = v399;
  v151 = objc_msgSend_CGColor(v399, v148, v149, v150);
  sub_23BE6A688(a3, v421, v151, v367, 0, 1, bezelHarmoniaLabelPositionOffset + bezelHarmoniaLabelPositionOffset + v114 - bezelHarmoniaLabelPositionOffset + v146, v118);
  v152 = CFArrayGetValueAtIndex(theArray, 1);
  v153 = v108;
  v157 = objc_msgSend_CGColor(v108, v154, v155, v156);
  sub_23BE6A688(a3, v421, v157, v152, 2, 0, v113 + bezelHarmoniaLabelPositionOffset, v118);
  v158 = objc_opt_new();
  v458 = 0u;
  v459 = 0u;
  v456 = 0u;
  v457 = 0u;
  v424 = v107;
  v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v424, v159, &v456, v471, 16);
  if (v163)
  {
    v164 = *v457;
    do
    {
      for (j = 0; j != v163; ++j)
      {
        if (*v457 != v164)
        {
          objc_enumerationMutation(v424);
        }

        objc_msgSend_floatValue(*(*(&v456 + 1) + 8 * j), v160, v161, v162);
        objc_msgSend_addIndex_(v158, v167, ((v166 * -24.0) + 24.0), v168);
      }

      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v424, v160, &v456, v471, 16);
    }

    while (v163);
  }

  v169 = v419;
  v173 = objc_msgSend_CGColor(v419, v170, v171, v172);
  v174 = v419;
  v178 = objc_msgSend_CGColor(v419, v175, v176, v177);
  v179 = -v145;
  v180 = sub_23BE6ACBC(a3, &p_layoutConstants->bezelOuterRect.origin.x, v421, v173, v178, v158, -v145, v113);
  v181 = v411;
  v185 = objc_msgSend_CGColor(v411, v182, v183, v184);
  sub_23BE6A688(a3, v421, v185, line, 2, 1, v113 + bezelHarmoniaLabelPositionOffset - v180 - bezelHarmoniaLabelPositionOffset - bezelHarmoniaLabelPositionOffset, v118);
  v186 = objc_alloc(MEMORY[0x277CBEB18]);
  v190 = objc_msgSend_count(v415, v187, v188, v189);
  v194 = objc_msgSend_count(v406, v191, v192, v193);
  v198 = objc_msgSend_count(v409, v195, v196, v197);
  v201 = objc_msgSend_initWithCapacity_(v186, v199, v194 + v190 + v198, v200);
  v450 = 0;
  v451 = &v450;
  v452 = 0x3032000000;
  v453 = sub_23BE6AE04;
  v454 = sub_23BE6AE14;
  v455 = 0;
  v444 = 0;
  v445 = &v444;
  v446 = 0x3032000000;
  v447 = sub_23BE6AE04;
  v448 = sub_23BE6AE14;
  v449 = 0;
  v443[0] = MEMORY[0x277D85DD0];
  v443[1] = 3221225472;
  v443[2] = sub_23BE6AE1C;
  v443[3] = &unk_278B9C8E8;
  v443[4] = &v450;
  v443[5] = &v444;
  v202 = MEMORY[0x23EEC00D0](v443);
  v203 = v383;
  if (harmoniaOvernightChangesThreshold != 1)
  {
    v203 = v386;
  }

  v204 = v203;
  v439 = 0u;
  v440 = 0u;
  v441 = 0u;
  v442 = 0u;
  v207 = objc_msgSend_sortedArrayUsingSelector_(v415, v205, sel_compare_, v206);
  v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v208, &v439, v470, 16);
  if (v209)
  {
    v210 = *v440;
    do
    {
      for (k = 0; k != v209; ++k)
      {
        if (*v440 != v210)
        {
          objc_enumerationMutation(v207);
        }

        v212 = v202[2](v202, *(*(&v439 + 1) + 8 * k));
        v213 = sub_23BE6AF00(0.7, v212, v204);
        v214 = v213;
        v218 = objc_msgSend_CGColor(v213, v215, v216, v217);
        objc_msgSend_addObject_(v201, v219, v218, v220);
      }

      v209 = objc_msgSend_countByEnumeratingWithState_objects_count_(v207, v221, &v439, v470, 16);
    }

    while (v209);
  }

  v437 = 0u;
  v438 = 0u;
  v435 = 0u;
  v436 = 0u;
  v224 = objc_msgSend_sortedArrayUsingSelector_(v409, v222, sel_compare_, v223);
  v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(v224, v225, &v435, v469, 16);
  if (v226)
  {
    v227 = *v436;
    do
    {
      for (m = 0; m != v226; ++m)
      {
        if (*v436 != v227)
        {
          objc_enumerationMutation(v224);
        }

        v229 = v202[2](v202, *(*(&v435 + 1) + 8 * m));
        v230 = sub_23BE6AF00(0.7, v229, v428);
        v231 = v230;
        v235 = objc_msgSend_CGColor(v230, v232, v233, v234);
        objc_msgSend_addObject_(v201, v236, v235, v237);
      }

      v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(v224, v238, &v435, v469, 16);
    }

    while (v226);
  }

  v433 = 0u;
  v434 = 0u;
  v431 = 0u;
  v432 = 0u;
  v241 = objc_msgSend_sortedArrayUsingSelector_(v406, v239, sel_compare_, v240);
  v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v242, &v431, v468, 16);
  if (v243)
  {
    v244 = *v432;
    do
    {
      for (n = 0; n != v243; ++n)
      {
        if (*v432 != v244)
        {
          objc_enumerationMutation(v241);
        }

        v246 = v202[2](v202, *(*(&v431 + 1) + 8 * n));
        v247 = sub_23BE6AF00(0.7, v246, v204);
        v248 = v247;
        v252 = objc_msgSend_CGColor(v247, v249, v250, v251);
        objc_msgSend_addObject_(v201, v253, v252, v254);
      }

      v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v255, &v431, v468, 16);
    }

    while (v243);
  }

  if (objc_msgSend_count(v201, v256, v257, v258))
  {
    objc_msgSend_floatValue(v451[5], v259, v260, v261);
    v263 = v262;
    objc_msgSend_floatValue(v445[5], v264, v265, v266);
    v268 = v267;
    objc_msgSend_floatValue(v451[5], v269, v270, v271);
    sub_23BE6AF78(a3, v417, v421, v201, v114 + v146 * (((v263 * -24.0) + 24.0) / 48.0), v146 * (((v268 * -24.0) + 24.0) / 48.0) - v146 * (((v272 * -24.0) + 24.0) / 48.0));
  }

  if (v401)
  {
    v273 = objc_msgSend_floatValue(v401, v259, v260, v261);
    v278 = v277;
    v279 = 0;
    if (harmoniaTrainingLoadBand <= 1)
    {
      if (!harmoniaTrainingLoadBand)
      {
        v280 = sub_23BE6AF00(0.5, v273, v380);
        v325 = v280;
        v465 = objc_msgSend_CGColor(v280, v326, v327, v328);
        v285 = sub_23BE6AF00(0.5, v465, v374);
        v329 = v285;
        v466 = objc_msgSend_CGColor(v285, v330, v331, v332);
        v290 = sub_23BE6AF00(0.5, v466, v370);
        v333 = v290;
        v467 = objc_msgSend_CGColor(v290, v334, v335, v336);
        v296 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v337, &v465, 3);
        goto LABEL_64;
      }

      if (harmoniaTrainingLoadBand != 1)
      {
LABEL_66:
        objc_msgSend_floatValue(&unk_284EA1050, v274, v275, v276);
        sub_23BE6AF78(a3, v417, v421, v279, ((v338 * -24.0) + 24.0) / 48.0, v113 + v180 * (((v278 * -24.0) + 24.0) / -48.0));
        v339 = v389;
        v343 = objc_msgSend_CGColor(v389, v340, v341, v342);
        v347 = objc_msgSend_clearColor(MEMORY[0x277D75348], v344, v345, v346);
        v348 = v347;
        v352 = objc_msgSend_CGColor(v347, v349, v350, v351);
        v355 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v353, 24, v354);
        sub_23BE6ACBC(a3, v417->f64, v421, v343, v352, v355, v179, v113);

        goto LABEL_67;
      }

      v280 = sub_23BE6AF00(0.5, v273, v380);
      v297 = v280;
      v465 = objc_msgSend_CGColor(v280, v298, v299, v300);
      v285 = sub_23BE6AF00(0.5, v465, v374);
      v301 = v285;
      v466 = objc_msgSend_CGColor(v285, v302, v303, v304);
      v306 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v305, &v465, 2);
    }

    else
    {
      switch(harmoniaTrainingLoadBand)
      {
        case 2:
          v280 = sub_23BE6AF00(0.5, v273, v380);
          v307 = v280;
          v465 = objc_msgSend_CGColor(v280, v308, v309, v310);
          v285 = sub_23BE6AF00(0.5, v465, v380);
          v311 = v285;
          v466 = objc_msgSend_CGColor(v285, v312, v313, v314);
          v306 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v315, &v465, 2);
          break;
        case 3:
          v280 = sub_23BE6AF00(0.5, v273, v377);
          v316 = v280;
          v465 = objc_msgSend_CGColor(v280, v317, v318, v319);
          v285 = sub_23BE6AF00(0.5, v465, v380);
          v320 = v285;
          v466 = objc_msgSend_CGColor(v285, v321, v322, v323);
          v306 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v324, &v465, 2);
          break;
        case 4:
          v280 = sub_23BE6AF00(0.5, v273, v372);
          v281 = v280;
          v465 = objc_msgSend_CGColor(v280, v282, v283, v284);
          v285 = sub_23BE6AF00(0.5, v465, v377);
          v286 = v285;
          v466 = objc_msgSend_CGColor(v285, v287, v288, v289);
          v290 = sub_23BE6AF00(0.5, v466, v380);
          v291 = v290;
          v467 = objc_msgSend_CGColor(v290, v292, v293, v294);
          v296 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v295, &v465, 3);
LABEL_64:
          v279 = v296;

          goto LABEL_65;
        default:
          goto LABEL_66;
      }
    }

    v279 = v306;
LABEL_65:

    goto LABEL_66;
  }

LABEL_67:
  if (objc_msgSend_count(v415, v259, v260, v261))
  {
    sub_23BE6B0D4(a3, v417->f64, v421, v415, v403, v204, v114, v146, 1.0);
  }

  if (objc_msgSend_count(v409, v356, v357, v358))
  {
    sub_23BE6B0D4(a3, v417->f64, v421, v409, v403, v428, v114, v146, 1.0);
  }

  if (objc_msgSend_count(v406, v359, v360, v361))
  {
    sub_23BE6B0D4(a3, v417->f64, v421, v406, v403, v204, v114, v146, 1.0);
  }

  if (v401)
  {
    v464 = v401;
    v363 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v362, &v464, 1);
    sub_23BE6B0D4(a3, v417->f64, v421, v363, v403, v411, v113, v180, -1.0);
  }

  CGContextRestoreGState(a3);

  _Block_object_dispose(&v444, 8);
  _Block_object_dispose(&v450, 8);
}

- (void)_drawBezelInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 tritiumProgress:(double)a5 alpha:(double)a6
{
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      MEMORY[0x2821F9670](self, sel__drawElevationBezelInContext_tritiumProgress_alpha_, a3, 3);
    }

    else if (a4 == 4)
    {
      MEMORY[0x2821F9670](self, sel__drawHarmoniaBezelInContext_tritiumProgress_alpha_, a3, 4);
    }
  }

  else if (a4 == 1)
  {
    MEMORY[0x2821F9670](self, sel__drawSecondsBezelInContext_tritiumProgress_alpha_, a3, 1);
  }

  else if (a4 == 2)
  {
    MEMORY[0x2821F9670](self, sel__drawDepthBezelInContext_tritiumProgress_alpha_, a3, 2);
  }
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  objc_msgSend_bounds(self, v5, v6, v7);
  v19.origin.x = v8;
  v19.origin.y = v9;
  v19.size.width = v10;
  v12 = v11;
  p_dirtyRect = &self->_dirtyRect;
  v19.size.height = v11;
  if (!CGRectContainsRect(self->_dirtyRect, v19))
  {
    v18.origin.x = p_dirtyRect->origin.x;
    v18.origin.y = self->_dirtyRect.origin.y;
    v18.size.width = self->_dirtyRect.size.width;
    v18.size.height = self->_dirtyRect.size.height;
    CGContextClipToRect(CurrentContext, v18);
  }

  CGContextTranslateCTM(CurrentContext, 0.0, v12);
  transitoryProgress = 1.0;
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  transitoryBezelStyle = self->_transitoryBezelStyle;
  if (transitoryBezelStyle != self->_bezelStyle)
  {
    objc_msgSend__drawBezelInContext_bezelStyle_tritiumProgress_alpha_(self, v15, CurrentContext, transitoryBezelStyle, 0.0, 1.0 - self->_transitoryProgress);
    transitoryProgress = self->_transitoryProgress;
    transitoryBezelStyle = self->_bezelStyle;
  }

  objc_msgSend__drawBezelInContext_bezelStyle_tritiumProgress_alpha_(self, v15, CurrentContext, transitoryBezelStyle, self->_tritiumProgress, transitoryProgress);
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  p_dirtyRect->origin = *MEMORY[0x277CBF3A0];
  self->_dirtyRect.size = v17;
}

- (void)setToSnapshotValues
{
  objc_msgSend_setSeconds_(self, a2, v2, v3, 30.0);
  objc_msgSend_setSubmergedDepthLimit_(self, v5, v6, v7, 40.0);
  objc_msgSend_setSubmergedDepthLabelLimitMeters_(self, v8, v9, v10, 40.0);
  objc_msgSend_setSubmergedDepthLabelLimitFeet_(self, v11, v12, v13, 130.0);
  objc_msgSend_setSubmergedDepthMax_(self, v14, v15, v16, 30.0);
  objc_msgSend_setSubmergedDepth_(self, v17, v18, v19, 20.0);
  objc_msgSend_setSubmerged_(self, v20, 1, v21);
  objc_msgSend_setElevation_(self, v22, v23, v24, 76.048);
  objc_msgSend_setElevationIsValid_(self, v25, 1, v26);
  objc_msgSend_setElevationPrecision_(self, v27, v28, v29, 0.0);
  objc_msgSend_setHarmoniaOvernightDataState_(self, v30, 4, v31);
  v32 = NTKFoghornHarmoniaOvernightMarkersForDataState();
  objc_msgSend_setHarmoniaOvernightMarkers_(self, v33, v32, v34);

  v35 = NTKFoghornHarmoniaSnapshotOvernightTypicalValues();
  objc_msgSend_setHarmoniaOvernightTypicalValues_(self, v36, v35, v37);

  v38 = NTKFoghornHarmoniaSnapshotOvernightChangeAboveValues();
  objc_msgSend_setHarmoniaOvernightChangeAboveValues_(self, v39, v38, v40);

  v41 = NTKFoghornHarmoniaSnapshotOvernightChangeBelowValues();
  objc_msgSend_setHarmoniaOvernightChangeBelowValues_(self, v42, v41, v43);

  objc_msgSend_setHarmoniaOvernightChangesThreshold_(self, v44, 1, v45);
  v46 = NTKFoghornHarmoniaLocalizedStringForOvernightChangesCount(1);
  objc_msgSend_setHarmoniaOvernightLocalizedSummary_(self, v47, v46, v48);

  objc_msgSend_setHarmoniaTrainingDataState_(self, v49, 4, v50);
  objc_msgSend_setHarmoniaTrainingLoadBand_(self, v51, 3, v52);
  v53 = NTKFoghornHarmoniaTrainingMarkersForDataState();
  objc_msgSend_setHarmoniaTrainingMarkers_(self, v54, v53, v55);

  v56 = NTKFoghornHarmoniaSnapshotTrainingValue();
  objc_msgSend_setHarmoniaTrainingValue_(self, v57, v56, v58);

  v61 = NTKFoghornHarmoniaLocalizedStringForTrainingLoadBand(3uLL);
  objc_msgSend_setHarmoniaTrainingLocalizedSummary_(self, v59, v61, v60);
}

+ (void)drawSnapshotInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 colorPalette:(id)a5 forDevice:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [NTKFoghornFaceBezelView alloc];
  objc_msgSend_screenBounds(v9, v12, v13, v14);
  v30 = objc_msgSend_initWithFrame_forDevice_(v11, v15, v9, v16);

  objc_msgSend_setBezelStyle_(v30, v17, a4, v18);
  objc_msgSend_setColorPalette_(v30, v19, v10, v20);

  objc_msgSend_setToSnapshotValues(v30, v21, v22, v23);
  v27 = objc_msgSend_layer(v30, v24, v25, v26);
  objc_msgSend_renderInContext_(v27, v28, a3, v29);
}

- (void)_transitionBaseLabelFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5
{
  v5 = a4;
  v7 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v8 = a4 & 0xFFFFFFFFFFFFFFFELL;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2 && v8 == 2)
  {
    if (a5 >= 0.5)
    {
      v10 = a5;
    }

    else
    {
      v5 = a3;
      v10 = 1.0 - a5;
    }
  }

  else
  {
    if (v7 != 2 && v8 != 2)
    {
      v10 = 1.0;
      objc_msgSend_setHidden_(self->_baseLabel, a2, 1, a4, a5);
      goto LABEL_15;
    }

    if (v7 == 2)
    {
      v5 = a3;
      v10 = 1.0 - a5;
    }

    else
    {
      v10 = a5;
    }
  }

  objc_msgSend_setHidden_(self->_baseLabel, a2, 0, a4, a5);
LABEL_15:
  objc_msgSend_setAlpha_(self->_baseLabel, v11, v12, v13, v10);
  if (v5 == 3)
  {

    objc_msgSend__updateBaseLabelForElevationBezel(self, v14, v15, v16);
  }

  else if (v5 == 2)
  {

    MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v15, v16);
  }
}

- (void)setBezelStyle:(int64_t)a3
{
  if (self->_bezelStyle != a3)
  {
    self->_bezelStyle = a3;
    self->_transitoryProgress = 0.0;
    self->_transitoryBezelStyle = a3;
    objc_msgSend_setNeedsDisplay(self, a2, a3, v3);

    MEMORY[0x2821F9670](self, sel__transitionBaseLabelFromStyle_toStyle_progress_, a3, a3);
  }
}

- (void)setBezelFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5
{
  self->_transitoryProgress = a5;
  self->_transitoryBezelStyle = a3;
  self->_bezelStyle = a4;
  objc_msgSend_setNeedsDisplay(self, a2, a3, a4);

  MEMORY[0x2821F9670](self, sel__transitionBaseLabelFromStyle_toStyle_progress_, a3, a4);
}

- (void)setTritiumProgress:(double)a3
{
  if (self->_tritiumProgress != a3)
  {
    self->_tritiumProgress = a3;
    objc_msgSend_setNeedsDisplay(self, a2, v3, v4);
    bezelStyle = self->_bezelStyle;

    MEMORY[0x2821F9670](self, sel__transitionBaseLabelFromStyle_toStyle_progress_, bezelStyle, 0);
  }
}

- (void)setShowingStatusIndicator:(BOOL)a3
{
  if (self->_showingStatusIndicator != a3)
  {
    self->_showingStatusIndicator = a3;
    if (self->_bezelStyle == 1)
    {
      objc_msgSend_setNeedsDisplay(self, a2, a3, v3);
    }
  }
}

- (CGRect)_dirtyRectFromSeconds:(double)a3 toSeconds:(double)a4
{
  if (a3 <= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (a3 <= a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  x = sub_23BE66320(&self->_layoutConstants, self->_superEllipseGeometry, v5);
  y = v11;
  width = v13;
  for (i = v15; ; i = v33.size.height)
  {
    v5 = v5 + -0.5;
    if (v5 <= v6)
    {
      break;
    }

    v37.origin.x = sub_23BE66320(&self->_layoutConstants, self->_superEllipseGeometry, v5);
    v37.origin.y = v17;
    v37.size.width = v18;
    v37.size.height = v19;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = i;
    v33 = CGRectUnion(v32, v37);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
  }

  objc_msgSend_bounds(self, v7, v8, v9);
  v21 = v20;
  v23 = v22 * 0.5;
  v24 = v20 * 0.5;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = i;
  v35 = CGRectOffset(v34, v23, v24);
  v25 = v35.origin.x;
  v26 = v35.size.width;
  height = v35.size.height;
  v28 = v21 - CGRectGetMaxY(v35);
  v29 = v25;
  v30 = v26;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v28;
  result.origin.x = v29;
  return result;
}

- (void)setSeconds:(double)a3
{
  if (objc_msgSend__needUpdateForDeltaSeconds_(self, a2, v3, v4, a3 - self->_seconds))
  {
    seconds = self->_seconds;
    self->_seconds = a3;
    if (self->_bezelStyle == 1)
    {
      if (vabdd_f64(a3, seconds) <= 0.5 && 60.0 - self->_secondsEndOfMinuteAnimationDuration >= a3)
      {
        objc_msgSend__dirtyRectFromSeconds_toSeconds_(self, v7, v8, v9, seconds, a3);

        MEMORY[0x2821F9670](self, sel_setNeedsDisplayInRect_, v11, v12);
      }

      else
      {

        objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
      }
    }
  }
}

- (BOOL)_needBaseLabelUpdateForDeltaDepthElevation:(double)a3 range:(double)a4
{
  v4 = fabs(a3) * 3.2808399;
  v5 = fabs(a4) <= 30.0;
  v6 = 0.1;
  if (!v5)
  {
    v6 = 1.0;
  }

  return v4 >= v6;
}

- (void)setSubmergedDepth:(double)a3
{
  v7 = a3 - self->_submergedDepth;
  v8 = objc_msgSend__needUpdateForDeltaDepthElevation_range_(self, a2, v3, v4, v7, self->_submergedDepthLimit);
  v12 = objc_msgSend__needBaseLabelUpdateForDeltaDepthElevation_range_(self, v9, v10, v11, v7, self->_submergedDepthLimit);
  if ((v8 & 1) != 0 || v12)
  {
    self->_submergedDepth = a3;
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v13, v14, v15);

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v16, v17);
    }
  }
}

- (void)setSubmergedDepthMax:(double)a3
{
  v7 = a3 - self->_submergedDepthMax;
  v8 = objc_msgSend__needUpdateForDeltaDepthElevation_range_(self, a2, v3, v4, v7, self->_submergedDepthLimit);
  v12 = objc_msgSend__needBaseLabelUpdateForDeltaDepthElevation_range_(self, v9, v10, v11, v7, self->_submergedDepthLimit);
  if ((v8 & 1) != 0 || v12)
  {
    self->_submergedDepthMax = a3;
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v13, v14, v15);
      objc_msgSend_setHidden_(self->_baseLabel, v16, a3 <= 0.0 && !self->_submerged, v17);

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v18, v19);
    }
  }
}

- (void)_updateLimitLabelCache:(id *)a3 limitFeet:(double)a4 limitMeters:(double)a5 limitsValid:(BOOL)a6
{
  v6 = a6;
  v49[3] = *MEMORY[0x277D85DE8];
  if (a3->var1 != a4 || a3->var2 != a5 || a3->var3 != a6)
  {
    a3->var1 = a4;
    a3->var2 = a5;
    a3->var3 = a6;
    if (a3->var0)
    {
      CFRelease(a3->var0);
      a3->var0 = 0;
    }

    p_layoutConstants = &self->_layoutConstants;
    if (v6)
    {
      v12 = sub_23BE6952C(0, 6, ceil(fabs(a4)));
      v13 = sub_23BE6952C(0, 6, ceil(fabs(a5)));
    }

    else
    {
      v13 = @"--";
      v12 = @"--";
    }

    v14 = objc_alloc_init(MEMORY[0x277D74240]);
    objc_msgSend_setAlignment_(v14, v15, 1, v16);
    v20 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v17, v18, v19);
    v24 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v21, v22, v23, p_layoutConstants->bezelDepthBaseLabelUnitFontSize);
    v25 = *MEMORY[0x277D740A8];
    v48[0] = *MEMORY[0x277D740C0];
    v48[1] = v25;
    v49[0] = v20;
    v49[1] = v24;
    v48[2] = *MEMORY[0x277D74118];
    v49[2] = v14;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v49, v48, 3);
    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_initWithCapacity_(v28, v29, 2, v30);
    v32 = MEMORY[0x277CCA898];
    v33 = v12;
    v34 = [v32 alloc];
    v36 = objc_msgSend_initWithString_attributes_(v34, v35, v33, v27);

    objc_msgSend_setObject_atIndexedSubscript_(v31, v37, v36, 0);
    v38 = MEMORY[0x277CCA898];
    v39 = v13;
    v40 = [v38 alloc];
    v42 = objc_msgSend_initWithString_attributes_(v40, v41, v39, v27);

    objc_msgSend_setObject_atIndexedSubscript_(v31, v43, v42, 1);
    v47 = objc_msgSend_copy(v31, v44, v45, v46);

    a3->var0 = sub_23BE61320(v47);
  }
}

- (void)_limitsForElevation:(double)a3 elevationIsValid:(BOOL)a4 limitMeters:(double *)a5 limitFeet:(double *)a6
{
  v9 = 0.0;
  v10 = 0.0;
  if (a4)
  {
    v11 = sub_23BE642C4(&v12, a3);
    if (a3 >= 0.0)
    {
      v10 = v11[4];
      v9 = *v11;
    }

    else
    {
      v10 = -v11[5];
      v9 = -v11[1];
    }
  }

  *a5 = v10;
  *a6 = v9;
}

- (void)_updateElevationLimitLabelsWithElevation:(double)a3 elevationIsValid:(BOOL)a4
{
  v4 = a4;
  v7 = 0.0;
  v8 = 0.0;
  objc_msgSend__limitsForElevation_elevationIsValid_limitMeters_limitFeet_(self, a2, a4, &v8, &v7, a3);
  objc_msgSend__updateLimitLabelCache_limitFeet_limitMeters_limitsValid_(self, v6, &self->_elevationLimitLabelCache, v4, v7, v8);
}

- (void)setSubmergedDepthLimit:(double)a3
{
  if (self->_submergedDepthLimit != a3)
  {
    self->_submergedDepthLimit = a3;
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, a2, v3, v4);

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v6, v7);
    }
  }
}

- (void)setSubmergedDepthLabelLimitMeters:(double)a3
{
  if (self->_submergedDepthLabelLimitMeters != a3)
  {
    self->_submergedDepthLabelLimitMeters = a3;
    objc_msgSend__updateDepthLimitLabelsWithSubmergedDepthLimitMeters_feet_(self, a2, v3, v4);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v6, v7, v8);

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v9, v10);
    }
  }
}

- (void)setSubmergedDepthLabelLimitFeet:(double)a3
{
  if (self->_submergedDepthLabelLimitFeet != a3)
  {
    self->_submergedDepthLabelLimitFeet = a3;
    objc_msgSend__updateDepthLimitLabelsWithSubmergedDepthLimitMeters_feet_(self, a2, v3, v4, self->_submergedDepthLabelLimitMeters);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v6, v7, v8);

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v9, v10);
    }
  }
}

- (void)setElevation:(double)a3
{
  v21 = 0.0;
  v22 = 0.0;
  objc_msgSend__limitsForElevation_elevationIsValid_limitMeters_limitFeet_(self, a2, self->_elevationIsValid, &v22, &v21);
  v5 = a3 - self->_elevation;
  v9 = objc_msgSend__needUpdateForDeltaDepthElevation_range_(self, v6, v7, v8, v5, v22);
  v13 = objc_msgSend__needBaseLabelUpdateForDeltaDepthElevation_range_(self, v10, v11, v12, v5, v22);
  if ((v9 & 1) != 0 || v13)
  {
    self->_elevation = a3;
    objc_msgSend__updateLimitLabelCache_limitFeet_limitMeters_limitsValid_(self, v14, &self->_elevationLimitLabelCache, self->_elevationIsValid, v21, v22);
    if (self->_bezelStyle == 3)
    {
      objc_msgSend_setNeedsDisplay(self, v15, v16, v17);
      objc_msgSend__updateBaseLabelForElevationBezel(self, v18, v19, v20);
    }
  }
}

- (void)setElevationAccuracy:(double)a3
{
  if (self->_elevationAccuracy != a3)
  {
    self->_elevationAccuracy = a3;
    if (self->_bezelStyle == 3)
    {
      objc_msgSend__updateBaseLabelForElevationBezel(self, a2, v3, v4);
    }
  }
}

- (void)setElevationPrecision:(double)a3
{
  if (self->_elevationPrecision != a3)
  {
    self->_elevationPrecision = a3;
    if (self->_bezelStyle == 3)
    {
      objc_msgSend__updateBaseLabelForElevationBezel(self, a2, v3, v4);
    }
  }
}

- (void)setElevationIsValid:(BOOL)a3
{
  if (self->_elevationIsValid != a3)
  {
    self->_elevationIsValid = a3;
    objc_msgSend__updateElevationLimitLabelsWithElevation_elevationIsValid_(self, a2, a3, v3, self->_elevation);
    if (self->_bezelStyle == 3)
    {
      objc_msgSend_setNeedsDisplay(self, v5, v6, v7);

      objc_msgSend__updateBaseLabelForElevationBezel(self, v8, v9, v10);
    }
  }
}

- (void)setMajorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_majorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_majorTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setMinorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_minorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_minorTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setMedialTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_medialTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_medialTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setInactiveMajorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_inactiveMajorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_inactiveMajorTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setInactiveMedialTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_inactiveMedialTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_inactiveMedialTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setInactiveMinorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_inactiveMinorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_inactiveMinorTickColor, a3);
    objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
  }
}

- (void)setHarmoniaOvernightDataState:(unint64_t)a3
{
  if (self->_harmoniaOvernightDataState != a3)
  {
    self->_harmoniaOvernightDataState = a3;
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(self, a2, &self->_harmoniaSummaryOvernightLabelCache, self->_harmoniaOvernightLocalizedSummary, a3);
    if (self->_bezelStyle == 4)
    {

      objc_msgSend_setNeedsDisplay(self, v4, v5, v6);
    }
  }
}

- (void)setHarmoniaOvernightMarkers:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightMarkers, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightMarkers, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightTypicalValues:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightTypicalValues, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightTypicalValues, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightChangeAboveValues:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightChangeAboveValues, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightChangeAboveValues, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightChangeBelowValues:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightChangeBelowValues, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightChangeBelowValues, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightChangesThreshold:(unint64_t)a3
{
  if (self->_harmoniaOvernightChangesThreshold != a3)
  {
    self->_harmoniaOvernightChangesThreshold = a3;
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, a2, a3, v3);
    }
  }
}

- (void)setHarmoniaOvernightLocalizedSummary:(id)a3
{
  v11 = a3;
  if ((objc_msgSend_isEqualToString_(self->_harmoniaOvernightLocalizedSummary, v5, v11, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightLocalizedSummary, a3);
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(self, v7, &self->_harmoniaSummaryOvernightLabelCache, self->_harmoniaOvernightLocalizedSummary, self->_harmoniaOvernightDataState);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v8, v9, v10);
    }
  }
}

- (void)setHarmoniaTrainingDataState:(unint64_t)a3
{
  if (self->_harmoniaTrainingDataState != a3)
  {
    self->_harmoniaTrainingDataState = a3;
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(self, a2, &self->_harmoniaSummaryTrainingLabelCache, self->_harmoniaTrainingLocalizedSummary, a3);
    if (self->_bezelStyle == 4)
    {

      objc_msgSend_setNeedsDisplay(self, v4, v5, v6);
    }
  }
}

- (void)setHarmoniaTrainingMarkers:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingMarkers, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingMarkers, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingLoadBand:(unint64_t)a3
{
  if (self->_harmoniaTrainingLoadBand != a3)
  {
    self->_harmoniaTrainingLoadBand = a3;
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, a2, a3, v3);
    }
  }
}

- (void)setHarmoniaTrainingValue:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingValue, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingValue, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingLocalizedSummary:(id)a3
{
  v11 = a3;
  if ((objc_msgSend_isEqualToString_(self->_harmoniaTrainingLocalizedSummary, v5, v11, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingLocalizedSummary, a3);
    objc_msgSend__updateHarmoniaSummaryLabelCache_withString_dataState_(self, v7, &self->_harmoniaSummaryTrainingLabelCache, self->_harmoniaTrainingLocalizedSummary, self->_harmoniaTrainingDataState);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v8, v9, v10);
    }
  }
}

- (void)setSubmerged:(BOOL)a3
{
  if (self->_submerged != a3)
  {
    self->_submerged = a3;
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, a2, a3, v3);
      if (a3)
      {
        objc_msgSend_setHidden_(self->_baseLabel, v6, 0, v7);
      }

      else
      {
        objc_msgSend_setHidden_(self->_baseLabel, v6, self->_submergedDepthMax <= 0.0, v7);
      }

      MEMORY[0x2821F9670](self, sel__updateBaseLabelForDepthBezel, v8, v9);
    }
  }
}

- (void)setDepthMaxMajorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMaxMajorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMaxMajorTickColor, a3);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthMaxMedialTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMaxMedialTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMaxMedialTickColor, a3);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthMaxMinorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMaxMinorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMaxMinorTickColor, a3);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthLimitMajorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthLimitMajorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthLimitMajorTickColor, a3);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthLimitMedialTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthLimitMedialTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthLimitMedialTickColor, a3);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthLimitMinorTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthLimitMinorTickColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthLimitMinorTickColor, a3);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthMarkerColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMarkerColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMarkerColor, a3);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthMaxMarkerColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMaxMarkerColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMaxMarkerColor, a3);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthLimitLabelColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthLimitLabelColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthLimitLabelColor, a3);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setDepthOverLimitColor:(id)a3
{
  v13 = a3;
  if ((objc_msgSend_isEqual_(v13, v5, self->_depthOverLimitColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthOverLimitColor, a3);
    objc_msgSend__updateBaseLabel(self, v7, v8, v9);
    if ((self->_bezelStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v10, v11, v12);
    }
  }
}

- (void)_updateBaseLabel
{
  bezelStyle = self->_bezelStyle;
  if (bezelStyle == 3)
  {
    objc_msgSend__updateBaseLabelForElevationBezel(self, a2, v2, v3);
  }

  else if (bezelStyle == 2)
  {
    (MEMORY[0x2821F9670])(self, sel__updateBaseLabelForDepthBezel);
  }
}

- (void)setDepthLabelColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthLabelColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthLabelColor, a3);
    objc_msgSend__updateBaseLabel(self, v7, v8, v9);
  }
}

- (void)setDepthMaxLabelColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthMaxLabelColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthMaxLabelColor, a3);
    objc_msgSend__updateBaseLabel(self, v7, v8, v9);
  }
}

- (void)setDepthDecorationColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(v10, v5, self->_depthDecorationColor, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_depthDecorationColor, a3);
    if (self->_bezelStyle == 2)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaUnitLabelColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaUnitLabelColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaUnitLabelColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaDotFillColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaDotFillColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaDotFillColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaEmphasizedTickColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaEmphasizedTickColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaEmphasizedTickColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightTypicalColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightTypicalColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightTypicalColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightPartiallyOutOfRangeColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightPartiallyOutOfRangeColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightPartiallyOutOfRangeColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaOvernightOutOfRangeColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaOvernightOutOfRangeColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaOvernightOutOfRangeColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingWellBelowColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingWellBelowColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingWellBelowColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingBelowColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingBelowColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingBelowColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingNearColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingNearColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingNearColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingAboveColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingAboveColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingAboveColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)setHarmoniaTrainingWellAboveColor:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqual_(self->_harmoniaTrainingWellAboveColor, v5, v10, v6) & 1) == 0)
  {
    objc_storeStrong(&self->_harmoniaTrainingWellAboveColor, a3);
    if (self->_bezelStyle == 4)
    {
      objc_msgSend_setNeedsDisplay(self, v7, v8, v9);
    }
  }
}

- (void)_updateHarmoniaSummaryLabelCache:(id *)a3 withString:(id)a4 dataState:(unint64_t)a5
{
  v32[3] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = v9;
  if (*&a3->var1 != __PAIR128__(a5, v9))
  {
    a3->var2 = a5;
    objc_storeStrong(&a3->var1, a4);
    if (a3->var0)
    {
      CFRelease(a3->var0);
      a3->var0 = 0;
    }

    p_layoutConstants = &self->_layoutConstants;
    v12 = MEMORY[0x277D74240];
    v13 = v10;
    v14 = objc_alloc_init(v12);
    objc_msgSend_setAlignment_(v14, v15, 1, v16);
    v20 = objc_msgSend_systemPinkColor(MEMORY[0x277D75348], v17, v18, v19);
    v24 = objc_msgSend_foghornDepthBezelLabelFontOfSize_(MEMORY[0x277CBBB08], v21, v22, v23, p_layoutConstants->bezelHarmoniaLabelFontSize);
    v25 = *MEMORY[0x277D740A8];
    v31[0] = *MEMORY[0x277D740C0];
    v31[1] = v25;
    v32[0] = v20;
    v32[1] = v24;
    v31[2] = *MEMORY[0x277D74118];
    v32[2] = v14;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v32, v31, 3);
    v28 = objc_alloc(MEMORY[0x277CCA898]);
    v30 = objc_msgSend_initWithString_attributes_(v28, v29, v13, v27);

    a3->var0 = CTLineCreateWithAttributedString(v30);
  }
}

- (void)setColorPalette:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_bezelMajorTickColor(v4, v5, v6, v7);
  objc_msgSend_setMajorTickColor_(self, v9, v8, v10);

  v14 = objc_msgSend_bezelMedialTickColor(v4, v11, v12, v13);
  objc_msgSend_setMedialTickColor_(self, v15, v14, v16);

  v20 = objc_msgSend_bezelMinorTickColor(v4, v17, v18, v19);
  objc_msgSend_setMinorTickColor_(self, v21, v20, v22);

  v26 = objc_msgSend_bezelInactiveMajorTickColor(v4, v23, v24, v25);
  objc_msgSend_setInactiveMajorTickColor_(self, v27, v26, v28);

  v32 = objc_msgSend_bezelInactiveMedialTickColor(v4, v29, v30, v31);
  objc_msgSend_setInactiveMedialTickColor_(self, v33, v32, v34);

  v38 = objc_msgSend_bezelInactiveMinorTickColor(v4, v35, v36, v37);
  objc_msgSend_setInactiveMinorTickColor_(self, v39, v38, v40);

  v44 = objc_msgSend_bezelDepthMaxMajorTickColor(v4, v41, v42, v43);
  objc_msgSend_setDepthMaxMajorTickColor_(self, v45, v44, v46);

  v50 = objc_msgSend_bezelDepthMaxMedialTickColor(v4, v47, v48, v49);
  objc_msgSend_setDepthMaxMedialTickColor_(self, v51, v50, v52);

  v56 = objc_msgSend_bezelDepthMaxMinorTickColor(v4, v53, v54, v55);
  objc_msgSend_setDepthMaxMinorTickColor_(self, v57, v56, v58);

  v62 = objc_msgSend_bezelDepthLimitMajorTickColor(v4, v59, v60, v61);
  objc_msgSend_setDepthLimitMajorTickColor_(self, v63, v62, v64);

  v68 = objc_msgSend_bezelDepthLimitMedialTickColor(v4, v65, v66, v67);
  objc_msgSend_setDepthLimitMedialTickColor_(self, v69, v68, v70);

  v74 = objc_msgSend_bezelDepthLimitMinorTickColor(v4, v71, v72, v73);
  objc_msgSend_setDepthLimitMinorTickColor_(self, v75, v74, v76);

  v80 = objc_msgSend_bezelDepthMarkerColor(v4, v77, v78, v79);
  objc_msgSend_setDepthMarkerColor_(self, v81, v80, v82);

  v86 = objc_msgSend_bezelDepthMaxMarkerColor(v4, v83, v84, v85);
  objc_msgSend_setDepthMaxMarkerColor_(self, v87, v86, v88);

  v92 = objc_msgSend_bezelDepthLabelColor(v4, v89, v90, v91);
  objc_msgSend_setDepthLabelColor_(self, v93, v92, v94);

  v98 = objc_msgSend_bezelDepthMaxLabelColor(v4, v95, v96, v97);
  objc_msgSend_setDepthMaxLabelColor_(self, v99, v98, v100);

  v104 = objc_msgSend_bezelDepthLimitLabelColor(v4, v101, v102, v103);
  objc_msgSend_setDepthLimitLabelColor_(self, v105, v104, v106);

  v110 = objc_msgSend_bezelDepthDecorationColor(v4, v107, v108, v109);
  objc_msgSend_setDepthDecorationColor_(self, v111, v110, v112);

  v116 = objc_msgSend_bezelHarmoniaUnitLabelColor(v4, v113, v114, v115);
  objc_msgSend_setHarmoniaUnitLabelColor_(self, v117, v116, v118);

  v122 = objc_msgSend_bezelHarmoniaEmphasizedTickColor(v4, v119, v120, v121);
  objc_msgSend_setHarmoniaEmphasizedTickColor_(self, v123, v122, v124);

  v128 = objc_msgSend_bezelHarmoniaOvernightTypicalColor(v4, v125, v126, v127);
  objc_msgSend_setHarmoniaOvernightTypicalColor_(self, v129, v128, v130);

  v134 = objc_msgSend_bezelHarmoniaOvernightPartiallyOutOfRangeColor(v4, v131, v132, v133);
  objc_msgSend_setHarmoniaOvernightPartiallyOutOfRangeColor_(self, v135, v134, v136);

  v140 = objc_msgSend_bezelHarmoniaOvernightOutOfRangeColor(v4, v137, v138, v139);
  objc_msgSend_setHarmoniaOvernightOutOfRangeColor_(self, v141, v140, v142);

  v146 = objc_msgSend_bezelHarmoniaTrainingWellBelowColor(v4, v143, v144, v145);
  objc_msgSend_setHarmoniaTrainingWellBelowColor_(self, v147, v146, v148);

  v152 = objc_msgSend_bezelHarmoniaTrainingBelowColor(v4, v149, v150, v151);
  objc_msgSend_setHarmoniaTrainingBelowColor_(self, v153, v152, v154);

  v158 = objc_msgSend_bezelHarmoniaTrainingNearColor(v4, v155, v156, v157);
  objc_msgSend_setHarmoniaTrainingNearColor_(self, v159, v158, v160);

  v164 = objc_msgSend_bezelHarmoniaTrainingAboveColor(v4, v161, v162, v163);
  objc_msgSend_setHarmoniaTrainingAboveColor_(self, v165, v164, v166);

  v170 = objc_msgSend_bezelHarmoniaTrainingWellAboveColor(v4, v167, v168, v169);
  objc_msgSend_setHarmoniaTrainingWellAboveColor_(self, v171, v170, v172);

  colorPalette = self->_colorPalette;
  self->_colorPalette = v4;
}

@end