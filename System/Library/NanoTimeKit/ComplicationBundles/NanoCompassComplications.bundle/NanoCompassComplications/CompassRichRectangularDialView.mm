@interface CompassRichRectangularDialView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_filtersForStyle:(int64_t)style fraction:(id)fraction;
- (id)_newLabelWithFont:(id)font color:(id)color text:(id)text;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)redactionLabel;
- (void)_applyFilters:(id)filters toLayers:(id)layers;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)_createAngles;
- (void)_createBearingTicks;
- (void)_createDirections;
- (void)_createTicks;
- (void)_updateForMonochrome:(id)monochrome;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation CompassRichRectangularDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  v223[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v221.receiver = self;
  v221.super_class = CompassRichRectangularDialView;
  v5 = [(CompassRichRectangularDialView *)&v221 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_device, device);
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = objc_msgSend_initWithUUIDString_(v7, v8, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E", v9);
    v13 = objc_msgSend_supportsCapability_(deviceCopy, v11, v10, v12);

    v6->_supportsGossamer = v13;
    v16 = objc_msgSend_setClipsToBounds_(v6, v14, 1, v15);
    v220 = 0;
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v207 = 0u;
    sub_23BD36850(v16, v6->_device);
    sub_23BD36C0C(&v207, &qword_27E1C4E20);
    v17 = objc_opt_new();
    wheelContainer = v6->_wheelContainer;
    v6->_wheelContainer = v17;

    objc_msgSend_addSubview_(v6, v19, v6->_wheelContainer, v20);
    objc_msgSend__createDirections(v6, v21, v22, v23);
    directions = v6->_directions;
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = sub_23BD33EEC;
    v205[3] = &unk_278B94220;
    v25 = v6;
    v206 = v25;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(directions, v26, v205, v27);
    objc_msgSend__createAngles(v25, v28, v29, v30);
    angles = v25->_angles;
    v203[0] = MEMORY[0x277D85DD0];
    v203[1] = 3221225472;
    v203[2] = sub_23BD33F00;
    v203[3] = &unk_278B94220;
    v32 = v25;
    v204 = v32;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(angles, v33, v203, v34);
    objc_msgSend__createTicks(v32, v35, v36, v37);
    ticks = v32->_ticks;
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 3221225472;
    v201[2] = sub_23BD33F14;
    v201[3] = &unk_278B94248;
    v39 = v32;
    v202 = v39;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(ticks, v40, v201, v41);
    objc_msgSend__createBearingTicks(v39, v42, v43, v44);
    bearingTicks = v39->_bearingTicks;
    v199[0] = MEMORY[0x277D85DD0];
    v199[1] = 3221225472;
    v199[2] = sub_23BD33F80;
    v199[3] = &unk_278B94248;
    v46 = v39;
    v200 = v46;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bearingTicks, v47, v199, v48);
    if (objc_msgSend_supportsGossamer(v46, v49, v50, v51))
    {
      v52 = objc_alloc(MEMORY[0x277D755E8]);
      NanoCompassComplicationImageNamed(@"Compass/Rectangular/Needle");
    }

    else
    {
      v57 = objc_alloc(MEMORY[0x277D755E8]);
      v58 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Rectangular/Needle Shadow");
      v61 = objc_msgSend_initWithImage_(v57, v59, v58, v60);
      needleShadow = v46->_needleShadow;
      v46->_needleShadow = v61;

      objc_msgSend_addSubview_(v46, v63, v46->_needleShadow, v64);
      v52 = objc_alloc(MEMORY[0x277D755E8]);
      NanoCompassComplicationImageNamed(@"Compass/Legacy/Rectangular/Needle");
    }
    v53 = ;
    v56 = objc_msgSend_initWithImage_(v52, v54, v53, v55);
    needleView = v46->_needleView;
    v46->_needleView = v56;

    objc_msgSend_addSubview_(v46, v66, v46->_needleView, v67);
    v70 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v68, v208, v69, v207);
    v74 = objc_msgSend_CLKFontWithMonospacedNumbers(v70, v71, v72, v73);

    v75 = objc_opt_new();
    headingLabel = v46->_headingLabel;
    v46->_headingLabel = v75;

    objc_msgSend_setFont_(v46->_headingLabel, v77, v74, v78);
    objc_msgSend_setTextColor_(v46->_headingLabel, v79, *(&v209 + 1), v80);
    objc_msgSend_addSubview_(v46, v81, v46->_headingLabel, v82);
    v83 = objc_opt_new();
    directionLabel = v46->_directionLabel;
    v46->_directionLabel = v83;

    objc_msgSend_setFont_(v46->_directionLabel, v85, v74, v86);
    objc_msgSend_setTextColor_(v46->_directionLabel, v87, v210, v88);
    objc_msgSend_addSubview_(v46, v89, v46->_directionLabel, v90);
    v91 = objc_opt_new();
    bearingLabel = v46->_bearingLabel;
    v46->_bearingLabel = v91;

    objc_msgSend_setFont_(v46->_bearingLabel, v93, v74, v94);
    objc_msgSend_setTextColor_(v46->_bearingLabel, v95, *(&v210 + 1), v96);
    objc_msgSend_addSubview_(v46, v97, v46->_bearingLabel, v98);
    v99 = objc_opt_new();
    objc_msgSend_setMaskView_(v6->_wheelContainer, v100, v99, v101);

    v105 = objc_msgSend_maskView(v6->_wheelContainer, v102, v103, v104);
    objc_msgSend_setOpaque_(v105, v106, 0, v107);

    v111 = objc_msgSend_maskView(v6->_wheelContainer, v108, v109, v110);
    v115 = objc_msgSend_layer(v111, v112, v113, v114);

    v119 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v116, v117, v118);
    v123 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v120, v121, v122, 0.0, 0.0);
    v124 = v123;
    v223[0] = objc_msgSend_CGColor(v123, v125, v126, v127);
    v131 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v128, v129, v130, 0.0, 1.0);
    v132 = v131;
    v223[1] = objc_msgSend_CGColor(v131, v133, v134, v135);
    v137 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v136, v223, 2);
    objc_msgSend_setColors_(v119, v138, v137, v139);

    objc_msgSend_setStartPoint_(v119, v140, v141, v142, 0.0, 0.5);
    objc_msgSend_setEndPoint_(v119, v143, v144, v145, 1.0, 0.5);
    objc_msgSend_addSublayer_(v115, v146, v119, v147);
    v151 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v148, v149, v150);
    v155 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v152, v153, v154, 0.0, 1.0);
    v156 = v155;
    v160 = objc_msgSend_CGColor(v155, v157, v158, v159);
    objc_msgSend_setBackgroundColor_(v151, v161, v160, v162);

    objc_msgSend_addSublayer_(v115, v163, v151, v164);
    v168 = objc_msgSend_layer(MEMORY[0x277CD9EB0], v165, v166, v167);
    v172 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v169, v170, v171, 0.0, 1.0);
    v173 = v172;
    v222[0] = objc_msgSend_CGColor(v172, v174, v175, v176);
    v180 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v177, v178, v179, 0.0, 0.0);
    v181 = v180;
    v222[1] = objc_msgSend_CGColor(v180, v182, v183, v184);
    v186 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v185, v222, 2);
    objc_msgSend_setColors_(v168, v187, v186, v188);

    objc_msgSend_setStartPoint_(v168, v189, v190, v191, 0.0, 0.5);
    objc_msgSend_setEndPoint_(v168, v192, v193, v194, 1.0, 0.5);
    objc_msgSend_addSublayer_(v115, v195, v168, v196);

    sub_23BD33FEC(&v207);
  }

  return v6;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v9 = objc_msgSend_metadata(providerCopy, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"heading", v11);

  v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14, v15);
  isEqual = objc_msgSend_isEqual_(v12, v17, v16, v18);

  if (isEqual)
  {

    v12 = 0;
  }

  v23 = objc_msgSend_metadata(providerCopy, v20, v21, v22);
  v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"bearing", v25);

  v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28, v29);
  v33 = objc_msgSend_isEqual_(v26, v31, v30, v32);

  if (v33)
  {

    v26 = 0;
  }

  v37 = objc_msgSend_metadata(providerCopy, v34, v35, v36);
  v40 = objc_msgSend_objectForKeyedSubscript_(v37, v38, @"nodata", v39);
  v44 = objc_msgSend_BOOLValue(v40, v41, v42, v43);

  objc_msgSend_setHidden_(self->_headingLabel, v45, 0, v46);
  objc_msgSend_setHidden_(self->_directionLabel, v47, v44, v48);
  objc_msgSend_setHidden_(self->_bearingLabel, v49, v44, v50);
  directions = self->_directions;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = sub_23BD34510;
  v128[3] = &unk_278B94268;
  v129 = v44;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(directions, v52, v128, v53);
  angles = self->_angles;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = sub_23BD34520;
  v126[3] = &unk_278B94268;
  v127 = v44;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(angles, v55, v126, v56);
  if (v44)
  {
    self->_offset = 0.0;
    v60 = objc_msgSend_redactionLabel(self, v57, v58, v59);
    objc_msgSend_setAttributedText_(self->_headingLabel, v61, v60, v62);

    objc_msgSend_sizeToFit(self->_headingLabel, v63, v64, v65);
  }

  else
  {
    v66 = NanoCompassFormattedHeading(v12, 0, 0);
    objc_msgSend_heading(v12, v67, v68, v69);
    v74 = NanoCompassFormattedDirection(0, v70, v71, v72, v73);
    objc_msgSend_setText_(self->_headingLabel, v75, v66, v76);
    objc_msgSend_sizeToFit(self->_headingLabel, v77, v78, v79);
    objc_msgSend_setText_(self->_directionLabel, v80, v74, v81);
    objc_msgSend_sizeToFit(self->_directionLabel, v82, v83, v84);
    v85 = NanoCompassFormattedBearing(v26, 0);
    objc_msgSend_setText_(self->_bearingLabel, v86, v85, v87);
    objc_msgSend_sizeToFit(self->_bearingLabel, v88, v89, v90);
    isAccurate = objc_msgSend_isAccurate(v12, v91, v92, v93);
    v98 = 0.0;
    if (isAccurate)
    {
      objc_msgSend_heading(v12, v95, v96, v97, 0.0);
    }

    self->_offset = v98;
    objc_msgSend_bearing(v26, v95, v96, v97);
    self->_bearingOffset = vcvtmd_u64_f64(v99);
  }

  v103 = objc_opt_new();
  if (v26)
  {
    v104 = v44;
  }

  else
  {
    v104 = 1;
  }

  if ((v104 & 1) == 0)
  {
    objc_msgSend_heading(v12, v100, v101, v102);
    v107 = vcvtmd_u64_f64(v106);
    bearingOffset = self->_bearingOffset;
    v109 = bearingOffset - v107;
    if (bearingOffset >= v107)
    {
      if (v109 > 0xB4)
      {
        objc_msgSend_addIndexesInRange_(v103, v105, 0, v107);
        objc_msgSend_addIndexesInRange_(v103, v110, self->_bearingOffset, 359 - self->_bearingOffset);
        goto LABEL_21;
      }
    }

    else
    {
      if (v107 - bearingOffset <= 0xB4)
      {
        objc_msgSend_addIndexesInRange_(v103, v105, self->_bearingOffset, v107 - bearingOffset);
        goto LABEL_21;
      }

      objc_msgSend_addIndexesInRange_(v103, v105, v107, 359 - v107);
      v107 = 0;
      v109 = self->_bearingOffset;
    }

    objc_msgSend_addIndexesInRange_(v103, v105, v107, v109);
  }

