@interface ParkedCarWaypointComplicationDataSource
- (ParkedCarWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_newTemplateWithAlwaysOn:(BOOL)on;
- (id)alwaysOnTemplate;
- (id)sampleTemplate;
- (void)_monitorParkedCarEvents;
- (void)_startMonitoringVehicleEvents;
- (void)_stopMonitoringVehicleEvents;
- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation ParkedCarWaypointComplicationDataSource

- (ParkedCarWaypointComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v25.receiver = self;
  v25.super_class = ParkedCarWaypointComplicationDataSource;
  v5 = [(SmartWaypointComplicationDataSource *)&v25 initWithComplication:complication family:family forDevice:device];
  v6 = objc_alloc_init(MEMORY[0x277D01280]);
  routineManager = v5->_routineManager;
  v5->_routineManager = v6;

  objc_msgSend__startMonitoringVehicleEvents(v5, v8, v9, v10);
  v14 = objc_msgSend_idealizedLocation(NCLocation, v11, v12, v13);
  v18 = objc_msgSend_rawLocation(v14, v15, v16, v17);
  v21 = objc_msgSend_sampleParkedCarWaypointWithLocation_(NCWaypoint, v19, v18, v20);
  objc_msgSend_setWaypoint_(v5, v22, v21, v23);

  return v5;
}

- (void)dealloc
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2, v3);
  routineManager = self->_routineManager;
  self->_routineManager = 0;

  v6.receiver = self;
  v6.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v6 dealloc];
}

- (void)becomeActive
{
  objc_msgSend__startMonitoringVehicleEvents(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v5 becomeActive];
}

- (void)becomeInactive
{
  objc_msgSend__stopMonitoringVehicleEvents(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = ParkedCarWaypointComplicationDataSource;
  [(SmartWaypointComplicationDataSource *)&v5 becomeInactive];
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v10 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v7, v8, v9);
  v14 = objc_msgSend_parkedCarWaypoint(v10, v11, v12, v13);
  if (v14)
  {
    hasVehicleEvents = self->_hasVehicleEvents;

    if (hasVehicleEvents)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v16, v17, v18);
      v24 = objc_msgSend_parkedCarWaypoint(v20, v21, v22, v23);
      v28 = objc_msgSend_uuid(v24, v25, v26, v27);
      v32 = objc_msgSend_UUIDString(v28, v29, v30, v31);
      v35 = objc_msgSend_stringWithFormat_(v19, v33, @"nanocompass://launch?uuid=%@", v34, v32);

      v38 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v36, v35, v37);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v38 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v16, @"nanocompass://launch", v18);
LABEL_6:
  v39 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[ParkedCarWaypointComplicationDataSource getLaunchURLForTimelineEntryDate:timeTravelDate:withHandler:]";
    v42 = 2112;
    v43 = v38;
    _os_log_impl(&dword_23BD26000, v39, OS_LOG_TYPE_DEFAULT, "%s: launch url is %@", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, v38);
}

