@interface SmartWaypointComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_complicationTargetingIsActive;
- (BOOL)_needsInvalidation;
- (SmartWaypointComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_templateWithSampleWaypointLabel:(id)a3 symbol:(id)a4 color:(id)a5;
- (id)_templateWithWaypoint:(id)a3 location:(id)a4 heading:(id)a5 altitude:(id)a6 deviceCalibrated:(BOOL)a7 showNoData:(BOOL)a8 showInactiveState:(BOOL)a9 showAlwaysOnState:(BOOL)a10 showPrivacyOnState:(BOOL)a11;
- (id)alwaysOnTemplate;
- (id)noDataTemplate;
- (id)privacyTemplate;
- (id)randomizedTemplate;
- (id)redactionTextProvider;
- (id)sampleTemplate;
- (void)_fetchTargetedWaypoint;
- (void)_handleDeviceLockChange;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
- (void)resume;
@end

@implementation SmartWaypointComplicationDataSource

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  if (objc_msgSend_supportsUrsa(v5, v6, v7, v8))
  {
    v9 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = objc_msgSend_initWithUUIDString_(v9, v10, @"4AF61239-2126-4FD6-8E7A-CDA2D7A0BFE9", v11);
    v15 = objc_msgSend_supportsCapability_(v5, v13, v12, v14);

    if (v15)
    {
      if ((objc_msgSend_isTinker(v5, v16, v17, v18) & 1) == 0)
      {
        if (!objc_msgSend_showingIdealizedData(NCManager, v19, v20, v21))
        {
          v23 = (a3 - 8) < 5;
          goto LABEL_9;
        }

        v22 = NCLogForCategory(1uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_23BD26000, v22, OS_LOG_TYPE_DEFAULT, "running fixture demo mode. disable the waypoint complication in complication picker.", v25, 2u);
        }
      }
    }
  }

  v23 = 0;
LABEL_9:

  return v23;
}

- (SmartWaypointComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v20.receiver = self;
  v20.super_class = SmartWaypointComplicationDataSource;
  v5 = [NanoCompassBaseComplicationDataSource initWithComplication:sel_initWithComplication_family_forDevice_mode_ family:a3 forDevice:? mode:?];
  v9 = objc_msgSend_idealizedWaypoint(NCWaypoint, v6, v7, v8);
  objc_msgSend_setWaypoint_(v5, v10, v9, v11);

  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v15 = objc_msgSend_initWithSuiteName_(v12, v13, @"com.apple.compass", v14);
  defaults = v5->_defaults;
  v5->_defaults = v15;

  objc_msgSend_addObserver_forKeyPath_options_context_(v5->_defaults, v17, v5, @"TargetedWaypointUUID", 5, &off_278B94978);
  objc_msgSend_addObserver_forKeyPath_options_context_(v5->_defaults, v18, v5, @"TargetedViewUsageTimestamp", 5, &off_278B94980);
  return v5;
}

- (void)dealloc
{
  objc_msgSend_removeObserver_forKeyPath_context_(self->_defaults, a2, self, @"TargetedWaypointUUID", &off_278B94978);
  objc_msgSend_removeObserver_forKeyPath_context_(self->_defaults, v3, self, @"TargetedViewUsageTimestamp", &off_278B94980);
  v4.receiver = self;
  v4.super_class = SmartWaypointComplicationDataSource;
  [(NanoCompassBaseComplicationDataSource *)&v4 dealloc];
}

- (void)resume
{
  v19.receiver = self;
  v19.super_class = SmartWaypointComplicationDataSource;
  [(CLKCComplicationDataSource *)&v19 resume];
  objc_msgSend__fetchTargetedWaypoint(self, v3, v4, v5);
  if ((objc_msgSend__complicationTargetingIsActive(self, v6, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_manager(self, v9, v10, v11);
    v16 = objc_msgSend_motionToken(self, v13, v14, v15);
    objc_msgSend_pauseMotionUpdatesForToken_(v12, v17, v16, v18);
  }
}

- (BOOL)_needsInvalidation
{
  if (objc_msgSend_paused(self, a2, v2, v3))
  {
    return 0;
  }

  return objc_msgSend__complicationTargetingIsActive(self, v5, v6, v7);
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v10 = objc_msgSend_targetedWaypoint(self, v7, v8, v9);
  if (v10 && (v14 = v10, IsActive = objc_msgSend__complicationTargetingIsActive(self, v11, v12, v13), v14, IsActive))
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_msgSend_targetedWaypoint(self, v11, v16, v13);
    v22 = objc_msgSend_uuid(v18, v19, v20, v21);
    v26 = objc_msgSend_UUIDString(v22, v23, v24, v25);
    v29 = objc_msgSend_stringWithFormat_(v17, v27, @"nanocompass://launch?uuid=%@", v28, v26);

    v32 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v30, v29, v31);
  }

  else
  {
    v32 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v11, @"nanocompass://launch?showPicker", v13);
  }

  v33 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[SmartWaypointComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v36 = 2112;
    v37 = v32;
    _os_log_impl(&dword_23BD26000, v33, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@", buf, 0x16u);
  }

  v6[2](v6, v32);
}

