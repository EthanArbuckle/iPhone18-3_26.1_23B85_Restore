@interface NCLocationUpdateBaseDelegate
+ (id)CLAuthorizationStatusToString:(int)string;
- (BOOL)isLocationServiceOff;
- (NCLocationUpdateBaseDelegate)init;
- (double)cappedMaxDistanceInMeters;
- (double)getNearestWaypointDistance;
- (id)startLocationServiceUpdateWithHandler:(id)handler;
- (id)startLocationUpdatesWithHandler:(id)handler;
- (void)_adjustLocationUpdateInterest;
- (void)_idleTimerFired:(id)fired;
- (void)_invalidateIdleTimer;
- (void)_logCurrentLocation;
- (void)_notifyLocationUpdateHandlers;
- (void)_populateNearestAndFurthestWaypoints;
- (void)_resetLocationAndAltitude;
- (void)_setFurthestWaypoint:(id)waypoint withDistance:(double)distance;
- (void)_setNearestWaypoint:(id)waypoint withDistance:(double)distance;
- (void)_startIdleTimer;
- (void)_startLocationUpdatesWithInterest:(int64_t)interest;
- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary;
- (void)dealloc;
- (void)endSession:(id)session;
- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion;
- (void)fetchIsRemote:(id)remote;
- (void)fetchLocationsWithinInterval:(id)interval completionHandler:(id)handler;
- (void)fetchLocationsWithinRadius:(double)radius count:(int64_t)count taskIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchSmoothedLocationsWithinInterval:(id)interval completionHandler:(id)handler;
- (void)fetchWillPrompt:(id)prompt;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)performAfterLocationPromptIsShown:(id)shown;
- (void)setCurrentUpdateInterest:(int64_t)interest;
- (void)setForce1Hz:(BOOL)hz;
- (void)setParkedCarWaypoint:(id)waypoint;
- (void)setStartLocationUpdate:(BOOL)update;
- (void)setWaypoints:(id)waypoints;
- (void)startFurthestWaypointUpdatesWithHandler:(id)handler;
- (void)startLocationUpdateInterestDescriptionUpdatesWithHandler:(id)handler;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)startNearestWaypointUpdatesWithHandler:(id)handler;
- (void)startSession:(id)session;
- (void)startSessionWithoutLookback:(id)lookback;
- (void)stopLocationUpdates;
- (void)stopLocationUpdatesForToken:(id)token;
- (void)updateLocation:(id)location error:(id)error;
- (void)updateLocationManagerWithCurrentAuthorizationStatus;
@end

@implementation NCLocationUpdateBaseDelegate

- (NCLocationUpdateBaseDelegate)init
{
  v32.receiver = self;
  v32.super_class = NCLocationUpdateBaseDelegate;
  v2 = [(NCLocationUpdateBaseDelegate *)&v32 init];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "init NCLocationUpdateBaseDelegate", buf, 2u);
  }

  if (v2)
  {
    v2[225] = 0;
    v4 = objc_opt_new();
    v5 = *(v2 + 7);
    *(v2 + 7) = v4;

    v6 = objc_opt_new();
    v7 = *(v2 + 9);
    *(v2 + 9) = v6;

    *(v2 + 57) = 0;
    v8 = objc_alloc(MEMORY[0x277CBFC10]);
    v10 = objc_msgSend_initWithEffectiveBundleIdentifier_delegate_onQueue_(v8, v9, @"com.apple.NanoCompass.watchkitapp", v2, MEMORY[0x277D85CD0]);
    v11 = *(v2 + 1);
    *(v2 + 1) = v10;

    objc_msgSend__setGroundAltitudeEnabled_(*(v2 + 1), v12, 1, v13);
    v14 = objc_opt_new();
    v15 = *(v2 + 10);
    *(v2 + 10) = v14;

    v2[224] = 0;
    *(v2 + 29) = objc_msgSend_initialInterest(v2, v16, v17, v18);
    v22 = objc_msgSend_array(MEMORY[0x277CBEA60], v19, v20, v21);
    v23 = *(v2 + 13);
    *(v2 + 13) = v22;

    *(v2 + 136) = xmmword_23BD6C7F0;
    *(v2 + 84) = 0;
    objc_initWeak(buf, v2);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_23BD49560;
    v29[3] = &unk_278B946F0;
    objc_copyWeak(&v30, buf);
    v24 = MEMORY[0x23EEBBDF0](v29);
    v25 = *(v2 + 4);
    *(v2 + 4) = v24;

    v26 = dispatch_queue_create("com.apple.nanocompass.corelocation-fetch-queue", 0);
    v27 = *(v2 + 27);
    *(v2 + 27) = v26;

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_pause(self->_rhythmicLocationUpdater, a2, v2, v3);
  objc_msgSend_invalidate(self->_rhythmicLocationUpdater, v5, v6, v7);
  rhythmicLocationUpdater = self->_rhythmicLocationUpdater;
  self->_rhythmicLocationUpdater = 0;

  objc_msgSend_pause(self->_defaultLocationUpdater, v9, v10, v11);
  objc_msgSend_invalidate(self->_defaultLocationUpdater, v12, v13, v14);
  defaultLocationUpdater = self->_defaultLocationUpdater;
  self->_defaultLocationUpdater = 0;

  locationUpdateHandler = self->_locationUpdateHandler;
  self->_locationUpdateHandler = 0;

  v17.receiver = self;
  v17.super_class = NCLocationUpdateBaseDelegate;
  [(NCLocationUpdateBaseDelegate *)&v17 dealloc];
}

- (void)setForce1Hz:(BOOL)hz
{
  hzCopy = hz;
  v14 = *MEMORY[0x277D85DE8];
  v5 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Do not force";
    if (hzCopy)
    {
      v6 = @"Force";
    }

    v10 = 136315394;
    v11 = "[NCLocationUpdateBaseDelegate setForce1Hz:]";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ 1Hz updates.", &v10, 0x16u);
  }

  if (self->_force1Hz != hzCopy)
  {
    self->_force1Hz = hzCopy;
    objc_msgSend__adjustLocationUpdateInterest(self, v7, v8, v9);
  }
}

