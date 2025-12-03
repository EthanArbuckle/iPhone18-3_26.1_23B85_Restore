@interface CLLocationButtonDrawing
- (CGSize)buttonPadding;
- (CGSize)drawingSize;
- (CGSize)engravedSize;
- (CGSize)neededSize;
- (CLLocationButtonDrawing)initWithStyle:(id)style tag:(id)tag remote:(BOOL)remote;
- (void)_computeImageMetrics;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation CLLocationButtonDrawing

- (CLLocationButtonDrawing)initWithStyle:(id)style tag:(id)tag remote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  v17.receiver = self;
  v17.super_class = CLLocationButtonDrawing;
  v11 = [(CLLocationButtonDrawing *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, style);
    objc_storeStrong(&v12->_currentTag, tag);
    v12->_remote = remote;
    objc_msgSend__computeImageMetrics(v12, v13, v14, v15);
  }

  return v12;
}

- (CGSize)drawingSize
{
  objc_msgSend_buttonWidth(self->_currentTag, a2, v2, v3);
  v6 = v5.n128_f64[0];
  objc_msgSend_neededSize(self, v7, v5, v8);
  if (v6 < v10.n128_f64[0])
  {
    v6 = v10.n128_f64[0];
  }

  objc_msgSend_buttonHeight(self->_currentTag, v9, v10, v11);
  v13 = v12.n128_f64[0];
  objc_msgSend_neededSize(self, v14, v12, v15);
  if (v13 >= v16)
  {
    v16 = v13;
  }

  v17 = v6;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  CGContextSaveGState(context);
  objc_msgSend_drawingSize(self, v6, v7, v8);
  v10 = v9.n128_f64[0];
  v12 = v11.n128_f64[0];
  v14 = objc_msgSend_backgroundColor(self->_currentTag, v13, v9, v11);
  v15 = v14;
  v19 = objc_msgSend_CGColor(v15, v16, v17, v18);
  CGContextSetFillColorWithColor(context, v19);

  objc_msgSend_cornerRadius(self->_currentTag, v20, v21, v22);
  v24 = v23.n128_f64[0];
  objc_msgSend_cornerRadius(self->_currentTag, v25, v23, v26);
  v28 = v27;
  v108.origin.x = 0.0;
  v108.origin.y = 0.0;
  v108.size.width = v10;
  v108.size.height = v12;
  v29 = CGPathCreateWithRoundedRect(v108, v24, v28, 0);
  CGContextAddPath(context, v29);
  CGPathRelease(v29);
  CGContextFillPath(context);
  v30 = v10 * 0.5;
  objc_msgSend_engravedSize(self, v31, v32, v33);
  v35 = v34.n128_f64[0];
  objc_msgSend_engravedSize(self, v36, v34, v37);
  v39 = v38.n128_f64[0];
  v42 = objc_msgSend_textDrawing(self, v40, v38, v41);
  objc_msgSend_drawingSize(v42, v43, v44, v45);
  v47 = v46;

  v51 = objc_msgSend_glyphDrawing(self, v48, v49, v50);
  objc_msgSend_drawingSize(v51, v52, v53, v54);
  v56 = v55;

  v60 = objc_msgSend_textDrawing(self, v57, v58, v59);
  objc_msgSend_drawingSize(v60, v61, v62, v63);
  v105 = v64;

  if (objc_msgSend_layoutDirection(self->_style, v65, v66, v67) == 1)
  {
    objc_msgSend_engravedSize(self, v68, v69, v70);
    v72.n128_f64[0] = v71 * 0.5;
    v73 = v30 - v72.n128_f64[0];
    objc_msgSend_engravedSize(self, v74, v72, v75);
    v77.n128_f64[0] = v76 * 0.5;
    v78 = v30 + v77.n128_f64[0];
    v81 = objc_msgSend_glyphDrawing(self, v79, v77, v80);
    objc_msgSend_drawingSize(v81, v82, v83, v84);
    v86 = v78 - v85;
  }

  else
  {
    v86 = v30 - v35 * 0.5;
    v69.n128_f64[0] = v30 + v39 * 0.5;
    v73 = v69.n128_f64[0] - v47;
  }

  if (!self->_remote)
  {
    CGContextSetAlpha(context, 0.5);
  }

  v87 = v12 * 0.5;
  if (objc_msgSend_icon(self->_currentTag, v68, v69, v70))
  {
    v89.n128_f64[0] = v56 * 0.5;
    v91 = objc_msgSend_glyphDrawing(self, v88, v89, v90);
    v92.n128_f64[0] = v86;
    v93.n128_f64[0] = v87 - v56 * 0.5;
    objc_msgSend_drawInContext_atPoint_(v91, v94, v92, v93, context);
  }

  CGContextRestoreGState(context);
  if (!self->_remote)
  {
    CGContextSetAlpha(context, 0.5);
  }

  if (objc_msgSend_label(self->_currentTag, v95, v96, v97) || !objc_msgSend_icon(self->_currentTag, v98, v99, v100))
  {
    v99.n128_f64[0] = *&v105 * 0.5;
    v101 = v87 - *&v105 * 0.5;
    v106 = objc_msgSend_textDrawing(self, v98, v99, v100);
    v102.n128_f64[0] = v73;
    v103.n128_f64[0] = v101;
    objc_msgSend_drawInContext_atPoint_(v106, v104, v102, v103, context);
  }
}

