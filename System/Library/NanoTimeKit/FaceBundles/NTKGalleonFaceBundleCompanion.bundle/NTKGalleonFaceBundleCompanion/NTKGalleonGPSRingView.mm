@interface NTKGalleonGPSRingView
- (CGRect)_ringFrame;
- (NTKGalleonGPSRingView)initWithFrame:(CGRect)frame device:(id)device;
- (double)_fontSize;
- (void)_layoutCurvedLabel:(id)label top:(BOOL)top;
- (void)_positionDotsForCenterAngle:(double)angle leftDot:(id)dot rightDot:(id)rightDot;
- (void)_positionRingViews;
- (void)_setupStrings;
- (void)_updateCurvedLabel:(id)label withString:(id)string top:(BOOL)top;
- (void)_updateElevationColors;
- (void)_updateLabelVisibility;
- (void)_updateLatLongColors;
- (void)_updateRingThickness;
- (void)applyTransitionFraction:(double)fraction fromBezelStyle:(unint64_t)style toBezelStyle:(unint64_t)bezelStyle;
- (void)layoutSubviews;
- (void)locationUnavailable;
- (void)locationUpdated:(id)updated;
- (void)setAltitude:(double)altitude approximate:(BOOL)approximate;
- (void)setBezelStyle:(unint64_t)style;
- (void)setIncline:(double)incline;
- (void)setLatency:(double)latency;
- (void)setPalette:(id)palette;
@end

@implementation NTKGalleonGPSRingView

