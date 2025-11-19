@interface CMSkiTrackerInternal
- (CMSkiTrackerInternal)init;
- (void)_handleUpdates:(id)a3;
- (void)_queryUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)_startLiveUpdatesWithHandler:(id)a3;
- (void)_startUpdatesFromRecord:(id)a3 handler:(id)a4;
- (void)_stopLiveUpdates;
- (void)_stopUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSkiTrackerInternal

- (CMSkiTrackerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSkiTrackerInternal;
  v2 = [(CMSkiTrackerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSkiTracker", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMSkiTrackerInternal;
  [(CMSkiTrackerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;

  self->fLiveUpdateHandler = 0;
  self->fMostRecentRecord = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startUpdatesFromRecord:(id)a3 handler:(id)a4
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7319D8;
  block[3] = &unk_1E7532C80;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7321DC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)_queryUpdatesFromRecord:(id)a3 handler:(id)a4
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7324D0;
  block[3] = &unk_1E7532C08;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(fInternalQueue, block);
}

- (void)_handleUpdates:(id)a3
{
  v137 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(self->fHandler, a2, a3);
  v7 = objc_msgSend_objectForKeyedSubscript_(a3, v6, @"CMErrorMessage");
  v9 = objc_msgSend_objectForKeyedSubscript_(a3, v8, @"CMSkiKeyDataArray");
  if (v7)
  {
    self->fStartedUpdates = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B7332C0;
    block[3] = &unk_1E7532B90;
    block[4] = v7;
    block[5] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = block;
LABEL_3:
    dispatch_async(v12, v13);
    goto LABEL_4;
  }

  v15 = v9;
  if (!v9)
  {
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v105 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v105, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageSkiDataUpdate message.", buf, 2u);
    }

    v106 = sub_19B420058();
    if ((*(v106 + 160) & 0x80000000) == 0 || (*(v106 + 164) & 0x80000000) == 0 || (*(v106 + 168) & 0x80000000) == 0 || *(v106 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      LOWORD(v120) = 0;
      v107 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v107);
      if (v107 != buf)
      {
        free(v107);
      }
    }

    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = sub_19B733350;
    v113[3] = &unk_1E7532B40;
    v113[4] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = v113;
    goto LABEL_3;
  }

  if (objc_msgSend_count(v9, v10, v11))
  {
    v108 = v5;
    if (self->fRunDistanceOffset == -1.0)
    {
      Object = objc_msgSend_firstObject(v15, v16, v17);
      objc_msgSend_runDistance(Object, v19, v20);
      self->fRunDistanceOffset = v21;
      objc_msgSend_runElevationDescent(Object, v22, v23);
      self->fRunElevationDescendedOffset = v24;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v26, &v115, v136, 16);
    if (v111)
    {
      v29 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
      v30 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
      v110 = *v116;
      obj = v15;
      do
      {
        for (i = 0; i != v111; ++i)
        {
          if (*v116 != v110)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v115 + 1) + 8 * i);
          if (*(v29 + 242) != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v33 = *(v30 + 249);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            fRunDistanceOffset = self->fRunDistanceOffset;
            objc_msgSend_runDistance(v32, v34, v35);
            v38 = v37;
            fRunElevationDescendedOffset = self->fRunElevationDescendedOffset;
            objc_msgSend_runElevationDescent(v32, v40, v41);
            *buf = 134218752;
            v129 = fRunDistanceOffset;
            v130 = 2048;
            v131 = v38;
            v132 = 2048;
            v133 = fRunElevationDescendedOffset;
            v134 = 2048;
            v135 = v42;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "Delivering update with distance offset %f for record distance %f, elevation offset %f for record elevation %f", buf, 0x2Au);
          }

          v43 = sub_19B420058();
          if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (*(v29 + 242) != -1)
            {
              dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
            }

            v48 = *(v30 + 249);
            v49 = self->fRunDistanceOffset;
            objc_msgSend_runDistance(v32, v46, v47);
            v51 = v50;
            v52 = self->fRunElevationDescendedOffset;
            objc_msgSend_runElevationDescent(v32, v53, v54);
            v120 = 134218752;
            v121 = v49;
            v122 = 2048;
            v123 = v51;
            v124 = 2048;
            v125 = v52;
            v126 = 2048;
            v127 = v55;
            v56 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }

          objc_msgSend_runDistance(v32, v44, v45);
          if (v59 <= self->fRunDistanceOffset)
          {
            objc_msgSend_runElevationDescent(v32, v57, v58);
            if (v61 <= self->fRunElevationDescendedOffset)
            {
              continue;
            }
          }

          v112 = [CMSkiData alloc];
          v64 = v25;
          v65 = objc_msgSend_recordId(v32, v62, v63);
          v68 = v30;
          v69 = objc_msgSend_sourceId(v32, v66, v67);
          v72 = objc_msgSend_sessionId(v32, v70, v71);
          started = objc_msgSend_startDate(v32, v73, v74);
          v78 = objc_msgSend_endDate(v32, v76, v77);
          objc_msgSend_runDistance(v32, v79, v80);
          v82 = v81 - self->fRunDistanceOffset;
          objc_msgSend_runAvgSpeed(v32, v83, v84);
          v86 = v85;
          objc_msgSend_runMaxSpeed(v32, v87, v88);
          v90 = v89;
          objc_msgSend_runSlope(v32, v91, v92);
          v94 = v93;
          objc_msgSend_runElevationDescent(v32, v95, v96);
          v98 = v65;
          v25 = v64;
          v29 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
          v99 = v69;
          v30 = v68;
          v101 = objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_runDistance_runAvgSpeed_runMaxSpeed_runSlope_runElevationDescent_(v112, v100, v98, v99, v72, started, v78, v82, v86, v90, v94, v97 - self->fRunElevationDescendedOffset);
          objc_msgSend_addObject_(v25, v102, v101);
        }

        v15 = obj;
        v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, &v115, v136, 16);
      }

      while (v111);
    }

    if (objc_msgSend_count(v25, v27, v28))
    {
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = sub_19B733338;
      v114[3] = &unk_1E7532B90;
      v114[4] = v25;
      v114[5] = v108;
      dispatch_async(MEMORY[0x1E69E96A0], v114);
    }

    self->fMostRecentRecord = objc_msgSend_lastObject(v15, v103, v104);
  }

LABEL_4:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_startLiveUpdatesWithHandler:(id)a3
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B733428;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fInternalQueue, v4);
}

- (void)_stopLiveUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v3 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[live data] stopping updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _stopLiveUpdates]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B734058;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
  v7 = *MEMORY[0x1E69E9840];
}

@end