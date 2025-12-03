@interface WaypointRichRectangularView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_alwaysVisibleConstraints;
- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction;
- (id)_formattedLabelText:(id)text direction:(id)direction;
- (id)_threeLineConstraints;
- (id)_twoLineConstraints;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)labelFont;
- (id)smallCapsUnitFont;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)_configureSampleWaypoint:(id)waypoint color:(id)color;
- (void)_updateForMonochrome:(id)monochrome;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation WaypointRichRectangularView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v109.receiver = self;
  v109.super_class = WaypointRichRectangularView;
  v6 = [(WaypointRichRectangularView *)&v109 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v11 = objc_msgSend_initWithUUIDString_(v8, v9, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E", v10);
  v14 = objc_msgSend_supportsCapability_(deviceCopy, v12, v11, v13);

  v7->_supportsGossamer = v14;
  v15 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_AWAY_TEXT");
  awayText = v7->_awayText;
  v7->_awayText = v15;

  v17 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_DOWN_TEXT");
  downText = v7->_downText;
  v7->_downText = v17;

  v19 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_UP_TEXT");
  upText = v7->_upText;
  v7->_upText = v19;

  v21 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_NO_DISTANCE");
  noDistanceText = v7->_noDistanceText;
  v7->_noDistanceText = v21;

  v23 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_NO_ELEVATION");
  noElevationText = v7->_noElevationText;
  v7->_noElevationText = v23;

  v25 = NanoCompassLocalizedString(@"WAYPOINT_COMPLICATION_SMART_WAYPOINT_NAME");
  defaultWaypointName = v7->_defaultWaypointName;
  v7->_defaultWaypointName = v25;

  v27 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_ACTIVATE_TEXT");
  tapToActivateText = v7->_tapToActivateText;
  v7->_tapToActivateText = v27;

  objc_msgSend_screenBounds(deviceCopy, v29, v30, v31);
  v33 = v32 * 0.042;
  v7->_leftMargin = ceilf(v33);
  v7->_lineSpacing = 0.0;
  objc_msgSend_setClipsToBounds_(v7, v34, 1, v35);
  v36 = objc_alloc_init(MEMORY[0x277D756D0]);
  layoutGuide = v7->_layoutGuide;
  v7->_layoutGuide = v36;

  objc_msgSend_addLayoutGuide_(v7, v38, v7->_layoutGuide, v39);
  v40 = [WaypointRichRectangularCircleDialView alloc];
  inited = objc_msgSend_initFullColorImageViewWithDevice_(v40, v41, deviceCopy, v42);
  dialView = v7->_dialView;
  v7->_dialView = inited;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_dialView, v45, 0, v46);
  objc_msgSend_addSubview_(v7, v47, v7->_dialView, v48);
  v49 = objc_opt_new();
  contentView = v7->_contentView;
  v7->_contentView = v49;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_contentView, v51, 0, v52);
  objc_msgSend_addSubview_(v7, v53, v7->_contentView, v54);
  v55 = objc_opt_new();
  waypointLabel = v7->_waypointLabel;
  v7->_waypointLabel = v55;

  v60 = objc_msgSend_labelFont(v7, v57, v58, v59);
  objc_msgSend_setFont_(v7->_waypointLabel, v61, v60, v62);

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_waypointLabel, v63, 0, v64);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_waypointLabel, v65, 1, v66);
  objc_msgSend_addSubview_(v7->_contentView, v67, v7->_waypointLabel, v68);
  v69 = objc_opt_new();
  line2Label = v7->_line2Label;
  v7->_line2Label = v69;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_line2Label, v71, 0, v72);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_line2Label, v73, 1, v74);
  objc_msgSend_addSubview_(v7->_contentView, v75, v7->_line2Label, v76);
  v77 = objc_opt_new();
  line3Label = v7->_line3Label;
  v7->_line3Label = v77;

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v7->_line3Label, v79, 0, v80);
  objc_msgSend_setAllowsDefaultTighteningForTruncation_(v7->_line3Label, v81, 1, v82);
  objc_msgSend_addSubview_(v7->_contentView, v83, v7->_line3Label, v84);
  v85 = v7->_defaultWaypointName;
  v86 = NanoCompassAppTintColor();
  objc_msgSend__configureSampleWaypoint_color_(v7, v87, v85, v86);

  v91 = v7->_dialView;
  if (v91)
  {
    objc_msgSend__layoutConstantsForDevice_(v91, v88, deviceCopy, v90);
  }

  else
  {
    v108 = 0.0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
  }

  *&v7->_layoutConstants.symbolSize = v104;
  v7->_layoutConstants.blurAmount = v108;
  *&v7->_layoutConstants.largeTickSize.height = v106;
  *&v7->_layoutConstants.smallTickSize.height = v107;
  *&v7->_layoutConstants.dialDiameter = v105;
  v92 = objc_msgSend__threeLineConstraints(v7, v88, v89, v90, v104, v105, v106, v107, *&v108);
  waypointDetailsActivatedConstraints = v7->_waypointDetailsActivatedConstraints;
  v7->_waypointDetailsActivatedConstraints = v92;

  v94 = MEMORY[0x277CCAAD0];
  v98 = objc_msgSend__alwaysVisibleConstraints(v7, v95, v96, v97);
  objc_msgSend_activateConstraints_(v94, v99, v98, v100);

  objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v101, v7->_waypointDetailsActivatedConstraints, v102);
  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v9 = objc_msgSend_metadata(providerCopy, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"waypoint", v11);

  v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14, v15);
  isEqual = objc_msgSend_isEqual_(v12, v17, v16, v18);

  if (isEqual)
  {

    v12 = 0;
  }

  v23 = objc_msgSend_metadata(providerCopy, v20, v21, v22);
  v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"smart", v25);
  v30 = objc_msgSend_BOOLValue(v26, v27, v28, v29);

  v34 = objc_msgSend_metadata(providerCopy, v31, v32, v33);
  v37 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"showSampleData", v36);
  v41 = objc_msgSend_BOOLValue(v37, v38, v39, v40);

  v45 = objc_msgSend_metadata(providerCopy, v42, v43, v44);
  v48 = v45;
  if (!v41)
  {
    v62 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"nodata", v47);
    v66 = objc_msgSend_BOOLValue(v62, v63, v64, v65);

    v70 = objc_msgSend_metadata(providerCopy, v67, v68, v69);
    v73 = objc_msgSend_objectForKeyedSubscript_(v70, v71, @"inactive", v72);
    v77 = objc_msgSend_BOOLValue(v73, v74, v75, v76);

    v81 = objc_msgSend_metadata(providerCopy, v78, v79, v80);
    v84 = objc_msgSend_objectForKeyedSubscript_(v81, v82, @"alwayson", v83);
    v88 = objc_msgSend_BOOLValue(v84, v85, v86, v87);

    if (!v12)
    {
      objc_msgSend_setText_(self->_waypointLabel, v89, self->_defaultWaypointName, v91);
      v142 = NanoCompassAppTintColor();
      objc_msgSend_setTextColor_(self->_waypointLabel, v143, v142, v144);

      if ((v30 & v77) == 1)
      {
        objc_msgSend_setText_(self->_line2Label, v145, self->_tapToActivateText, v146);
        v150 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v147, v148, v149);
        objc_msgSend_setTextColor_(self->_line2Label, v151, v150, v152);

        objc_msgSend_setNumberOfLines_(self->_line2Label, v153, 2, v154);
        objc_msgSend_setHidden_(self->_line2Label, v155, 0, v156);
        objc_msgSend_setHidden_(self->_line3Label, v157, 1, v158);
        p_waypointDetailsActivatedConstraints = &self->_waypointDetailsActivatedConstraints;
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v160, self->_waypointDetailsActivatedConstraints, v161);
        objc_msgSend__twoLineConstraints(self, v162, v163, v164);
      }

      else
      {
        objc_msgSend_setHidden_(self->_line2Label, v145, 0, v146);
        v173 = objc_msgSend__formattedLabelText_direction_(self, v172, self->_noDistanceText, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v174, v173, v175);

        objc_msgSend_setHidden_(self->_line3Label, v176, 0, v177);
        v179 = objc_msgSend__formattedLabelText_direction_(self, v178, self->_noElevationText, self->_downText);
        objc_msgSend_setAttributedText_(self->_line3Label, v180, v179, v181);

        p_waypointDetailsActivatedConstraints = &self->_waypointDetailsActivatedConstraints;
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v182, self->_waypointDetailsActivatedConstraints, v183);
        objc_msgSend__threeLineConstraints(self, v184, v185, v186);
      }
      v165 = ;
      v187 = *p_waypointDetailsActivatedConstraints;
      *p_waypointDetailsActivatedConstraints = v165;

      objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v188, *p_waypointDetailsActivatedConstraints, v189);
      objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v190, providerCopy, reason);
      objc_msgSend_setNeedsLayout(self, v191, v192, v193);
      goto LABEL_28;
    }

    v92 = objc_msgSend_metadata(providerCopy, v89, v90, v91);
    v49 = objc_msgSend_objectForKeyedSubscript_(v92, v93, @"location", v94);

    v98 = objc_msgSend_null(MEMORY[0x277CBEB68], v95, v96, v97);
    v101 = objc_msgSend_isEqual_(v49, v99, v98, v100);

    if (v101)
    {

      v49 = 0;
    }

    v105 = objc_msgSend_metadata(providerCopy, v102, v103, v104);
    v108 = objc_msgSend_objectForKeyedSubscript_(v105, v106, @"altitude", v107);

    v112 = objc_msgSend_null(MEMORY[0x277CBEB68], v109, v110, v111);
    v115 = objc_msgSend_isEqual_(v108, v113, v112, v114);

    if (v115)
    {

      v108 = 0;
    }

    v119 = objc_msgSend_label(v12, v116, v117, v118);
    objc_msgSend_setText_(self->_waypointLabel, v120, v119, v121);

    if (v77)
    {
      v125 = objc_msgSend_labelColor(v12, v122, v123, v124);
      objc_msgSend_setTextColor_(self->_waypointLabel, v126, v125, v127);

      objc_msgSend_setText_(self->_line2Label, v128, self->_tapToActivateText, v129);
      v133 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v130, v131, v132);
      objc_msgSend_setTextColor_(self->_line2Label, v134, v133, v135);

      objc_msgSend_setNumberOfLines_(self->_line2Label, v136, 2, v137);
      objc_msgSend_setHidden_(self->_line2Label, v138, 0, v139);
    }

    else
    {
      if (v49)
      {
        v166 = objc_msgSend_labelColor(v12, v122, v123, v124);
        objc_msgSend_setTextColor_(self->_waypointLabel, v167, v166, v168);

        v171 = v88 | v66;
      }

      else
      {
        v194 = NanoCompassWaypointDefaultColor();
        objc_msgSend_setTextColor_(self->_waypointLabel, v195, v194, v196);

        v171 = 1;
      }

      objc_msgSend_setNumberOfLines_(self->_line2Label, v169, 1, v170);
      objc_msgSend_setHidden_(self->_line2Label, v197, 0, v198);
      if (v171)
      {
        v202 = objc_msgSend__formattedLabelText_direction_(self, v199, self->_noDistanceText, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v203, v202, v204);
      }

      else
      {
        v205 = objc_msgSend_rawLocation(v49, v199, v200, v201);
        v209 = objc_msgSend_location(v12, v206, v207, v208);
        objc_msgSend_distanceFromLocation_(v205, v210, v209, v211);
        v213 = v212;

        v202 = formattedDistanceForWaypointComplication(v213);
        v215 = objc_msgSend__formattedLabelText_direction_(self, v214, v202, self->_awayText);
        objc_msgSend_setAttributedText_(self->_line2Label, v216, v215, v217);
      }

      if (v108 && objc_msgSend_hasReading(v108, v140, v218, v141) && !(v88 & 1 | ((objc_msgSend_isAltitudePopulated(v12, v140, v219, v141) & 1) == 0) | v66 & 1))
      {
        objc_msgSend_altitudeInMeters(v108, v140, v220, v141);
        v235 = v234;
        objc_msgSend_altitude(v12, v236, v237, v238);
        v240 = v239;
        v241 = &OBJC_IVAR___WaypointRichRectangularView__downText;
        if (v239 - v235 > 0.0)
        {
          v241 = &OBJC_IVAR___WaypointRichRectangularView__upText;
        }

        v242 = *(&self->super.super.super.isa + *v241);
        v243 = formattedDistanceForWaypointComplication(vabdd_f64(v240, v235));
        v245 = objc_msgSend__formattedLabelText_direction_(self, v244, v243, v242);
        objc_msgSend_setAttributedText_(self->_line3Label, v246, v245, v247);

        objc_msgSend_setHidden_(self->_line3Label, v248, 0, v249);
        objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v250, self->_waypointDetailsActivatedConstraints, v251);
        v255 = objc_msgSend__threeLineConstraints(self, v252, v253, v254);
        waypointDetailsActivatedConstraints = self->_waypointDetailsActivatedConstraints;
        self->_waypointDetailsActivatedConstraints = v255;

        objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v257, self->_waypointDetailsActivatedConstraints, v258);
        goto LABEL_26;
      }
    }

    objc_msgSend_setHidden_(self->_line3Label, v140, 1, v141);
    objc_msgSend_deactivateConstraints_(MEMORY[0x277CCAAD0], v221, self->_waypointDetailsActivatedConstraints, v222);
    v226 = objc_msgSend__twoLineConstraints(self, v223, v224, v225);
    v227 = self->_waypointDetailsActivatedConstraints;
    self->_waypointDetailsActivatedConstraints = v226;

    objc_msgSend_activateConstraints_(MEMORY[0x277CCAAD0], v228, self->_waypointDetailsActivatedConstraints, v229);
