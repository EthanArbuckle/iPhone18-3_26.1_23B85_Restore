@interface AltitudeComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (AltitudeComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_templateNoData:(BOOL)a3 altitude:(id)a4 privacyEnabled:(BOOL)a5;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
- (void)_setMetadataForProvider:(id)a3 withAltitude:(id)a4 privacyEnabled:(BOOL)a5;
@end

@implementation AltitudeComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (objc_msgSend_supportsUrsa(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_supportsPolaris(v5, v9, v10, v11);
    v13 = 0x1CDFu >> a3;
    if (a3 > 0xC)
    {
      LOBYTE(v13) = 0;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (AltitudeComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = AltitudeComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5 mode:8];
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_idealizedAltitude(NCAltitude, a2, v2, v3);
  v7 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v6, 0, v5, 0);

  return v7;
}

- (id)newTemplate
{
  v5 = objc_msgSend_altitude(self, a2, v2, v3);
  v9 = objc_msgSend_copy(v5, v6, v7, v8);
  v11 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v10, 0, v9, 0);

  return v11;
}

- (id)randomizedTemplate
{
  v5 = objc_msgSend_randomizedAltitude(NCAltitude, a2, v2, v3);
  v7 = objc_msgSend__templateNoData_altitude_privacyEnabled_(self, v6, 0, v5, 0);

  return v7;
}

- (id)_templateNoData:(BOOL)a3 altitude:(id)a4 privacyEnabled:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v193 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v12 = v8;
  if (v6)
  {

    v12 = 0;
  }

  v13 = objc_msgSend_family(self, v9, v10, v11);
  if (v13 > 5)
  {
    if (v13 <= 9)
    {
      if (v13 != 6)
      {
        if (v13 == 7)
        {
          if (v12)
          {
            v62 = objc_msgSend_displayTilde(v12, v14, v15, v16);
            v63 = MEMORY[0x277CCABB0];
            objc_msgSend_altitude(v12, v64, v65, v66);
            v70 = objc_msgSend_numberWithDouble_(v63, v67, v68, v69);
          }

          else
          {
            v62 = 0;
            v70 = 0;
          }

          v28 = NanoCompassValueWithFormat(v70, 0, v62);
          if (v12)
          {
          }

          v26 = objc_opt_new();
          v119 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v117, v28, v118);
          objc_msgSend_setLine1TextProvider_(v26, v120, v119, v121);

          v122 = MEMORY[0x277CBBB88];
          v127 = NanoCompassFormattedAltitudeUnits(v123, v124, v125, v126);
          v131 = objc_msgSend_localizedUppercaseString(v127, v128, v129, v130);
          v134 = objc_msgSend_textProviderWithText_(v122, v132, v131, v133);
          objc_msgSend_setLine2TextProvider_(v26, v135, v134, v136);

          objc_msgSend_setHighlightLine2_(v26, v137, 1, v138);
          goto LABEL_54;
        }

        goto LABEL_34;
      }

LABEL_23:
      v71 = objc_alloc(MEMORY[0x277CBBB98]);
      v28 = objc_msgSend_initWithSystemName_(v71, v72, @"mountain.2.fill", v73);
      v74 = NanoCompassAppTintColor();
      objc_msgSend_setTintColor_(v28, v75, v74, v76);

      if (v5)
      {
        v77 = MEMORY[0x277CBBB88];
        v78 = NanoCompassFormattedUncalibrated();
        v41 = objc_msgSend_textProviderWithText_(v77, v79, v78, v80);

LABEL_39:
        v26 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBBA90], v81, v41, v28);
        goto LABEL_53;
      }

      v83 = v12;
      v84 = 1;
LABEL_38:
      v41 = NanoCompassComplicationAltitudeSmallCapsTextProvider(v83, 0, v84);
      goto LABEL_39;
    }

    switch(v13)
    {
      case 10:
        v85 = MEMORY[0x277CBBB10];
        v86 = objc_opt_class();
        v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v85, v87, v86, v88);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v89, v22, v12, v5);
        v26 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v90, v22, v91);
        v187 = *MEMORY[0x277CBB6E8];
        v188 = MEMORY[0x277CBEC38];
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v92, &v188, &v187, 1);
        break;
      case 11:
        v103 = MEMORY[0x277CBBB10];
        v104 = objc_opt_class();
        v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v103, v105, v104, v106);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v107, v22, v12, v5);
        v108 = objc_alloc(MEMORY[0x277CBB998]);
        v26 = objc_msgSend_initWithImageProvider_(v108, v109, v22, v110);
        goto LABEL_33;
      case 12:
        v18 = MEMORY[0x277CBBB10];
        v19 = objc_opt_class();
        v22 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v18, v20, v19, v21);
        objc_msgSend__setMetadataForProvider_withAltitude_privacyEnabled_(self, v23, v22, v12, v5);
        v26 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v24, v22, v25);
        v189 = *MEMORY[0x277CBB6E8];
        v190 = MEMORY[0x277CBEC38];
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v190, &v189, 1);
        break;
      default:
        goto LABEL_34;
    }
    v93 = ;
    objc_msgSend_setMetadata_(v26, v94, v93, v95);