- (void)_monitorParkedCarEvents
{
  objc_initWeak(&location, self);
  routineManager = self->_routineManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BD56870;
  v11[3] = &unk_278B94A00;
  objc_copyWeak(&v12, &location);
  objc_msgSend_fetchLastVehicleEventsWithHandler_(routineManager, v4, v11, v5);
  v6 = self->_routineManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD56958;
  v9[3] = &unk_278B94A00;
  objc_copyWeak(&v10, &location);
  objc_msgSend_startMonitoringVehicleEventsWithHandler_(v6, v7, v9, v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_startMonitoringVehicleEvents
{
  if (!self->_monitoringParkedCarEvents)
  {
    self->_monitoringParkedCarEvents = 1;
    (MEMORY[0x2821F9670])(self, sel__monitorParkedCarEvents);
  }
}

- (void)_stopMonitoringVehicleEvents
{
  if (self->_monitoringParkedCarEvents)
  {
    objc_msgSend_stopMonitoringVehicleEvents(self->_routineManager, a2, v2, v3);
    self->_monitoringParkedCarEvents = 0;
  }
}

- (void)_updateParkedCarWaypointWith:(id)with withError:(id)error
{
  v55 = *MEMORY[0x277D85DE8];
  withCopy = with;
  errorCopy = error;
  v11 = errorCopy;
  if (withCopy && !errorCopy && objc_msgSend_count(withCopy, v8, v9, v10))
  {
    self->_hasVehicleEvents = 1;
    v15 = objc_msgSend_firstObject(withCopy, v12, v13, v14);
    v16 = objc_alloc(MEMORY[0x277CE41F8]);
    v20 = objc_msgSend_location(v15, v17, v18, v19);
    objc_msgSend_latitude(v20, v21, v22, v23);
    v25 = v24;
    v29 = objc_msgSend_location(v15, v26, v27, v28);
    objc_msgSend_longitude(v29, v30, v31, v32);
    v37 = objc_msgSend_initWithLatitude_longitude_(v16, v33, v34, v35, v25, v36);

    v38 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 138412290;
      v54 = v37;
      _os_log_impl(&dword_23BD26000, v38, OS_LOG_TYPE_DEFAULT, "RTVehicleEvent has parked car location at %@", &v53, 0xCu);
    }

    v42 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v39, v40, v41);
    objc_msgSend_updateParkedCarWaypointWithLocation_(v42, v43, v37, v44);
  }

  else
  {
    v45 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_23BD26000, v45, OS_LOG_TYPE_DEFAULT, "RTVehicleEvent has error or empty parked car location, resetting parked car waypoint", &v53, 2u);
    }

    objc_msgSend_setWaypoint_(self, v46, 0, v47);
    self->_hasVehicleEvents = 0;
    v15 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v48, v49, v50);
    objc_msgSend_updateParkedCarWaypointWithLocation_(v15, v51, 0, v52);
  }
}

- (id)sampleTemplate
{
  v5 = objc_msgSend_parkedCarLabel(NCWaypoint, a2, v2, v3);
  v9 = objc_msgSend_parkedCarSymbolColor(NCWaypoint, v6, v7, v8);
  v11 = objc_msgSend__templateWithSampleWaypointLabel_symbol_color_(self, v10, v5, @"car.fill", v9);

  return v11;
}

- (id)alwaysOnTemplate
{
  v3 = objc_msgSend__newTemplateWithAlwaysOn_(self, a2, 1, v2);

  return v3;
}

- (id)_newTemplateWithAlwaysOn:(BOOL)on
{
  if ((objc_msgSend__complicationTargetingIsActive(self, a2, on, v3) & 1) == 0)
  {
    v9 = 1;
    if (!self->_hasVehicleEvents)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = objc_msgSend_sharedComplicationManager(NCWaypointManager, v6, v7, v8);
    v14 = objc_msgSend_parkedCarWaypoint(v10, v18, v19, v20);
    v17 = objc_msgSend_copy(v14, v21, v22, v23);
    goto LABEL_6;
  }

  v9 = !self->_hasVehicleEvents;
  if (self->_hasVehicleEvents)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_msgSend_idealizedLocation(NCLocation, v6, v7, v8);
  v14 = objc_msgSend_rawLocation(v10, v11, v12, v13);
  v17 = objc_msgSend_sampleParkedCarWaypointWithLocation_(NCWaypoint, v15, v14, v16);
LABEL_6:
  v24 = v17;

  v28 = objc_msgSend_location(self, v25, v26, v27);
  v32 = objc_msgSend_copy(v28, v29, v30, v31);
  v36 = objc_msgSend_heading(self, v33, v34, v35);
  v40 = objc_msgSend_copy(v36, v37, v38, v39);
  v44 = objc_msgSend_altitude(self, v41, v42, v43);
  v48 = objc_msgSend_copy(v44, v45, v46, v47);
  v52 = objc_msgSend_calibrated(self, v49, v50, v51);
  BYTE2(v56) = 0;
  BYTE1(v56) = on;
  LOBYTE(v56) = v9;
  v54 = objc_msgSend__templateWithWaypoint_location_heading_altitude_deviceCalibrated_showNoData_showInactiveState_showAlwaysOnState_showPrivacyOnState_(self, v53, v24, v32, v40, v48, v52, 0, v56);

  return v54;
}

@end