- (void)becomeActive
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_isActive)
  {
    self->_isActive = 1;
    v3 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "[SmartWaypointComplicationDataSource becomeActive]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s face is set as current", &v31, 0xCu);
    }

    v7 = objc_msgSend_device(self, v4, v5, v6);
    isLocked = objc_msgSend_isLocked(v7, v8, v9, v10);

    if ((isLocked & 1) == 0)
    {
      v15 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_DEFAULT, "device is unlocked. activate waypoint complication", &v31, 2u);
      }

      v19 = objc_msgSend_manager(self, v16, v17, v18);
      objc_msgSend_setWaypointComplicationIsActive_(v19, v20, 1, v21);

      v25 = objc_msgSend_manager(self, v22, v23, v24);
      objc_msgSend_activateWaypointComplication(v25, v26, v27, v28);
    }

    v29 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13, v14);
    objc_msgSend_addObserver_selector_name_object_(v29, v30, self, sel__handleDeviceLockChange, *MEMORY[0x277CBB690], 0);
  }
}

- (void)becomeInactive
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_isActive)
  {
    v3 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[SmartWaypointComplicationDataSource becomeInactive]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s face is not set as current, deactivate waypoint complication", &v22, 0xCu);
    }

    v7 = objc_msgSend_manager(self, v4, v5, v6);
    objc_msgSend_setWaypointComplicationIsActive_(v7, v8, 0, v9);

    v13 = objc_msgSend_manager(self, v10, v11, v12);
    objc_msgSend_deactivateWaypointComplication(v13, v14, v15, v16);

    self->_isActive = 0;
    v20 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v17, v18, v19);
    objc_msgSend_removeObserver_name_object_(v20, v21, self, *MEMORY[0x277CBB690], 0);
  }
}

- (void)_fetchTargetedWaypoint
{
  v15 = objc_msgSend_sharedManager(NCGuidesManager, a2, v2, v3);
  v8 = objc_msgSend_fetchTargetedWaypoint(v15, v5, v6, v7);
  v12 = objc_msgSend_copy(v8, v9, v10, v11);
  objc_msgSend_setTargetedWaypoint_(self, v13, v12, v14);
}

