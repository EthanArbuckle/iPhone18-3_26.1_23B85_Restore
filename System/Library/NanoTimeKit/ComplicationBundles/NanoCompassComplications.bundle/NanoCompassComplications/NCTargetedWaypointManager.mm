@interface NCTargetedWaypointManager
+ (id)sharedManager;
- (NCTargetedWaypointManager)init;
- (id)fetchTargetedWaypointUUID;
- (void)_loadTargetedWaypointUUID;
- (void)setTargetedWaypointUUID:(id)d;
@end

@implementation NCTargetedWaypointManager

+ (id)sharedManager
{
  if (qword_27E1C4A98 != -1)
  {
    sub_23BD65548();
  }

  v3 = qword_27E1C4A90;

  return v3;
}

- (NCTargetedWaypointManager)init
{
  v8.receiver = self;
  v8.super_class = NCTargetedWaypointManager;
  v2 = [(NCTargetedWaypointManager *)&v8 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend__loadTargetedWaypointUUID(v2, v3, v4, v5);
  }

  return v6;
}

- (void)setTargetedWaypointUUID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = dCopy;
  targetedWaypointUUID = self->_targetedWaypointUUID;
  p_targetedWaypointUUID = &self->_targetedWaypointUUID;
  v9 = targetedWaypointUUID;
  if (targetedWaypointUUID != dCopy && (objc_msgSend_isEqual_(dCopy, v6, v9, v7) & 1) == 0)
  {
    objc_storeStrong(p_targetedWaypointUUID, d);
    v12 = objc_alloc(MEMORY[0x277CBEBD0]);
    v15 = objc_msgSend_initWithSuiteName_(v12, v13, @"com.apple.compass", v14);
    v16 = *p_targetedWaypointUUID;
    v17 = NCLogForCategory(7uLL);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = *p_targetedWaypointUUID;
        v27 = 136315394;
        v28 = "[NCTargetedWaypointManager setTargetedWaypointUUID:]";
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "%s: setting target waypoint default to %@.", &v27, 0x16u);
      }

      v23 = objc_msgSend_UUIDString(*p_targetedWaypointUUID, v20, v21, v22);
      objc_msgSend_setObject_forKey_(v15, v24, v23, @"TargetedWaypointUUID");
    }

    else
    {
      if (v18)
      {
        v27 = 136315138;
        v28 = "[NCTargetedWaypointManager setTargetedWaypointUUID:]";
        _os_log_impl(&dword_23BD26000, v17, OS_LOG_TYPE_DEFAULT, "%s: target waypoint uuid is nil, removing from defaults.", &v27, 0xCu);
      }

      objc_msgSend_removeObjectForKey_(v15, v25, @"TargetedWaypointUUID", v26);
    }
  }
}

- (id)fetchTargetedWaypointUUID
{
  objc_msgSend__loadTargetedWaypointUUID(self, a2, v2, v3);
  targetedWaypointUUID = self->_targetedWaypointUUID;

  return targetedWaypointUUID;
}

- (void)_loadTargetedWaypointUUID
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v17 = objc_msgSend_initWithSuiteName_(v3, v4, @"com.apple.compass", v5);
  objc_msgSend_synchronize(v17, v6, v7, v8);
  v11 = objc_msgSend_objectForKey_(v17, v9, @"TargetedWaypointUUID", v10);
  v12 = v11;
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = objc_msgSend_initWithUUIDString_(v13, v14, v12, v15);
  }

  targetedWaypointUUID = self->_targetedWaypointUUID;
  self->_targetedWaypointUUID = v11;
}

@end