LABEL_21:
  ticks = self->_ticks;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = sub_23BD34530;
  v124[3] = &unk_278B94248;
  v112 = v103;
  v125 = v112;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(ticks, v113, v124, v114);
  bearingTicks = self->_bearingTicks;
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = sub_23BD34598;
  v122[3] = &unk_278B94248;
  v123 = v112;
  v116 = v112;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bearingTicks, v117, v122, v118);
  objc_msgSend_setNeedsLayout(self, v119, v120, v121);
}

- (id)redactionLabel
{
  if (qword_27E1C4E18 != -1)
  {
    sub_23BD65B1C();
  }

  v3 = qword_27E1C4E10;

  return v3;
}

- (void)layoutSubviews
{
  v263.receiver = self;
  v263.super_class = CompassRichRectangularDialView;
  layoutSubviews = [(CompassRichRectangularDialView *)&v263 layoutSubviews];
  v262 = 0.0;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  sub_23BD36850(layoutSubviews, self->_device);
  *&v4 = sub_23BD36C0C(&v249, &qword_27E1C4E20).n128_u64[0];
  objc_msgSend_bounds(self, v5, v6, v7, v4);
  x = v264.origin.x;
  y = v264.origin.y;
  width = v264.size.width;
  height = v264.size.height;
  v243 = CGRectGetWidth(v264);
  v265.origin.x = x;
  v265.origin.y = y;
  v265.size.width = width;
  v245 = height;
  v265.size.height = height;
  v12 = CGRectGetHeight(v265);
  v242 = y;
  v13 = *&v251;
  v244 = *(&v250 + 1);
  IsRTL = NanoCompassComplicationLayoutIsRTL();
  rect = width;
  v235 = x;
  v236 = v12;
  objc_msgSend_frame(self->_headingLabel, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_msgSend_frame(self->_directionLabel, v26, v27, v28);
  v29 = v266.size.width;
  v237 = v266.origin.y;
  v238 = v266.origin.x;
  v240 = v266.size.height;
  v30 = CGRectGetWidth(v266);
  v31 = v262;
  v267.origin.x = v19;
  v267.origin.y = v21;
  v267.size.width = v23;
  v267.size.height = v25;
  v32 = CGRectGetWidth(v267);
  objc_msgSend__lastLineBaseline(self->_headingLabel, v33, v34, v35);
  if (IsRTL)
  {
    v40 = v243 - v13 - v30 - v31 - v32;
  }

  else
  {
    v40 = v13;
  }

  v41 = v244 - v39;
  objc_msgSend_setFrame_(self->_headingLabel, v36, v37, v38, v40, v244 - v39, v23, v25);
  v268.origin.x = v40;
  v268.origin.y = v41;
  v268.size.width = v23;
  v268.size.height = v25;
  v42 = CGRectGetWidth(v268);
  v43 = v262;
  v269.origin.y = v237;
  v269.origin.x = v238;
  v269.size.width = v29;
  v269.size.height = v240;
  v44 = CGRectGetWidth(v269);
  objc_msgSend__lastLineBaseline(self->_directionLabel, v45, v46, v47);
  if (IsRTL)
  {
    objc_msgSend_setFrame_(self->_directionLabel, v48, v49, v50, v243 - v44 - v13, v244 - v51, v29, v240);
  }

  else
  {
    objc_msgSend_setFrame_(self->_directionLabel, v48, v49, v50, v13 + v42 + v43, v244 - v51, v29, v240);
  }

  objc_msgSend_frame(self->_bearingLabel, v52, v53, v54);
  v62 = v60;
  v63 = v61;
  if ((IsRTL & 1) == 0)
  {
    v13 = v243 - CGRectGetWidth(*&v58) - v13;
  }

  objc_msgSend__lastLineBaseline(self->_bearingLabel, v55, v56, v57);
  objc_msgSend_setFrame_(self->_bearingLabel, v65, v66, v67, v13, v244 - v64, v62, v63);
  v74 = objc_msgSend_supportsGossamer(self, v68, v69, v70);
  needleView = self->_needleView;
  if (v74)
  {
    v76 = *(&v260 + 1);
    objc_msgSend_frame(needleView, v71, v72, v73);
    CLKRectCenteredXInRectForDevice();
    v77 = v270.origin.x;
    v78 = v270.size.width;
    v79 = v270.size.height;
    v80 = CGRectGetHeight(v270);
    objc_msgSend_setFrame_(self->_needleView, v81, v82, v83, v77, v236 - v76 - v80, v78, v79);
  }

  else
  {
    v84 = *&v261;
    objc_msgSend_frame(needleView, v71, v72, v73);
    CLKRectCenteredXInRectForDevice();
    v85 = v271.origin.x;
    v86 = v271.size.width;
    v87 = v271.size.height;
    v88 = CGRectGetHeight(v271);
    v89 = v236 - v84;
    objc_msgSend_setFrame_(self->_needleView, v90, v91, v92, v85, v89 - v88, v86, v87);
    objc_msgSend_frame(self->_needleShadow, v93, v94, v95);
    CLKRectCenteredXInRectForDevice();
    v96 = v272.origin.x;
    v97 = v272.size.width;
    v98 = v272.size.height;
    v99 = CGRectGetHeight(v272);
    objc_msgSend_setFrame_(self->_needleShadow, v100, v101, v102, v96, v89 - v99, v97, v98);
  }

  v273.origin.x = v235;
  v273.origin.y = v242;
  v273.size.width = rect;
  v273.size.height = v245;
  v103 = CGRectGetHeight(v273);
  v274.origin.x = v235;
  v274.origin.y = v242;
  v274.size.width = rect;
  v274.size.height = v245;
  v104 = CGRectGetWidth(v274);
  v275.origin.x = v235;
  v275.origin.y = v242;
  v275.size.width = rect;
  v275.size.height = v245;
  v105 = CGRectGetWidth(v275);
  v276.origin.x = v235;
  v276.origin.y = v242;
  v276.size.width = rect;
  v276.size.height = v245;
  v106 = CGRectGetHeight(v276);
  v110 = objc_msgSend_maskView(self->_wheelContainer, v107, v108, v109);
  objc_msgSend_setFrame_(v110, v111, v112, v113, 0.0, 0.0, v105, v106);

  v117 = objc_msgSend_maskView(self->_wheelContainer, v114, v115, v116);
  v121 = objc_msgSend_layer(v117, v118, v119, v120);
  v125 = objc_msgSend_sublayers(v121, v122, v123, v124);

  v128 = objc_msgSend_objectAtIndexedSubscript_(v125, v126, 0, v127);
  objc_msgSend_setFrame_(v128, v129, v130, v131, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 40.0, v103);
  v134 = objc_msgSend_objectAtIndexedSubscript_(v125, v132, 2, v133);
  objc_msgSend_setFrame_(v134, v135, v136, v137, v104 + -40.0, 0.0, 40.0, v103);
  v140 = objc_msgSend_objectAtIndexedSubscript_(v125, v138, 1, v139);
  objc_msgSend_frame(v128, v141, v142, v143);
  MaxX = CGRectGetMaxX(v277);
  objc_msgSend_frame(v128, v145, v146, v147);
  MinY = CGRectGetMinY(v278);
  objc_msgSend_frame(v134, v149, v150, v151);
  MinX = CGRectGetMinX(v279);
  objc_msgSend_frame(v128, v153, v154, v155);
  v156 = CGRectGetMaxX(v280);
  objc_msgSend_frame(v128, v157, v158, v159);
  v160 = CGRectGetHeight(v281);
  objc_msgSend_setFrame_(v140, v161, v162, v163, MaxX, MinY, MinX - v156, v160);
  v282.origin.x = v235;
  v282.origin.y = v242;
  v282.size.width = rect;
  v282.size.height = v245;
  MidX = CGRectGetMidX(v282);
  v239 = v140;
  v241 = v134;
  v165 = *&v253;
  v283.origin.x = v235;
  v283.origin.y = v242;
  v283.size.width = rect;
  v283.size.height = v245;
  v166 = CGRectGetWidth(v283);
  v167 = *&v260;
  recta = *(&v255 + 1);
  v168 = *(&v258 + 1);
  v248[1] = 3221225472;
  v248[0] = MEMORY[0x277D85DD0];
  v248[2] = sub_23BD35048;
  v248[3] = &unk_278B94290;
  v248[4] = self;
  *&v248[5] = MidX;
  *&v248[6] = v166 / v165;
  v169 = MEMORY[0x23EEBBDF0](v248);
  v170 = 0;
  v171 = v236 - v167;
  v172 = v236 - v168;
  do
  {
    v173 = v169[2](v169, v170);
    v176 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v174, v170, v175);
    v179 = objc_msgSend_objectForKeyedSubscript_(self->_directions, v177, v176, v178);
    v183 = v179;
    if (v179)
    {
      objc_msgSend_frame(v179, v180, v181, v182);
      v184 = v284.size.width;
      v185 = v284.size.height;
      v186 = CGRectGetWidth(v284);
      objc_msgSend__lastLineBaseline(v183, v187, v188, v189);
      objc_msgSend_setFrame_(v183, v191, v192, v193, v173 + v186 * -0.5, v171 - v190, v184, v185);
    }

    v194 = objc_msgSend_objectForKeyedSubscript_(self->_angles, v180, v176, v182);
    v198 = v194;
    if (v194)
    {
      objc_msgSend_frame(v194, v195, v196, v197);
      v199 = v285.size.width;
      v200 = v285.size.height;
      v201 = CGRectGetWidth(v285);
      objc_msgSend__lastLineBaseline(v198, v202, v203, v204);
      objc_msgSend_setFrame_(v198, v206, v207, v208, v173 + v201 * -0.5, recta - v205, v199, v200);
    }

    v209 = objc_msgSend_objectForKeyedSubscript_(self->_ticks, v195, v176, v197);
    v213 = v209;
    if (v209)
    {
      objc_msgSend_frame(v209, v210, v211, v212);
      v214 = v286.origin.y;
      v215 = v286.size.width;
      v216 = v286.size.height;
      v217 = v173 + CGRectGetWidth(v286) * -0.5;
      v287.origin.x = v217;
      v287.origin.y = v214;
      v287.size.width = v215;
      v287.size.height = v216;
      v218 = CGRectGetHeight(v287);
      objc_msgSend_setFrame_(v213, v219, v220, v221, v217, v172 - v218, v215, v216);
    }

    v222 = objc_msgSend_objectForKeyedSubscript_(self->_bearingTicks, v210, v176, v212);
    v226 = v222;
    if (v222)
    {
      objc_msgSend_frame(v222, v223, v224, v225);
      v227 = v288.origin.y;
      v228 = v288.size.width;
      v229 = v288.size.height;
      v230 = v173 + CGRectGetWidth(v288) * -0.5;
      v289.origin.x = v230;
      v289.origin.y = v227;
      v289.size.width = v228;
      v289.size.height = v229;
      v231 = CGRectGetHeight(v289);
      objc_msgSend_setFrame_(v226, v232, v233, v234, v230, v172 - v231, v228, v229);
    }

    ++v170;
  }

  while (v170 != 360);

  sub_23BD33FEC(&v249);
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, fraction);
  objc_msgSend__updateForMonochrome_(self, v6, v8, v7);
}