- (NTKGalleonGPSRingView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v260.receiver = self;
  v260.super_class = NTKGalleonGPSRingView;
  height = [(NTKGalleonGPSRingView *)&v260 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v12->_bezelStyle = 0;
    v12->_ringFraction = 1.0;
    v12->_latLongFraction = 1.0;
    v12->_elevationFraction = 0.0;
    v12->_tritiumFraction = 0.0;
    v16 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v13, v14, v15);
    v12->_usesMetric = objc_msgSend_usesMetricSystem(v16, v17, v18, v19);

    objc_msgSend__setupStrings(v12, v20, v21, v22);
    v23 = objc_opt_new();
    elevationFormatter = v12->_elevationFormatter;
    v12->_elevationFormatter = v23;

    objc_msgSend_setNumberStyle_(v12->_elevationFormatter, v25, 1, v26);
    objc_msgSend_setMaximumFractionDigits_(v12->_elevationFormatter, v27, 0, v28);
    objc_msgSend_setRoundingMode_(v12->_elevationFormatter, v29, 2, v30);
    v31 = MEMORY[0x277CBBB08];
    v35 = objc_msgSend_galleonFontDescriptor(NTKGalleonFaceView, v32, v33, v34);
    objc_msgSend__fontSize(v12, v36, v37, v38);
    v41 = objc_msgSend_fontWithDescriptor_size_(v31, v39, v35, v40);
    font = v12->_font;
    v12->_font = v41;

    if (qword_27E1DD9C8 != -1)
    {
      sub_23BEA42A4();
    }

    v43 = qword_27E1DD9C0;
    v47 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v44, v45, v46);
    ringLayer = v12->_ringLayer;
    v12->_ringLayer = v47;

    v49 = v12->_ringLayer;
    objc_msgSend_ringThickness(v12, v50, v51, v52);
    objc_msgSend_setBorderWidth_(v49, v53, v54, v55);
    objc_msgSend_setCornerCurve_(v12->_ringLayer, v56, *MEMORY[0x277CDA130], v57);
    objc_msgSend_setMasksToBounds_(v12->_ringLayer, v58, 1, v59);
    v60 = v12->_ringLayer;
    v64 = objc_msgSend_orangeColor(MEMORY[0x277D75348], v61, v62, v63);
    v65 = v64;
    v69 = objc_msgSend_CGColor(v65, v66, v67, v68);
    objc_msgSend_setBorderColor_(v60, v70, v69, v71);

    objc_msgSend_setActions_(v12->_ringLayer, v72, v43, v73);
    v74 = objc_alloc(MEMORY[0x277D75D18]);
    objc_msgSend_bounds(v12, v75, v76, v77);
    v81 = objc_msgSend_initWithFrame_(v74, v78, v79, v80);
    ringView = v12->_ringView;
    v12->_ringView = v81;

    v83 = v12->_ringView;
    v87 = objc_msgSend_yellowColor(MEMORY[0x277D75348], v84, v85, v86);
    objc_msgSend_setBackgroundColor_(v83, v88, v87, v89);

    v93 = objc_msgSend_layer(v12->_ringView, v90, v91, v92);
    objc_msgSend_addSublayer_(v93, v94, v12->_ringLayer, v95);

    objc_msgSend_addSubview_(v12, v96, v12->_ringView, v97);
    v98 = objc_alloc(MEMORY[0x277D75D18]);
    objc_msgSend_bounds(v12, v99, v100, v101);
    v105 = objc_msgSend_initWithFrame_(v98, v102, v103, v104);
    latLongView = v12->_latLongView;
    v12->_latLongView = v105;

    v110 = objc_msgSend_layer(v12->_latLongView, v107, v108, v109);
    objc_msgSend_setActions_(v110, v111, v43, v112);

    objc_msgSend_addSubview_(v12, v113, v12->_latLongView, v114);
    v115 = objc_alloc(MEMORY[0x277D75D18]);
    objc_msgSend_bounds(v12, v116, v117, v118);
    v122 = objc_msgSend_initWithFrame_(v115, v119, v120, v121);
    elevationView = v12->_elevationView;
    v12->_elevationView = v122;

    v127 = objc_msgSend_layer(v12->_elevationView, v124, v125, v126);
    objc_msgSend_setActions_(v127, v128, v43, v129);

    objc_msgSend_setHidden_(v12->_elevationView, v130, 1, v131);
    v134 = objc_msgSend_addSubview_(v12, v132, v12->_elevationView, v133);
    sub_23BEA2910(v134, v12->_device);
    v136 = v135;
    v254[0] = MEMORY[0x277D85DD0];
    v254[1] = 3221225472;
    v254[2] = sub_23BEA0CEC;
    v254[3] = &unk_278B9EF90;
    v256 = 0;
    v257 = 0;
    v253 = v43;
    v255 = v253;
    v258 = v136;
    v259 = v136;
    v137 = MEMORY[0x23EEC0850](v254);
    v138 = v137[2]();
    leftLatLongDotLayer = v12->_leftLatLongDotLayer;
    v12->_leftLatLongDotLayer = v138;

    v143 = objc_msgSend_layer(v12->_latLongView, v140, v141, v142);
    objc_msgSend_addSublayer_(v143, v144, v12->_leftLatLongDotLayer, v145);

    v146 = (v137[2])(v137);
    rightLatLongDotLayer = v12->_rightLatLongDotLayer;
    v12->_rightLatLongDotLayer = v146;

    v151 = objc_msgSend_layer(v12->_latLongView, v148, v149, v150);
    objc_msgSend_addSublayer_(v151, v152, v12->_rightLatLongDotLayer, v153);

    v252 = objc_msgSend_supportsPDRCapability_(v12->_device, v154, 3669496134, v155);
    if ((v252 & 1) == 0)
    {
      v156 = (v137[2])(v137);
      leftInclElevDotLayer = v12->_leftInclElevDotLayer;
      v12->_leftInclElevDotLayer = v156;

      v161 = objc_msgSend_layer(v12->_elevationView, v158, v159, v160);
      objc_msgSend_addSublayer_(v161, v162, v12->_leftInclElevDotLayer, v163);

      v164 = (v137[2])(v137);
      rightInclElevDotLayer = v12->_rightInclElevDotLayer;
      v12->_rightInclElevDotLayer = v164;

      v169 = objc_msgSend_layer(v12->_elevationView, v166, v167, v168);
      objc_msgSend_addSublayer_(v169, v170, v12->_rightInclElevDotLayer, v171);
    }

    v172 = objc_opt_new();
    coordinatesLabel = v12->_coordinatesLabel;
    v12->_coordinatesLabel = v172;

    objc_msgSend_setTracking_(v12->_coordinatesLabel, v174, v175, v176, 40.0);
    v177 = v12->_coordinatesLabel;
    v181 = objc_msgSend_grayColor(MEMORY[0x277D75348], v178, v179, v180);
    objc_msgSend_setTextColor_(v177, v182, v181, v183);

    objc_msgSend_setFont_(v12->_coordinatesLabel, v184, v12->_font, v185);
    objc_msgSend_addSubview_(v12->_latLongView, v186, v12->_coordinatesLabel, v187);
    v12->_latency = 1.79769313e308;
    v188 = objc_opt_new();
    timestampLabel = v12->_timestampLabel;
    v12->_timestampLabel = v188;

    objc_msgSend_setTracking_(v12->_timestampLabel, v190, v191, v192, 75.0);
    v193 = v12->_timestampLabel;
    v197 = objc_msgSend_grayColor(MEMORY[0x277D75348], v194, v195, v196);
    objc_msgSend_setTextColor_(v193, v198, v197, v199);

    objc_msgSend_setFont_(v12->_timestampLabel, v200, v12->_font, v201);
    objc_msgSend_setText_(v12->_timestampLabel, v202, v12->_timestampUpdating, v203);
    objc_msgSend_addSubview_(v12->_latLongView, v204, v12->_timestampLabel, v205);
    v12->_altitude = 1.79769313e308;
    v206 = objc_opt_new();
    elevationLabel = v12->_elevationLabel;
    v12->_elevationLabel = v206;

    v208 = v12->_elevationLabel;
    v212 = objc_msgSend_grayColor(MEMORY[0x277D75348], v209, v210, v211);
    objc_msgSend_setTextColor_(v208, v213, v212, v214);

    objc_msgSend_setFont_(v12->_elevationLabel, v215, v12->_font, v216);
    objc_msgSend_setText_(v12->_elevationLabel, v217, v12->_elevationUnknown, v218);
    if ((v252 & 1) == 0)
    {
      v12->_incline = 1.79769313e308;
      v221 = objc_opt_new();
      inclineLabel = v12->_inclineLabel;
      v12->_inclineLabel = v221;

      v223 = v12->_inclineLabel;
      v227 = objc_msgSend_grayColor(MEMORY[0x277D75348], v224, v225, v226);
      objc_msgSend_setTextColor_(v223, v228, v227, v229);

      objc_msgSend_setFont_(v12->_inclineLabel, v230, v12->_font, v231);
      objc_msgSend_setText_(v12->_inclineLabel, v232, v12->_inclineUnknown, v233);
      objc_msgSend_addSubview_(v12->_elevationView, v234, v12->_inclineLabel, v235);
    }

    objc_msgSend_addSubview_(v12->_elevationView, v219, v12->_elevationLabel, v220);
    v239 = objc_msgSend_layer(v12, v236, v237, v238);
    objc_msgSend_setMasksToBounds_(v239, v240, 1, v241);

    v245 = objc_msgSend_layer(v12, v242, v243, v244);
    objc_msgSend_setActions_(v245, v246, v253, v247);

    objc_msgSend_locationUpdated_(v12, v248, 0, v249);
    v250 = v12;
  }

  return v12;
}