LABEL_26:
    objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v230, providerCopy, reason);
    objc_msgSend_setNeedsLayout(self, v231, v232, v233);

    goto LABEL_27;
  }

  v49 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"label", v47);

  v53 = objc_msgSend_metadata(providerCopy, v50, v51, v52);
  v56 = objc_msgSend_objectForKeyedSubscript_(v53, v54, @"color", v55);

  objc_msgSend__configureSampleWaypoint_color_(self, v57, v49, v56);
  objc_msgSend_configureWithImageProvider_reason_(self->_dialView, v58, providerCopy, reason);
  objc_msgSend_setNeedsLayout(self, v59, v60, v61);

LABEL_27:
LABEL_28:
}

- (id)_alwaysVisibleConstraints
{
  v145[13] = *MEMORY[0x277D85DE8];
  v144 = objc_msgSend_leadingAnchor(self->_layoutGuide, a2, v2, v3);
  v143 = objc_msgSend_leadingAnchor(self, v5, v6, v7);
  v142 = objc_msgSend_constraintEqualToAnchor_constant_(v144, v8, v143, v9, self->_leftMargin);
  v145[0] = v142;
  v141 = objc_msgSend_trailingAnchor(self->_layoutGuide, v10, v11, v12);
  v140 = objc_msgSend_trailingAnchor(self, v13, v14, v15);
  v139 = objc_msgSend_constraintEqualToAnchor_constant_(v141, v16, v140, v17, 0.0);
  v145[1] = v139;
  v138 = objc_msgSend_topAnchor(self->_layoutGuide, v18, v19, v20);
  v137 = objc_msgSend_topAnchor(self, v21, v22, v23);
  v136 = objc_msgSend_constraintEqualToAnchor_constant_(v138, v24, v137, v25, 0.0);
  v145[2] = v136;
  v135 = objc_msgSend_bottomAnchor(self->_layoutGuide, v26, v27, v28);
  v134 = objc_msgSend_bottomAnchor(self, v29, v30, v31);
  v133 = objc_msgSend_constraintEqualToAnchor_constant_(v135, v32, v134, v33, 0.0);
  v145[3] = v133;
  v132 = objc_msgSend_leadingAnchor(self->_dialView, v34, v35, v36);
  v131 = objc_msgSend_leadingAnchor(self->_layoutGuide, v37, v38, v39);
  v130 = objc_msgSend_constraintEqualToAnchor_(v132, v40, v131, v41);
  v145[4] = v130;
  v129 = objc_msgSend_widthAnchor(self->_dialView, v42, v43, v44);
  v128 = objc_msgSend_constraintEqualToConstant_(v129, v45, v46, v47, self->_layoutConstants.dialDiameter);
  v145[5] = v128;
  v127 = objc_msgSend_centerYAnchor(self->_dialView, v48, v49, v50);
  v126 = objc_msgSend_centerYAnchor(self->_layoutGuide, v51, v52, v53);
  v125 = objc_msgSend_constraintEqualToAnchor_(v127, v54, v126, v55);
  v145[6] = v125;
  v124 = objc_msgSend_leadingAnchor(self->_contentView, v56, v57, v58);
  v123 = objc_msgSend_trailingAnchor(self->_dialView, v59, v60, v61);
  v122 = objc_msgSend_constraintEqualToAnchor_constant_(v124, v62, v123, v63, self->_leftMargin);
  v145[7] = v122;
  v121 = objc_msgSend_trailingAnchor(self->_contentView, v64, v65, v66);
  v120 = objc_msgSend_trailingAnchor(self->_layoutGuide, v67, v68, v69);
  v119 = objc_msgSend_constraintEqualToAnchor_(v121, v70, v120, v71);
  v145[8] = v119;
  v118 = objc_msgSend_centerYAnchor(self->_contentView, v72, v73, v74);
  v117 = objc_msgSend_centerYAnchor(self->_dialView, v75, v76, v77);
  v80 = objc_msgSend_constraintEqualToAnchor_(v118, v78, v117, v79);
  v145[9] = v80;
  v84 = objc_msgSend_topAnchor(self->_waypointLabel, v81, v82, v83);
  v88 = objc_msgSend_topAnchor(self->_contentView, v85, v86, v87);
  v91 = objc_msgSend_constraintEqualToAnchor_(v84, v89, v88, v90);
  v145[10] = v91;
  v95 = objc_msgSend_leadingAnchor(self->_waypointLabel, v92, v93, v94);
  v99 = objc_msgSend_leadingAnchor(self->_contentView, v96, v97, v98);
  v102 = objc_msgSend_constraintEqualToAnchor_(v95, v100, v99, v101);
  v145[11] = v102;
  v106 = objc_msgSend_trailingAnchor(self->_waypointLabel, v103, v104, v105);
  v110 = objc_msgSend_trailingAnchor(self->_contentView, v107, v108, v109);
  v113 = objc_msgSend_constraintEqualToAnchor_(v106, v111, v110, v112);
  v145[12] = v113;
  v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v114, v145, 13);

  return v116;
}