- (double)getNearestWaypointDistance
{
  location = self->_location;
  if (!location)
  {
    return INFINITY;
  }

  v6 = objc_msgSend_rawLocation(location, a2, v2, v3);
  if (!v6)
  {
    return INFINITY;
  }

  nearestWaypoint = self->_nearestWaypoint;

  if (!nearestWaypoint)
  {
    return INFINITY;
  }

  v11 = objc_msgSend_rawLocation(self->_location, v8, v9, v10);
  v15 = objc_msgSend_location(self->_nearestWaypoint, v12, v13, v14);
  objc_msgSend_distanceFromLocation_(v11, v16, v15, v17);
  v19 = v18;

  return v19;
}

- (double)cappedMaxDistanceInMeters
{
  if (qword_27E1C5280 != -1)
  {
    sub_23BD66D48();
  }

  v4 = objc_msgSend_shared(_TtC24NanoCompassComplications21UnitLengthPreferences, a2, v2, v3);
  v8 = objc_msgSend_usesMetric(v4, v5, v6, v7);

  result = *&qword_27E1C5278;
  if (v8)
  {
    return 80000.0;
  }

  return result;
}

- (void)_populateNearestAndFurthestWaypoints
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithArray_copyItems_(v3, v4, self->_waypoints, 1);
  location = self->_location;
  v10 = 0.0;
  if (!location)
  {
    goto LABEL_8;
  }

  v11 = objc_msgSend_rawLocation(location, v5, v6, v7);
  v15 = v11;
  if (v11)
  {
    v16 = v8 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {

LABEL_8:
    v17 = 0;
    v25 = 0;
LABEL_9:
    v18 = INFINITY;
    goto LABEL_10;
  }

  v25 = objc_msgSend_count(v8, v12, v13, v14);

  if (!v25)
  {
    v17 = 0;
    goto LABEL_9;
  }

  objc_msgSend_cappedMaxDistanceInMeters(self, v5, v6, v7);
  v30 = v29;
  parkedCarWaypoint = self->_parkedCarWaypoint;
  if (parkedCarWaypoint)
  {
    v32 = objc_msgSend_location(parkedCarWaypoint, v26, v27, v28);

    if (v32)
    {
      v36 = objc_msgSend_rawLocation(self->_location, v33, v34, v35);
      v40 = objc_msgSend_location(self->_parkedCarWaypoint, v37, v38, v39);
      objc_msgSend_distanceFromLocation_(v36, v41, v40, v42);
      v44 = v43;

      v45 = [NCWaypointWithDistance alloc];
      v48 = objc_msgSend_initWithWaypoint_distance_(v45, v46, self->_parkedCarWaypoint, v47, v44);
      objc_msgSend_insertObject_atIndex_(v8, v49, v48, 0);
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v50 = v8;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v77, v81, 16);
  if (v52)
  {
    v56 = v52;
    v17 = 0;
    v25 = 0;
    v57 = *v78;
    v10 = 0.0;
    v18 = INFINITY;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v78 != v57)
        {
          objc_enumerationMutation(v50);
        }

        v59 = *(*(&v77 + 1) + 8 * i);
        objc_msgSend_distance(v59, v53, v54, v55, v77);
        if (v60 < v30)
        {
          v61 = v60;
          if (v60 < v18)
          {
            v62 = objc_msgSend_waypoint(v59, v53, v54, v55);

            v25 = v62;
            v18 = v61;
          }

          if (v61 > v10)
          {
            v63 = objc_msgSend_waypoint(v59, v53, v54, v55);

            v17 = v63;
            v10 = v61;
          }
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v77, v81, 16);
    }

    while (v56);
  }

  else
  {
    v17 = 0;
    v25 = 0;
    v10 = 0.0;
    v18 = INFINITY;
  }

LABEL_10:
  if (self->_nearestNeedsResend)
  {
    goto LABEL_41;
  }

  nearestWaypoint = self->_nearestWaypoint;
  if (!nearestWaypoint)
  {
    if (v25)
    {
      goto LABEL_41;
    }
  }

  if (nearestWaypoint && !v25)
  {
    goto LABEL_41;
  }

  v20 = objc_msgSend_uuid(nearestWaypoint, v5, v6, v7, v77);
  v24 = objc_msgSend_uuid(v25, v21, v22, v23);
  if (v20 != v24)
  {

LABEL_41:
    objc_msgSend__setNearestWaypoint_withDistance_(self, v5, v25, v7, v18, v77);
    v67 = 1;
    goto LABEL_42;
  }

  v64 = self->_shortestDistance - v18;
  if (v64 >= 0.0)
  {
    v65 = self->_shortestDistance - v18;
  }

  else
  {
    v65 = -v64;
  }

  if (v65 > 15.0)
  {
    goto LABEL_41;
  }

  v67 = 0;
LABEL_42:
  if (!self->_furthestNeedsResend)
  {
    furthestWaypoint = self->_furthestWaypoint;
    if ((furthestWaypoint || !v17) && (!furthestWaypoint || v17))
    {
      v69 = objc_msgSend_uuid(furthestWaypoint, v5, v66, v7);
      v73 = objc_msgSend_uuid(v17, v70, v71, v72);
      if (v69 == v73)
      {
        v74 = self->_furthestDistance - v10;
        if (v74 >= 0.0)
        {
          v75 = self->_furthestDistance - v10;
        }

        else
        {
          v75 = -v74;
        }

        if (v75 <= 15.0)
        {
          if (!v67)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }

      else
      {
      }
    }
  }

  objc_msgSend__setFurthestWaypoint_withDistance_(self, v5, v17, v7, v10);
LABEL_54:
  objc_msgSend__adjustLocationUpdateInterest(self, v5, v76, v7);
LABEL_55:
}