- (void)_updateForMonochrome:(id)monochrome
{
  v100[1] = *MEMORY[0x277D85DE8];
  monochromeCopy = monochrome;
  v6 = objc_msgSend__filtersForStyle_fraction_(self, v5, 2, monochromeCopy);
  v100[0] = self->_needleView;
  v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v100, 1);
  v87 = v6;
  objc_msgSend__applyFilters_toViews_(self, v8, v6, v86);
  v10 = objc_msgSend__filtersForStyle_fraction_(self, v9, 0, monochromeCopy);
  directionLabel = self->_directionLabel;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &directionLabel, 1);
  v16 = objc_msgSend_allValues(self->_directions, v13, v14, v15);
  v19 = objc_msgSend_arrayByAddingObjectsFromArray_(v12, v17, v16, v18);

  v85 = v19;
  objc_msgSend__applyFilters_toViews_(self, v20, v10, v19);
  v24 = objc_msgSend_allValues(self->_ticks, v21, v22, v23);
  objc_msgSend__applyFilters_toLayers_(self, v25, v10, v24);

  v27 = objc_msgSend__filtersForStyle_fraction_(self, v26, 1, monochromeCopy);
  v31 = objc_msgSend_allValues(self->_angles, v28, v29, v30);
  v84 = v27;
  objc_msgSend__applyFilters_toViews_(self, v32, v27, v31);
  v34 = objc_msgSend__filtersForStyle_fraction_(self, v33, 3, monochromeCopy);
  v38 = objc_msgSend_layer(self->_bearingLabel, v35, v36, v37);
  v98[0] = v38;
  v42 = objc_msgSend_layer(self->_headingLabel, v39, v40, v41);
  v98[1] = v42;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v98, 2);
  v48 = objc_msgSend_allValues(self->_bearingTicks, v45, v46, v47);
  v51 = objc_msgSend_arrayByAddingObjectsFromArray_(v44, v49, v48, v50);

  v53 = objc_msgSend__applyFilters_toLayers_(self, v52, v34, v51);
  if (monochromeCopy)
  {
    sub_23BD36850(v53, self->_device);
    sub_23BD36C0C(v88, &qword_27E1C4E20);
    v57 = v89;
    sub_23BD33FEC(v88);
    v61 = objc_msgSend_filterProvider(self, v58, v59, v60);
    v63 = objc_msgSend_colorForView_accented_(v61, v62, self, 1);

    objc_msgSend_doubleValue(monochromeCopy, v64, v65, v66);
    v67 = v57;
    v68 = v63;
    if (CLKFloatEqualsFloat())
    {
      v69 = v67;
    }

    else if (CLKFloatEqualsFloat())
    {
      v69 = v68;
    }

    else
    {
      v96 = 0;
      v97 = 0;
      v94 = 0;
      v95 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      objc_msgSend_getRed_green_blue_alpha_(v67, v72, &v97, &v96, &v95, &v94);
      objc_msgSend_getRed_green_blue_alpha_(v68, v73, &v93, &v92, &v91, &v90);
      CLKInterpolateBetweenFloatsClipped();
      v75 = v74;
      CLKInterpolateBetweenFloatsClipped();
      v77 = v76;
      CLKInterpolateBetweenFloatsClipped();
      v79 = v78;
      CLKInterpolateBetweenFloatsClipped();
      v69 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v80, v81, v82, v75, v77, v79, v83);
    }

    v71 = v69;
  }

  else
  {
    v67 = objc_msgSend_filterProvider(self, v54, v55, v56);
    v71 = objc_msgSend_colorForView_accented_(v67, v70, self, 1);
  }
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
  v9[2] = sub_23BD356C4;
  v9[3] = &unk_278B942B8;
  v10 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v9, v8);
}

