@interface NanoCompassBaseComplicationDataSource
+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4;
+ (NSString)appNameLocalizationKey;
+ (NSString)bundleIdentifierSuffix;
+ (NSString)complicationNameLocalizationKey;
+ (id)bundleIdentifier;
+ (id)localizedAppName;
+ (id)localizedComplicationName;
- (CLKComplicationTemplate)alwaysOnTemplate;
- (CLKComplicationTimelineEntry)timelineEntry;
- (NanoCompassBaseComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5 mode:(int64_t)a6;
- (id)currentSwitcherTemplate;
- (id)newTemplate;
- (id)noDataTemplate;
- (id)randomizedTemplate;
- (void)_invalidate;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NanoCompassBaseComplicationDataSource

+ (id)localizedAppName
{
  v4 = objc_msgSend_appNameLocalizationKey(a1, a2, v2, v3);
  v5 = NanoCompassLocalizedString(v4);

  return v5;
}

+ (id)localizedComplicationName
{
  v4 = objc_msgSend_complicationNameLocalizationKey(a1, a2, v2, v3);
  v5 = NanoCompassLocalizedString(v4);

  return v5;
}

+ (id)bundleIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD2DE68;
  block[3] = &unk_278B940E8;
  block[4] = a1;
  if (qword_27E1C4B78 != -1)
  {
    dispatch_once(&qword_27E1C4B78, block);
  }

  v5 = qword_27E1C4B70;
  v6 = objc_msgSend_bundleIdentifierSuffix(a1, a2, v2, v3);
  v9 = objc_msgSend_stringByAppendingString_(v5, v7, v6, v8);

  return v9;
}

- (NanoCompassBaseComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5 mode:(int64_t)a6
{
  v6 = a6;
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v59 = v13;
    v60 = 2048;
    v61 = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> init...]", buf, 0x16u);
  }

  v57.receiver = self;
  v57.super_class = NanoCompassBaseComplicationDataSource;
  v17 = [(CLKCComplicationDataSource *)&v57 initWithComplication:v10 family:a4 forDevice:v11];
  if (v17)
  {
    v18 = objc_msgSend_sharedComplicationManager(NCManager, v14, v15, v16);
    objc_msgSend_setManager_(v17, v19, v18, v20);

    v17->_usesMotion = v6 & 1;
    v17->_usesBearing = (v6 & 2) != 0;
    v17->_usesLocation = (v6 & 4) != 0;
    if (supportAbsoluteAltimeterFeatures())
    {
      v17->_useAltimeter = (v6 & 8) != 0;
    }

    v24 = objc_msgSend_idealizedHeading(NCHeading, v21, v22, v23);
    objc_msgSend_setHeading_(v17, v25, v24, v26);

    v30 = objc_msgSend_idealizedBearing(NCBearing, v27, v28, v29);
    objc_msgSend_setBearing_(v17, v31, v30, v32);

    v36 = objc_msgSend_idealizedIncline(NCIncline, v33, v34, v35);
    objc_msgSend_setIncline_(v17, v37, v36, v38);

    objc_msgSend_setCalibrated_(v17, v39, 1, v40);
    v44 = objc_msgSend_idealizedLocation(NCLocation, v41, v42, v43);
    objc_msgSend_setLocation_(v17, v45, v44, v46);

    v50 = objc_msgSend_idealizedAltitude(NCAltitude, v47, v48, v49);
    objc_msgSend_setAltitude_(v17, v51, v50, v52);

    objc_msgSend__startObservingNotifications(v17, v53, v54, v55);
  }

  return v17;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> dealloc]", buf, 0x16u);
  }

  motionToken = self->_motionToken;
  if (motionToken)
  {
    objc_msgSend_stopMotionUpdatesForToken_(self->_manager, v3, motionToken, v4);
    objc_msgSend_setMotionToken_(self, v8, 0, v9);
  }

  locationToken = self->_locationToken;
  if (locationToken)
  {
    objc_msgSend_stopLocationUpdatesForToken_(self->_manager, v3, locationToken, v4);
    objc_msgSend_setLocationToken_(self, v11, 0, v12);
  }

  if (objc_msgSend_isAbsoluteAltimeterAvailable(self->_manager, v3, locationToken, v4) && self->_altimeterToken)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "stopping absolute altimeter update.", buf, 2u);
    }

    objc_msgSend_stopAltimeterUpdateForToken_(self->_manager, v16, self->_altimeterToken, v17);
    objc_msgSend_setAltimeterToken_(self, v18, 0, v19);
  }

  objc_msgSend__stopObservingNotifications(self, v13, v14, v15);
  v20.receiver = self;
  v20.super_class = NanoCompassBaseComplicationDataSource;
  [(NanoCompassBaseComplicationDataSource *)&v20 dealloc];
}