- (id)_twoLineConstraints
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48 = objc_msgSend_topAnchor(self->_line2Label, a2, v2, v3);
  v47 = objc_msgSend_bottomAnchor(self->_waypointLabel, v5, v6, v7);
  v46 = objc_msgSend_constraintEqualToAnchor_constant_(v48, v8, v47, v9, self->_lineSpacing);
  v49[0] = v46;
  v13 = objc_msgSend_leadingAnchor(self->_line2Label, v10, v11, v12);
  v17 = objc_msgSend_leadingAnchor(self->_contentView, v14, v15, v16);
  v20 = objc_msgSend_constraintEqualToAnchor_(v13, v18, v17, v19);
  v49[1] = v20;
  v24 = objc_msgSend_trailingAnchor(self->_line2Label, v21, v22, v23);
  v28 = objc_msgSend_trailingAnchor(self->_contentView, v25, v26, v27);
  v31 = objc_msgSend_constraintEqualToAnchor_(v24, v29, v28, v30);
  v49[2] = v31;
  v35 = objc_msgSend_bottomAnchor(self->_line2Label, v32, v33, v34);
  v39 = objc_msgSend_bottomAnchor(self->_contentView, v36, v37, v38);
  v42 = objc_msgSend_constraintEqualToAnchor_(v35, v40, v39, v41);
  v49[3] = v42;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v49, 4);

  return v44;
}