- (void)_setNearestWaypoint:(id)waypoint withDistance:(double)distance
{
  v20 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  objc_storeStrong(&self->_nearestWaypoint, waypoint);
  self->_shortestDistance = distance;
  nearestWaypointHandler = self->_nearestWaypointHandler;
  v9 = NCLogForCategory(7uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (nearestWaypointHandler)
  {
    if (v10)
    {
      nearestWaypoint = self->_nearestWaypoint;
      shortestDistance = self->_shortestDistance;
      *buf = 136315650;
      v15 = "[NCLocationUpdateBaseDelegate _setNearestWaypoint:withDistance:]";
      v16 = 2112;
      v17 = nearestWaypoint;
      v18 = 2048;
      v19 = shortestDistance;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s nearest waypoint is changed to %@ distance: %f", buf, 0x20u);
    }

    self->_nearestNeedsResend = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD49DE0;
    block[3] = &unk_278B93FB0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "_nearestWaypointHandler is nil. Can't update UI with nearest waypoint", buf, 2u);
    }

    self->_nearestNeedsResend = 1;
  }
}

- (void)_setFurthestWaypoint:(id)waypoint withDistance:(double)distance
{
  v20 = *MEMORY[0x277D85DE8];
  waypointCopy = waypoint;
  objc_storeStrong(&self->_furthestWaypoint, waypoint);
  self->_furthestDistance = distance;
  furthestWaypointHandler = self->_furthestWaypointHandler;
  v9 = NCLogForCategory(7uLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (furthestWaypointHandler)
  {
    if (v10)
    {
      furthestWaypoint = self->_furthestWaypoint;
      furthestDistance = self->_furthestDistance;
      *buf = 136315650;
      v15 = "[NCLocationUpdateBaseDelegate _setFurthestWaypoint:withDistance:]";
      v16 = 2112;
      v17 = furthestWaypoint;
      v18 = 2048;
      v19 = furthestDistance;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s furthest waypoint is changed to %@  distance: %f", buf, 0x20u);
    }

    self->_furthestNeedsResend = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BD49F9C;
    block[3] = &unk_278B93FB0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "_furthestWaypointHandler is nil. Can't update UI with furthest waypoint", buf, 2u);
    }

    self->_furthestNeedsResend = 1;
  }
}

- (void)startNearestWaypointUpdatesWithHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  nearestWaypointHandler = self->_nearestWaypointHandler;
  self->_nearestWaypointHandler = v5;

  v7 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nearestWaypoint = self->_nearestWaypoint;
    shortestDistance = self->_shortestDistance;
    *buf = 136315650;
    v14 = "[NCLocationUpdateBaseDelegate startNearestWaypointUpdatesWithHandler:]";
    v15 = 2112;
    v16 = nearestWaypoint;
    v17 = 2048;
    v18 = shortestDistance;
    _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_DEFAULT, "%s nearest waypoint is changed to %@ distance: %f", buf, 0x20u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23BD4A110;
  v11[3] = &unk_278B94398;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)startFurthestWaypointUpdatesWithHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x23EEBBDF0](handler, a2);
  furthestWaypointHandler = self->_furthestWaypointHandler;
  self->_furthestWaypointHandler = v4;

  v6 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NCLocationUpdateBaseDelegate startFurthestWaypointUpdatesWithHandler:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v7, v8, v9);
}

- (void)setWaypoints:(id)waypoints
{
  v20 = *MEMORY[0x277D85DE8];
  waypointsCopy = waypoints;
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[NCLocationUpdateBaseDelegate setWaypoints:]";
    v18 = 2048;
    v19 = objc_msgSend_count(waypointsCopy, v6, v7, v8);
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s %lu waypoints are set", &v16, 0x16u);
  }

  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithArray_copyItems_(v9, v10, waypointsCopy, 1);
  waypoints = self->_waypoints;
  self->_waypoints = v11;

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v13, v14, v15);
}

- (void)setParkedCarWaypoint:(id)waypoint
{
  objc_storeStrong(&self->_parkedCarWaypoint, waypoint);

  objc_msgSend__populateNearestAndFurthestWaypoints(self, v4, v5, v6);
}

- (id)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_tokenWithValue_(NCManagerLocationToken, v5, self->_locationToken, v6);
  ++self->_locationToken;
  v8 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_locationUpdateHandlers, v9, v8, v7);

  objc_msgSend_updateLocationManagerWithCurrentAuthorizationStatus(self, v10, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23BD4A454;
  v15[3] = &unk_278B94398;
  v15[4] = self;
  v16 = handlerCopy;
  v13 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  return v7;
}

- (void)stopLocationUpdatesForToken:(id)token
{
  v22 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectForKey_(self->_locationUpdateHandlers, a2, token, v3);
  v8 = objc_msgSend_count(self->_locationUpdateHandlers, v5, v6, v7);
  if (!self->_startLocationUpdate || v8 == 0)
  {
    v13 = v8;
    v14 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NCLocationUpdateBaseDelegate stopLocationUpdatesForToken:]";
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "%s Stopping location update (Number of clients? %lu).", &v18, 0x16u);
    }

    objc_msgSend_stopLocationUpdates(self, v15, v16, v17);
  }

  objc_msgSend__invalidateIdleTimer(self, v9, v10, v11);
}

- (id)startLocationServiceUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_tokenWithValue_(NCManagerLocationServiceToken, v5, self->_locationServiceToken, v6);
  ++self->_locationServiceToken;
  v8 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_locationServiceUpdateHandlers, v9, v8, v7);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BD4A660;
  v12[3] = &unk_278B94718;
  v12[4] = self;
  v13 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);

  return v7;
}

- (void)startLocationUpdateInterestDescriptionUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  locationInterestDescriptionHandler = self->_locationInterestDescriptionHandler;
  self->_locationInterestDescriptionHandler = v5;

  updated = objc_msgSend_currentUpdateInterest(self, v7, v8, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BD4A7A0;
  v12[3] = &unk_278B94740;
  v13 = handlerCopy;
  v14 = updated;
  v11 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x23EEBBDF0]();
  motionActivityHandler = self->_motionActivityHandler;
  self->_motionActivityHandler = v5;

  v7 = MEMORY[0x277CC1CC8];
  v11 = objc_msgSend_motionType(self, v8, v9, v10);
  v14 = objc_msgSend_NCMotionTypeToString_(v7, v12, v11, v13);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_23BD4A8FC;
  v17[3] = &unk_278B94768;
  objc_copyWeak(&v20, &location);
  v18 = v14;
  v19 = handlerCopy;
  v15 = v14;
  v16 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v17);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)startSession:(id)session
{
  sessionCopy = session;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Starting CL/CR Session", &unk_23BD722FF, buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BD4ABAC;
  v21[3] = &unk_278B94790;
  v25 = buf;
  v26 = v5;
  v10 = v9;
  v27 = v7;
  v22 = v10;
  selfCopy = self;
  v11 = sessionCopy;
  v24 = v11;
  v12 = MEMORY[0x23EEBBDF0](v21);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Starting core location session.", v20, 2u);
  }

  locationManager = self->_locationManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23BD4ADDC;
  v18[3] = &unk_278B947B8;
  v15 = v12;
  v19 = v15;
  objc_msgSend_startTranscriptSessionWithCompletion_(locationManager, v16, v18, v17);

  _Block_object_dispose(buf, 8);
}

- (void)startSessionWithoutLookback:(id)lookback
{
  lookbackCopy = lookback;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Starting CL/CR Session (without lookback)", &unk_23BD722FF, buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x2020000000;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BD4B024;
  v21[3] = &unk_278B94790;
  v25 = buf;
  v26 = v5;
  v10 = v9;
  v27 = v7;
  v22 = v10;
  selfCopy = self;
  v11 = lookbackCopy;
  v24 = v11;
  v12 = MEMORY[0x23EEBBDF0](v21);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Starting core location session (without lookback).", v20, 2u);
  }

  locationManager = self->_locationManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23BD4B254;
  v18[3] = &unk_278B947B8;
  v15 = v12;
  v19 = v15;
  objc_msgSend_startTranscriptSessionInstantlyWithCompletion_(locationManager, v16, v18, v17);

  _Block_object_dispose(buf, 8);
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  v5 = mach_continuous_time();
  v6 = NCLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Ending CL/CR session", &unk_23BD722FF, buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23BD4B3E0;
  v16[3] = &unk_278B947E0;
  v20 = v5;
  v21 = v7;
  v17 = v9;
  selfCopy = self;
  v19 = sessionCopy;
  v10 = sessionCopy;
  v11 = v9;
  v12 = MEMORY[0x23EEBBDF0](v16);
  v13 = NCLogForCategory(5uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD66FA4();
  }

  objc_msgSend_endTranscriptSessionWithCompletion_(self->_locationManager, v14, v12, v15);
}

- (void)fetchLocationsWithinRadius:(double)radius count:(int64_t)count taskIdentifier:(id)identifier completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = objc_msgSend_rawLocation(self->_location, v12, v13, v14);
  if (v15)
  {
    v16 = mach_continuous_time();
    v17 = NCLogForCategory(5uLL);
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Begin CL/CR transcript fetch", "(task: %{public}@)", buf, 0xCu);
    }

    objc_msgSend_coordinate(v15, v21, v22, v23);
    v25 = v24;
    v27 = v26;
    v28 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = count;
      *&buf[12] = 2048;
      *&buf[14] = radius;
      *&buf[22] = 2114;
      v55 = identifierCopy;
      _os_log_impl(&dword_23BD26000, v28, OS_LOG_TYPE_DEFAULT, "Fetching %ld locations within %.0fm of current location (task: %{public}@).", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = sub_23BD4B978;
    v56 = sub_23BD4B988;
    v57 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v53 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = sub_23BD4B978;
    v50[4] = sub_23BD4B988;
    v51 = objc_opt_new();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_23BD4B990;
    v41[3] = &unk_278B94808;
    v45 = v50;
    v46 = v52;
    v48 = v16;
    v29 = v20;
    v42 = v29;
    v49 = v18;
    v43 = identifierCopy;
    v44 = handlerCopy;
    v47 = buf;
    v30 = MEMORY[0x23EEBBDF0](v41);
    v32 = objc_msgSend_historicalUpdaterWithCenter_radius_dateInterval_sampleCount_queue_handler_(self->_locationManager, v31, 0, count, self->_clFetchQueue, v30, v25, v27, radius);
    v33 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v32;

    objc_msgSend_resume(*(*&buf[8] + 40), v34, v35, v36);
    _Block_object_dispose(v50, 8);

    _Block_object_dispose(v52, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v37 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_23BD26000, v37, OS_LOG_TYPE_DEFAULT, "Asked to fetch locations, but we have no current location (task: %{public}@).", buf, 0xCu);
    }

    v29 = objc_msgSend_nc_currentLocationUnknownError(MEMORY[0x277CCA9B8], v38, v39, v40);
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], v29);
  }
}

