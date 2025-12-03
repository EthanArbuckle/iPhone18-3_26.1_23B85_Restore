@interface NCMotionClassificationManager
- (NCMotionClassificationManager)init;
- (void)_computeStatus;
- (void)_housekeepingWith:(id)with;
- (void)_startMotionActivityUpdate;
- (void)_updateMotionActivity:(id)activity;
- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary;
- (void)_updateStatusFromPedometer;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)stopMotionActivityUpdates;
@end

@implementation NCMotionClassificationManager

- (NCMotionClassificationManager)init
{
  v8.receiver = self;
  v8.super_class = NCMotionClassificationManager;
  v2 = [(NCMotionClassificationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    motionActivityManager = v2->_motionActivityManager;
    v2->_motionActivityManager = v3;

    v5 = objc_alloc_init(MEMORY[0x277CC1D18]);
    pedometer = v2->_pedometer;
    v2->_pedometer = v5;

    v2->_motionType = 1;
    v2->_stationary = 0;
  }

  return v2;
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BD59B24;
  v6[3] = &unk_278B94718;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)stopMotionActivityUpdates
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD59C54;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startMotionActivityUpdate
{
  objc_initWeak(&location, self);
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "Motion activity is available and starting the event updating.", buf, 2u);
  }

  motionActivityManager = self->_motionActivityManager;
  v8 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v5, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BD59DE4;
  v10[3] = &unk_278B94A30;
  objc_copyWeak(&v11, &location);
  objc_msgSend_startActivityUpdatesToQueue_withHandler_(motionActivityManager, v9, v8, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_updateMotionActivity:(id)activity
{
  activityCopy = activity;
  isMoving = objc_msgSend_nc_isMoving(activityCopy, v5, v6, v7);
  v12 = objc_msgSend_nc_motionType(activityCopy, v9, v10, v11);
  v19 = objc_msgSend_now(MEMORY[0x277CBEAA8], v13, v14, v15);
  if (isMoving)
  {
    objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v16, v12, v19, 0);
    v25 = LABEL_7:;
    objc_msgSend__housekeepingWith_(self, v26, v25, v27);

    goto LABEL_8;
  }

  if (objc_msgSend_stationary(activityCopy, v16, v17, v18))
  {
    v23 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      _os_log_impl(&dword_23BD26000, v23, OS_LOG_TYPE_DEFAULT, "Device is stationary and user is not walking/running/cycling/in automotive.", v33, 2u);
    }

    objc_msgSend_eventWithType_timestamp_stationary_(NCMotionEvent, v24, 0, v19, 1);
    goto LABEL_7;
  }

  if (objc_msgSend_isStepCountingAvailable(MEMORY[0x277CC1D18], v20, v21, v22))
  {
    objc_msgSend__updateStatusFromPedometer(self, v28, v29, v30);
  }

  else
  {
    v31 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_23BD678F8(v31);
    }

    objc_msgSend__updateMotionType_isDeviceStationary_(self, v32, 1, 0);
  }

LABEL_8:
}

- (void)_updateStatusFromPedometer
{
  v5 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v2, v3);
  v9 = objc_msgSend_dateByAddingTimeInterval_(v5, v6, v7, v8, -90.0);
  pedometer = self->_pedometer;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BD5A088;
  v12[3] = &unk_278B94A80;
  v12[4] = self;
  objc_msgSend_queryPedometerDataFromDate_toDate_withHandler_(pedometer, v11, v9, v5, v12);
}

- (void)_housekeepingWith:(id)with
{
  v70 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v8 = objc_msgSend_timestamp(withCopy, v5, v6, v7);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = objc_msgSend_reverseObjectEnumerator(self->_motionEventQueue, v13, v14, v15, 0);
  v20 = objc_msgSend_allObjects(v16, v17, v18, v19);

  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v65, v69, 16);
  if (v22)
  {
    v26 = v22;
    v27 = *v66;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v66 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = *(*(&v65 + 1) + 8 * i);
        v30 = objc_msgSend_timestamp(v29, v23, v24, v25);
        objc_msgSend_timeIntervalSinceDate_(v8, v31, v30, v32);
        v34 = v33;

        if (v34 >= 20.0)
        {
          v38 = objc_msgSend_dateByAddingTimeInterval_(v8, v35, v36, v37, -20.0);
          objc_msgSend_setTimestamp_(v29, v39, v38, v40);

          objc_msgSend_addObject_(v12, v41, v29, v42);
          goto LABEL_11;
        }

        objc_msgSend_addObject_(v12, v35, v29, v37);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v65, v69, 16);
      if (v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v46 = objc_msgSend_reverseObjectEnumerator(v12, v43, v44, v45);
  v50 = objc_msgSend_allObjects(v46, v47, v48, v49);
  v54 = objc_msgSend_mutableCopy(v50, v51, v52, v53);

  objc_msgSend_addObject_(v54, v55, withCopy, v56);
  v60 = objc_msgSend_copy(v54, v57, v58, v59);
  motionEventQueue = self->_motionEventQueue;
  self->_motionEventQueue = v60;

  objc_msgSend__computeStatus(self, v62, v63, v64);
}

- (void)_computeStatus
{
  v8 = objc_msgSend_count(self->_motionEventQueue, a2, v2, v3);
  motionEventQueue = self->_motionEventQueue;
  if (v8 == 1)
  {
    v53 = objc_msgSend_objectAtIndexedSubscript_(motionEventQueue, v5, 0, v7);
    v13 = objc_msgSend_motionType(v53, v10, v11, v12);
    isStationary = objc_msgSend_isStationary(v53, v14, v15, v16);
    objc_msgSend__updateMotionType_isDeviceStationary_(self, v18, v13, isStationary);

    return;
  }

  if (objc_msgSend_count(motionEventQueue, v5, v6, v7) == 1)
  {
    v21 = 0;
LABEL_14:
    selfCopy2 = self;
    v51 = v21;
    v52 = 0;
    goto LABEL_15;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0.0;
  v24 = 0.0;
  do
  {
    v25 = objc_msgSend_objectAtIndexedSubscript_(self->_motionEventQueue, v19, v22, v20);
    v29 = objc_msgSend_timestamp(v25, v26, v27, v28);
    v32 = objc_msgSend_objectAtIndexedSubscript_(self->_motionEventQueue, v30, ++v22, v31);
    v36 = objc_msgSend_timestamp(v32, v33, v34, v35);

    objc_msgSend_timeIntervalSinceDate_(v36, v37, v29, v38);
    v40 = v39;
    if (objc_msgSend_isStationary(v25, v41, v42, v43))
    {
      v24 = v24 + v40;
    }

    else
    {
      v23 = v23 + v40;
      v21 = objc_msgSend_motionType(v25, v44, v45, v46);
    }
  }

  while (v22 < objc_msgSend_count(self->_motionEventQueue, v47, v48, v49) - 1);
  if (v24 <= v23)
  {
    goto LABEL_14;
  }

  selfCopy2 = self;
  v51 = 0;
  v52 = 1;
LABEL_15:

  objc_msgSend__updateMotionType_isDeviceStationary_(selfCopy2, v19, v51, v52);
}

- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD5A778;
  block[3] = &unk_278B94AA8;
  block[4] = self;
  block[5] = type;
  stationaryCopy = stationary;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end