- (void)_applyFilters:(id)filters toLayers:(id)layers
{
  filtersCopy = filters;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD35898;
  v9[3] = &unk_278B942E0;
  v10 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(layers, v7, v9, v8);
}

- (id)_newLabelWithFont:(id)font color:(id)color text:(id)text
{
  textCopy = text;
  colorCopy = color;
  fontCopy = font;
  v10 = objc_opt_new();
  objc_msgSend_setFont_(v10, v11, fontCopy, v12);

  objc_msgSend_setTextColor_(v10, v13, colorCopy, v14);
  objc_msgSend_setText_(v10, v15, textCopy, v16);

  objc_msgSend_sizeToFit(v10, v17, v18, v19);
  return v10;
}

- (void)_createDirections
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v40, &qword_27E1C4E20);
  v5 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v3, *(&v42 + 1), v4, *(&v41 + 1), *&v42);
  v6 = *(&v47 + 1);
  v7 = objc_opt_new();
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_23BD35E1C;
  v37[3] = &unk_278B94308;
  v37[4] = self;
  v8 = v5;
  v38 = v8;
  v9 = v6;
  v39 = v9;
  v10 = MEMORY[0x23EEBBDF0](v37);
  v11 = NanoCompassLocalizedString(@"N");
  v12 = (v10)[2](v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v13, v12, &unk_284E8ADD0);

  v14 = NanoCompassLocalizedString(@"NE");
  v15 = (v10)[2](v10, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v16, v15, &unk_284E8ADE8);

  v17 = NanoCompassLocalizedString(@"E");
  v18 = (v10)[2](v10, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v19, v18, &unk_284E8AE00);

  v20 = NanoCompassLocalizedString(@"SE");
  v21 = (v10)[2](v10, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v22, v21, &unk_284E8AE18);

  v23 = NanoCompassLocalizedString(@"S");
  v24 = (v10)[2](v10, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v25, v24, &unk_284E8AE30);

  v26 = NanoCompassLocalizedString(@"SW");
  v27 = (v10)[2](v10, v26);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v28, v27, &unk_284E8AE48);

  v29 = NanoCompassLocalizedString(@"W");
  v30 = (v10)[2](v10, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v31, v30, &unk_284E8AE60);

  v32 = NanoCompassLocalizedString(@"NW");
  v33 = (v10)[2](v10, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v34, v33, &unk_284E8AE78);

  directions = self->_directions;
  self->_directions = v7;
  v36 = v7;

  sub_23BD33FEC(v40);
}