- (void)fetchLocationsWithinInterval:(id)interval completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v8 = mach_continuous_time();
  v9 = NCLogForCategory(8uLL);
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23BD26000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Begin CL/CR transcript fetch (interval)", &unk_23BD722FF, &buf, 2u);
  }

  v13 = NCLogForCategory(8uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = intervalCopy;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Fetching locations within %{public}@.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_23BD4B978;
  v38 = sub_23BD4B988;
  v39 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_23BD4B978;
  v31[4] = sub_23BD4B988;
  v32 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23BD4C05C;
  v23[3] = &unk_278B94830;
  v26 = v31;
  v27 = v33;
  v29 = v8;
  v14 = v12;
  v24 = v14;
  v30 = v10;
  v15 = handlerCopy;
  v25 = v15;
  p_buf = &buf;
  v16 = MEMORY[0x23EEBBDF0](v23);
  v18 = objc_msgSend_historicalUpdaterWithDateInterval_sampleCount_queue_handler_(self->_locationManager, v17, intervalCopy, 10, self->_clFetchQueue, v16);
  v19 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v18;

  objc_msgSend_resume(*(*(&buf + 1) + 40), v20, v21, v22);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)fetchSmoothedLocationsWithinInterval:(id)interval completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (objc_msgSend_authorizationStatusForBundlePath_(MEMORY[0x277CBFC10], v8, @"/System/Library/LocationBundles/AppleWatchWorkout.bundle", v9) - 3 >= 2)
  {
    v27 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v27, OS_LOG_TYPE_DEFAULT, "Workouts is not authorized to use location; unable to fetch smoothed locations.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], 0);
  }

  else
  {
    v10 = mach_continuous_time();
    v11 = NCLogForCategory(5uLL);
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Begin CL/CR smoothed fetch", &unk_23BD722FF, buf, 2u);
    }

    v15 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v39 = intervalCopy;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_INFO, "Fetching smoothed locations within %{public}@.", buf, 0xCu);
    }

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_23BD4C5B8;
    v31 = &unk_278B94858;
    v35 = v10;
    v16 = v14;
    v32 = v16;
    v36 = v12;
    v17 = intervalCopy;
    v33 = v17;
    v34 = handlerCopy;
    v18 = MEMORY[0x23EEBBDF0](&v28);
    locationSmoother = self->_locationSmoother;
    p_locationSmoother = &self->_locationSmoother;
    v20 = locationSmoother;
    v22 = locationSmoother;
    if (!locationSmoother)
    {
      v22 = objc_opt_new();
    }

    objc_storeStrong(p_locationSmoother, v22);
    v24 = v22;
    if (!v20)
    {
    }

    v37 = v17;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, &v37, 1, v28, v29, v30, v31);
    objc_msgSend_smoothLocations_workoutActivityType_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_(v24, v26, 0, 52, 0, v25, v18);
  }
}

- (void)fetchIsRemote:(id)remote
{
  remoteCopy = remote;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.NanoCompass", v7);
  if (objc_msgSend_BOOLForKey_(v8, v9, @"simulateRemoteStatus", v10))
  {
    v14 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "Internal default for simulateRemoteStatus is set to YES; isRemote will return YES.", buf, 2u);
    }

    remoteCopy[2](remoteCopy, 1);
  }

  else if (objc_msgSend_isLocationServiceOff(self, v11, v12, v13))
  {
    v15 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD670CC();
    }

    remoteCopy[2](remoteCopy, 0);
  }

  else
  {
    v16 = mach_continuous_time();
    v17 = NCLogForCategory(5uLL);
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Begin CL/CR is remote fetch", &unk_23BD722FF, buf, 2u);
    }

    v21 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD67090();
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_23BD4CAB4;
    v29 = &unk_278B94880;
    v32 = v16;
    v33 = v18;
    v30 = v20;
    v31 = remoteCopy;
    v22 = v20;
    v23 = MEMORY[0x23EEBBDF0](&v26);
    objc_msgSend_isConsideredInRemoteAreaWithCompletion_(self->_locationManager, v24, v23, v25, v26, v27, v28, v29);
  }
}

- (void)fetchWillPrompt:(id)prompt
{
  promptCopy = prompt;
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = objc_msgSend_initWithSuiteName_(v5, v6, @"com.apple.NanoCompass", v7);
  if (objc_msgSend_BOOLForKey_(v8, v9, @"simulateRemoteStatus", v10))
  {
    v14 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "Internal default for simulateRemoteStatus is set to YES; willPrompt will return YES.", buf, 2u);
    }

    promptCopy[2](promptCopy, 1);
  }

  else if (objc_msgSend_isLocationServiceOff(self, v11, v12, v13))
  {
    v15 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD67234();
    }

    promptCopy[2](promptCopy, 0);
  }

  else
  {
    v16 = mach_continuous_time();
    v17 = NCLogForCategory(5uLL);
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23BD26000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Begin CL/CR will prompt fetch", &unk_23BD722FF, buf, 2u);
    }

    v21 = NCLogForCategory(5uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD671F8();
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_23BD4CEC0;
    v29 = &unk_278B94880;
    v32 = v16;
    v33 = v18;
    v30 = v20;
    v31 = promptCopy;
    v22 = v20;
    v23 = MEMORY[0x23EEBBDF0](&v26);
    objc_msgSend_willPromptForTranscriptSessionWithCompletion_(self->_locationManager, v24, v23, v25, v26, v27, v28, v29);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v43 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v8 = objc_msgSend_authorizationStatus(authorizationCopy, v5, v6, v7);
  v12 = objc_msgSend__limitsPrecision(authorizationCopy, v9, v10, v11);
  self->_locationAuthorizationStatus = v8;
  v13 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v14, self->_locationAuthorizationStatus, v15);
    v20 = objc_msgSend__limitsPrecision(authorizationCopy, v17, v18, v19);
    v21 = @"Precise";
    if (v20)
    {
      v21 = @"Coarse";
    }

    v22 = @"NOT determined";
    *buf = 138543874;
    v38 = v16;
    v40 = v21;
    v39 = 2112;
    if (v8)
    {
      v22 = @"determined";
    }

    v41 = 2112;
    v42 = v22;
    _os_log_impl(&dword_23BD26000, v13, OS_LOG_TYPE_DEFAULT, "Received updated auth status of %{public}@. %@ location is used. Authorization status is %@{public}@.", buf, 0x20u);
  }

  v23 = [NCLocationServiceUpdate alloc];
  v25 = objc_msgSend_initWithAuthorizationStatus_coarsePrecision_(v23, v24, v8, v12);
  locationServiceUpdateHandlers = self->_locationServiceUpdateHandlers;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_23BD4D284;
  v35[3] = &unk_278B948A8;
  v27 = v25;
  v36 = v27;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(locationServiceUpdateHandlers, v28, v35, v29);
  locationPromptShownAction = self->_locationPromptShownAction;
  if (locationPromptShownAction)
  {
    LODWORD(v8) = v8 != 0;
    if (self->_authorizationStatusDetermined != v8)
    {
      locationPromptShownAction[2]();
      v34 = self->_locationPromptShownAction;
      self->_locationPromptShownAction = 0;
    }
  }

  else
  {
    LOBYTE(v8) = v8 != 0;
  }

  self->_authorizationStatusDetermined = v8;
  objc_msgSend_updateLocationManagerWithCurrentAuthorizationStatus(self, v30, v31, v32);
}

