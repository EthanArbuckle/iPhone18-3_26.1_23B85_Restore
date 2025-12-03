@interface NCCompassWaypointGuide
- (NCCompassWaypointGuide)initWithName:(id)name;
- (id)systemWaypoints;
@end

@implementation NCCompassWaypointGuide

- (NCCompassWaypointGuide)initWithName:(id)name
{
  v41 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8 = objc_msgSend_sharedAppManager(NCWaypointManager, v5, v6, v7);
  manager = self->_manager;
  self->_manager = v8;

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = objc_msgSend_initWithSuiteName_(v10, v11, @"com.apple.compass", v12);
  v19 = objc_msgSend_objectForKey_(v13, v14, @"CompassGuideUUID", v15);
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CCAD78]);
    v23 = objc_msgSend_initWithUUIDString_(v20, v21, v19, v22);
  }

  else
  {
    v23 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v16, v17, v18);
    v27 = objc_msgSend_UUIDString(v23, v24, v25, v26);
    objc_msgSend_setObject_forKey_(v13, v28, v27, @"CompassGuideUUID");

    v29 = NCLogForCategory(9uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v33 = objc_msgSend_UUIDString(v23, v30, v31, v32);
      *buf = 136315394;
      v38 = "[NCCompassWaypointGuide initWithName:]";
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_23BD26000, v29, OS_LOG_TYPE_INFO, "%s: created Compass Waypoints guide uuid %@ and saved to defaults.", buf, 0x16u);
    }
  }

  v36.receiver = self;
  v36.super_class = NCCompassWaypointGuide;
  v34 = [(NCWaypointGuide *)&v36 initWithIdentifier:v23 name:nameCopy type:0];

  return v34;
}

- (id)systemWaypoints
{
  v3 = objc_opt_new();
  v7 = objc_msgSend_parkedCarWaypoint(self->_manager, v4, v5, v6);
  v11 = objc_msgSend_location(v7, v8, v9, v10);

  if (v11)
  {
    objc_msgSend_addObject_(v3, v12, v7, v14);
  }

  v15 = objc_msgSend_copy(v3, v12, v13, v14);

  return v15;
}

@end