@interface CompassBearingComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (CompassBearingComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)redactionTextProviderWithColor:(id)color;
- (id)sampleTemplate;
@end

@implementation CompassBearingComplicationDataSource

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
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the compass complication in complication picker.", v11, 2u);
    }

    goto LABEL_6;
  }

  v9 = 0xB00u >> family;
  if (family > 0xB)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (CompassBearingComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = CompassBearingComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:3];
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_idealizedHeading(NCHeading, a2, v2, v3);
  v9 = objc_msgSend_idealizedBearing(NCBearing, v6, v7, v8);
  v11 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v10, 0, 1, 0, v5, v9);

  return v11;
}

- (id)newTemplate
{
  v5 = objc_msgSend_calibrated(self, a2, v2, v3);
  v9 = objc_msgSend_heading(self, v6, v7, v8);
  v13 = objc_msgSend_copy(v9, v10, v11, v12);
  v17 = objc_msgSend_bearing(self, v14, v15, v16);
  v21 = objc_msgSend_copy(v17, v18, v19, v20);
  v23 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v22, 0, v5, 0, v13, v21);

  return v23;
}

- (id)randomizedTemplate
{
  v5 = objc_msgSend_randomizedHeading(NCHeading, a2, v2, v3);
  v9 = objc_msgSend_randomizedBearing(NCBearing, v6, v7, v8);
  v11 = objc_msgSend__templateNoData_calibrated_showAlwaysOnState_heading_bearing_(self, v10, 0, 1, 0, v5, v9);

  return v11;
}

- (id)_templateNoData:(BOOL)data calibrated:(BOOL)calibrated showAlwaysOnState:(BOOL)state heading:(id)heading bearing:(id)bearing
{
  stateCopy = state;
  calibratedCopy = calibrated;
  dataCopy = data;
  v100[3] = *MEMORY[0x277D85DE8];
  headingCopy = heading;
  bearingCopy = bearing;
  v17 = !calibratedCopy | dataCopy;
  if (v17 == 1)
  {

    bearingCopy = 0;
    headingCopy = 0;
  }

  v18 = objc_msgSend_family(self, v13, v14, v15);
  switch(v18)
  {
    case 11:
      v19 = objc_opt_new();
      v34 = MEMORY[0x277CBBB10];
      v35 = objc_opt_class();
      v23 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v34, v36, v35, v37);
      v94 = @"heading";
      v41 = headingCopy;
      if (!headingCopy)
      {
        v41 = objc_msgSend_null(MEMORY[0x277CBEB68], v38, v39, v40, v94);
      }

      v96[0] = v41;
      v95 = @"bearing";
      v42 = bearingCopy;
      if (!bearingCopy)
      {
        v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v38, v39, v40);
      }

      v43 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v38, v17, v40, v94, v95, @"nodata", v96[0], v42);
      v96[2] = v43;
      v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v96, &v94, 3);
      objc_msgSend_setMetadata_(v23, v46, v45, v47);

      if (bearingCopy)
      {
        if (headingCopy)
        {
LABEL_16:
          objc_msgSend_setImageProvider_(v19, v48, v23, v49);
          goto LABEL_31;
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
    case 9:
      v19 = objc_opt_new();
      if (v17 | stateCopy)
      {
        v29 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v26, v27, v28);
        v23 = objc_msgSend_redactionTextProviderWithColor_(self, v30, v29, v31);
      }

      else
      {
        v23 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }

      objc_msgSend_setTextProvider_(v19, v32, v23, v33);
      v50 = objc_opt_new();
      v51 = MEMORY[0x277CBBB10];
      v52 = objc_opt_class();
      v58 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v51, v53, v52, v54);
      v97[0] = @"heading";
      v59 = headingCopy;
      if (!headingCopy)
      {
        v59 = objc_msgSend_null(MEMORY[0x277CBEB68], v55, v56, v57);
      }

      v98[0] = v59;
      v97[1] = @"nodata";
      v60 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v55, v17, v57);
      v98[1] = v60;
      v97[2] = @"alwayson";
      v63 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v61, stateCopy, v62);
      v98[2] = v63;
      v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, v98, v97, 3);
      objc_msgSend_setMetadata_(v58, v66, v65, v67);

      if (!headingCopy)
      {
      }

      objc_msgSend_setImageProvider_(v50, v68, v58, v69);
      objc_msgSend_setCircularTemplate_(v19, v70, v50, v71);

      break;
    case 8:
      v19 = objc_opt_new();
      if (v17 | stateCopy)
      {
        v20 = NanoCompassAppTintColor();
        v23 = objc_msgSend_redactionTextProviderWithColor_(self, v21, v20, v22);
      }

      else
      {
        v23 = NanoCompassComplicationHeadingDirectionBearingTextProvider(headingCopy, bearingCopy);
      }

      objc_msgSend_setTextProvider_(v19, v24, v23, v25);
      v72 = MEMORY[0x277CBBB10];
      v73 = objc_opt_class();
      v50 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v72, v74, v73, v75);
      v99[0] = @"heading";
      v79 = headingCopy;
      if (!headingCopy)
      {
        v79 = objc_msgSend_null(MEMORY[0x277CBEB68], v76, v77, v78);
      }

      v100[0] = v79;
      v99[1] = @"nodata";
      v80 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v76, v17, v78);
      v100[1] = v80;
      v99[2] = @"alwayson";
      v83 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v81, stateCopy, v82);
      v100[2] = v83;
      v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v100, v99, 3);
      objc_msgSend_setMetadata_(v50, v86, v85, v87);

      if (!headingCopy)
      {
      }

      objc_msgSend_setImageProvider_(v19, v88, v50, v89);
      break;
    default:
      v19 = 0;
      goto LABEL_32;
  }

LABEL_31:
LABEL_32:
  v90 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v19, v91, v90, v92);

  return v19;
}

- (id)redactionTextProviderWithColor:(id)color
{
  colorCopy = color;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5BBF8;
  block[3] = &unk_278B93FB0;
  v10 = colorCopy;
  v4 = qword_27E1C53C0;
  v5 = colorCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_27E1C53C0, block);
  }

  v6 = qword_27E1C53B8;
  v7 = qword_27E1C53B8;

  return v6;
}

@end