LABEL_33:
    goto LABEL_55;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_34;
      }

      v26 = objc_opt_new();
      v28 = NanoCompassLocalizedString(@"ALTITUDE_LARGE_MODULAR_TITLE_FORMAT");
      v29 = MEMORY[0x277CCACA8];
      v30 = NanoCompassLocalizedString(@"ALTITUDE_LARGE_MODULAR_TITLE");
      v34 = NanoCompassFormattedAltitudeUnits(v30, v31, v32, v33);
      v38 = objc_msgSend_localizedUppercaseString(v34, v35, v36, v37);
      v41 = objc_msgSend_stringWithFormat_(v29, v39, v28, v40, v30, v38);

      v44 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v42, v41, v43);
      objc_msgSend_setHeaderTextProvider_(v26, v45, v44, v46);

      if (v12)
      {
        v50 = objc_msgSend_displayTilde(v12, v47, v48, v49);
        v51 = MEMORY[0x277CCABB0];
        objc_msgSend_altitude(v12, v52, v53, v54);
        v58 = objc_msgSend_numberWithDouble_(v51, v55, v56, v57);
        v59 = NanoCompassValueWithFormat(v58, 0, v50);
      }

      else
      {
        v59 = NanoCompassValueWithFormat(0, 0, 0);
      }

      v114 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v60, v59, v61);
      objc_msgSend_setBodyTextProvider_(v26, v115, v114, v116);
    }

    else
    {
      v186 = 0;
      if (v12)
      {
        v82 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v12, 5, &v186);
      }

      else
      {
        v82 = NanoCompassFormattedUncalibrated();
      }

      v28 = v82;
      v139 = NCLogForCategory(0);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        if (v186)
        {
          v140 = @"YES";
        }

        else
        {
          v140 = @"NO";
        }

        *buf = 138412290;
        v192 = v140;
        _os_log_impl(&dword_23BD26000, v139, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }

      v41 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v141, v28, v142);
      v26 = objc_opt_new();
      objc_msgSend_setLine1TextProvider_(v26, v143, v41, v144);
      v145 = MEMORY[0x277CBBB88];
      v149 = NanoCompassFormattedAltitudeUnitsInAbbr(v186, v146, v147, v148);
      v153 = objc_msgSend_localizedUppercaseString(v149, v150, v151, v152);
      v156 = objc_msgSend_textProviderWithText_(v145, v154, v153, v155);
      objc_msgSend_setLine2TextProvider_(v26, v157, v156, v158);

      objc_msgSend_setHighlightLine2_(v26, v159, 1, v160);
    }

LABEL_53:

LABEL_54:
    goto LABEL_55;
  }

  switch(v13)
  {
    case 2:
      goto LABEL_23;
    case 3:
      v96 = objc_alloc(MEMORY[0x277CBBB98]);
      v28 = objc_msgSend_initWithSystemName_(v96, v97, @"mountain.2.fill", v98);
      v99 = NanoCompassAppTintColor();
      objc_msgSend_setTintColor_(v28, v100, v99, v101);

      if (v5)
      {
        v102 = NanoCompassAppTintColor();
        v41 = AltitudeRedactionTextProvider(v102);

        goto LABEL_39;
      }

      v83 = v12;
      v84 = 0;
      goto LABEL_38;
    case 4:
      v186 = 0;
      if (v12)
      {
        v17 = NanoCompassGetAltitudeAbbreviationWithTargetLength(v12, 5, &v186);
      }

      else
      {
        v17 = NanoCompassFormattedUncalibrated();
      }

      v28 = v17;
      v165 = NCLogForCategory(0);
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        if (v186)
        {
          v166 = @"YES";
        }

        else
        {
          v166 = @"NO";
        }

        *buf = 138412290;
        v192 = v166;
        _os_log_impl(&dword_23BD26000, v165, OS_LOG_TYPE_DEFAULT, "metric unit should be abbreviated: %@", buf, 0xCu);
      }

      v26 = objc_opt_new();
      v169 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v167, v28, v168);
      objc_msgSend_setLine1TextProvider_(v26, v170, v169, v171);

      v172 = MEMORY[0x277CBBB88];
      v176 = NanoCompassFormattedAltitudeUnitsInAbbr(v186, v173, v174, v175);
      v180 = objc_msgSend_localizedUppercaseString(v176, v177, v178, v179);
      v183 = objc_msgSend_textProviderWithText_(v172, v181, v180, v182);
      objc_msgSend_setLine2TextProvider_(v26, v184, v183, v185);

      goto LABEL_54;
  }

LABEL_34:
  v111 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v111, v112, v113);
  }

  v26 = 0;
LABEL_55:
  v161 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v26, v162, v161, v163);

  return v26;
}

- (void)_setMetadataForProvider:(id)a3 withAltitude:(id)a4 privacyEnabled:(BOOL)a5
{
  v5 = a5;
  v26[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v12 = v8;
  if (v5)
  {
    v25[0] = @"altitude";
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11);
    v25[1] = @"nodata";
    v26[0] = v13;
    v26[1] = MEMORY[0x277CBEC38];
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v26, v25, 2);
    objc_msgSend_setMetadata_(v7, v16, v15, v17);

LABEL_6:
    goto LABEL_7;
  }

  v23[0] = @"altitude";
  v13 = v8;
  if (!v8)
  {
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11);
  }

  v24[0] = v13;
  v23[1] = @"nodata";
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v12 == 0, v11);
  v24[1] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v24, v23, 2);
  objc_msgSend_setMetadata_(v7, v21, v20, v22);

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:
}

@end