- (id)_threeLineConstraints
{
  v82[7] = *MEMORY[0x277D85DE8];
  v81 = objc_msgSend_topAnchor(self->_line2Label, a2, v2, v3);
  v80 = objc_msgSend_bottomAnchor(self->_waypointLabel, v5, v6, v7);
  v79 = objc_msgSend_constraintEqualToAnchor_constant_(v81, v8, v80, v9, self->_lineSpacing);
  v82[0] = v79;
  v78 = objc_msgSend_leadingAnchor(self->_line2Label, v10, v11, v12);
  v77 = objc_msgSend_leadingAnchor(self->_contentView, v13, v14, v15);
  v76 = objc_msgSend_constraintEqualToAnchor_(v78, v16, v77, v17);
  v82[1] = v76;
  v75 = objc_msgSend_trailingAnchor(self->_line2Label, v18, v19, v20);
  v74 = objc_msgSend_trailingAnchor(self->_contentView, v21, v22, v23);
  v73 = objc_msgSend_constraintEqualToAnchor_(v75, v24, v74, v25);
  v82[2] = v73;
  v72 = objc_msgSend_topAnchor(self->_line3Label, v26, v27, v28);
  v71 = objc_msgSend_bottomAnchor(self->_line2Label, v29, v30, v31);
  v70 = objc_msgSend_constraintEqualToAnchor_constant_(v72, v32, v71, v33, self->_lineSpacing);
  v82[3] = v70;
  v37 = objc_msgSend_leadingAnchor(self->_line3Label, v34, v35, v36);
  v41 = objc_msgSend_leadingAnchor(self->_contentView, v38, v39, v40);
  v44 = objc_msgSend_constraintEqualToAnchor_(v37, v42, v41, v43);
  v82[4] = v44;
  v48 = objc_msgSend_trailingAnchor(self->_line3Label, v45, v46, v47);
  v52 = objc_msgSend_trailingAnchor(self->_contentView, v49, v50, v51);
  v55 = objc_msgSend_constraintEqualToAnchor_(v48, v53, v52, v54);
  v82[5] = v55;
  v59 = objc_msgSend_bottomAnchor(self->_line3Label, v56, v57, v58);
  v63 = objc_msgSend_bottomAnchor(self->_contentView, v60, v61, v62);
  v66 = objc_msgSend_constraintEqualToAnchor_(v59, v64, v63, v65);
  v82[6] = v66;
  v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v67, v82, 7);

  return v68;
}