- (CLKComplicationTimelineEntry)timelineEntry
{
  timelineEntry = self->_timelineEntry;
  if (!timelineEntry)
  {
    objc_msgSend__invalidate(self, a2, v2, v3);
    timelineEntry = self->_timelineEntry;
  }

  return timelineEntry;
}

- (id)currentSwitcherTemplate
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v14 = 138412546;
    v15 = v7;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&dword_23BD26000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[%@<%p> currentSwitcherTemplate]", &v14, 0x16u);
  }

  v8 = objc_msgSend_timelineEntry(self, v3, v4, v5);
  v12 = objc_msgSend_complicationTemplate(v8, v9, v10, v11);

  return v12;
}

- (CLKComplicationTemplate)alwaysOnTemplate
{
  alwaysOnTemplate = self->_alwaysOnTemplate;
  if (!alwaysOnTemplate)
  {
    v6 = objc_msgSend_noDataTemplate(self, a2, v2, v3);
    objc_msgSend_setAlwaysOnTemplate_(self, v7, v6, v8);

    alwaysOnTemplate = self->_alwaysOnTemplate;
  }

  return alwaysOnTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v9 = objc_msgSend_timelineEntry(self, v6, v7, v8);
  (*(a3 + 2))(v5, v9);
}

- (void)_invalidate
{
  v5 = MEMORY[0x277CBBAC8];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3);
  v10 = objc_msgSend_newTemplate(self, v7, v8, v9);
  v12 = objc_msgSend_entryWithDate_complicationTemplate_(v5, v11, v6, v10);
  objc_msgSend_setTimelineEntry_(self, v13, v12, v14);

  v21 = objc_msgSend_delegate(self, v15, v16, v17);
  objc_msgSend_invalidateEntries(v21, v18, v19, v20);
}

- (void)_startObservingNotifications
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_addObserver_selector_name_object_(v6, v5, self, sel__invalidate, *MEMORY[0x277CBE620], 0);
}

- (void)_stopObservingNotifications
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v6, v5, self, *MEMORY[0x277CBE620], 0);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  isEqualToString = a5;
  v11 = isEqualToString;
  if (a6 == &off_278B94108)
  {
    v26 = isEqualToString;
    isEqualToString = objc_msgSend_isEqualToString_(a3, isEqualToString, @"bearing", v10);
    v11 = v26;
    if (isEqualToString)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v26, v26, *MEMORY[0x277CCA2F0], v12);
      v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
      isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

      if (isEqual)
      {
        objc_msgSend_setBearing_(self, v21, 0, v22);
      }

      else
      {
        objc_msgSend_setBearing_(self, v21, v13, v22);
      }

      if (self->_paused)
      {
        objc_msgSend__invalidate(self, v23, v24, v25);
      }

      v11 = v26;
    }
  }

  MEMORY[0x2821F96F8](isEqualToString, v11);
}

+ (NSString)appNameLocalizationKey
{
  sub_23BD29238();
  sub_23BD2921C();
  return &stru_284E80A60;
}

+ (NSString)complicationNameLocalizationKey
{
  sub_23BD29238();
  sub_23BD2921C();
  return &stru_284E80A60;
}

+ (NSString)bundleIdentifierSuffix
{
  sub_23BD29238();
  sub_23BD2921C();
  return &stru_284E80A60;
}

- (id)newTemplate
{
  sub_23BD29238();
  sub_23BD2921C();

  return objc_opt_new();
}

- (id)noDataTemplate
{
  sub_23BD29238();
  sub_23BD2921C();
  v2 = objc_opt_new();

  return v2;
}

- (id)randomizedTemplate
{
  sub_23BD29238();
  sub_23BD2921C();
  v2 = objc_opt_new();

  return v2;
}

+ (BOOL)acceptsComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  sub_23BD29238();
  sub_23BD2921C();
  return 0;
}

@end