- (void)performAfterLocationPromptIsShown:(id)shown
{
  if (self->_authorizationStatusDetermined)
  {
    v4 = *(shown + 2);

    v4(shown);
  }

  else
  {
    self->_locationPromptShownAction = MEMORY[0x23EEBBDF0](shown, a2);

    MEMORY[0x2821F96F8]();
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NCLocationUpdateBaseDelegate locationManager:didFailWithError:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Unexpected call to CLLocationManagerDelegate.", &v8, 0xCu);
  }

  objc_msgSend_updateLocation_error_(self, v7, 0, errorCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v14 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[NCLocationUpdateBaseDelegate locationManager:didUpdateLocations:]";
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Unexpected call to CLLocationManagerDelegate.", &v12, 0xCu);
  }

  v10 = objc_msgSend_lastObject(locationsCopy, v7, v8, v9);

  objc_msgSend_updateLocation_error_(self, v11, v10, 0);
}

- (void)updateLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  v11 = objc_msgSend_domain(errorCopy, v8, v9, v10);
  v12 = *MEMORY[0x277CBFCF0];

  if (v11 != v12)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_code(errorCopy, v13, v14, v15) == 1)
  {
    v16 = NCLogForCategory(3uLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v46 = 0;
    v24 = "CoreLocation has given us a denied error.";
    v25 = &v46;
LABEL_17:
    _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_INFO, v24, v25, 2u);
    goto LABEL_27;
  }

  if (!objc_msgSend_code(errorCopy, v21, v22, v23))
  {
    v16 = NCLogForCategory(3uLL);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v24 = "CoreLocation has given us a location unknown error.";
    v25 = buf;
    goto LABEL_17;
  }

LABEL_2:
  v16 = objc_msgSend_rawLocation(self->_location, v13, v14, v15);
  if (objc_msgSend_isEqual_(locationCopy, v17, v16, v18))
  {
    v20 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_INFO, "Avoid processing previous location again.", v44, 2u);
    }
  }

  else
  {
    v20 = objc_msgSend_locationWithLocation_error_(NCLocation, v19, locationCopy, errorCopy);
    isBetterThan_withStaleTimeThreshold = objc_msgSend_isBetterThan_withStaleTimeThreshold_(v20, v26, self->_location, v27, 180.0);
    if (isBetterThan_withStaleTimeThreshold)
    {
      v29 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_23BD67360();
      }

      objc_storeStrong(&self->_location, v20);
    }

    if (supportAbsoluteAltimeterFeatures())
    {
      v33 = 0;
    }

    else
    {
      v34 = objc_msgSend_altitudeWithLocation_error_(NCAltitude, v30, locationCopy, errorCopy);
      v33 = objc_msgSend_isBetterThan_withStaleTimeThreshold_(v34, v35, self->_altitude, v36, 180.0);
      if (v33)
      {
        v37 = NCLogForCategory(3uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_23BD6739C();
        }

        objc_storeStrong(&self->_altitude, v34);
      }
    }

    if ((isBetterThan_withStaleTimeThreshold | v33) == 1)
    {
      objc_msgSend__notifyLocationUpdateHandlers(self, v30, v31, v32);
    }

    objc_msgSend__populateNearestAndFurthestWaypoints(self, v30, v31, v32);
    objc_msgSend__adjustLocationUpdateInterest(self, v38, v39, v40);
    objc_msgSend__logCurrentLocation(self, v41, v42, v43);
  }

LABEL_27:
}

- (void)_notifyLocationUpdateHandlers
{
  locationUpdateHandlers = self->_locationUpdateHandlers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23BD4D7EC;
  v4[3] = &unk_278B948D0;
  v4[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(locationUpdateHandlers, a2, v4, v2);
}

- (void)_logCurrentLocation
{
  v18 = *MEMORY[0x277D85DE8];
  if (NanoCompassIsInternalBuild())
  {
    location = self->_location;
    if (location)
    {
      if (self->_locationLogTimestamp)
      {
        v7 = objc_msgSend_now(MEMORY[0x277CBEAA8], v3, v4, v5);
        objc_msgSend_timeIntervalSinceDate_(v7, v8, self->_locationLogTimestamp, v9);
        v11 = v10;

        if (v11 <= 30.0)
        {
          return;
        }

        location = self->_location;
      }

      v12 = objc_msgSend_reportedTimestamp(location, v3, v4, v5);
      locationLogTimestamp = self->_locationLogTimestamp;
      self->_locationLogTimestamp = v12;

      v14 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_location;
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "Received updated location: %@.", &v16, 0xCu);
      }
    }
  }
}