- (void)_computeImageMetrics
{
  v260 = *MEMORY[0x277D85DE8];
  objc_msgSend_setRenderedSuccessfully_(self->_currentTag, a2, v2, v3, 0);
  v8 = objc_msgSend_bundleWithPath_(MEMORY[0x277CCA8D8], v5, v6, v7, @"/System/Library/CoreServices/CoreGlyphs.bundle");
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D02670]);
    v253 = 0;
    v13 = objc_msgSend_initWithName_fromBundle_error_(v9, v10, v11, v12, @"Assets", v8, &v253);
    v14 = v253;
    v18 = v14;
    if (v13)
    {
      v19 = v14 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_47;
    }

    v20 = *MEMORY[0x277CC4A30];
    objc_msgSend_fontContentSizeCategory(self->_style, v15, v16, v17);
    v21 = CTFontDescriptorCreateWithTextStyleAndAttributes();
    objc_msgSend_fontSize(self->_currentTag, v22, v23, v24);
    v26 = CTFontCreateWithFontDescriptor(v21, v25, 0);
    CFRelease(v21);
    CFAutorelease(v26);
    v30 = objc_msgSend_label(self->_currentTag, v27, v28, v29);
    v34 = objc_msgSend_objectAtIndexedSubscript_(&unk_284A447B8, v31, v32, v33, v30);
    objc_msgSend_secureNameForStyle_(self->_currentTag, v35, v36, v37, self->_style);
    v41 = objc_msgSend_localization(self->_style, v38, v39, v40);
    v42 = UISLocalizedStringForSecureName();

    if (objc_msgSend_isEqualToString_(v34, v43, v44, v45, v42))
    {
      if (!CFBundleGetBundleWithIdentifier(@"com.apple.locationd.CoreLocationUI"))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton could not find CoreLocationUI bundle for localization", buf, 2u);
        }

        v60 = *&v42;
        goto LABEL_46;
      }

      v251 = v18;
      v49 = MEMORY[0x277CBEAF8];
      objc_msgSend_localization(self->_style, v46, v47, v48);
      v51 = v50 = v34;
      v55 = objc_msgSend_localeWithLocaleIdentifier_(v49, v52, v53, v54, v51);
      v59 = objc_msgSend_languageCode(v55, v56, v57, v58);

      v34 = v50;
      v60 = COERCE_DOUBLE(CFBundleCopyLocalizedStringForLocalization());

      if (objc_msgSend_isEqualToString_(v50, v61, v62, v63, *&v60))
      {
        v18 = v251;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_localization(self->_style, v64, v65, v66);
          v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412290;
          v257 = v67;
        }

        goto LABEL_46;
      }

      v18 = v251;
    }

    else
    {
      v60 = *&v42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_localization(self->_style, v68, v69, v70);
      v71 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v257 = v60;
      v258 = 2112;
      v259 = v71;
    }

    if (v60 != 0.0)
    {
      objc_msgSend_setLocalizedTitle_(self, v68, v69, v70, *&v60);
    }

    v72 = *MEMORY[0x277CC4838];
    v255[0] = v26;
    v73 = *MEMORY[0x277CC49C0];
    v254[0] = v72;
    v254[1] = v73;
    v74 = objc_msgSend_tintColor(self->_currentTag, v68, v69, v70);
    v75 = v74;
    v255[1] = objc_msgSend_CGColor(v75, v76, v77, v78);
    v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v79, v80, v81, v255, v254, 2);

    v83 = objc_alloc(MEMORY[0x277D777F0]);
    v87.n128_f64[0] = objc_msgSend_displayScale(self->_style, v84, v85, v86);
    v88.n128_u64[0] = 0x7FF8000000000000;
    v90 = objc_msgSend_initWithString_attributes_lineBreakMode_textAlignment_width_scale_(v83, v89, v88, v87, *&v60, v82, 0, 0);
    objc_msgSend_setTextDrawing_(self, v91, v92, v93, v90);

    v97 = objc_msgSend_textDrawing(self, v94, v95, v96);

    if (!v97)
    {
LABEL_45:

LABEL_46:
LABEL_47:

      goto LABEL_48;
    }

    v250 = v82;
    v252 = v34;
    v101 = objc_msgSend_icon(self->_currentTag, v98, v99, v100);
    v105 = objc_msgSend_objectAtIndexedSubscript_(&unk_284A447D0, v102, v103, v104, v101);
    objc_msgSend_assetScaleFactor(self->_style, v106, v107, v108);
    v110 = v109.n128_u64[0];
    v113 = objc_msgSend_assetDeviceIdiom(self->_style, v111, v109, v112);
    v117 = objc_msgSend_layoutDirection(self->_style, v114, v115, v116);
    v118.n128_f64[0] = CTFontGetSize(v26);
    v119 = v118.n128_u64[0];
    v122 = objc_msgSend_assetAppearanceNames(self->_style, v120, v118, v121);
    v126 = objc_msgSend_lastObject(v122, v123, v124, v125);
    v127.n128_u64[0] = v110;
    v128.n128_u64[0] = v119;
    v130 = objc_msgSend_namedVectorGlyphWithName_scaleFactor_deviceIdiom_layoutDirection_glyphSize_glyphWeight_glyphPointSize_appearanceName_(v13, v129, v127, v128, v105, v113, v117, 2, 6, v126);

    if (!v130)
    {
      goto LABEL_44;
    }

    v131 = objc_alloc(MEMORY[0x277D77800]);
    v135 = objc_msgSend_tintColor(self->_currentTag, v132, v133, v134);
    v136 = v135;
    v140 = objc_msgSend_CGColor(v136, v137, v138, v139);
    v144 = objc_msgSend_initWithVectorGlyph_tintColor_(v131, v141, v142, v143, v130, v140);
    objc_msgSend_setGlyphDrawing_(self, v145, v146, v147, v144);

    v151 = objc_msgSend_glyphDrawing(self, v148, v149, v150);

    if (!v151)
    {
LABEL_44:

      v34 = v252;
      v82 = v250;
      goto LABEL_45;
    }

    if (objc_msgSend_icon(self->_currentTag, v152, v153, v154))
    {
      if (objc_msgSend_label(self->_currentTag, v155, v156, v157))
      {
        objc_msgSend_fontSize(self->_currentTag, v158, v159, v160);
        v161.n128_u64[0] = 0.5;
        v163 = v162.n128_f64[0] * 0.5;
        v165 = objc_msgSend_textDrawing(self, v164, v162, v161);
        objc_msgSend_drawingSize(v165, v166, v167, v168);
        v170 = v169.n128_f64[0];
        v173 = objc_msgSend_glyphDrawing(self, v171, v169, v172);
        objc_msgSend_drawingSize(v173, v174, v175, v176);
        v178 = v163 + v170 + v177;

        v182 = objc_msgSend_glyphDrawing(self, v179, v180, v181);
        objc_msgSend_drawingSize(v182, v183, v184, v185);
        v187 = v186;

        v191 = objc_msgSend_textDrawing(self, v188, v189, v190);
        objc_msgSend_drawingSize(v191, v192, v193, v194);
        v196 = v195;

        if (v187 >= v196)
        {
          v199.n128_f64[0] = v187;
        }

        else
        {
          v199.n128_f64[0] = v196;
        }

        v198.n128_f64[0] = v178;
        objc_msgSend_setEngravedSize_(self, v197, v198, v199);
        goto LABEL_34;
      }

      v203 = objc_msgSend_glyphDrawing(self, v158, v159, v160);
    }

    else
    {
      v203 = objc_msgSend_textDrawing(self, v155, v156, v157);
    }

    v207 = v203;
    objc_msgSend_drawingSize(v203, v204, v205, v206);
    objc_msgSend_setEngravedSize_(self, v208, v209, v210);