- (void)_createAngles
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v28, &qword_27E1C4E20);
  v5 = objc_msgSend_systemFontOfSize_weight_design_(MEMORY[0x277CBBB08], v3, *(&v30 + 1), v4, *(&v29 + 1), *&v30);
  v6 = v31;
  v7 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23BD36084;
  v25[3] = &unk_278B94308;
  v25[4] = self;
  v24 = v5;
  v26 = v24;
  v23 = v6;
  v27 = v23;
  v8 = MEMORY[0x23EEBBDF0](v25);
  v9 = objc_opt_new();
  objc_msgSend_setNumberStyle_(v9, v10, 0, v11);
  v14 = -30;
  do
  {
    v15 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v14 + 30, v13);
    v18 = objc_msgSend_stringFromNumber_(v9, v16, v15, v17);
    v19 = (v8)[2](v8, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v20, v19, v15);

    v14 += 30;
  }

  while (v14 < 0x14A);
  angles = self->_angles;
  self->_angles = v7;
  v22 = v7;

  sub_23BD33FEC(v28);
}

- (void)_createTicks
{
  v60[3] = *MEMORY[0x277D85DE8];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  selfCopy = self;
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v51, &qword_27E1C4E20);
  v2 = v52;
  v3 = v53;
  v4 = v54;
  v50 = objc_opt_new();
  v8 = -5;
  do
  {
    HIDWORD(v9) = -286331153 * (v8 + 5);
    LODWORD(v9) = HIDWORD(v9);
    v10 = *(&v3 + 1);
    if ((v9 >> 1) >= 0x8888889)
    {
      if (-286331153 * (v8 + 5) >= 0x11111112)
      {
        v10 = *(&v2 + 1);
      }

      else
      {
        v10 = *&v3;
      }
    }

    v11 = objc_msgSend_layer(MEMORY[0x277CD9F90], v5, v6, v7, selfCopy);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, *&v2, 0.0);
    CGPathAddLineToPoint(Mutable, 0, *&v2, v10);
    objc_msgSend_setPath_(v11, v13, Mutable, v14);
    v15 = v4;
    v19 = objc_msgSend_CGColor(v4, v16, v17, v18);
    objc_msgSend_setStrokeColor_(v11, v20, v19, v21);
    objc_msgSend_setLineWidth_(v11, v22, v23, v24, *&v2);
    objc_msgSend_setBounds_(v11, v25, v26, v27, 0.0, 0.0, *&v2 + *&v2, v10);
    v59[0] = @"position";
    v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29, v30);
    v60[0] = v31;
    v59[1] = @"frame";
    v35 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33, v34);
    v60[1] = v35;
    v59[2] = @"bounds";
    v39 = objc_msgSend_null(MEMORY[0x277CBEB68], v36, v37, v38);
    v60[2] = v39;
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v60, v59, 3);
    objc_msgSend_setActions_(v11, v42, v41, v43);

    v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, v8 + 5, v45);
    objc_msgSend_setObject_forKeyedSubscript_(v50, v47, v11, v46);

    CGPathRelease(Mutable);
    v8 += 5;
  }

  while (v8 < 0x163);
  ticks = selfCopy->_ticks;
  selfCopy->_ticks = v50;

  sub_23BD33FEC(v51);
}

