@interface WaypointRichComplicationTicksView
- (WaypointRichComplicationTicksView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle;
- (void)_updateTicksRotationTransform;
- (void)layoutSubviews;
- (void)setHighlightColor:(id)color;
- (void)setLargeTickColor:(id)color;
- (void)setLargeTicksTransformAngle:(double)angle;
- (void)setProgress:(float)progress;
- (void)setProgressDirection:(float)direction;
- (void)setSmallTickColor:(id)color;
@end

@implementation WaypointRichComplicationTicksView

- (WaypointRichComplicationTicksView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle
{
  height = tickSize.height;
  width = tickSize.width;
  v13 = size.height;
  v14 = size.width;
  v258.receiver = self;
  v258.super_class = WaypointRichComplicationTicksView;
  v19 = [(WaypointRichComplicationTicksView *)&v258 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v19)
  {
    v20 = objc_msgSend_clearColor(MEMORY[0x277D75348], v16, v17, v18);
    objc_msgSend_setBackgroundColor_(v19, v21, v20, v22);

    v19->_progress = 1.0;
    v19->_progressDirection = 1.0;
    v26 = objc_msgSend_layer(v19, v23, v24, v25);
    v19->_largeTickCount = count;
    v19->_smallTickCountPerLargeTick = tick;
    v27 = objc_opt_new();
    largeTicksReplicatorLayer = v19->_largeTicksReplicatorLayer;
    v19->_largeTicksReplicatorLayer = v27;

    v29 = *MEMORY[0x277CDA230];
    objc_msgSend_setFillMode_(v19->_largeTicksReplicatorLayer, v30, *MEMORY[0x277CDA230], v31);
    objc_msgSend_setInstanceCount_(v19->_largeTicksReplicatorLayer, v32, count, v33);
    v34 = v19->_largeTicksReplicatorLayer;
    v38 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v35, v36, v37);
    v39 = v38;
    v43 = objc_msgSend_CGColor(v39, v40, v41, v42);
    objc_msgSend_setInstanceColor_(v34, v44, v43, v45);

    v46 = v19->_largeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v257, angle, 0.0, 0.0, 1.0);
    objc_msgSend_setTransform_(v46, v47, &v257, v48);
    v49 = v19->_largeTicksReplicatorLayer;
    v53 = objc_msgSend_clearColor(MEMORY[0x277D75348], v50, v51, v52);
    v54 = v53;
    v58 = objc_msgSend_CGColor(v54, v55, v56, v57);
    objc_msgSend_setBackgroundColor_(v49, v59, v58, v60);

    objc_msgSend_addSublayer_(v26, v61, v19->_largeTicksReplicatorLayer, v62);
    v63 = objc_opt_new();
    largeTickLayer = v19->_largeTickLayer;
    v19->_largeTickLayer = v63;

    v65 = v19->_largeTickLayer;
    v69 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v66, v67, v68);
    v70 = v69;
    v74 = objc_msgSend_CGColor(v70, v71, v72, v73);
    objc_msgSend_setBackgroundColor_(v65, v75, v74, v76);

    objc_msgSend_setBounds_(v19->_largeTickLayer, v77, v78, v79, 0.0, 0.0, v14, v13);
    objc_msgSend_setCornerRadius_(v19->_largeTickLayer, v80, v81, v82, v14 * 0.5);
    objc_msgSend_addSublayer_(v19->_largeTicksReplicatorLayer, v83, v19->_largeTickLayer, v84);
    v85 = objc_opt_new();
    highlightedLargeTicksReplicatorLayer = v19->_highlightedLargeTicksReplicatorLayer;
    v19->_highlightedLargeTicksReplicatorLayer = v85;

    objc_msgSend_setFillMode_(v19->_highlightedLargeTicksReplicatorLayer, v87, v29, v88);
    objc_msgSend_setInstanceCount_(v19->_highlightedLargeTicksReplicatorLayer, v89, count, v90);
    v91 = v19->_highlightedLargeTicksReplicatorLayer;
    v95 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v92, v93, v94);
    v96 = v95;
    v100 = objc_msgSend_CGColor(v96, v97, v98, v99);
    objc_msgSend_setInstanceColor_(v91, v101, v100, v102);

    v103 = v19->_highlightedLargeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v257, angle, 0.0, 0.0, 1.0);
    objc_msgSend_setTransform_(v103, v104, &v257, v105);
    v106 = v19->_highlightedLargeTicksReplicatorLayer;
    v110 = objc_msgSend_clearColor(MEMORY[0x277D75348], v107, v108, v109);
    v111 = v110;
    v115 = objc_msgSend_CGColor(v111, v112, v113, v114);
    objc_msgSend_setBackgroundColor_(v106, v116, v115, v117);

    objc_msgSend_insertSublayer_above_(v26, v118, v19->_highlightedLargeTicksReplicatorLayer, v19->_largeTicksReplicatorLayer);
    v119 = objc_opt_new();
    highlightedLargeTickLayer = v19->_highlightedLargeTickLayer;
    v19->_highlightedLargeTickLayer = v119;

    v121 = v19->_highlightedLargeTickLayer;
    v125 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v122, v123, v124);
    v126 = v125;
    v130 = objc_msgSend_CGColor(v126, v127, v128, v129);
    objc_msgSend_setBackgroundColor_(v121, v131, v130, v132);

    objc_msgSend_setBounds_(v19->_highlightedLargeTickLayer, v133, v134, v135, 0.0, 0.0, v14, v13);
    objc_msgSend_setCornerRadius_(v19->_highlightedLargeTickLayer, v136, v137, v138, v14 * 0.5);
    objc_msgSend_addSublayer_(v19->_highlightedLargeTicksReplicatorLayer, v139, v19->_highlightedLargeTickLayer, v140);
    v19->_largeTickPositionY = v13 * 0.5;
    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v144 = objc_opt_new();
      smallTicksReplicatorLayer = v19->_smallTicksReplicatorLayer;
      v19->_smallTicksReplicatorLayer = v144;

      objc_msgSend_setFillMode_(v19->_smallTicksReplicatorLayer, v146, v29, v147);
      objc_msgSend_setInstanceCount_(v19->_smallTicksReplicatorLayer, v148, v19->_smallTickCountPerLargeTick * count, v149);
      v150 = v19->_smallTicksReplicatorLayer;
      v154 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v151, v152, v153);
      v155 = v154;
      v159 = objc_msgSend_CGColor(v155, v156, v157, v158);
      objc_msgSend_setInstanceColor_(v150, v160, v159, v161);

      v162 = v19->_smallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v257, angle, 0.0, 0.0, 1.0);
      objc_msgSend_setTransform_(v162, v163, &v257, v164);
      v165 = v19->_smallTicksReplicatorLayer;
      v169 = objc_msgSend_clearColor(MEMORY[0x277D75348], v166, v167, v168);
      v170 = v169;
      v174 = objc_msgSend_CGColor(v170, v171, v172, v173);
      objc_msgSend_setBackgroundColor_(v165, v175, v174, v176);

      v177 = objc_opt_new();
      smallTickLayer = v19->_smallTickLayer;
      v19->_smallTickLayer = v177;

      v179 = v19->_smallTickLayer;
      v183 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v180, v181, v182);
      v184 = v183;
      v188 = objc_msgSend_CGColor(v184, v185, v186, v187);
      objc_msgSend_setBackgroundColor_(v179, v189, v188, v190);

      objc_msgSend_setBounds_(v19->_smallTickLayer, v191, v192, v193, 0.0, 0.0, width, height);
      objc_msgSend_setCornerRadius_(v19->_smallTickLayer, v194, v195, v196, width * 0.5);
      objc_msgSend_addSublayer_(v19->_smallTicksReplicatorLayer, v197, v19->_smallTickLayer, v198);
      v19->_smallTickPositionY = height * 0.5;
      v199 = objc_opt_new();
      highlightedSmallTicksReplicatorLayer = v19->_highlightedSmallTicksReplicatorLayer;
      v19->_highlightedSmallTicksReplicatorLayer = v199;

      objc_msgSend_setFillMode_(v19->_highlightedSmallTicksReplicatorLayer, v201, v29, v202);
      objc_msgSend_setInstanceCount_(v19->_highlightedSmallTicksReplicatorLayer, v203, v19->_smallTickCountPerLargeTick * count, v204);
      v205 = v19->_highlightedSmallTicksReplicatorLayer;
      v209 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v206, v207, v208);
      v210 = v209;
      v214 = objc_msgSend_CGColor(v210, v211, v212, v213);
      objc_msgSend_setInstanceColor_(v205, v215, v214, v216);

      v217 = v19->_highlightedSmallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v257, angle, 0.0, 0.0, 1.0);
      objc_msgSend_setTransform_(v217, v218, &v257, v219);
      v220 = v19->_highlightedSmallTicksReplicatorLayer;
      v224 = objc_msgSend_clearColor(MEMORY[0x277D75348], v221, v222, v223);
      v225 = v224;
      v229 = objc_msgSend_CGColor(v225, v226, v227, v228);
      objc_msgSend_setBackgroundColor_(v220, v230, v229, v231);

      v232 = objc_opt_new();
      highlightedSmallTickLayer = v19->_highlightedSmallTickLayer;
      v19->_highlightedSmallTickLayer = v232;

      v234 = v19->_highlightedSmallTickLayer;
      v238 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v235, v236, v237);
      v239 = v238;
      v243 = objc_msgSend_CGColor(v239, v240, v241, v242);
      objc_msgSend_setBackgroundColor_(v234, v244, v243, v245);

      objc_msgSend_setBounds_(v19->_highlightedSmallTickLayer, v246, v247, v248, 0.0, 0.0, width, height);
      objc_msgSend_setCornerRadius_(v19->_highlightedSmallTickLayer, v249, v250, v251, width * 0.5);
      objc_msgSend_addSublayer_(v19->_highlightedSmallTicksReplicatorLayer, v252, v19->_highlightedSmallTickLayer, v253);
      objc_msgSend_insertSublayer_below_(v26, v254, v19->_highlightedSmallTicksReplicatorLayer, v19->_highlightedLargeTicksReplicatorLayer);
      objc_msgSend_insertSublayer_below_(v26, v255, v19->_smallTicksReplicatorLayer, v19->_largeTicksReplicatorLayer);
    }

    objc_msgSend_setLargeTicksTransformAngle_(v19, v141, v142, v143, range / count);
  }

  return v19;
}