- (void)_startLocationUpdatesWithInterest:(int64_t)interest
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_startLocationUpdate)
  {
    v5 = (interest + 1) & 0xFFFFFFFFFFFFFFFDLL;
    v6 = NCLogForCategory(3uLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        if ((interest + 1) > 2)
        {
          v8 = @"Unknown";
        }

        else
        {
          v8 = off_278B94960[interest + 1];
        }

        v25 = 136315394;
        v26 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Location update will not start due to invalid interest (%{public}@).", &v25, 0x16u);
      }
    }

    else
    {
      if (v7)
      {
        if ((interest + 1) > 2)
        {
          v10 = @"Unknown";
        }

        else
        {
          v10 = off_278B94960[interest + 1];
        }

        v25 = 136315394;
        v26 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
        v27 = 2114;
        v28 = v10;
        _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "%s Interest? %{public}@.", &v25, 0x16u);
      }

      v11 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_23BD26000, v11, OS_LOG_TYPE_INFO, "Resume rhythmic configuration live updater.", &v25, 2u);
      }

      if (interest <= 0)
      {
        defaultLocationUpdater = self->_defaultLocationUpdater;
        v20 = NCLogForCategory(3uLL);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (defaultLocationUpdater)
        {
          if (v21)
          {
            LOWORD(v25) = 0;
            _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_INFO, "Rhythmic configuration live updater is all that is needed; pause default configuration live updater.", &v25, 2u);
          }

          objc_msgSend_pause(self->_defaultLocationUpdater, v22, v23, v24);
        }

        else
        {
          if (v21)
          {
            LOWORD(v25) = 0;
            _os_log_impl(&dword_23BD26000, v20, OS_LOG_TYPE_INFO, "Rhythmic configuration live updater is all that is needed.", &v25, 2u);
          }
        }
      }

      else
      {
        v12 = NCLogForCategory(3uLL);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_INFO, "Resume default configuration live updater.", &v25, 2u);
        }

        v16 = self->_defaultLocationUpdater;
        if (!v16)
        {
          v17 = objc_msgSend_liveUpdaterWithConfiguration_queue_handler_(self->_locationManager, v13, 0, MEMORY[0x277D85CD0], self->_locationUpdateHandler);
          v18 = self->_defaultLocationUpdater;
          self->_defaultLocationUpdater = v17;

          v16 = self->_defaultLocationUpdater;
        }

        objc_msgSend_resume(v16, v13, v14, v15);
      }
    }
  }

  else
  {
    v9 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315138;
      v26 = "[NCLocationUpdateBaseDelegate _startLocationUpdatesWithInterest:]";
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "%s Location update should not start.", &v25, 0xCu);
    }
  }
}

- (void)stopLocationUpdates
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[NCLocationUpdateBaseDelegate stopLocationUpdates]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  objc_msgSend__invalidateIdleTimer(self, v4, v5, v6);
  v7 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23BD26000, v7, OS_LOG_TYPE_INFO, "Pause default and rhythmic configuration live updaters.", &v14, 2u);
  }

  objc_msgSend_pause(self->_defaultLocationUpdater, v8, v9, v10);
  objc_msgSend_pause(self->_rhythmicLocationUpdater, v11, v12, v13);
}

- (void)_adjustLocationUpdateInterest
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (objc_msgSend_shouldStartLocationUpdate(self, v3, v4, v5) && self->_location)
  {
    v10 = objc_msgSend_expectedInterest(self, v6, v7, v8);

    objc_msgSend_setCurrentUpdateInterest_(self, v9, v10, v11);
  }
}

- (void)updateLocationManagerWithCurrentAuthorizationStatus
{
  v28 = *MEMORY[0x277D85DE8];
  locationAuthorizationStatus = self->_locationAuthorizationStatus;
  if ((locationAuthorizationStatus - 3) >= 2)
  {
    if (locationAuthorizationStatus)
    {
      v16 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v17, self->_locationAuthorizationStatus, v18);
        v26 = 138543362;
        v27 = v19;
        _os_log_impl(&dword_23BD26000, v16, OS_LOG_TYPE_DEFAULT, "Unusable auth: %{public}@.", &v26, 0xCu);
      }

      objc_msgSend_stopLocationUpdates(self, v20, v21, v22);
      objc_msgSend__resetLocationAndAltitude(self, v23, v24, v25);
    }

    else
    {
      v9 = NCLogForCategory(3uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Requesting When In Use Auth.", &v26, 2u);
      }

      objc_msgSend__resetLocationAndAltitude(self, v10, v11, v12);
      objc_msgSend_requestWhenInUseAuthorization(self->_locationManager, v13, v14, v15);
    }
  }

  else
  {
    updated = objc_msgSend_currentUpdateInterest(self, a2, v2, v3);

    objc_msgSend__startLocationUpdatesWithInterest_(self, v6, updated, v8);
  }
}

- (void)_resetLocationAndAltitude
{
  location = self->_location;
  self->_location = 0;

  if ((supportAbsoluteAltimeterFeatures() & 1) == 0)
  {
    altitude = self->_altitude;
    self->_altitude = 0;
  }

  objc_msgSend__notifyLocationUpdateHandlers(self, v4, v5, v6);
}

- (BOOL)isLocationServiceOff
{
  v23 = *MEMORY[0x277D85DE8];
  if ((self->_locationAuthorizationStatus - 1) >= 2)
  {
    v5 = objc_msgSend__limitsPrecision(self->_locationManager, a2, v2, v3);
  }

  else
  {
    v5 = 1;
  }

  v6 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_CLAuthorizationStatusToString_(NCLocationUpdateBaseDelegate, v7, self->_locationAuthorizationStatus, v8);
    v13 = objc_msgSend__limitsPrecision(self->_locationManager, v10, v11, v12);
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v15 = @"On";
    v17 = 138543874;
    v18 = v9;
    v20 = v14;
    v19 = 2114;
    if (v5)
    {
      v15 = @"Off";
    }

    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_23BD26000, v6, OS_LOG_TYPE_DEFAULT, "Checking location service. Auth status? %{public}@. Is coarse precision only? %{public}@. Consider location service %{public}@.", &v17, 0x20u);
  }

  return v5;
}

+ (id)CLAuthorizationStatusToString:(int)string
{
  if ((string - 1) > 3)
  {
    return @"kCLAuthorizationStatusNotDetermined";
  }

  else
  {
    return off_278B94940[string - 1];
  }
}

