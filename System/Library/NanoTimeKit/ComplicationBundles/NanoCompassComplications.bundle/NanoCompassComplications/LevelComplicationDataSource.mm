@interface LevelComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (LevelComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing incline:(id)incline;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
@end

@implementation LevelComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  if (!objc_msgSend_supportsUrsa(device, a2, family, device))
  {
LABEL_6:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (objc_msgSend_showingIdealizedData(NCManager, v5, v6, v7))
  {
    v8 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "Running fixture demo mode. Disabling the Level complication in complication picker.", v11, 2u);
    }

    goto LABEL_6;
  }

  v9 = 0x1700u >> family;
  if (family > 0xC)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (LevelComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = LevelComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:3];
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_idealizedHeading(NCHeading, a2, v2, v3);
  v9 = objc_msgSend_idealizedBearing(NCBearing, v6, v7, v8);
  v13 = objc_msgSend_idealizedIncline(NCIncline, v10, v11, v12);
  v15 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v14, 0, 1, 0, v5, v9, v13);

  return v15;
}

- (id)newTemplate
{
  v5 = objc_msgSend_calibrated(self, a2, v2, v3);
  v9 = objc_msgSend_heading(self, v6, v7, v8);
  v13 = objc_msgSend_copy(v9, v10, v11, v12);
  v17 = objc_msgSend_bearing(self, v14, v15, v16);
  v21 = objc_msgSend_copy(v17, v18, v19, v20);
  v25 = objc_msgSend_incline(self, v22, v23, v24);
  v29 = objc_msgSend_copy(v25, v26, v27, v28);
  v31 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v30, 0, v5, 0, v13, v21, v29);

  return v31;
}

- (id)randomizedTemplate
{
  v5 = objc_msgSend_randomizedHeading(NCHeading, a2, v2, v3);
  v9 = objc_msgSend_randomizedBearing(NCBearing, v6, v7, v8);
  v13 = objc_msgSend_randomizedIncline(NCIncline, v10, v11, v12);
  v15 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_incline_(self, v14, 0, 1, 0, v5, v9, v13);

  return v15;
}

- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing incline:(id)incline
{
  stateCopy = state;
  calibratedCopy = calibrated;
  dataCopy = data;
  v121[4] = *MEMORY[0x277D85DE8];
  headingCopy = heading;
  bearingCopy = bearing;
  inclineCopy = incline;
  v20 = !calibratedCopy | dataCopy;
  if (v20 == 1)
  {

    inclineCopy = 0;
    bearingCopy = 0;
    headingCopy = 0;
  }

  v21 = objc_msgSend_family(self, v16, v17, v18);
  if (v21 > 9)
  {
    if (v21 != 12)
    {
      if (v21 != 10)
      {
        goto LABEL_17;
      }

      v25 = MEMORY[0x277CBBB10];
      v26 = objc_opt_class();
      v24 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v25, v27, v26, v28);
      v120[0] = @"heading";
      v32 = headingCopy;
      if (!headingCopy)
      {
        v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30, v31);
      }

      v121[0] = v32;
      v120[1] = @"incline";
      v33 = inclineCopy;
      if (!inclineCopy)
      {
        v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30, v31);
      }

      v121[1] = v33;
      v120[2] = @"nodata";
      v34 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, v20, v31);
      v121[2] = v34;
      v120[3] = @"alwayson";
      v37 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v35, stateCopy, v36);
      v121[3] = v37;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v121, v120, 4);
      objc_msgSend_setMetadata_(v24, v40, v39, v41);

      if (inclineCopy)
      {
        if (headingCopy)
        {
LABEL_16:
          objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v42, v24, v43);
          v46 = LABEL_29:;
          goto LABEL_54;
        }
      }

      else
      {

        if (headingCopy)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_16;
    }

    v57 = MEMORY[0x277CBBB10];
    v58 = objc_opt_class();
    v24 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v57, v59, v58, v60);
    v118[0] = @"heading";
    v64 = headingCopy;
    if (!headingCopy)
    {
      v64 = objc_msgSend_null(MEMORY[0x277CBEB68], v61, v62, v63);
    }

    v119[0] = v64;
    v118[1] = @"incline";
    v65 = inclineCopy;
    if (!inclineCopy)
    {
      v65 = objc_msgSend_null(MEMORY[0x277CBEB68], v61, v62, v63);
    }

    v119[1] = v65;
    v118[2] = @"nodata";
    v66 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v61, v20, v63);
    v119[2] = v66;
    v118[3] = @"alwayson";
    v69 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v67, stateCopy, v68);
    v119[3] = v69;
    v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v70, v119, v118, 4);
    objc_msgSend_setMetadata_(v24, v72, v71, v73);

    if (inclineCopy)
    {
      if (headingCopy)
      {
LABEL_28:
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v74, v24, v75);
        goto LABEL_29;
      }
    }

    else
    {

      if (headingCopy)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_28;
  }

  if (v21 == 8)
  {
    if (stateCopy)
    {
      v47 = NanoCompassLocalizedString(@"LEVEL_COMPLICATION_NAME");
      v51 = objc_msgSend_localizedUppercaseString(v47, v48, v49, v50);

      v24 = objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v52, v51, v53);
      v54 = NanoCompassAppTintColor();
      objc_msgSend_setTintColor_(v24, v55, v54, v56);
    }

    else
    {
      if (v20)
      {
        objc_msgSend_textProviderWithText_(MEMORY[0x277CBBB88], v22, &stru_284E80A60, v23);
      }

      else
      {
        NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }
      v24 = ;
    }

    v96 = MEMORY[0x277CBBB10];
    v97 = objc_opt_class();
    v83 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v96, v98, v97, v99);
    v114[0] = @"incline";
    v103 = inclineCopy;
    if (!inclineCopy)
    {
      v103 = objc_msgSend_null(MEMORY[0x277CBEB68], v100, v101, v102);
    }

    v115[0] = v103;
    v114[1] = @"nodata";
    v104 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v100, v20, v102);
    v115[1] = v104;
    v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v105, v115, v114, 2);
    objc_msgSend_setMetadata_(v83, v107, v106, v108);

    if (!inclineCopy)
    {
    }

    v46 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v109, v24, v83);
    goto LABEL_53;
  }

  if (v21 == 9)
  {
    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
    }

    v76 = MEMORY[0x277CBBB10];
    v77 = objc_opt_class();
    v83 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v76, v78, v77, v79);
    v116[0] = @"heading";
    v84 = headingCopy;
    if (!headingCopy)
    {
      v84 = objc_msgSend_null(MEMORY[0x277CBEB68], v80, v81, v82);
    }

    v117[0] = v84;
    v116[1] = @"incline";
    v85 = inclineCopy;
    if (!inclineCopy)
    {
      v85 = objc_msgSend_null(MEMORY[0x277CBEB68], v80, v81, v82);
    }

    v117[1] = v85;
    v116[2] = @"nodata";
    v86 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v80, v20, v82);
    v117[2] = v86;
    v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, v117, v116, 3);
    objc_msgSend_setMetadata_(v83, v89, v88, v90);

    if (inclineCopy)
    {
      if (headingCopy)
      {
LABEL_37:
        v93 = MEMORY[0x277CBB810];
        v94 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v91, v83, v92);
        v46 = objc_msgSend_templateWithCircularTemplate_textProvider_(v93, v95, v94, v24);

LABEL_53:
        goto LABEL_54;
      }
    }

    else
    {

      if (headingCopy)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

LABEL_17:
  v24 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v24, v44, v45);
  }

  v46 = 0;
LABEL_54:

  v110 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v46, v111, v110, v112);

  return v46;
}

@end