- (double)_fontSize
{
  IsTallScript = CLKLanguageIsTallScript();
  result = 10.0;
  if (IsTallScript)
  {
    return 9.0;
  }

  return result;
}

- (void)_setupStrings
{
  v3 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, a2, @"GALLEON_GPS_RING_LAT_LONG_FORMAT", @"%@   %@");
  gpsCoordinatesFormat = self->_gpsCoordinatesFormat;
  self->_gpsCoordinatesFormat = v3;

  v6 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v5, @"GALLEON_GPS_RING_LAT_LONG_UNKNOWN", @"LATITUDE --°--‘--“   LONGITUDE --°--‘--“ ");
  gpsCoordinatesUnknown = self->_gpsCoordinatesUnknown;
  self->_gpsCoordinatesUnknown = v6;

  v9 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v8, @"GALLEON_GPS_RING_TIMESTAMP_FORMAT", @"UPDATED %@MINS AGO");
  timestampFormat = self->_timestampFormat;
  self->_timestampFormat = v9;

  v13 = objc_msgSend_rangeOfString_(self->_timestampFormat, v11, @"%ld", v12);
  if (v14)
  {
    v15 = objc_msgSend_stringByReplacingCharactersInRange_withString_(self->_timestampFormat, v14, v13, v14, @"%@");
    v16 = self->_timestampFormat;
    self->_timestampFormat = v15;
  }

  v17 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v14, @"GALLEON_GPS_RING_TIMESTAMP_ONE_MIN", @"UPDATED 1MIN AGO");
  timestampOneMinute = self->_timestampOneMinute;
  self->_timestampOneMinute = v17;

  v20 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v19, @"GALLEON_GPS_RING_TIMESTAMP_NO_UPDATE", @"POSITION UNKNOWN");
  timestampNoUpdate = self->_timestampNoUpdate;
  self->_timestampNoUpdate = v20;

  v23 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v22, @"GALLEON_GPS_RING_TIMESTAMP_RECENT", @"JUST UPDATED");
  timestampJustUpdated = self->_timestampJustUpdated;
  self->_timestampJustUpdated = v23;

  v26 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v25, @"GALLEON_GPS_RING_TIMESTAMP_NOT_AVAILABLE", @"POSITION UNAVAILABLE");
  timestampNotAvailable = self->_timestampNotAvailable;
  self->_timestampNotAvailable = v26;

  v29 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v28, @"GALLEON_GPS_RING_TIMESTAMP_UPDATING", @"UPDATING…");
  timestampUpdating = self->_timestampUpdating;
  self->_timestampUpdating = v29;

  if ((objc_msgSend_supportsPDRCapability_(self->_device, v31, 3669496134, v32) & 1) == 0)
  {
    v34 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v33, @"GALLEON_GPS_RING_INCLINE_FORMAT", @"INCLINE %@");
    inclineFormat = self->_inclineFormat;
    self->_inclineFormat = v34;

    v37 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v36, @"GALLEON_GPS_RING_INCLINE_UNKNOWN", @"UNKNOWN INCLINE");
    inclineUnknown = self->_inclineUnknown;
    self->_inclineUnknown = v37;
  }

  if (self->_usesMetric)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v33, @"GALLEON_GPS_RING_ELEVATION_FORMAT_METRIC", @"ELEVATION %@");
  }

  else
  {
    objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v33, @"GALLEON_GPS_RING_ELEVATION_FORMAT_US", @"ELEVATION %@");
  }
  v39 = ;
  elevationFormat = self->_elevationFormat;
  self->_elevationFormat = v39;

  v42 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v41, @"GALLEON_GPS_RING_ELEVATION_UNKNOWN", @"UNKNOWN ELEVATION");
  elevationUnknown = self->_elevationUnknown;
  self->_elevationUnknown = v42;

  v45 = objc_msgSend_localizedStringForKey_comment_(NTKGalleonFaceBundle, v44, @"GALLEON_GPS_RING_ELEVATION_APPROXIMATE_FORMAT", @"~%@");
  elevationApproximateFormat = self->_elevationApproximateFormat;
  self->_elevationApproximateFormat = v45;

  MEMORY[0x2821F96F8](v45, elevationApproximateFormat);
}

