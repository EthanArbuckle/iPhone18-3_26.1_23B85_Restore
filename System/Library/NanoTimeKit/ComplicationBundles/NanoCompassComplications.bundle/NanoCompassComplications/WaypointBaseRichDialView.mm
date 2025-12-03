@interface WaypointBaseRichDialView
- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device;
- (UIImageView)waypointView;
- (UIView)needleView;
- (WaypointRichComplicationTicksView)ticksView;
- (id)_defaultSmartWaypointImage;
- (id)_defaultWaypointImage;
- (id)_deletedWaypointImage;
- (id)_pointSizeConfigurationForSymbol:(id)symbol;
- (id)_tickColorForWaypointColor:(id)color;
- (id)_waypointImageForSymbol:(id)symbol;
- (id)_waypointPrivacyRedactionImage;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)monochromeAccentViews;
- (void)_configureSampleTemplateWithImageProvider:(id)provider;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation WaypointBaseRichDialView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v44.receiver = self;
  v44.super_class = WaypointBaseRichDialView;
  v5 = [(WaypointBaseRichDialView *)&v44 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 69);
    *(v5 + 69) = v6;

    objc_msgSend__layoutConstantsForDevice_(v5, v8, deviceCopy, v9);
    *(v5 + 472) = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
    *(v5 + 67) = v43;
    *(v5 + 504) = v11;
    *(v5 + 520) = v12;
    *(v5 + 488) = v10;
    v15 = objc_msgSend__symbolSizeAdjustmentsForDevice_(v5, v13, deviceCopy, v14);
    v16 = *(v5 + 68);
    *(v5 + 68) = v15;

    v20 = objc_msgSend_needleView(v5, v17, v18, v19);
    objc_msgSend_addSubview_(v5, v21, v20, v22);

    v26 = objc_msgSend_ticksView(v5, v23, v24, v25);
    v30 = objc_msgSend_needleView(v5, v27, v28, v29);
    objc_msgSend_insertSubview_belowSubview_(v5, v31, v26, v30);

    v35 = objc_msgSend_waypointView(v5, v32, v33, v34);
    objc_msgSend_addSubview_(v5, v36, v35, v37);
  }

  return v5;
}

- (UIView)needleView
{
  needleView = self->_needleView;
  if (!needleView)
  {
    v4 = NanoCompassWaypointDefaultColor();
    v8 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v5, v6, v7, self->_layoutConstants.needleHeight);
    v10 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v9, @"triangle.fill", v8);
    v12 = objc_msgSend_imageWithTintColor_renderingMode_(v10, v11, v4, 1);

    v13 = objc_alloc(MEMORY[0x277D755E8]);
    v16 = objc_msgSend_initWithImage_(v13, v14, v12, v15);
    needleImageView = self->_needleImageView;
    self->_needleImageView = v16;

    dialDiameter = self->_layoutConstants.dialDiameter;
    v19 = objc_alloc(MEMORY[0x277D75D18]);
    v23 = objc_msgSend_initWithFrame_(v19, v20, v21, v22, 0.0, 0.0, dialDiameter, dialDiameter);
    v24 = self->_needleView;
    self->_needleView = v23;

    objc_msgSend_addSubview_(self->_needleView, v25, self->_needleImageView, v26);
    UIRectGetCenter();
    objc_msgSend_setCenter_(self->_needleImageView, v27, v28, v29);

    needleView = self->_needleView;
  }

  return needleView;
}

- (WaypointRichComplicationTicksView)ticksView
{
  ticksView = self->_ticksView;
  if (!ticksView)
  {
    v4 = [WaypointRichComplicationTicksView alloc];
    started = objc_msgSend_initWithLargeTickCount_smallTickCountPerLargeTick_largeTickSize_smallTickSize_dialRange_startAngle_(v4, v5, 4, 10, self->_layoutConstants.largeTickSize.width, self->_layoutConstants.largeTickSize.height, self->_layoutConstants.smallTickSize.width, self->_layoutConstants.smallTickSize.height, 6.28318531, 0.0);
    v7 = self->_ticksView;
    self->_ticksView = started;

    v11 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v8, v9, v10, 0.701960784, 1.0);
    objc_msgSend_setLargeTickColor_(self->_ticksView, v12, v11, v13);

    v17 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v14, v15, v16);
    v21 = objc_msgSend_colorWithAlphaComponent_(v17, v18, v19, v20, 0.400000006);
    objc_msgSend_setSmallTickColor_(self->_ticksView, v22, v21, v23);

    objc_msgSend_setFrame_(self->_ticksView, v24, v25, v26, 0.0, 0.0, self->_layoutConstants.dialDiameter, self->_layoutConstants.dialDiameter);
    ticksView = self->_ticksView;
  }

  return ticksView;
}