- (void)setLargeTickColor:(id)color
{
  colorCopy = color;
  if (self->_largeTickColor != colorCopy)
  {
    v13 = colorCopy;
    objc_storeStrong(&self->_largeTickColor, color);
    largeTicksReplicatorLayer = self->_largeTicksReplicatorLayer;
    v10 = objc_msgSend_CGColor(self->_largeTickColor, v7, v8, v9);
    objc_msgSend_setInstanceColor_(largeTicksReplicatorLayer, v11, v10, v12);
    colorCopy = v13;
  }
}

- (void)setSmallTickColor:(id)color
{
  colorCopy = color;
  if (self->_smallTickColor != colorCopy)
  {
    v13 = colorCopy;
    objc_storeStrong(&self->_smallTickColor, color);
    smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
    v10 = objc_msgSend_CGColor(self->_smallTickColor, v7, v8, v9);
    objc_msgSend_setInstanceColor_(smallTicksReplicatorLayer, v11, v10, v12);
    colorCopy = v13;
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v20 = colorCopy;
    objc_storeStrong(&self->_highlightColor, color);
    highlightedLargeTicksReplicatorLayer = self->_highlightedLargeTicksReplicatorLayer;
    v10 = objc_msgSend_CGColor(self->_highlightColor, v7, v8, v9);
    objc_msgSend_setInstanceColor_(highlightedLargeTicksReplicatorLayer, v11, v10, v12);
    highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
    v17 = objc_msgSend_CGColor(self->_highlightColor, v14, v15, v16);
    objc_msgSend_setInstanceColor_(highlightedSmallTicksReplicatorLayer, v18, v17, v19);
    colorCopy = v20;
  }
}

