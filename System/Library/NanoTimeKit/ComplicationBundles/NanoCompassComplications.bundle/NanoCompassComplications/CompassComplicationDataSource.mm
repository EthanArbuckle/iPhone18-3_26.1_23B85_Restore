@interface CompassComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (CompassComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_templateNoData:(BOOL)a3 calibrated:(BOOL)a4 heading:(id)a5;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)sampleTemplate;
@end

@implementation CompassComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  if (!objc_msgSend_supportsUrsa(a4, a2, a3, a4))
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
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the compass complication in complicaiton picker.", v11, 2u);
    }

    goto LABEL_6;
  }

  v9 = 0x14DDu >> a3;
  if (a3 > 0xC)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (CompassComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6.receiver = self;
  v6.super_class = CompassComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:a3 family:a4 forDevice:a5 mode:1];
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_idealizedHeading(NCHeading, a2, v2, v3);
  v7 = objc_msgSend__templateNoData_calibrated_heading_(self, v6, 0, 1, v5);

  return v7;
}

- (id)newTemplate
{
  v5 = objc_msgSend_calibrated(self, a2, v2, v3);
  v9 = objc_msgSend_heading(self, v6, v7, v8);
  v13 = objc_msgSend_copy(v9, v10, v11, v12);
  v15 = objc_msgSend__templateNoData_calibrated_heading_(self, v14, 0, v5, v13);

  return v15;
}

- (id)randomizedTemplate
{
  v5 = objc_msgSend_randomizedHeading(NCHeading, a2, v2, v3);
  v7 = objc_msgSend__templateNoData_calibrated_heading_(self, v6, 0, 1, v5);

  return v7;
}

- (id)_templateNoData:(BOOL)a3 calibrated:(BOOL)a4 heading:(id)a5
{
  v5 = a4;
  v6 = a3;
  v101[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v12 = v8;
  v13 = !v5 | v6;
  if (v13 == 1)
  {

    v12 = 0;
  }

  v14 = objc_msgSend_family(self, v9, v10, v11);
  if (v14 > 5)
  {
    if (v14 > 9)
    {
      if (v14 == 10)
      {
        v70 = MEMORY[0x277CBBB10];
        v71 = objc_opt_class();
        v45 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v70, v72, v71, v73);
        v100[0] = @"heading";
        v77 = v12;
        if (!v12)
        {
          v77 = objc_msgSend_null(MEMORY[0x277CBEB68], v74, v75, v76);
        }

        v101[0] = v77;
        v100[1] = @"nodata";
        v78 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v74, v13, v76);
        v101[1] = v78;
        v80 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v79, v101, v100, 2);
        objc_msgSend_setMetadata_(v45, v81, v80, v82);

        if (!v12)
        {
        }

        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v83, v45, v84);
      }

      else
      {
        if (v14 != 12)
        {
          goto LABEL_36;
        }

        v38 = MEMORY[0x277CBBB10];
        v39 = objc_opt_class();
        v45 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v38, v40, v39, v41);
        v98[0] = @"heading";
        v46 = v12;
        if (!v12)
        {
          v46 = objc_msgSend_null(MEMORY[0x277CBEB68], v42, v43, v44);
        }

        v99[0] = v46;
        v98[1] = @"nodata";
        v47 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v42, v13, v44);
        v99[1] = v47;
        v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, v99, v98, 2);
        objc_msgSend_setMetadata_(v45, v50, v49, v51);

        if (!v12)
        {
        }

        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v52, v45, v53);
      }
      v26 = ;

      goto LABEL_39;
    }

    if (v14 == 6)
    {
LABEL_22:
      if (!v13)
      {
        v54 = MEMORY[0x277CBBB88];
        v55 = NanoCompassFormattedHeadingAndDirection(v12, 0, 0);
        v56 = NanoCompassFormattedHeading(v12, 0, 0);
        v58 = objc_msgSend_textProviderWithText_shortText_(v54, v57, v55, v56);

        v26 = objc_msgSend_templateWithTextProvider_(MEMORY[0x277CBBA90], v59, v58, v60);

        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (v14 == 7)
    {
      v15 = MEMORY[0x277CBBB88];
      v16 = NanoCompassFormattedHeading(v12, 0, 0);
      v19 = objc_msgSend_textProviderWithText_(v15, v17, v16, v18);

      v20 = MEMORY[0x277CBBB88];
      v21 = NanoCompassFormattedHeadingDirection(v12);
      v24 = objc_msgSend_textProviderWithText_(v20, v22, v21, v23);

      v26 = objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBB808], v25, v19, v24);
      objc_msgSend_setHighlightLine2_(v26, v27, 1, v28);
LABEL_26:

      goto LABEL_27;
    }
  }

  else
  {
    if (v14 <= 2)
    {
      if (v14)
      {
        if (v14 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      v61 = MEMORY[0x277CBBB88];
      v62 = NanoCompassFormattedHeading(v12, 0, 0);
      v19 = objc_msgSend_textProviderWithText_(v61, v63, v62, v64);

      v65 = MEMORY[0x277CBBB88];
      v66 = NanoCompassFormattedHeadingDirection(v12);
      v24 = objc_msgSend_textProviderWithText_(v65, v67, v66, v68);

      objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBBA70], v69, v19, v24);
      goto LABEL_25;
    }

    if (v14 == 3)
    {
      if (v13)
      {
LABEL_29:
        v26 = NanoCompassRedactionLabel();
        goto LABEL_39;
      }

      v92 = MEMORY[0x277CBBB88];
      v93 = NanoCompassFormattedHeadingAndDirection(v12, 0, 0);
      v19 = objc_msgSend_textProviderWithText_(v92, v94, v93, v95);

      v26 = objc_msgSend_templateWithTextProvider_(MEMORY[0x277CBBA80], v96, v19, v97);
LABEL_27:

      goto LABEL_39;
    }

    if (v14 == 4)
    {
      v29 = MEMORY[0x277CBBB88];
      v30 = NanoCompassFormattedHeading(v12, 0, 0);
      v19 = objc_msgSend_textProviderWithText_(v29, v31, v30, v32);

      v33 = MEMORY[0x277CBBB88];
      v34 = NanoCompassFormattedHeadingDirection(v12);
      v24 = objc_msgSend_textProviderWithText_(v33, v35, v34, v36);

      objc_msgSend_templateWithLine1TextProvider_line2TextProvider_(MEMORY[0x277CBB7A8], v37, v19, v24);
      v26 = LABEL_25:;
      goto LABEL_26;
    }
  }

LABEL_36:
  v85 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    sub_23BD654BC(self, v85, v86, v87);
  }

  v26 = 0;
LABEL_39:
  v88 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v26, v89, v88, v90);

  return v26;
}

@end