- (UIImageView)waypointView
{
  waypointView = self->_waypointView;
  if (!waypointView)
  {
    v4 = self->_layoutConstants.symbolSize - self->_layoutConstants.symbolMargin;
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = objc_msgSend_initWithFrame_(v5, v6, v7, v8, 0.0, 0.0, v4, v4);
    v10 = self->_waypointView;
    self->_waypointView = v9;

    objc_msgSend_setContentMode_(self->_waypointView, v11, 4, v12);
    v16 = objc_msgSend__defaultWaypointImage(self, v13, v14, v15);
    objc_msgSend_setImage_(self->_waypointView, v17, v16, v18);

    waypointView = self->_waypointView;
  }

  return waypointView;
}

- (id)monochromeAccentViews
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_needleView(self, a2, v2, v3);
  v9 = objc_msgSend_ticksView(self, v6, v7, v8, v5);
  v17[1] = v9;
  v13 = objc_msgSend_waypointView(self, v10, v11, v12);
  v17[2] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 3);

  return v15;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  v253.receiver = self;
  v253.super_class = WaypointBaseRichDialView;
  [(NanoCompassBaseRichView *)&v253 configureWithImageProvider:providerCopy reason:reason];
  v10 = objc_msgSend_metadata(providerCopy, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"showSampleData", v12);
  v17 = objc_msgSend_BOOLValue(v13, v14, v15, v16);

  if (!v17)
  {
    v21 = objc_msgSend_metadata(providerCopy, v18, v19, v20);
    v24 = objc_msgSend_objectForKeyedSubscript_(v21, v22, @"heading", v23);

    v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v25, v26, v27);
    isEqual = objc_msgSend_isEqual_(v24, v29, v28, v30);

    if (isEqual)
    {

      v24 = 0;
    }

    v35 = objc_msgSend_metadata(providerCopy, v32, v33, v34);
    v38 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"waypoint", v37);

    v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40, v41);
    v45 = objc_msgSend_isEqual_(v38, v43, v42, v44);

    if (v45)
    {

      v38 = 0;
    }

    v49 = objc_msgSend_metadata(providerCopy, v46, v47, v48);
    v52 = objc_msgSend_objectForKeyedSubscript_(v49, v50, @"location", v51);

    v56 = objc_msgSend_null(MEMORY[0x277CBEB68], v53, v54, v55);
    v59 = objc_msgSend_isEqual_(v52, v57, v56, v58);

    v250 = v24;
    if (v59)
    {

      v52 = 0;
    }

    v63 = objc_msgSend_metadata(providerCopy, v60, v61, v62);
    v66 = objc_msgSend_objectForKeyedSubscript_(v63, v64, @"nodata", v65);
    v70 = objc_msgSend_BOOLValue(v66, v67, v68, v69);

    v74 = objc_msgSend_metadata(providerCopy, v71, v72, v73);
    v77 = objc_msgSend_objectForKeyedSubscript_(v74, v75, @"inactive", v76);
    v249 = objc_msgSend_BOOLValue(v77, v78, v79, v80);

    v84 = objc_msgSend_metadata(providerCopy, v81, v82, v83);
    v87 = objc_msgSend_objectForKeyedSubscript_(v84, v85, @"alwayson", v86);
    v91 = objc_msgSend_BOOLValue(v87, v88, v89, v90);

    v95 = objc_msgSend_metadata(providerCopy, v92, v93, v94);
    v98 = objc_msgSend_objectForKeyedSubscript_(v95, v96, @"smart", v97);
    v102 = objc_msgSend_BOOLValue(v98, v99, v100, v101);

    v106 = objc_msgSend_metadata(providerCopy, v103, v104, v105);
    v109 = objc_msgSend_objectForKeyedSubscript_(v106, v107, @"showPrivacyRedaction", v108);
    v113 = objc_msgSend_BOOLValue(v109, v110, v111, v112);

    if (v70)
    {
      goto LABEL_17;
    }

    v117 = v249;
    if (!v38)
    {
      v117 = 1;
    }

    if (!v250)
    {
      v117 = 1;
    }

    if (!v52)
    {
      v117 = 1;
    }

    if ((v117 | v91))
    {
LABEL_17:
      v118 = objc_msgSend_needleView(self, v114, v115, v116);
      objc_msgSend_setHidden_(v118, v119, 1, v120);

      v124 = objc_msgSend_ticksView(self, v121, v122, v123);
      objc_msgSend_setProgress_(v124, v125, v126, v127, 0.0);

      if (!v38)
      {
        v131 = v250;
        if (v102)
        {
          v132 = objc_msgSend__defaultSmartWaypointImage(self, v128, v129, v130);
        }

        else
        {
          if (v113)
          {
            objc_msgSend__waypointPrivacyRedactionImage(self, v128, v129, v130);
          }

          else
          {
            objc_msgSend__deletedWaypointImage(self, v128, v129, v130);
          }
          v132 = ;
        }

        v239 = v132;
        v240 = objc_msgSend_waypointView(self, v133, v134, v135);
        objc_msgSend_setImage_(v240, v241, v239, v242);

        goto LABEL_40;
      }
    }

    else
    {
      v136 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v114, v115, v116, self->_layoutConstants.needleHeight);
      v138 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v137, @"triangle.fill", v136);
      v142 = objc_msgSend_labelColor(v38, v139, v140, v141);
      v144 = objc_msgSend_imageWithTintColor_renderingMode_(v138, v143, v142, 1);

      objc_msgSend_setImage_(self->_needleImageView, v145, v144, v146);
      v150 = objc_msgSend_needleView(self, v147, v148, v149);
      objc_msgSend_setHidden_(v150, v151, 0, v152);

      v156 = objc_msgSend_rawLocation(v52, v153, v154, v155);
      v160 = objc_msgSend_location(v38, v157, v158, v159);
      v161 = bearingBetweenLocationsInDegree(v156, v160);

      objc_msgSend_heading(v250, v162, v163, v164);
      v169 = v161 - v168;
      if (v169 < 0.0)
      {
        v169 = v169 + 360.0;
      }

      v170 = v169;
      v171 = llroundf(v170);
      v172 = objc_msgSend_ticksView(self, v165, v166, v167);
      v177 = v172;
      if (v171 > 180)
      {
        LODWORD(v176) = -1.0;
        objc_msgSend_setProgressDirection_(v172, v173, v174, v175, v176);

        v181 = 360 - v171;
      }

      else
      {
        LODWORD(v176) = 1.0;
        objc_msgSend_setProgressDirection_(v172, v173, v174, v175, v176);

        v181 = v171;
      }

      v182 = v181 / 360.0;
      v183 = objc_msgSend_ticksView(self, v178, v179, v180);
      *&v184 = v182;
      objc_msgSend_setProgress_(v183, v185, v186, v187, v184);

      v191 = objc_msgSend_labelColor(v38, v188, v189, v190);
      v194 = objc_msgSend__tickColorForWaypointColor_(self, v192, v191, v193);
      v198 = objc_msgSend_ticksView(self, v195, v196, v197);
      objc_msgSend_setHighlightColor_(v198, v199, v194, v200);

      CGAffineTransformMakeRotation(&v252, v171 * 3.14159265 / 180.0);
      v204 = objc_msgSend_needleView(self, v201, v202, v203);
      v251 = v252;
      objc_msgSend_setTransform_(v204, v205, &v251, v206);
    }

    v207 = objc_msgSend_symbol(v38, v128, v129, v130);

    v131 = v250;
    if (v207)
    {
      v214 = objc_msgSend_labelColor(v38, v208, v209, v210);
      if (v250)
      {
        v215 = v249;
      }

      else
      {
        v215 = 1;
      }

      if ((v215 & 1) != 0 || !v52)
      {
        v216 = NanoCompassWaypointDefaultColor();

        v214 = v216;
      }

      v217 = objc_msgSend_symbol(v38, v211, v212, v213);
      v220 = objc_msgSend__waypointImageForSymbol_(self, v218, v217, v219);

      v222 = objc_msgSend_imageWithTintColor_renderingMode_(v220, v221, v214, 1);
      v226 = objc_msgSend_waypointView(self, v223, v224, v225);
      objc_msgSend_setImage_(v226, v227, v222, v228);

      goto LABEL_41;
    }

    v229 = objc_msgSend__defaultWaypointImage(self, v208, v209, v210);
    v233 = objc_msgSend_waypointView(self, v230, v231, v232);
    objc_msgSend_setImage_(v233, v234, v229, v235);