- (void)layoutSubviews
{
  v86.receiver = self;
  v86.super_class = NTKGalleonGPSRingView;
  layoutSubviews = [(NTKGalleonGPSRingView *)&v86 layoutSubviews];
  v4 = sub_23BEA2910(layoutSubviews, self->_device);
  objc_msgSend_bounds(self, v5, v6, v7);
  v88 = CGRectInset(v87, 0.25, 0.25);
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v12 = v88.size.width * 0.5 - v4 + 2.0;
  v13 = v88.size.width * 0.5 + -2.0;
  self->_ringCenterRadius = (v13 + v12) * 0.5;
  sub_23BEA2910(v14, self->_device);
  self->_dotRadiansStandoff = v15 * 3.0 / (self->_ringCenterRadius * 3.14159265 + self->_ringCenterRadius * 3.14159265);
  objc_msgSend__positionRingViews(self, v16, v17, v18);
  objc_msgSend__positionDotsForCenterAngle_leftDot_rightDot_(self, v19, self->_leftLatLongDotLayer, self->_rightLatLongDotLayer, 1.04719755);
  v22 = objc_msgSend_supportsPDRCapability_(self->_device, v20, 3669496134, v21);
  v24 = v22;
  if ((v22 & 1) == 0)
  {
    v22 = objc_msgSend__positionDotsForCenterAngle_leftDot_rightDot_(self, v23, self->_leftInclElevDotLayer, self->_rightInclElevDotLayer, 1.57079633);
  }

  sub_23BEA2910(v22, self->_device);
  v26 = v25 * 0.5;
  objc_msgSend_setCornerRadius_(self->_leftLatLongDotLayer, v27, v28, v29, v25 * 0.5);
  objc_msgSend_setCornerRadius_(self->_rightLatLongDotLayer, v30, v31, v32, v26);
  if ((v24 & 1) == 0)
  {
    objc_msgSend_setCornerRadius_(self->_leftInclElevDotLayer, v33, v34, v35, v26);
    objc_msgSend_setCornerRadius_(self->_rightInclElevDotLayer, v36, v37, v38, v26);
  }

  p_coordinatesLabel = &self->_coordinatesLabel;
  objc_msgSend_setFrame_(self->_coordinatesLabel, v33, v34, v35, x, y, width, height);
  objc_msgSend_setClipsToBounds_(self->_coordinatesLabel, v40, 0, v41);
  objc_msgSend_setCircleRadius_(self->_coordinatesLabel, v42, v43, v44, v12);
  objc_msgSend_setCenterAngle_(self->_coordinatesLabel, v45, v46, v47, 0.0);
  p_timestampLabel = &self->_timestampLabel;
  objc_msgSend_setFrame_(self->_timestampLabel, v49, v50, v51, x, y, width, height);
  objc_msgSend_setCircleRadius_(self->_timestampLabel, v52, v53, v54, v13);
  objc_msgSend_setCenterAngle_(self->_timestampLabel, v55, v56, v57, 0.0);
  objc_msgSend_setInterior_(self->_timestampLabel, v58, 1, v59);
  p_elevationLabel = &self->_elevationLabel;
  objc_msgSend_setFrame_(self->_elevationLabel, v61, v62, v63, x, y, width, height);
  objc_msgSend_setClipsToBounds_(self->_elevationLabel, v64, 0, v65);
  objc_msgSend_setCircleRadius_(self->_elevationLabel, v66, v67, v68, v12);
  objc_msgSend_setCenterAngle_(self->_elevationLabel, v69, v70, v71, 0.0);
  if ((v24 & 1) == 0)
  {
    objc_msgSend_setFrame_(self->_inclineLabel, v72, v73, v74, x, y, width, height);
    objc_msgSend_setCircleRadius_(self->_inclineLabel, v75, v76, v77, v13);
    objc_msgSend_setCenterAngle_(self->_inclineLabel, v78, v79, v80, 0.0);
    objc_msgSend_setInterior_(self->_inclineLabel, v81, 1, v82);
    objc_msgSend__layoutCurvedLabel_top_(self, v83, *p_coordinatesLabel, 1);
    p_coordinatesLabel = &self->_timestampLabel;
    p_timestampLabel = &self->_elevationLabel;
    p_elevationLabel = &self->_inclineLabel;
  }

  objc_msgSend__layoutCurvedLabel_top_(self, v72, *p_coordinatesLabel, v24);
  objc_msgSend__layoutCurvedLabel_top_(self, v84, *p_timestampLabel, v24 ^ 1);
  objc_msgSend__layoutCurvedLabel_top_(self, v85, *p_elevationLabel, v24);
}