- (void)_handleDeviceLockChange
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_device(self, a2, v2, v3);
  isLocked = objc_msgSend_isLocked(v5, v6, v7, v8);

  v10 = NCLogForCategory(7uLL);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (isLocked)
  {
    if (v11)
    {
      *v77 = 136315138;
      *&v77[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
      _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%s device is locked, deactivate waypoint complication", v77, 0xCu);
    }

    v15 = objc_msgSend_manager(self, v12, v13, v14);
    objc_msgSend_setWaypointComplicationIsActive_(v15, v16, 0, v17);

    v21 = objc_msgSend_manager(self, v18, v19, v20);
    objc_msgSend_deactivateWaypointComplication(v21, v22, v23, v24);
LABEL_5:

    goto LABEL_18;
  }

  if (v11)
  {
    v28 = !self->_isActive;
    if (self->_isActive)
    {
      v29 = &stru_284E80A60;
    }

    else
    {
      v29 = @"not ";
    }

    *v77 = 136315650;
    *&v77[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
    v30 = @"don't ";
    *&v77[14] = v29;
    *&v77[12] = 2112;
    if (!v28)
    {
      v30 = &stru_284E80A60;
    }

    *&v77[22] = 2112;
    v78 = v30;
    _os_log_impl(&dword_23BD26000, v10, OS_LOG_TYPE_DEFAULT, "%s device is unlocked, face is %@active. %@activate waypoint complication", v77, 0x20u);
  }

  if (self->_isActive)
  {
    v34 = objc_msgSend_manager(self, v31, v32, v33);
    objc_msgSend_setWaypointComplicationIsActive_(v34, v35, 1, v36);

    v40 = objc_msgSend_manager(self, v37, v38, v39);
    objc_msgSend_activateWaypointComplication(v40, v41, v42, v43);
  }

  objc_msgSend__fetchTargetedWaypoint(self, v31, v32, v33, *v77, *&v77[16]);
  if ((objc_msgSend_isSmartComplication(self, v44, v45, v46) & 1) == 0 && (objc_msgSend_isParkedCarComplication(self, v25, v26, v27) & 1) == 0)
  {
    v47 = objc_msgSend_waypoint(self, v25, v26, v27);
    v51 = objc_msgSend_type(v47, v48, v49, v50);

    if (v51 != 2)
    {
      v52 = NCLogForCategory(7uLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_msgSend_waypoint(self, v53, v54, v55);
        v60 = objc_msgSend_label(v56, v57, v58, v59);
        *v77 = 136315394;
        *&v77[4] = "[SmartWaypointComplicationDataSource _handleDeviceLockChange]";
        *&v77[12] = 2112;
        *&v77[14] = v60;
        _os_log_impl(&dword_23BD26000, v52, OS_LOG_TYPE_DEFAULT, "%s device unlocked, re-reading in waypoint %@", v77, 0x16u);
      }

      v21 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v61, v62, v63);
      v67 = objc_msgSend_waypoint(self, v64, v65, v66);
      v71 = objc_msgSend_uuid(v67, v68, v69, v70);
      v74 = objc_msgSend_waypointWithUUID_(v21, v72, v71, v73);
      objc_msgSend_setWaypoint_(self, v75, v74, v76);

      goto LABEL_5;
    }
  }

LABEL_18:
  objc_msgSend__invalidate(self, v25, v26, v27);
}

- (BOOL)_complicationTargetingIsActive
{
  v8 = objc_msgSend_targetedViewUsageTimestamp(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_targetedViewUsageTimestamp(self, v5, v6, v7);
    v13 = objc_msgSend_now(MEMORY[0x277CBEAA8], v10, v11, v12);
    IsSameDay = NanoCompassIsSameDay(v9, v13);
  }

  else
  {
    IsSameDay = 0;
  }

  return IsSameDay;
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_idealizedSmartWaypoint(NCWaypoint, a2, v2, v3);
  v9 = objc_msgSend_label(v5, v6, v7, v8);
  v13 = objc_msgSend_symbol(v5, v10, v11, v12);
  v17 = objc_msgSend_labelColor(v5, v14, v15, v16);
  v19 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v18, v9, v13, v17);

  return v19;
}

- (id)noDataTemplate
{
  BYTE2(v3) = 0;
  LOWORD(v3) = 0;
  return objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, a2, 0, 0, 0, 0, 0, 1, v3);
}

- (id)randomizedTemplate
{
  v5 = objc_msgSend_randomizedWaypoint(NCWaypoint, a2, v2, v3);
  v9 = objc_msgSend_randomizedLocation(NCLocation, v6, v7, v8);
  v13 = objc_msgSend_randomizedHeading(NCHeading, v10, v11, v12);
  v17 = objc_msgSend_randomizedAltitude(NCAltitude, v14, v15, v16);
  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  v19 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v18, v5, v9, v13, v17, 1, 0, v21);

  return v19;
}

- (id)alwaysOnTemplate
{
  v8 = objc_msgSend_targetedWaypoint(self, a2, v2, v3);
  if (v8)
  {
    IsActive = objc_msgSend__complicationTargetingIsActive(self, v5, v6, v7);

    if (IsActive)
    {
      v10 = objc_msgSend_targetedWaypoint(self, v5, v6, v7);
      v8 = objc_msgSend_copy(v10, v11, v12, v13);

      v14 = 0;
      goto LABEL_6;
    }

    v8 = 0;
  }

  v14 = 1;
LABEL_6:
  v15 = objc_msgSend_location(self, v5, v6, v7);
  v19 = objc_msgSend_copy(v15, v16, v17, v18);
  v23 = objc_msgSend_heading(self, v20, v21, v22);
  v27 = objc_msgSend_copy(v23, v24, v25, v26);
  v31 = objc_msgSend_altitude(self, v28, v29, v30);
  v35 = objc_msgSend_copy(v31, v32, v33, v34);
  v39 = objc_msgSend_calibrated(self, v36, v37, v38);
  *(&v43 + 1) = 1;
  LOBYTE(v43) = v14;
  v41 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v40, v8, v19, v27, v35, v39, 0, v43);

  return v41;
}