LABEL_40:
    v214 = objc_msgSend_ticksView(self, v236, v237, v238);
    objc_msgSend_setProgress_(v214, v243, v244, v245, 0.0);
LABEL_41:

    objc_msgSend_setNeedsLayout(self, v246, v247, v248);
    goto LABEL_42;
  }

  objc_msgSend__configureSampleTemplateWithImageProvider_(self, v18, providerCopy, v20);
LABEL_42:
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = WaypointBaseRichDialView;
  [(WaypointBaseRichDialView *)&v31 layoutSubviews];
  objc_msgSend_bounds(self, v3, v4, v5);
  UIRectGetCenter();
  v7 = v6;
  v9 = v8;
  v13 = objc_msgSend_needleView(self, v10, v11, v12);
  objc_msgSend_setCenter_(v13, v14, v15, v16, v7, v9);

  v20 = objc_msgSend_ticksView(self, v17, v18, v19);
  objc_msgSend_setCenter_(v20, v21, v22, v23, v7, v9);

  v27 = objc_msgSend_waypointView(self, v24, v25, v26);
  objc_msgSend_setCenter_(v27, v28, v29, v30, v7, v9);
}

- (id)_pointSizeConfigurationForSymbol:(id)symbol
{
  v5 = objc_msgSend_valueForKey_(self->_symbolSizeAdjustments, a2, symbol, v3);
  v9 = v5;
  if (v5)
  {
    objc_msgSend_doubleValue(v5, v6, v7, v8);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v6, v7, v8, v10 + self->_layoutConstants.symbolSize);

  return v11;
}