- (void)_positionDotsForCenterAngle:(double)angle leftDot:(id)dot rightDot:(id)rightDot
{
  v7 = 4.71238898 - angle;
  v8 = angle + 4.71238898;
  rightDotCopy = rightDot;
  dotCopy = dot;
  v13 = objc_msgSend_bounds(self, v10, v11, v12);
  v14 = MEMORY[0x23EEC04E0](v13);
  v16 = v15;
  v18 = v17;
  sub_23BEA2910(v14, self->_device);
  v20 = v19;
  v21 = __sincos_stret(v7);
  ringCenterRadius = self->_ringCenterRadius;
  v23 = __sincos_stret(v8);
  objc_msgSend_setFrame_(dotCopy, v24, v25, v26, v16 + v21.__cosval * ringCenterRadius - v20 * 0.5, v18 - v21.__sinval * ringCenterRadius - v20 * 0.5, v20, v20);

  objc_msgSend_setFrame_(rightDotCopy, v27, v28, v29, v16 + v23.__cosval * ringCenterRadius - v20 * 0.5, v18 - v23.__sinval * ringCenterRadius - v20 * 0.5, v20, v20);
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, palette);
  ringLayer = self->_ringLayer;
  v9 = objc_msgSend_gpsRingBackgroundColor(paletteCopy, v6, v7, v8);
  v10 = v9;
  v14 = objc_msgSend_CGColor(v10, v11, v12, v13);
  objc_msgSend_setBorderColor_(ringLayer, v15, v14, v16);

  ringView = self->_ringView;
  v21 = objc_msgSend_outerRingBackgroundColor(paletteCopy, v18, v19, v20);
  objc_msgSend_setBackgroundColor_(ringView, v22, v21, v23);

  if ((objc_msgSend_isHidden(self->_latLongView, v24, v25, v26) & 1) == 0)
  {
    objc_msgSend__updateLatLongColors(self, v27, v28, v29);
  }

  if ((objc_msgSend_isHidden(self->_elevationView, v27, v28, v29) & 1) == 0)
  {
    objc_msgSend__updateElevationColors(self, v30, v31, v32);
  }
}