- (void)setProgress:(float)progress
{
  progress = self->_progress;
  if (progress == progress)
  {
    return;
  }

  if (progress >= progress)
  {
    v7 = 0.05;
  }

  else
  {
    v7 = 0.25;
  }

  self->_progress = progress;
  largeTickCount = self->_largeTickCount;
  largeTickLayer = self->_largeTickLayer;
  if (!largeTickCount)
  {
    objc_msgSend_setHidden_(largeTickLayer, a2, 1, v3);
    highlightedLargeTickLayer = self->_highlightedLargeTickLayer;
    goto LABEL_10;
  }

  objc_msgSend_setHidden_(largeTickLayer, a2, 0, v3);
  objc_msgSend_setInstanceCount_(self->_largeTicksReplicatorLayer, v10, largeTickCount, v11);
  highlightedLargeTickLayer = self->_highlightedLargeTickLayer;
  if (self->_progress == 0.0)
  {
LABEL_10:
    objc_msgSend_setHidden_(highlightedLargeTickLayer, v12, 1, v13);
    goto LABEL_11;
  }

  objc_msgSend_setHidden_(highlightedLargeTickLayer, v12, 0, v13);
  objc_msgSend_setInstanceCount_(self->_highlightedLargeTicksReplicatorLayer, v15, (((progress * largeTickCount) + 1.0) + 0.1), v16);
LABEL_11:
  if (self->_smallTicksReplicatorLayer)
  {
    v19 = self->_smallTickCountPerLargeTick * self->_largeTickCount;
    smallTickLayer = self->_smallTickLayer;
    if (v19)
    {
      objc_msgSend_setHidden_(smallTickLayer, v17, 0, v18);
      objc_msgSend_setInstanceCount_(self->_smallTicksReplicatorLayer, v21, v19, v22);
    }

    else
    {
      objc_msgSend_setHidden_(smallTickLayer, v17, 1, v18);
    }
  }

  if (self->_highlightedSmallTicksReplicatorLayer)
  {
    v23 = self->_progress;
    v24 = (v7 + (((v23 * self->_largeTickCount) * self->_smallTickCountPerLargeTick) + 1.0));
    highlightedSmallTickLayer = self->_highlightedSmallTickLayer;
    if (!v24 || v23 == 0.0)
    {

      objc_msgSend_setHidden_(highlightedSmallTickLayer, v17, 1, v18);
    }

    else
    {
      objc_msgSend_setHidden_(highlightedSmallTickLayer, v17, 0, v18);
      highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;

      objc_msgSend_setInstanceCount_(highlightedSmallTicksReplicatorLayer, v26, v24, v27);
    }
  }
}