- (id)labelFont
{
  if (qword_27E1C52A0 != -1)
  {
    sub_23BD675AC();
  }

  v3 = qword_27E1C5298;

  return v3;
}

- (id)smallCapsUnitFont
{
  if (qword_27E1C52B0 != -1)
  {
    sub_23BD675C0();
  }

  v3 = qword_27E1C52A8;

  return v3;
}

- (id)_formattedLabelText:(id)text direction:(id)direction
{
  v65[1] = *MEMORY[0x277D85DE8];
  directionCopy = direction;
  textCopy = text;
  v7 = objc_opt_new();
  v8 = objc_alloc(MEMORY[0x277CCA898]);
  v64 = *MEMORY[0x277D740A8];
  v9 = v64;
  v13 = objc_msgSend_labelFont(self, v10, v11, v12);
  v65[0] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v65, &v64, 1);
  v58 = objc_msgSend_initWithString_attributes_(v8, v16, @" ", v15);

  v17 = objc_alloc(MEMORY[0x277CCA898]);
  v62[0] = *MEMORY[0x277D740C0];
  v18 = v62[0];
  v22 = objc_msgSend_systemWhiteColor(MEMORY[0x277D75348], v19, v20, v21);
  v62[1] = v9;
  v63[0] = v22;
  v26 = objc_msgSend_smallCapsUnitFont(self, v23, v24, v25);
  v63[1] = v26;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v63, v62, 2);
  v30 = objc_msgSend_initWithString_attributes_(v17, v29, textCopy, v28);

  v31 = objc_alloc(MEMORY[0x277CCA898]);
  v60[0] = v18;
  v35 = objc_msgSend_systemGrayColor(MEMORY[0x277D75348], v32, v33, v34);
  v60[1] = v9;
  v61[0] = v35;
  v39 = objc_msgSend_labelFont(self, v36, v37, v38);
  v61[1] = v39;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v61, v60, 2);
  v43 = objc_msgSend_initWithString_attributes_(v31, v42, directionCopy, v41);

  v44 = NanoCompassLocalizedString(@"WAYPOINT_RECTANGULAR_COMPLICATION_SWAP_DISTANCE_TEXT_ORDER");
  v48 = objc_msgSend_BOOLValue(v44, v45, v46, v47);
  if (v48)
  {
    v51 = v43;
  }

  else
  {
    v51 = v30;
  }

  if (v48)
  {
    v52 = v30;
  }

  else
  {
    v52 = v43;
  }

  objc_msgSend_appendAttributedString_(v7, v49, v51, v50);
  objc_msgSend_appendAttributedString_(v7, v53, v58, v54);
  objc_msgSend_appendAttributedString_(v7, v55, v52, v56);

  return v7;
}