- (void)_createBearingTicks
{
  v66[4] = *MEMORY[0x277D85DE8];
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
  sub_23BD36850(self, self->_device);
  sub_23BD36C0C(v57, &qword_27E1C4E20);
  v2 = v58;
  v3 = v59;
  v56 = v61;
  v55 = objc_opt_new();
  v7 = -3;
  do
  {
    HIDWORD(v8) = -286331153 * (v7 + 3);
    LODWORD(v8) = HIDWORD(v8);
    v9 = *(&v3 + 1);
    if ((v8 >> 1) >= 0x8888889)
    {
      if (-286331153 * (v7 + 3) >= 0x11111112)
      {
        v9 = *(&v2 + 1);
      }

      else
      {
        v9 = *&v3;
      }
    }

    v10 = objc_msgSend_layer(MEMORY[0x277CD9F90], v4, v5, v6);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, *&v2, 0.0);
    CGPathAddLineToPoint(Mutable, 0, *&v2, v9);
    objc_msgSend_setPath_(v10, v12, Mutable, v13);
    v14 = v56;
    v18 = objc_msgSend_CGColor(v56, v15, v16, v17);
    objc_msgSend_setStrokeColor_(v10, v19, v18, v20);
    objc_msgSend_setLineWidth_(v10, v21, v22, v23, *&v2);
    objc_msgSend_setBounds_(v10, v24, v25, v26, 0.0, 0.0, *&v2 + *&v2, v9);
    v65[0] = @"position";
    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28, v29);
    v66[0] = v30;
    v65[1] = @"frame";
    v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v31, v32, v33);
    v66[1] = v34;
    v65[2] = @"bounds";
    v38 = objc_msgSend_null(MEMORY[0x277CBEB68], v35, v36, v37);
    v66[2] = v38;
    v65[3] = @"hidden";
    v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40, v41);
    v66[3] = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v66, v65, 4);
    objc_msgSend_setActions_(v10, v45, v44, v46);

    objc_msgSend_setHidden_(v10, v47, 1, v48);
    v51 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v49, v7 + 3, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v55, v52, v10, v51);

    CGPathRelease(Mutable);
    v7 += 3;
  }

  while (v7 < 0x165);
  bearingTicks = self->_bearingTicks;
  self->_bearingTicks = v55;

  sub_23BD33FEC(v57);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end