- (void)_updateLatLongColors
{
  leftLatLongDotLayer = self->_leftLatLongDotLayer;
  v6 = objc_msgSend_gpsRingDotColor(self->_palette, a2, v2, v3);
  v7 = v6;
  v11 = objc_msgSend_CGColor(v7, v8, v9, v10);
  objc_msgSend_setBackgroundColor_(leftLatLongDotLayer, v12, v11, v13);

  rightLatLongDotLayer = self->_rightLatLongDotLayer;
  v18 = objc_msgSend_gpsRingDotColor(self->_palette, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_CGColor(v19, v20, v21, v22);
  objc_msgSend_setBackgroundColor_(rightLatLongDotLayer, v24, v23, v25);

  coordinatesLabel = self->_coordinatesLabel;
  v30 = objc_msgSend_gpsRingTextColor(self->_palette, v27, v28, v29);
  objc_msgSend_setTextColor_(coordinatesLabel, v31, v30, v32);

  timestampLabel = self->_timestampLabel;
  v39 = objc_msgSend_gpsRingTextColor(self->_palette, v34, v35, v36);
  objc_msgSend_setTextColor_(timestampLabel, v37, v39, v38);
}

- (void)setIncline:(double)incline
{
  if (self->_incline != incline)
  {
    self->_incline = incline;
    if ((objc_msgSend_supportsPDRCapability_(self->_device, a2, 3669496134, v3) & 1) == 0)
    {
      if (incline >= 1.79769313e308)
      {
        v8 = self->_inclineUnknown;
      }

      else
      {
        v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, self->_inclineFormat, v7, *&incline);
      }

      obj = v8;
      if ((objc_msgSend_isEqualToString_(v8, v9, self->_currentInclineText, v10) & 1) == 0)
      {
        objc_storeStrong(&self->_currentInclineText, obj);
        objc_msgSend__updateCurvedLabel_withString_top_(self, v11, self->_inclineLabel, obj, 0);
      }
    }
  }
}

- (void)_updateElevationColors
{
  elevationLabel = self->_elevationLabel;
  v6 = objc_msgSend_gpsRingTextColor(self->_palette, a2, v2, v3);
  objc_msgSend_setTextColor_(elevationLabel, v7, v6, v8);

  if ((objc_msgSend_supportsPDRCapability_(self->_device, v9, 3669496134, v10) & 1) == 0)
  {
    inclineLabel = self->_inclineLabel;
    v15 = objc_msgSend_gpsRingTextColor(self->_palette, v11, v12, v13);
    objc_msgSend_setTextColor_(inclineLabel, v16, v15, v17);

    leftInclElevDotLayer = self->_leftInclElevDotLayer;
    v22 = objc_msgSend_gpsRingDotColor(self->_palette, v19, v20, v21);
    v23 = v22;
    v27 = objc_msgSend_CGColor(v23, v24, v25, v26);
    objc_msgSend_setBackgroundColor_(leftInclElevDotLayer, v28, v27, v29);

    rightInclElevDotLayer = self->_rightInclElevDotLayer;
    v41 = objc_msgSend_gpsRingDotColor(self->_palette, v31, v32, v33);
    v34 = v41;
    v38 = objc_msgSend_CGColor(v41, v35, v36, v37);
    objc_msgSend_setBackgroundColor_(rightInclElevDotLayer, v39, v38, v40);
  }
}

- (void)locationUnavailable
{
  objc_msgSend__updateCurvedLabel_withString_top_(self, a2, self->_coordinatesLabel, self->_gpsCoordinatesUnknown, 1);
  objc_msgSend__updateCurvedLabel_withString_top_(self, v3, self->_timestampLabel, self->_timestampNotAvailable, 0);
  self->_locationUnavailable = 1;
}

- (void)locationUpdated:(id)updated
{
  if (updated)
  {
    v5 = NTKLocationComponentStringsShowSecondsAndLatLongTitle();
    v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, *MEMORY[0x277D2BF48], v7);
    v11 = objc_msgSend_objectForKeyedSubscript_(v5, v9, *MEMORY[0x277D2BF50], v10);
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, self->_gpsCoordinatesFormat, v13, v8, v11);
  }

  else
  {
    objc_msgSend_setAltitude_(self, a2, 0, v3, 1.79769313e308);
    objc_msgSend_setLatency_(self, v15, v16, v17, 1.79769313e308);
    v18 = self->_gpsCoordinatesUnknown;
  }

  self->_locationUnavailable = 0;
  objc_msgSend__updateCurvedLabel_withString_top_(self, v14, self->_coordinatesLabel, v18, 1);
}

- (void)setAltitude:(double)altitude approximate:(BOOL)approximate
{
  if (self->_altitude != altitude)
  {
    self->_altitude = altitude;
    if (altitude >= 1.79769313e308)
    {
      v20 = self->_elevationUnknown;
    }

    else
    {
      approximateCopy = approximate;
      elevationFormatter = self->_elevationFormatter;
      v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, approximate, v4);
      v12 = objc_msgSend_stringFromNumber_(elevationFormatter, v10, v9, v11);

      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, self->_elevationFormat, v14, v12);
      obj = v15;
      if (approximateCopy)
      {
        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, self->_elevationApproximateFormat, v16, v15);

        obj = v17;
      }

      v20 = obj;
    }

    obja = v20;
    if ((objc_msgSend_isEqualToString_(v20, v18, self->_currentElevationText, v19) & 1) == 0)
    {
      objc_storeStrong(&self->_currentElevationText, obja);
      objc_msgSend__updateCurvedLabel_withString_top_(self, v21, self->_elevationLabel, obja, 1);
    }
  }
}