- (void)_updateMotionType:(int64_t)type isDeviceStationary:(BOOL)stationary
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = objc_msgSend_NCMotionTypeToString_(MEMORY[0x277CC1CC8], v6, type, v7);
  motionActivityHandler = self->_motionActivityHandler;
  v14 = v8;
  if (motionActivityHandler)
  {
    isStationary = objc_msgSend_isStationary(self, v9, v10, v11);
    motionActivityHandler[2](motionActivityHandler, v14, isStationary);
  }

  if (self->_location)
  {
    objc_msgSend__adjustLocationUpdateInterest(self, v9, v10, v11);
  }
}

- (void)_startIdleTimer
{
  if (self->_locationUpdateIdleTimer)
  {
    objc_msgSend__invalidateIdleTimer(self, a2, v2, v3);
  }

  if (self->_startLocationUpdate)
  {
    v5 = objc_alloc(MEMORY[0x277D3A180]);
    v7 = objc_msgSend_initWithTimeInterval_serviceIdentifier_target_selector_userInfo_(v5, v6, @"com.apple.NanoCompass.location.wake", self, sel__idleTimerFired_, 0, 3600.0);
    locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = v7;

    objc_msgSend_setUserVisible_(self->_locationUpdateIdleTimer, v9, 1, v10);
    objc_msgSend_setMinimumEarlyFireProportion_(self->_locationUpdateIdleTimer, v11, v12, v13, 1.0);
    v16 = self->_locationUpdateIdleTimer;
    v17 = MEMORY[0x277D85CD0];

    objc_msgSend_scheduleInQueue_(v16, v14, v17, v15);
  }

  else
  {
    v18 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEFAULT, "Asked to start idle timer, but location updates should not start.", v19, 2u);
    }
  }
}

- (void)_idleTimerFired:(id)fired
{
  v4 = NCLogForCategory(3uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "Idle timer fired; restart location update.", v11, 2u);
  }

  updated = objc_msgSend_currentUpdateInterest(self, v5, v6, v7);
  objc_msgSend__startLocationUpdatesWithInterest_(self, v9, updated, v10);
}

- (void)_invalidateIdleTimer
{
  locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
  if (locationUpdateIdleTimer)
  {
    objc_msgSend_invalidate(locationUpdateIdleTimer, a2, v2, v3);
    v6 = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = 0;
  }
}

- (void)setCurrentUpdateInterest:(int64_t)interest
{
  v20 = *MEMORY[0x277D85DE8];
  currentUpdateInterest = self->_currentUpdateInterest;
  if (currentUpdateInterest != interest)
  {
    if (interest == -1)
    {
      objc_msgSend__startIdleTimer(self, a2, -1, v3);
      v7 = @"YES";
    }

    else
    {
      if (currentUpdateInterest == -1)
      {
        objc_msgSend__invalidateIdleTimer(self, a2, interest, v3);
      }

      v7 = @"NO";
    }

    v8 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ((interest + 1) > 2)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_278B94960[interest + 1];
      }

      v14 = 136315650;
      v15 = "[NCLocationUpdateBaseDelegate setCurrentUpdateInterest:]";
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s Adjust currentUpdateInterest to %{public}@. Start wakeup timer? %{public}@.", &v14, 0x20u);
    }

    self->_currentUpdateInterest = interest;
    locationInterestDescriptionHandler = self->_locationInterestDescriptionHandler;
    if (locationInterestDescriptionHandler)
    {
      if ((interest + 1) > 2)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_278B94960[interest + 1];
      }

      locationInterestDescriptionHandler[2](locationInterestDescriptionHandler, v13);
    }

    objc_msgSend__startLocationUpdatesWithInterest_(self, v10, interest, v11);
  }
}

- (void)setStartLocationUpdate:(BOOL)update
{
  updateCopy = update;
  v38 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!self->_transcriptSession || updateCopy)
  {
    self->_startLocationUpdate = updateCopy;
    v8 = NCLogForCategory(1uLL);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (updateCopy)
    {
      if (v9)
      {
        *buf = 136315138;
        v37 = "[NCLocationUpdateBaseDelegate setStartLocationUpdate:]";
        _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s Starting location/motion activity updates.", buf, 0xCu);
      }

      updated = objc_msgSend_currentUpdateInterest(self, v10, v11, v12);
      location = self->_location;
      if (!location)
      {
        goto LABEL_13;
      }

      v18 = objc_msgSend_timestamp(location, v13, v14, v15);
      objc_msgSend_timeIntervalSinceNow(v18, v19, v20, v21);
      v23 = v22;

      v24 = -v23;
      if (v23 >= 0.0)
      {
        v24 = v23;
      }

      if (v24 > 300.0)
      {
LABEL_13:
        updated = objc_msgSend_initialInterest(self, v13, v14, v15);
      }

      objc_msgSend__startLocationUpdatesWithInterest_(self, v13, updated, v15);
      objc_initWeak(buf, self);
      motionClassificationManager = self->_motionClassificationManager;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_23BD4E7E0;
      v34[3] = &unk_278B948F8;
      objc_copyWeak(&v35, buf);
      objc_msgSend_startMotionActivityUpdatesWithHandler_(motionClassificationManager, v26, v34, v27);
      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v9)
      {
        *buf = 136315138;
        v37 = "[NCLocationUpdateBaseDelegate setStartLocationUpdate:]";
        _os_log_impl(&dword_23BD26000, v8, OS_LOG_TYPE_DEFAULT, "%s Stopping location/motion activity updates.", buf, 0xCu);
      }

      objc_msgSend_stopLocationUpdates(self, v28, v29, v30);
      objc_msgSend_stopMotionActivityUpdates(self->_motionClassificationManager, v31, v32, v33);
    }
  }

  else
  {
    v5 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = @"Passive Interest";
      _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "We were asked to stop location updates during an active transcript session. We will instead attempt to change the interest to %{public}@.", buf, 0xCu);
    }

    objc_msgSend_setCurrentUpdateInterest_(self, v6, -1, v7);
    self->_startLocationUpdate = updateCopy;
  }
}

- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD4E914;
  block[3] = &unk_278B94920;
  block[4] = self;
  v12 = locationCopy;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = locationCopy;
  v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(self->_clFetchQueue, v10);
}

@end