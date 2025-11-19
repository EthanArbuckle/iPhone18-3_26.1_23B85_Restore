@interface CMPedometer
+ (BOOL)isAllDayElevationAvailable;
+ (BOOL)isCadenceAvailable;
+ (BOOL)isDistanceAvailable;
+ (BOOL)isFloorCountingAvailable;
+ (BOOL)isPaceAvailable;
+ (BOOL)isPedometerEventTrackingAvailable;
+ (BOOL)isStepCountingAvailable;
- (BOOL)sendStrideCalibrationHistoryToFile:(id)a3;
- (CMPedometer)init;
- (id)_pedometerDataWithRecordID:(int64_t)a3;
- (id)strideCalibrationDump;
- (void)_queryPedometerDataSinceDataRecord:(id)a3 withHandler:(id)a4;
- (void)_startPedometerUpdatesSinceDataRecord:(id)a3 withHandler:(id)a4;
- (void)dealloc;
- (void)queryPedometerDataFromDate:(NSDate *)start toDate:(NSDate *)end withHandler:(CMPedometerHandler)handler;
- (void)queryPedometerDataSinceDataRecord:(id)a3 withHandler:(id)a4;
- (void)queryPedometerDataSinceRecord:(int64_t)a3 withHandler:(id)a4;
- (void)queryRawSpeedToKValueBinsWithHandler:(id)a3;
- (void)queryRemoteRawSpeedToKValueBinsWithHandler:(id)a3;
- (void)queryRemoteStepCadenceToStrideLengthBinsWithHandler:(id)a3;
- (void)queryStepCadenceToStrideLengthBinsWithHandler:(id)a3;
- (void)startPedometerEventUpdatesWithHandler:(CMPedometerEventHandler)handler;
- (void)startPedometerUpdatesFromDate:(NSDate *)start withHandler:(CMPedometerHandler)handler;
- (void)stopPedometerEventUpdates;
- (void)stopPedometerUpdates;
@end

@implementation CMPedometer

- (CMPedometer)init
{
  v4.receiver = self;
  v4.super_class = CMPedometer;
  v2 = [(CMPedometer *)&v4 init];
  if (v2)
  {
    v2->_pedometerProxy = objc_alloc_init(CMPedometerProxy);
  }

  return v2;
}

- (void)dealloc
{
  pedometerProxy = self->_pedometerProxy;
  fAppQueue = pedometerProxy->fAppQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C8928;
  block[3] = &unk_1E7532988;
  block[4] = pedometerProxy;
  dispatch_async(fAppQueue, block);

  v5.receiver = self;
  v5.super_class = CMPedometer;
  [(CMPedometer *)&v5 dealloc];
}

+ (BOOL)isStepCountingAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  if ((sub_19B421620() & 0x4000000) != 0)
  {
    return 1;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessageStartStepCountAvailable");
}

+ (BOOL)isDistanceAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_isStepCountingAvailable(CMPedometer, v2, v3);
}

+ (BOOL)isFloorCountingAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 28) & 1;
  }

  return v2;
}

+ (BOOL)isPaceAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  if ((sub_19B421620() & 0x8000000) != 0)
  {
    return 1;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v3, "kCLConnectionMessagePaceAndCadenceAPIAvailable");
}

+ (BOOL)isCadenceAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_isPaceAvailable(CMPedometer, v2, v3);
}

+ (BOOL)isPedometerEventTrackingAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    sub_19B421798();
    return (sub_19B421620() >> 33) & 1;
  }

  return v2;
}

+ (BOOL)isAllDayElevationAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 38) & 1;
  }

  return v2;
}

- (void)queryPedometerDataFromDate:(NSDate *)start toDate:(NSDate *)end withHandler:(CMPedometerHandler)handler
{
  if (start)
  {
    if (end)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMPedometer.mm", 662, @"Invalid parameter not satisfying: %@", @"end");
    if (handler)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMPedometer.mm", 663, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_4;
  }

  v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMPedometer.mm", 661, @"Invalid parameter not satisfying: %@", @"start");
  if (!end)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handler)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B6C8CCC;
  v16[3] = &unk_1E7533678;
  v16[4] = self;
  v16[5] = start;
  v16[6] = end;
  v16[7] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v16);
}

- (void)startPedometerUpdatesFromDate:(NSDate *)start withHandler:(CMPedometerHandler)handler
{
  if (!start)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMPedometer.mm", 675, @"Invalid parameter not satisfying: %@", @"start");
    if (handler)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMPedometer.mm", 676, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_3;
  }

  if (!handler)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B6C8E80;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = start;
  v12[6] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v12);
}

