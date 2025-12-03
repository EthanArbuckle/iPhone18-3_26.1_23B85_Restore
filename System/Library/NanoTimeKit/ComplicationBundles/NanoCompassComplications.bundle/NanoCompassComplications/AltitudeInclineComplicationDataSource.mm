@interface AltitudeInclineComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device;
- (AltitudeInclineComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_templateNoData:(BOOL)data altitude:(id)altitude privacyEnabled:(BOOL)enabled;
- (id)alwaysOnTemplate;
- (id)newTemplate;
- (id)randomizedTemplate;
- (id)redactionImageProvider;
- (id)sampleTemplate;
@end

@implementation AltitudeInclineComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_supportsUrsa(deviceCopy, v6, v7, v8))
  {
    if (objc_msgSend_supportsPolaris(deviceCopy, v9, v10, v11))
    {
      v12 = (family & 0xFFFFFFFFFFFFFFFELL) == 8;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (AltitudeInclineComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = AltitudeInclineComplicationDataSource;
  return [(NanoCompassBaseComplicationDataSource *)&v6 initWithComplication:complication family:family forDevice:device mode:8];
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

- (id)alwaysOnTemplate
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

- (id)_templateNoData:(BOOL)data altitude:(id)altitude privacyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dataCopy = data;
  v74[2] = *MEMORY[0x277D85DE8];
  altitudeCopy = altitude;
  v12 = objc_msgSend_family(self, v9, v10, v11);
  if (v12 == 9)
  {
    v22 = objc_opt_new();
    v23 = MEMORY[0x277CBBB10];
    v24 = objc_opt_class();
    v30 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v23, v25, v24, v26);
    v31 = MEMORY[0x277CBEC38];
    if (enabledCopy)
    {
      v73[0] = @"altitude";
      v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28, v29);
      v73[1] = @"nodata";
      v74[0] = v32;
      v74[1] = v31;
      v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v74, v73, 2);
      objc_msgSend_setMetadata_(v30, v35, v34, v36);
    }

    else
    {
      v71[0] = @"altitude";
      v32 = altitudeCopy;
      if (!altitudeCopy)
      {
        v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v27, v28, v29);
      }

      v72[0] = v32;
      v71[1] = @"nodata";
      v41 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, altitudeCopy == 0, v29);
      v72[1] = v41;
      v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, v72, v71, 2);
      objc_msgSend_setMetadata_(v30, v44, v43, v45);

      if (altitudeCopy)
      {
        goto LABEL_14;
      }
    }

LABEL_14:
    v48 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v46, v30, v47);
    v69 = *MEMORY[0x277CBB6E8];
    v70 = v31;
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v70, &v69, 1);
    objc_msgSend_setMetadata_(v48, v51, v50, v52);

    objc_msgSend_setCircularTemplate_(v22, v53, v48, v54);
    objc_msgSend_setTextProvider_(v22, v55, 0, v56);

    goto LABEL_21;
  }

  if (v12 != 8)
  {
    v22 = 0;
    goto LABEL_21;
  }

  if (!enabledCopy)
  {
    if (dataCopy)
    {
      v37 = MEMORY[0x277CBBB88];
      v38 = NanoCompassFormattedUncalibrated();
      v16 = objc_msgSend_textProviderWithText_(v37, v39, v38, v40);
    }

    else
    {
      v16 = NanoCompassComplicationAltitudeSmallCapsTextProvider(altitudeCopy, 0, 0);
      if (altitudeCopy && (objc_msgSend_hasAcceptibleAccuracy(altitudeCopy, v57, v58, v59) & 1) != 0)
      {
        v18 = NanoCompassComplicationAltitudeAccuracySmallCapsTextProvider(altitudeCopy, 0);
        v60 = NanoCompassAppTintColor();
        objc_msgSend_setTintColor_(v18, v61, v60, v62);
LABEL_19:

        v63 = objc_alloc(MEMORY[0x277CBB900]);
        v21 = objc_msgSend_initWithInnerTextProvider_outerTextProvider_(v63, v64, v18, v16);
        goto LABEL_20;
      }
    }

    v60 = NanoCompassAppTintColor();
    v18 = AltitudeRedactionTextProvider(v60);
    goto LABEL_19;
  }

  v16 = objc_msgSend_redactionImageProvider(self, v13, v14, v15);
  v17 = NanoCompassAppTintColor();
  v18 = AltitudeRedactionTextProvider(v17);

  v19 = objc_alloc(MEMORY[0x277CBB908]);
  v21 = objc_msgSend_initWithTextProvider_imageProvider_(v19, v20, v18, v16);
LABEL_20:
  v22 = v21;

LABEL_21:
  v65 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v22, v66, v65, v67);

  return v22;
}

- (id)redactionImageProvider
{
  if (qword_27E1C4FD0 != -1)
  {
    sub_23BD65B44();
  }

  v3 = qword_27E1C4FC8;

  return v3;
}

@end