- (id)privacyTemplate
{
  BYTE2(v3) = 1;
  LOWORD(v3) = 0;
  return objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, a2, 0, 0, 0, 0, 0, 1, v3);
}

- (id)_templateWithSampleWaypointLabel:(id)a3 symbol:(id)a4 color:(id)a5
{
  v71[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v70[0] = @"showSampleData";
  v70[1] = @"label";
  v71[0] = &unk_284E8AF98;
  v71[1] = v8;
  v70[2] = @"symbol";
  v70[3] = @"color";
  v71[2] = v9;
  v71[3] = v10;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v71, v70, 4);
  v16 = objc_msgSend_family(self, v13, v14, v15);
  if (v16 > 9)
  {
    switch(v16)
    {
      case 10:
        v39 = MEMORY[0x277CBBB10];
        v40 = objc_opt_class();
        v21 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v39, v41, v40, v42);
        objc_msgSend_setMetadata_(v21, v43, v12, v44);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v45, v21, v46);
        goto LABEL_10;
      case 11:
        v48 = MEMORY[0x277CBBB10];
        v49 = objc_opt_class();
        v21 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v48, v50, v49, v51);
        objc_msgSend_setMetadata_(v21, v52, v12, v53);
        v54 = objc_alloc(MEMORY[0x277CBB998]);
        v47 = objc_msgSend_initWithImageProvider_(v54, v55, v21, v56);
        goto LABEL_12;
      case 12:
        v17 = MEMORY[0x277CBBB10];
        v18 = objc_opt_class();
        v21 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v17, v19, v18, v20);
        objc_msgSend_setMetadata_(v21, v22, v12, v23);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v24, v21, v25);
        v47 = LABEL_10:;
LABEL_12:
        v38 = v47;
        goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v16 == 8)
  {
    v21 = NanoCompassSampleWaypointCornerComplicationTextProvider(v8, v10);
    v57 = MEMORY[0x277CBBB10];
    v58 = objc_opt_class();
    v30 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v57, v59, v58, v60);
    objc_msgSend_setMetadata_(v30, v61, v12, v62);
    v38 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v63, v21, v30);
    goto LABEL_14;
  }

  if (v16 == 9)
  {
    v21 = NanoCompassSampleWaypointCornerComplicationTextProvider(v8, v10);
    v26 = MEMORY[0x277CBBB10];
    v27 = objc_opt_class();
    v30 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v26, v28, v27, v29);
    objc_msgSend_setMetadata_(v30, v31, v12, v32);
    v33 = MEMORY[0x277CBB810];
    v36 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v34, v30, v35);
    v38 = objc_msgSend_templateWithCircularTemplate_textProvider_(v33, v37, v36, v21);

LABEL_14:
    goto LABEL_18;
  }

LABEL_15:
  v21 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_23BD673D8(self, v21, v64, v65);
  }

  v38 = 0;
LABEL_18:

  v66 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v38, v67, v66, v68);

  return v38;
}

- (id)_templateWithWaypoint:(id)a3 location:(id)a4 heading:(id)a5 altitude:(id)a6 deviceCalibrated:(BOOL)a7 showNoData:(BOOL)a8 showInactiveState:(BOOL)a9 showAlwaysOnState:(BOOL)a10 showPrivacyOnState:(BOOL)a11
{
  v11 = a8;
  v12 = a7;
  v123[9] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22 = a6;
  v23 = !v12 | v11;
  if (v23 != 1 || a10)
  {
    v122[0] = @"heading";
    if (v18)
    {
      v117 = 0;
      v24 = v18;
      goto LABEL_7;
    }
  }

  else
  {

    v17 = 0;
    v122[0] = @"heading";
  }

  v24 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21);
  v18 = 0;
  v117 = 1;
