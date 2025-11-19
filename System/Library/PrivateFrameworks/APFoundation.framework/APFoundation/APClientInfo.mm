@interface APClientInfo
+ (APClientInfo)activeClientInfo;
+ (void)setActiveClientInfo:(id)a3;
- (APClientInfo)initWithCoder:(id)a3;
- (id)description;
- (id)jsonRepresentationWithOptions:(unint64_t)a3;
- (id)nonUICopy;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateActiveClientInfo;
@end

@implementation APClientInfo

+ (APClientInfo)activeClientInfo
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = qword_1EDBA4B98;
  v7 = objc_msgSend_sharedInstance(APLocationManager, v4, v5, v6);
  v11 = objc_msgSend_locationInfo(v7, v8, v9, v10);
  objc_msgSend_setLocationInfo_(v3, v12, v11, v13);

  v17 = objc_msgSend_sharedInstance(APLocationManager, v14, v15, v16);
  v21 = objc_msgSend_locationEnabled(v17, v18, v19, v20);
  objc_msgSend_setIsLocationAvailableForAd_(v3, v22, v21, v23);

  v24 = qword_1EDBA4B98;
  objc_sync_exit(v2);

  return v24;
}

- (id)nonUICopy
{
  v3 = objc_alloc_init(APClientInfo);
  v7 = objc_msgSend_orientation(self, v4, v5, v6);
  objc_msgSend_setOrientation_(v3, v8, v7, v9);
  v13 = objc_msgSend_interfaceIdiom(self, v10, v11, v12);
  objc_msgSend_setInterfaceIdiom_(v3, v14, v13, v15);
  v19 = objc_msgSend_screenHeight(self, v16, v17, v18);
  objc_msgSend_setScreenHeight_(v3, v20, v19, v21);
  v25 = objc_msgSend_screenWidth(self, v22, v23, v24);
  objc_msgSend_setScreenWidth_(v3, v26, v25, v27);
  v31 = objc_msgSend_scale(self, v28, v29, v30);
  objc_msgSend_setScale_(v3, v32, v31, v33);

  v37 = objc_msgSend_keyboards(self, v34, v35, v36);
  objc_msgSend_setKeyboards_(v3, v38, v37, v39);

  v43 = objc_msgSend_locationInfo(self, v40, v41, v42);
  objc_msgSend_setLocationInfo_(v3, v44, v43, v45);

  return v3;
}

- (void)updateActiveClientInfo
{
  v6 = objc_msgSend_nonUICopy(self, a2, v2, v3);
  objc_msgSend_setActiveClientInfo_(APClientInfo, v4, v6, v5);
}