- (void)_configureSampleTemplateWithImageProvider:(id)provider
{
  providerCopy = provider;
  v8 = objc_msgSend_metadata(providerCopy, v5, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"symbol", v10);

  v15 = objc_msgSend_metadata(providerCopy, v12, v13, v14);

  v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"color", v17);

  v22 = objc_msgSend_configurationWithPointSize_(MEMORY[0x277D755D0], v19, v20, v21, self->_layoutConstants.needleHeight);
  v24 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v23, @"triangle.fill", v22);
  v26 = objc_msgSend_imageWithTintColor_renderingMode_(v24, v25, v18, 1);

  objc_msgSend_setImage_(self->_needleImageView, v27, v26, v28);
  v32 = objc_msgSend_needleView(self, v29, v30, v31);
  objc_msgSend_setHidden_(v32, v33, 0, v34);

  v38 = objc_msgSend_ticksView(self, v35, v36, v37);
  LODWORD(v39) = 1.0;
  objc_msgSend_setProgressDirection_(v38, v40, v41, v42, v39);

  v46 = objc_msgSend_ticksView(self, v43, v44, v45);
  LODWORD(v47) = 0.125;
  objc_msgSend_setProgress_(v46, v48, v49, v50, v47);

  v53 = objc_msgSend__tickColorForWaypointColor_(self, v51, v18, v52);
  v57 = objc_msgSend_ticksView(self, v54, v55, v56);
  objc_msgSend_setHighlightColor_(v57, v58, v53, v59);

  CGAffineTransformMakeRotation(&v78, 0.785398163);
  v63 = objc_msgSend_needleView(self, v60, v61, v62);
  v77 = v78;
  objc_msgSend_setTransform_(v63, v64, &v77, v65);

  v68 = objc_msgSend__waypointImageForSymbol_(self, v66, v11, v67);
  v70 = objc_msgSend_imageWithTintColor_renderingMode_(v68, v69, v18, 1);
  v74 = objc_msgSend_waypointView(self, v71, v72, v73);
  objc_msgSend_setImage_(v74, v75, v70, v76);
}