- (void)setLatency:(double)latency
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  latency = self->_latency;
  v8 = floor(latency) != floor(latency);
  v10 = latency != 1.79769313e308 && latency == 1.79769313e308 || v8;
  if (latency == latency)
  {
    return;
  }

  self->_latency = latency;
  if (latency >= 1.79769313e308)
  {
    v11 = 608;
  }

  else if (latency >= 1.0)
  {
    if (!v10)
    {
      return;
    }

    if (latency != 1)
    {
      v13 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v5, @"%ld", v6, latency);
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, self->_timestampFormat, v15, v13);

      v12 = v17;
      if (!v17)
      {
        return;
      }

      goto LABEL_13;
    }

    v11 = 600;
  }

  else
  {
    v11 = 616;
  }

  v12 = *(&self->super.super.super.isa + v11);
  if (!v12)
  {
    return;
  }

LABEL_13:
  v16 = v12;
  objc_msgSend__updateCurvedLabel_withString_top_(self, v12, self->_timestampLabel, v12, 0);
}

- (void)_updateCurvedLabel:(id)label withString:(id)string top:(BOOL)top
{
  topCopy = top;
  labelCopy = label;
  objc_msgSend_setText_(labelCopy, v8, string, v9);
  objc_msgSend__layoutCurvedLabel_top_(self, v10, labelCopy, topCopy);
}

- (void)_layoutCurvedLabel:(id)label top:(BOOL)top
{
  labelCopy = label;
  objc_msgSend_bounds(self, v7, v8, v9);
  v34 = CGRectInset(v33, (v33.size.width - v33.size.width) * 0.5, (v33.size.height - v33.size.width) * 0.5);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  objc_msgSend_sizeToFit(labelCopy, v14, v15, v16);
  v31 = 0.0;
  v32 = 0.0;
  v30 = *MEMORY[0x277CBF348];
  TextCenter_startAngle_endAngle = objc_msgSend_getTextCenter_startAngle_endAngle_(labelCopy, v17, &v30, &v32, &v31);
  v19 = MEMORY[0x23EEC04E0](TextCenter_startAngle_endAngle, x, y, width, height);
  v20 = v19 - *&v30;
  v22 = v21 - *(&v30 + 1);
  objc_msgSend_frame(labelCopy, v23, v24, v25);
  objc_msgSend_setFrame_(labelCopy, v26, v27, v28, v20, v22);

  if (!top)
  {
    v31 = fabs(v31);
    v32 = fabs(v32);
    objc_msgSend__positionDotsForCenterAngle_leftDot_rightDot_(self, v29, self->_leftLatLongDotLayer, self->_rightLatLongDotLayer, fmax((v32 - v31) * 0.5 + self->_dotRadiansStandoff, 1.04719755));
  }
}