- (void)setProgressDirection:(float)direction
{
  v3 = direction < 0.0;
  v4 = 1.0;
  if (v3)
  {
    v4 = -1.0;
  }

  if (self->_progressDirection != v4)
  {
    self->_progressDirection = v4;
    MEMORY[0x2821F9670]();
  }
}

- (void)setLargeTicksTransformAngle:(double)angle
{
  if (self->_largeTicksTransformAngle != angle)
  {
    self->_largeTicksTransformAngle = angle;
    MEMORY[0x2821F9670]();
  }
}

- (void)_updateTicksRotationTransform
{
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], a2, 1, v2);
  v4 = self->_largeTicksTransformAngle * self->_progressDirection;
  largeTicksReplicatorLayer = self->_largeTicksReplicatorLayer;
  CATransform3DMakeRotation(&v19, v4, 0.0, 0.0, 1.0);
  objc_msgSend_setInstanceTransform_(largeTicksReplicatorLayer, v6, &v19, v7);
  highlightedLargeTicksReplicatorLayer = self->_highlightedLargeTicksReplicatorLayer;
  CATransform3DMakeRotation(&v19, v4, 0.0, 0.0, 1.0);
  objc_msgSend_setInstanceTransform_(highlightedLargeTicksReplicatorLayer, v9, &v19, v10);
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    CATransform3DMakeRotation(&v19, v4 / self->_smallTickCountPerLargeTick, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(smallTicksReplicatorLayer, v14, &v19, v15);
  }

  highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
  if (highlightedSmallTicksReplicatorLayer)
  {
    CATransform3DMakeRotation(&v19, v4 / self->_smallTickCountPerLargeTick, 0.0, 0.0, 1.0);
    objc_msgSend_setInstanceTransform_(highlightedSmallTicksReplicatorLayer, v17, &v19, v18);
  }

  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v11, 0, v12);
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = WaypointRichComplicationTicksView;
  [(WaypointRichComplicationTicksView *)&v55 layoutSubviews];
  v6 = objc_msgSend_layer(self, v3, v4, v5);
  objc_msgSend_bounds(v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v14 * 0.5;
  v19 = v16 * 0.5;
  objc_msgSend_setPosition_(self->_largeTicksReplicatorLayer, v20, v21, v22, v14 * 0.5, v16 * 0.5);
  objc_msgSend_setBounds_(self->_largeTicksReplicatorLayer, v23, v24, v25, v11, v13, v15, v17);
  objc_msgSend_setPosition_(self->_largeTickLayer, v26, v27, v28, v18, self->_largeTickPositionY);
  objc_msgSend_setPosition_(self->_highlightedLargeTicksReplicatorLayer, v29, v30, v31, v18, v19);
  objc_msgSend_setBounds_(self->_highlightedLargeTicksReplicatorLayer, v32, v33, v34, v11, v13, v15, v17);
  objc_msgSend_setPosition_(self->_highlightedLargeTickLayer, v35, v36, v37, v18, self->_largeTickPositionY);
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    objc_msgSend_setPosition_(smallTicksReplicatorLayer, v38, v39, v40, v18, v19);
    objc_msgSend_setBounds_(self->_smallTicksReplicatorLayer, v42, v43, v44, v11, v13, v15, v17);
    objc_msgSend_setPosition_(self->_smallTickLayer, v45, v46, v47, v18, self->_smallTickPositionY);
  }

  highlightedSmallTicksReplicatorLayer = self->_highlightedSmallTicksReplicatorLayer;
  if (highlightedSmallTicksReplicatorLayer)
  {
    objc_msgSend_setPosition_(highlightedSmallTicksReplicatorLayer, v38, v39, v40, v18, v19);
    objc_msgSend_setBounds_(self->_highlightedSmallTicksReplicatorLayer, v49, v50, v51, v11, v13, v15, v17);
    objc_msgSend_setPosition_(self->_highlightedSmallTickLayer, v52, v53, v54, v18, self->_smallTickPositionY);
  }
}

@end