- (id)jsonRepresentationWithOptions:(unint64_t)a3
{
  v61[7] = *MEMORY[0x1E69E9840];
  v60[0] = @"orientation";
  v5 = 0x1E696A000;
  v6 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_orientation(self, a2, a3, v3);
  v59 = objc_msgSend_numberWithInteger_(v6, v8, v7, v9);
  v61[0] = v59;
  v60[1] = @"interfaceIdiom";
  v10 = MEMORY[0x1E696AD98];
  v14 = objc_msgSend_interfaceIdiom(self, v11, v12, v13);
  v58 = objc_msgSend_numberWithInteger_(v10, v15, v14, v16);
  v61[1] = v58;
  v60[2] = @"screenHeight";
  v17 = MEMORY[0x1E696AD98];
  v21 = objc_msgSend_screenHeight(self, v18, v19, v20);
  v24 = objc_msgSend_numberWithInteger_(v17, v22, v21, v23);
  v61[2] = v24;
  v60[3] = @"screenWidth";
  v25 = MEMORY[0x1E696AD98];
  v29 = objc_msgSend_screenWidth(self, v26, v27, v28);
  v32 = objc_msgSend_numberWithInteger_(v25, v30, v29, v31);
  v61[3] = v32;
  v60[4] = @"scale";
  v39 = objc_msgSend_scale(self, v33, v34, v35);
  v40 = v39;
  if (!v39)
  {
    v40 = objc_msgSend_null(MEMORY[0x1E695DFB0], v36, v37, v38);
  }

  v61[4] = v40;
  v60[5] = @"keyboards";
  v44 = objc_msgSend_keyboards(self, v36, v37, v38);
  v45 = v44;
  if (!v44)
  {
    v45 = objc_msgSend_null(MEMORY[0x1E695DFB0], v41, v42, v43);
  }

  v61[5] = v45;
  v60[6] = @"locationInfo";
  v49 = objc_msgSend_locationInfo(self, v41, v42, v43);
  if (v49)
  {
    v5 = objc_msgSend_locationInfo(self, v46, v47, v48);
    objc_msgSend_jsonRepresentationWithOptions_(v5, v50, a3, v51);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], v46, v47, v48);
  }
  v52 = ;
  v61[6] = v52;
  v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, v61, v60, 7);
  if (v49)
  {

    v52 = v5;
  }

  if (!v44)
  {
  }

  if (!v39)
  {
  }

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (void)encodeWithCoder:(id)a3
{
  v44 = a3;
  v7 = objc_msgSend_orientation(self, v4, v5, v6);
  objc_msgSend_encodeInt_forKey_(v44, v8, v7, @"orientation");
  v12 = objc_msgSend_interfaceIdiom(self, v9, v10, v11);
  objc_msgSend_encodeInt_forKey_(v44, v13, v12, @"interfaceIdiom");
  v17 = objc_msgSend_screenHeight(self, v14, v15, v16);
  objc_msgSend_encodeInteger_forKey_(v44, v18, v17, @"screenHeight");
  v22 = objc_msgSend_screenWidth(self, v19, v20, v21);
  objc_msgSend_encodeInteger_forKey_(v44, v23, v22, @"screenWidth");
  v27 = objc_msgSend_scale(self, v24, v25, v26);
  objc_msgSend_encodeObject_forKey_(v44, v28, v27, @"scale");

  v32 = objc_msgSend_keyboards(self, v29, v30, v31);
  objc_msgSend_encodeObject_forKey_(v44, v33, v32, @"keyboards");

  v37 = objc_msgSend_locationInfo(self, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(v44, v38, v37, @"locationInfo");

  isLocationAvailableForAd = objc_msgSend_isLocationAvailableForAd(self, v39, v40, v41);
  objc_msgSend_encodeBool_forKey_(v44, v43, isLocationAvailableForAd, @"locationAvailableForAd");
}

- (APClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_init(self, v5, v6, v7);
  if (v10)
  {
    v10->_orientation = objc_msgSend_decodeIntForKey_(v4, v8, @"orientation", v9);
    v10->_interfaceIdiom = objc_msgSend_decodeIntForKey_(v4, v11, @"interfaceIdiom", v12);
    v10->_screenHeight = objc_msgSend_decodeIntegerForKey_(v4, v13, @"screenHeight", v14);
    v10->_screenWidth = objc_msgSend_decodeIntegerForKey_(v4, v15, @"screenWidth", v16);
    v17 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"scale");
    scale = v10->_scale;
    v10->_scale = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v26 = objc_msgSend_setWithObjects_(v21, v24, v22, v25, v23, 0);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v27, v26, @"keyboards");
    keyboards = v10->_keyboards;
    v10->_keyboards = v28;

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"locationInfo");
    locationInfo = v10->_locationInfo;
    v10->_locationInfo = v32;

    v10->_isLocationAvailableForAd = objc_msgSend_decodeBoolForKey_(v4, v34, @"locationAvailableForAd", v35);
  }

  return v10;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_orientation(self, a2, v2, v3);
  v10 = objc_msgSend_interfaceIdiom(self, v7, v8, v9);
  v14 = objc_msgSend_screenHeight(self, v11, v12, v13);
  v18 = objc_msgSend_screenWidth(self, v15, v16, v17);
  v22 = objc_msgSend_scale(self, v19, v20, v21);
  v26 = objc_msgSend_keyboards(self, v23, v24, v25);
  v30 = objc_msgSend_locationInfo(self, v27, v28, v29);
  v34 = objc_msgSend_appVersion(self, v31, v32, v33);
  v37 = objc_msgSend_stringWithFormat_(v5, v35, @"APClientInfo: \norientation: %ld\ninterfaceIdiom: %ld\nscreenHeight: %ld\nscreenWidth: %ld\nscale: %@\nkeyboards: %@\nlocationInfo: %@\nappVersion: %@", v36, v6, v10, v14, v18, v22, v26, v30, v34);

  return v37;
}

- (id)redactedDescription
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_orientation(self, a2, v2, v3);
  v10 = objc_msgSend_interfaceIdiom(self, v7, v8, v9);
  v14 = objc_msgSend_screenHeight(self, v11, v12, v13);
  v18 = objc_msgSend_screenWidth(self, v15, v16, v17);
  v22 = objc_msgSend_scale(self, v19, v20, v21);
  v26 = objc_msgSend_keyboards(self, v23, v24, v25);
  v30 = objc_msgSend_appVersion(self, v27, v28, v29);
  v33 = objc_msgSend_stringWithFormat_(v5, v31, @"APClientInfo: \norientation: %ld\ninterfaceIdiom: %ld\nscreenHeight: %ld\nscreenWidth: %ld\nscale: %@\nkeyboards: %@\nlocationInfo: <redacted>\nappVersion: %@", v32, v6, v10, v14, v18, v22, v26, v30);

  return v33;
}

+ (void)setActiveClientInfo:(id)a3
{
  v8 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  objc_storeStrong(&qword_1EDBA4B98, a3);
  if (qword_1EDBA4B98 && (byte_1EDBA4B90 & 1) == 0)
  {
    byte_1EDBA4B90 = 1;
  }

  if (qword_1EDBA4900)
  {
    objc_msgSend_activeClientInfoUpdated_(qword_1EDBA4900, v6, v8, v7);
  }

  objc_sync_exit(v5);
}

@end