- (void)setBezelStyle:(unint64_t)style
{
  self->_bezelStyle = style;
  v5 = 0.0;
  if (style)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  self->_latLongFraction = v6;
  if (style == 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  self->_elevationFraction = v7;
  if (style != 2)
  {
    v5 = 1.0;
  }

  self->_ringFraction = v5;
  objc_msgSend__updateLabelVisibility(self, a2, style, v3);

  MEMORY[0x2821F9670](self, sel__updateRingThickness, v8, v9);
}

- (void)applyTransitionFraction:(double)fraction fromBezelStyle:(unint64_t)style toBezelStyle:(unint64_t)bezelStyle
{
  CLKInterpolateBetweenFloatsClipped();
  self->_ringFraction = v6;
  CLKInterpolateBetweenFloatsClipped();
  self->_latLongFraction = v7;
  CLKInterpolateBetweenFloatsClipped();
  self->_elevationFraction = v8;
  objc_msgSend__updateLabelVisibility(self, v9, v10, v11);

  MEMORY[0x2821F9670](self, sel__updateRingThickness, v12, v13);
}

- (void)_updateLabelVisibility
{
  if (self->_bezelStyle == 1)
  {
    v5 = (NTKHasRegionalGeoRestrictions() & 1) != 0 || self->_locationUnavailable;
  }

  else
  {
    v5 = 0;
  }

  isHidden = objc_msgSend_isHidden(self->_latLongView, a2, v2, v3);
  v10 = objc_msgSend_isHidden(self->_elevationView, v7, v8, v9);
  elevationFraction = self->_elevationFraction;
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  if (v5)
  {
    latLongFraction = self->_latLongFraction;
    v17 = v14 + -0.5;
  }

  else
  {
    CLKInterpolateBetweenFloatsClipped();
    latLongFraction = v18;
    v17 = 0.5;
    elevationFraction = v15;
  }

  objc_msgSend_setHidden_(self->_latLongView, v12, latLongFraction == 0.0, v13);
  objc_msgSend_setHidden_(self->_elevationView, v19, elevationFraction == 0.0, v20);
  if (isHidden && (objc_msgSend_isHidden(self->_latLongView, v21, v22, v23) & 1) == 0)
  {
    objc_msgSend__updateLatLongColors(self, v21, v22, v23);
  }

  if (v10 && (objc_msgSend_isHidden(self->_elevationView, v21, v22, v23) & 1) == 0)
  {
    objc_msgSend__updateElevationColors(self, v21, v22, v23);
  }

  v24 = fmax(latLongFraction + -0.5, 0.0);
  objc_msgSend_setAlpha_(self->_latLongView, v21, v22, v23, v24 + v24);
  if ((objc_msgSend_supportsPDRCapability_(self->_device, v25, 3669496134, v26) & 1) == 0)
  {
    v30 = fmax(v17, 0.0);
    objc_msgSend_setAlpha_(self->_inclineLabel, v27, v28, v29, v30 + v30);
  }

  v31 = fmax(elevationFraction + -0.5, 0.0);
  v32 = v31 + v31;
  elevationView = self->_elevationView;

  objc_msgSend_setAlpha_(elevationView, v27, v28, v29, v32);
}

- (CGRect)_ringFrame
{
  v3 = sub_23BEA2910(self, self->_device);
  objc_msgSend_ringThickness(self, v4, v5, v6);
  v8 = v3 - v7;
  objc_msgSend_bounds(self, v9, v10, v11);
  if (v8 != 0.0)
  {
    *&v12 = CGRectInset(*&v12, v8, v8);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_positionRingViews
{
  objc_msgSend_bounds(self, a2, v2, v3);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  MidX = CGRectGetMidX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  MidY = CGRectGetMidY(v52);
  objc_msgSend__ringFrame(self, v10, v11, v12);
  v13 = v53.origin.x;
  v14 = v53.origin.y;
  v15 = v53.size.width;
  v16 = v53.size.height;
  v54 = CGRectInset(v53, -1.0, -1.0);
  v46 = v54.origin.y;
  v47 = v54.origin.x;
  rect = v54.size.width;
  v17 = v54.size.height;
  objc_msgSend_setBounds_(self->_ringView, v18, v19, v20);
  objc_msgSend_setCenter_(self->_ringView, v21, v22, v23, MidX, MidY);
  ringLayer = self->_ringLayer;
  v55.origin.x = v13;
  v55.origin.y = v14;
  v55.size.width = v15;
  v55.size.height = v16;
  v25 = CGRectGetWidth(v55);
  v56.origin.x = v13;
  v56.origin.y = v14;
  v56.size.width = v15;
  v56.size.height = v16;
  v26 = CGRectGetHeight(v56);
  objc_msgSend_setBounds_(ringLayer, v27, v28, v29, 1.0, 1.0, v25, v26);
  objc_msgSend_setPosition_(self->_ringLayer, v30, v31, v32, MidX, MidY);
  v33 = self->_ringLayer;
  v57.origin.x = v13;
  v57.origin.y = v14;
  v57.size.width = v15;
  v57.size.height = v16;
  v34 = CGRectGetWidth(v57);
  objc_msgSend_setCornerRadius_(v33, v35, v36, v37, v34 * 0.5);
  v49 = objc_msgSend_layer(self->_ringView, v38, v39, v40);
  v58.origin.y = v46;
  v58.origin.x = v47;
  v58.size.width = rect;
  v58.size.height = v17;
  v41 = CGRectGetWidth(v58);
  objc_msgSend_setCornerRadius_(v49, v42, v43, v44, v41 * 0.5);
}

- (void)_updateRingThickness
{
  objc_msgSend__positionRingViews(self, a2, v2, v3);
  ringLayer = self->_ringLayer;
  objc_msgSend_ringThickness(self, v6, v7, v8);

  objc_msgSend_setBorderWidth_(ringLayer, v9, v10, v11);
}

@end