- (void)_configureSampleWaypoint:(id)waypoint color:(id)color
{
  waypointLabel = self->_waypointLabel;
  colorCopy = color;
  objc_msgSend_setText_(waypointLabel, v8, waypoint, v9);
  objc_msgSend_setTextColor_(self->_waypointLabel, v10, colorCopy, v11);

  v21 = formattedDistanceForWaypointComplication(805.0);
  v13 = objc_msgSend__formattedLabelText_direction_(self, v12, v21, self->_awayText);
  objc_msgSend_setAttributedText_(self->_line2Label, v14, v13, v15);

  v16 = formattedDistanceForWaypointComplication(14.6);
  v18 = objc_msgSend__formattedLabelText_direction_(self, v17, v16, self->_downText);
  objc_msgSend_setAttributedText_(self->_line3Label, v19, v18, v20);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, fraction);
  objc_msgSend__updateForMonochrome_(self, v6, v8, v7);
}

- (void)_updateForMonochrome:(id)monochrome
{
  v18[2] = *MEMORY[0x277D85DE8];
  monochromeCopy = monochrome;
  v6 = objc_msgSend__filtersForStyle_fraction_(self, v5, 2, monochromeCopy);
  dialView = self->_dialView;
  v18[0] = self->_waypointLabel;
  v18[1] = dialView;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v18, 2);
  objc_msgSend__applyFilters_toViews_(self, v10, v6, v9);
  v12 = objc_msgSend__filtersForStyle_fraction_(self, v11, 0, monochromeCopy);

  line3Label = self->_line3Label;
  v17[0] = self->_line2Label;
  v17[1] = line3Label;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 2);
  objc_msgSend__applyFilters_toViews_(self, v16, v12, v15);
}

- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction
{
  fractionCopy = fraction;
  v10 = fractionCopy;
  if (fractionCopy)
  {
    objc_msgSend_doubleValue(fractionCopy, v7, v8, v9);
    if (CLKFloatEqualsFloat())
    {
      v14 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v15 = objc_msgSend_filterProvider(self, v11, v12, v13);
    objc_msgSend_doubleValue(v10, v18, v19, v20);
    v17 = objc_msgSend_filtersForView_style_fraction_(v15, v21, self, style);
  }

  else
  {
    v15 = objc_msgSend_filterProvider(self, v7, v8, v9);
    v17 = objc_msgSend_filtersForView_style_(v15, v16, self, style);
  }

  v14 = v17;

LABEL_7:

  return v14;
}

- (void)_applyFilters:(id)filters toViews:(id)views
{
  filtersCopy = filters;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD53C04;
  v9[3] = &unk_278B942B8;
  v10 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v9, v8);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end