LABEL_34:
    objc_msgSend_buttonPadding(self, v200, v201, v202);
    v212 = v211.n128_f64[0];
    v214 = v213.n128_f64[0];
    objc_msgSend_engravedSize(self, v215, v211, v213);
    v217 = v212 + v216.n128_f64[0];
    objc_msgSend_engravedSize(self, v218, v216, v219);
    v221.n128_f64[0] = v214 + v220;
    v222.n128_f64[0] = v217;
    objc_msgSend_setNeededSize_(self, v223, v222, v221);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      objc_msgSend_neededSize(self, v224, v225, v226);
      v246 = v245.n128_u64[0];
      objc_msgSend_neededSize(self, v247, v245, v248);
      *buf = 134218240;
      v257 = *&v246;
      v258 = 2048;
      v259 = v249;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton neededsize %f %f", buf, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v257 = v212;
      v258 = 2048;
      v259 = v214;
      _os_log_debug_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#locationButton buttonPadding %f %f", buf, 0x16u);
    }

    objc_msgSend_frame(self->_currentTag, v227, v228, v229);
    if (CGRectIsEmpty(v261) || (objc_msgSend_neededSize(self, v230, v231, v232), v234 = v233.n128_f64[0], objc_msgSend_buttonWidth(self->_currentTag, v235, v233, v236), v234 <= v238.n128_f64[0]) && (objc_msgSend_neededSize(self, v237, v238, v239), v241 = v240.n128_f64[0], objc_msgSend_buttonHeight(self->_currentTag, v242, v243, v240), v241 <= v231.n128_f64[0]))
    {
      objc_msgSend_setRenderedSuccessfully_(self->_currentTag, v230, v231, v232, 1);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2371B9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error: #locationButton failed due to inappropriate sizes", buf, 2u);
    }

    goto LABEL_44;
  }

LABEL_48:

  v244 = *MEMORY[0x277D85DE8];
}

- (CGSize)buttonPadding
{
  v4 = objc_msgSend_controlSize(self->_currentTag, a2, v2, v3);
  if (v4 > 2)
  {
    v6 = 20.0;
    v5 = 15.0;
  }

  else
  {
    v5 = dbl_2371BE0A0[v4];
    v6 = dbl_2371BE0B8[v4];
  }

  v7 = v6 + v6 * 0.9;
  v8 = v5 + v5 * 0.9;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)neededSize
{
  width = self->_neededSize.width;
  height = self->_neededSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)engravedSize
{
  width = self->_engravedSize.width;
  height = self->_engravedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end