LABEL_7:
  v116 = v24;
  v123[0] = v24;
  v122[1] = @"location";
  v25 = v17;
  if (!v17)
  {
    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21);
  }

  v115 = v25;
  v123[1] = v25;
  v122[2] = @"waypoint";
  v26 = v16;
  if (!v16)
  {
    v26 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21);
  }

  v119 = v18;
  v120 = v17;
  v118 = v16;
  v123[2] = v26;
  v122[3] = @"altitude";
  v27 = v22;
  v28 = v22;
  if (!v22)
  {
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21);
  }

  v123[3] = v27;
  v122[4] = @"nodata";
  v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, v23, v21);
  v123[4] = v29;
  v122[5] = @"inactive";
  v32 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v30, a9, v31);
  v123[5] = v32;
  v122[6] = @"alwayson";
  v35 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v33, a10, v34);
  v123[6] = v35;
  v122[7] = @"smart";
  v36 = MEMORY[0x277CCABB0];
  isSmartComplication = objc_msgSend_isSmartComplication(self, v37, v38, v39);
  v43 = objc_msgSend_numberWithBool_(v36, v41, isSmartComplication, v42);
  v123[7] = v43;
  v122[8] = @"showPrivacyRedaction";
  v46 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v44, a11, v45);
  v123[8] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v123, v122, 9);

  v52 = v28;
  if (!v28)
  {
  }

  if (!v118)
  {
  }

  if (!v120)
  {
  }

  if (v117)
  {
  }

  v53 = objc_msgSend_family(self, v49, v50, v51);
  if (v53 > 9)
  {
    switch(v53)
    {
      case 10:
        v66 = MEMORY[0x277CBBB10];
        v67 = objc_opt_class();
        v61 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v66, v68, v67, v69);
        objc_msgSend_setMetadata_(v61, v70, v48, v71);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v72, v61, v73);
        goto LABEL_31;
      case 11:
        v75 = MEMORY[0x277CBBB10];
        v76 = objc_opt_class();
        v61 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v75, v77, v76, v78);
        objc_msgSend_setMetadata_(v61, v79, v48, v80);
        v81 = objc_alloc(MEMORY[0x277CBB998]);
        v74 = objc_msgSend_initWithImageProvider_(v81, v82, v61, v83);
        goto LABEL_33;
      case 12:
        v57 = MEMORY[0x277CBBB10];
        v58 = objc_opt_class();
        v61 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v57, v59, v58, v60);
        objc_msgSend_setMetadata_(v61, v62, v48, v63);
        objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB938], v64, v61, v65);
        v74 = LABEL_31:;
LABEL_33:
        v84 = v74;
        goto LABEL_44;
    }

    goto LABEL_36;
  }

  if (v53 == 8)
  {
    if (a11)
    {
      objc_msgSend_redactionTextProvider(self, v54, v55, v56);
    }

    else
    {
      v87 = objc_msgSend_isSmartComplication(self, v54, v55, v56);
      v91 = objc_msgSend_isSmartComplication(self, v88, v89, v90);
      NanoCompassWaypointCornerAndBezelComplicationTextProvider(v120, v119, v118, a9, a10, v87 ^ 1, v91);
    }
    v61 = ;
    v92 = MEMORY[0x277CBBB10];
    v93 = objc_opt_class();
    v96 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v92, v94, v93, v95);
    objc_msgSend_setMetadata_(v96, v97, v48, v98);
    v84 = objc_msgSend_templateWithTextProvider_imageProvider_(MEMORY[0x277CBB908], v99, v61, v96);
    goto LABEL_43;
  }

  if (v53 == 9)
  {
    if ((v23 | a11) == 1)
    {
      objc_msgSend_redactionTextProvider(self, v54, v55, v56);
    }

    else
    {
      NanoCompassWaypointCornerAndBezelComplicationTextProvider(v120, v119, v118, a9, a10, 0, 0);
    }
    v61 = ;
    v100 = MEMORY[0x277CBBB10];
    v101 = objc_opt_class();
    v96 = objc_msgSend_fullColorImageProviderWithImageViewClass_(v100, v102, v101, v103);
    objc_msgSend_setMetadata_(v96, v104, v48, v105);
    v106 = MEMORY[0x277CBB810];
    v109 = objc_msgSend_templateWithImageProvider_(MEMORY[0x277CBB850], v107, v96, v108);
    v84 = objc_msgSend_templateWithCircularTemplate_textProvider_(v106, v110, v109, v61);

LABEL_43:
    goto LABEL_44;
  }

LABEL_36:
  v61 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    sub_23BD67454(self, v61, v85, v86);
  }

  v84 = 0;
LABEL_44:

  v111 = NanoCompassAppTintColor();
  objc_msgSend_setTintColor_(v84, v112, v111, v113);

  return v84;
}

- (id)redactionTextProvider
{
  if (qword_27E1C5290 != -1)
  {
    sub_23BD674D0();
  }

  v3 = qword_27E1C5288;

  return v3;
}

@end