- (id)_tickColorForWaypointColor:(id)color
{
  colorCopy = color;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = colorCopy;
  if (objc_msgSend_getHue_saturation_brightness_alpha_(colorCopy, v4, &v13, &v12, &v11, &v10))
  {
    v8 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(MEMORY[0x277D75348], v5, v6, v7, v13, v12 * 0.8, v11 * 0.9, v10);
  }

  return v8;
}

- (id)_defaultWaypointImage
{
  defaultWaypointImage = self->_defaultWaypointImage;
  if (!defaultWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor();
    v8 = objc_msgSend_idealizedWaypoint(NCWaypoint, v5, v6, v7);
    v12 = objc_msgSend_symbol(v8, v9, v10, v11);

    v15 = objc_msgSend__waypointImageForSymbol_(self, v13, v12, v14);
    v17 = objc_msgSend_imageWithTintColor_renderingMode_(v15, v16, v4, 1);
    v18 = self->_defaultWaypointImage;
    self->_defaultWaypointImage = v17;

    defaultWaypointImage = self->_defaultWaypointImage;
  }

  return defaultWaypointImage;
}

- (id)_defaultSmartWaypointImage
{
  defaultSmartWaypointImage = self->_defaultSmartWaypointImage;
  if (!defaultSmartWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor();
    v7 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.2.fill", v6);
    v9 = objc_msgSend_imageWithTintColor_renderingMode_(v7, v8, v4, 1);
    v10 = self->_defaultSmartWaypointImage;
    self->_defaultSmartWaypointImage = v9;

    defaultSmartWaypointImage = self->_defaultSmartWaypointImage;
  }

  return defaultSmartWaypointImage;
}

- (id)_deletedWaypointImage
{
  deletedWaypointImage = self->_deletedWaypointImage;
  if (!deletedWaypointImage)
  {
    v4 = NanoCompassWaypointDefaultColor();
    v7 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.slash.fill", v6);
    v9 = objc_msgSend_imageWithTintColor_renderingMode_(v7, v8, v4, 1);
    v10 = self->_deletedWaypointImage;
    self->_deletedWaypointImage = v9;

    deletedWaypointImage = self->_deletedWaypointImage;
  }

  return deletedWaypointImage;
}

- (id)_waypointPrivacyRedactionImage
{
  waypointPrivacyRedactionImage = self->_waypointPrivacyRedactionImage;
  if (!waypointPrivacyRedactionImage)
  {
    v4 = NanoCompassWaypointDefaultColor();
    v7 = objc_msgSend__waypointImageForSymbol_(self, v5, @"pin.point.of.interest.fill", v6);
    v9 = objc_msgSend_imageWithTintColor_renderingMode_(v7, v8, v4, 1);
    v10 = self->_waypointPrivacyRedactionImage;
    self->_waypointPrivacyRedactionImage = v9;

    waypointPrivacyRedactionImage = self->_waypointPrivacyRedactionImage;
  }

  return waypointPrivacyRedactionImage;
}

- (id)_waypointImageForSymbol:(id)symbol
{
  symbolCopy = symbol;
  v7 = objc_msgSend_objectForKey_(self->_waypointSymbolCache, v5, symbolCopy, v6);
  v10 = v7;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v12 = objc_msgSend__pointSizeConfigurationForSymbol_(self, v8, symbolCopy, v9);
    v11 = objc_msgSend__systemImageNamed_withConfiguration_(MEMORY[0x277D755B8], v13, symbolCopy, v12);
    objc_msgSend_setObject_forKey_(self->_waypointSymbolCache, v14, v11, symbolCopy);
  }

  return v11;
}

- ($F19C7D1BACA455C0923872420114D4F8)_layoutConstantsForDevice:(SEL)device
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  retstr->var6 = 0.0;
  *&retstr->var3.height = 0u;
  *&retstr->var4.height = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return result;
}

@end