- (void)stopPedometerUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B6C8F34;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (id)_pedometerDataWithRecordID:(int64_t)a3
{
  v4 = [CMPedometerData alloc];
  v8 = 0;
  isOdometerPace_pushes_workoutType_elevationAscended_elevationDescended_distanceSource = objc_msgSend_initWithStartDate_endDate_steps_distance_floorsAscended_floorsDescended_recordID_currentPace_currentCadence_firstStepTime_activeTime_sourceId_isOdometerDistance_isOdometerPace_pushes_workoutType_elevationAscended_elevationDescended_distanceSource_(v4, v5, 0, 0, 0, a3, 0, 0, 0.0, 0.0, 0.0, 0.0, 0, 0, MEMORY[0x1E695E110], MEMORY[0x1E695E110], 0, 0, 0, v8);

  return isOdometerPace_pushes_workoutType_elevationAscended_elevationDescended_distanceSource;
}

- (void)_startPedometerUpdatesSinceDataRecord:(id)a3 withHandler:(id)a4
{
  if (!a4)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMPedometer.mm", 715, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B6C90C8;
  v10[3] = &unk_1E7532C08;
  v10[4] = a3;
  v10[5] = self;
  v10[6] = a4;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v10);
}

- (void)queryPedometerDataSinceRecord:(int64_t)a3 withHandler:(id)a4
{
  v5 = objc_msgSend__pedometerDataWithRecordID_(self, a2, a3);

  MEMORY[0x1EEE66B58](self, sel__queryPedometerDataSinceDataRecord_withHandler_, v5);
}

- (void)queryPedometerDataSinceDataRecord:(id)a3 withHandler:(id)a4
{
  if (!a3)
  {
    a3 = objc_msgSend__pedometerDataWithRecordID_(self, a2, 0);
  }

  MEMORY[0x1EEE66B58](self, sel__queryPedometerDataSinceDataRecord_withHandler_, a3);
}

- (void)_queryPedometerDataSinceDataRecord:(id)a3 withHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v10 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "handler not set.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometer _queryPedometerDataSinceDataRecord:withHandler:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    goto LABEL_19;
  }

  if (qword_1ED71D408 != -1)
  {
    dispatch_once(&qword_1ED71D408, &unk_1F0E29A00);
  }

  if (qword_1ED71D400 != 3)
  {
LABEL_19:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = objc_msgSend_pedometerProxy(self, a2, a3);
  v9 = *MEMORY[0x1E69E9840];

  objc_msgSend__queryPedometerDataSinceDataRecord_withHandler_shouldStartUpdates_(v7, v8, a3, a4, 0);
}

- (void)startPedometerEventUpdatesWithHandler:(CMPedometerEventHandler)handler
{
  if (!handler)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMPedometer.mm", 759, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B6C94F4;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopPedometerEventUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B6C95A8;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (BOOL)sendStrideCalibrationHistoryToFile:(id)a3
{
  v212 = *MEMORY[0x1E69E9840];
  if (!a3 || (objc_msgSend_isFileURL(a3, a2, a3) & 1) == 0)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v16 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "fileURL must be a valid fileURL.", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    LOWORD(v197) = 0;
    goto LABEL_24;
  }

  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
  v10 = objc_msgSend_path(a3, v8, v9);
  if (objc_msgSend_fileExistsAtPath_(v7, v11, v10))
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v14 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "File already exists at URL.", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    LOWORD(v197) = 0;
    goto LABEL_24;
  }

  v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13);
  v24 = objc_msgSend_path(a3, v22, v23);
  if ((objc_msgSend_createFileAtPath_contents_attributes_(v21, v25, v24, 0, 0) & 1) == 0)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v173 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v173, OS_LOG_TYPE_ERROR, "URL must point to a file path which you have access to write to.", buf, 2u);
    }

    v174 = sub_19B420058();
    if ((*(v174 + 160) & 0x80000000) != 0 && (*(v174 + 164) & 0x80000000) != 0 && (*(v174 + 168) & 0x80000000) != 0 && !*(v174 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    LOWORD(v197) = 0;
    goto LABEL_24;
  }

  v179 = a3;
  v28 = objc_msgSend_strideCalibrationDump(self, v26, v27);
  v31 = objc_msgSend_array(MEMORY[0x1E695DF70], v29, v30);
  v183 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33);
  v182 = objc_msgSend_array(MEMORY[0x1E695DF70], v34, v35);
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v180 = v28;
  obj = objc_msgSend_calibrationTracks(v28, v36, v37);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v193, v209, 16);
  if (v39)
  {
    v42 = v39;
    v43 = *v194;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v194 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v193 + 1) + 8 * i);
        v207[0] = @"startTime";
        v46 = MEMORY[0x1E696AD98];
        objc_msgSend_startTime(v45, v40, v41);
        v208[0] = objc_msgSend_numberWithDouble_(v46, v47, v48);
        v207[1] = @"pacebin";
        v49 = MEMORY[0x1E696AD98];
        v52 = objc_msgSend_pacebin(v45, v50, v51);
        v208[1] = objc_msgSend_numberWithUnsignedInt_(v49, v53, v52);
        v207[2] = @"kvalue";
        v54 = MEMORY[0x1E696AD98];
        objc_msgSend_kvalue(v45, v55, v56);
        v208[2] = objc_msgSend_numberWithDouble_(v54, v57, v58);
        v207[3] = @"kvalueTrack";
        v59 = MEMORY[0x1E696AD98];
        objc_msgSend_kvalueTrack(v45, v60, v61);
        v208[3] = objc_msgSend_numberWithDouble_(v59, v62, v63);
        v207[4] = @"score";
        v64 = MEMORY[0x1E696AD98];
        objc_msgSend_score(v45, v65, v66);
        v208[4] = objc_msgSend_numberWithDouble_(v64, v67, v68);
        v207[5] = @"endTime";
        v69 = MEMORY[0x1E696AD98];
        objc_msgSend_endTime(v45, v70, v71);
        v208[5] = objc_msgSend_numberWithDouble_(v69, v72, v73);
        v207[6] = @"distance";
        v74 = MEMORY[0x1E696AD98];
        objc_msgSend_distance(v45, v75, v76);
        v208[6] = objc_msgSend_numberWithDouble_(v74, v77, v78);
        v207[7] = @"steps";
        v79 = MEMORY[0x1E696AD98];
        v82 = objc_msgSend_steps(v45, v80, v81);
        v208[7] = objc_msgSend_numberWithInt_(v79, v83, v82);
        v207[8] = @"session";
        v84 = MEMORY[0x1E696AD98];
        v87 = objc_msgSend_session(v45, v85, v86);
        v208[8] = objc_msgSend_numberWithInt_(v84, v88, v87);
        v207[9] = @"speed";
        v89 = MEMORY[0x1E696AD98];
        objc_msgSend_speed(v45, v90, v91);
        v208[9] = objc_msgSend_numberWithDouble_(v89, v92, v93);
        v207[10] = @"percentGrade";
        v94 = MEMORY[0x1E696AD98];
        objc_msgSend_percentGrade(v45, v95, v96);
        v208[10] = objc_msgSend_numberWithDouble_(v94, v97, v98);
        v207[11] = @"gpsSource";
        v99 = MEMORY[0x1E696AD98];
        v102 = objc_msgSend_gpsSource(v45, v100, v101);
        v208[11] = objc_msgSend_numberWithInteger_(v99, v103, v102);
        v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v104, v208, v207, 12);
        objc_msgSend_addObject_(v31, v106, v105);
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v193, v209, 16);
    }

    while (v42);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v107 = objc_msgSend_rawSpeedToKValueBins(v180, v40, v41);
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v189, v206, 16);
  if (v109)
  {
    v112 = v109;
    v113 = *v190;
    do
    {
      for (j = 0; j != v112; ++j)
      {
        if (*v190 != v113)
        {
          objc_enumerationMutation(v107);
        }

        v115 = *(*(&v189 + 1) + 8 * j);
        v204[0] = @"begin";
        v116 = MEMORY[0x1E696AD98];
        objc_msgSend_begin(v115, v110, v111);
        v205[0] = objc_msgSend_numberWithDouble_(v116, v117, v118);
        v204[1] = @"end";
        v119 = MEMORY[0x1E696AD98];
        objc_msgSend_end(v115, v120, v121);
        v205[1] = objc_msgSend_numberWithDouble_(v119, v122, v123);
        v204[2] = @"state";
        v124 = MEMORY[0x1E696AD98];
        v127 = objc_msgSend_state(v115, v125, v126);
        v205[2] = objc_msgSend_numberWithInteger_(v124, v128, v127);
        v204[3] = @"kValue";
        v129 = MEMORY[0x1E696AD98];
        objc_msgSend_kValue(v115, v130, v131);
        v205[3] = objc_msgSend_numberWithDouble_(v129, v132, v133);
        v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v134, v205, v204, 4);
        objc_msgSend_addObject_(v183, v136, v135);
      }

      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v189, v206, 16);
    }

    while (v112);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v137 = objc_msgSend_stepCadenceToStrideLengthBins(v180, v110, v111);
  v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v138, &v185, v203, 16);
  if (v139)
  {
    v142 = v139;
    v143 = *v186;
    do
    {
      for (k = 0; k != v142; ++k)
      {
        if (*v186 != v143)
        {
          objc_enumerationMutation(v137);
        }

        v145 = *(*(&v185 + 1) + 8 * k);
        v201[0] = @"begin";
        v146 = MEMORY[0x1E696AD98];
        objc_msgSend_begin(v145, v140, v141);
        v202[0] = objc_msgSend_numberWithDouble_(v146, v147, v148);
        v201[1] = @"end";
        v149 = MEMORY[0x1E696AD98];
        objc_msgSend_end(v145, v150, v151);
        v202[1] = objc_msgSend_numberWithDouble_(v149, v152, v153);
        v201[2] = @"state";
        v154 = MEMORY[0x1E696AD98];
        v157 = objc_msgSend_state(v145, v155, v156);
        v202[2] = objc_msgSend_numberWithInteger_(v154, v158, v157);
        v201[3] = @"strideLength";
        v159 = MEMORY[0x1E696AD98];
        objc_msgSend_kValue(v145, v160, v161);
        v202[3] = objc_msgSend_numberWithDouble_(v159, v162, v163);
        v165 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v164, v202, v201, 4);
        objc_msgSend_addObject_(v182, v166, v165);
      }

      v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v140, &v185, v203, 16);
    }

    while (v142);
  }

  v199[0] = @"history";
  v199[1] = @"rawSpeedToKValueBins";
  v200[0] = v31;
  v200[1] = v183;
  v199[2] = @"stepCadenceToStrideLengthBins";
  v200[2] = v182;
  v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v140, v200, v199, 3);
  if (!v167)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v175 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v175, OS_LOG_TYPE_ERROR, "Unable to dump stride calibration data.", buf, 2u);
    }

    v176 = sub_19B420058();
    if ((*(v176 + 160) & 0x80000000) != 0 && (*(v176 + 164) & 0x80000000) != 0 && (*(v176 + 168) & 0x80000000) != 0 && !*(v176 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    LOWORD(v197) = 0;
    goto LABEL_24;
  }

  v184 = 0;
  v169 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v168, v167, 1, &v184);
  if (v184)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v171 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v211 = v184;
      _os_log_impl(&dword_19B41C000, v171, OS_LOG_TYPE_ERROR, "Unable to serialize stride cal data to json. Error: %@", buf, 0xCu);
    }

    v172 = sub_19B420058();
    if ((*(v172 + 160) & 0x80000000) != 0 && (*(v172 + 164) & 0x80000000) != 0 && (*(v172 + 168) & 0x80000000) != 0 && !*(v172 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v197 = 138412290;
    v198 = v184;
    goto LABEL_24;
  }

  if (objc_msgSend_writeToURL_atomically_(v169, v170, v179, 0))
  {
    result = 1;
    goto LABEL_27;
  }

  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v177 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v177, OS_LOG_TYPE_ERROR, "Unable to write stride cal data to output file.", buf, 2u);
  }

  v178 = sub_19B420058();
  if ((*(v178 + 160) & 0x80000000) == 0 || (*(v178 + 164) & 0x80000000) == 0 || (*(v178 + 168) & 0x80000000) == 0 || *(v178 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    LOWORD(v197) = 0;
LABEL_24:
    v18 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometer sendStrideCalibrationHistoryToFile:]", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

LABEL_26:
  result = 0;
LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)strideCalibrationDump
{
  v3 = objc_msgSend_pedometerProxy(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel__strideCalibrationDump, v4);
}

- (void)queryRawSpeedToKValueBinsWithHandler:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B6CA2FC;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)queryRemoteRawSpeedToKValueBinsWithHandler:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B6CA3B8;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)queryStepCadenceToStrideLengthBinsWithHandler:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B6CA474;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

- (void)queryRemoteStepCadenceToStrideLengthBinsWithHandler:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B6CA530;
  v3[3] = &unk_1E7532B68;
  v3[4] = self;
  v3[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v3);
}

@end