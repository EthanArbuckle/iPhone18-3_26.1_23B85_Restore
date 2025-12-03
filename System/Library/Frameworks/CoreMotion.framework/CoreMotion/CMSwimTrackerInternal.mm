@interface CMSwimTrackerInternal
- (CMSwimTrackerInternal)init;
- (void)_handleUpdates:(id)updates;
- (void)_querySWOLFSummaryWithSessionID:(id)d handler:(id)handler;
- (void)_querySwimUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_resetOffsets;
- (void)_startUpdatesFromRecord:(id)record handler:(id)handler;
- (void)_stopUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSwimTrackerInternal

- (CMSwimTrackerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSwimTrackerInternal;
  v2 = [(CMSwimTrackerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSwimTracker", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMSwimTrackerInternal;
  [(CMSwimTrackerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_startUpdatesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B776E90;
  block[3] = &unk_1E7532C80;
  block[5] = record;
  block[6] = handler;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B777500;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)_querySwimUpdatesFromRecord:(id)record handler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B777828;
  block[3] = &unk_1E7532C08;
  block[4] = record;
  block[5] = self;
  block[6] = handler;
  dispatch_async(fInternalQueue, block);
}

- (void)_querySWOLFSummaryWithSessionID:(id)d handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2978 != -1)
  {
    dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
  }

  v7 = qword_1EAFE2980;
  if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = objc_msgSend_UUIDString(d, v8, v9);
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "SWOLF query for session: %@", buf, 0xCu);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v17 = 138412290;
    v18 = objc_msgSend_UUIDString(d, v11, v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _querySWOLFSummaryWithSessionID:handler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B778154;
  block[3] = &unk_1E7532C80;
  block[5] = self;
  block[6] = handler;
  block[4] = d;
  dispatch_async(fInternalQueue, block);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleUpdates:(id)updates
{
  v161[202] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_copy(self->fHandler, a2, updates);
  v7 = objc_msgSend_objectForKeyedSubscript_(updates, v6, @"CMErrorMessage");
  v9 = objc_msgSend_objectForKeyedSubscript_(updates, v8, @"CMSwimKeyDataArray");
  if (v7)
  {
    self->fStartedUpdates = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77967C;
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
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v128 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_19B41C000, v128, OS_LOG_TYPE_FAULT, "Unable to parse update message, %p", buf, 0xCu);
    }

    v129 = sub_19B420058();
    if ((*(v129 + 160) & 0x80000000) == 0 || (*(v129 + 164) & 0x80000000) == 0 || (*(v129 + 168) & 0x80000000) == 0 || *(v129 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v150 = 134217984;
      selfCopy4 = self;
      v130 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v130);
      if (v130 != buf)
      {
        free(v130);
      }
    }

    v147[0] = MEMORY[0x1E69E9820];
    v147[1] = 3221225472;
    v147[2] = sub_19B7796F4;
    v147[3] = &unk_1E7532B40;
    v147[4] = v5;
    v12 = MEMORY[0x1E69E96A0];
    v13 = v147;
    goto LABEL_3;
  }

  if (objc_msgSend_count(v9, v10, v11))
  {
    if (self->fDistanceOffset == 1.79769313e308)
    {
      Object = objc_msgSend_firstObject(v15, v16, v17);
      objc_msgSend_distance(Object, v19, v20);
      self->fDistanceOffset = v21;
      self->fStrokeCountOffset = objc_msgSend_strokeCount(Object, v22, v23);
      self->fLapCountOffset = objc_msgSend_lapCount(Object, v24, v25);
      self->fSegmentCountOffset = objc_msgSend_segment(Object, v26, v27);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v28 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
      {
        v29 = getpid();
        *buf = 138413058;
        selfCopy3 = Object;
        v158 = 2112;
        ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v30, v29);
        v160 = 1024;
        LODWORD(v161[0]) = getpid();
        WORD2(v161[0]) = 2048;
        *(v161 + 6) = self;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "Setting offset record for live updates, %@, %@, %d, %p", buf, 0x26u);
      }

      v31 = sub_19B420058();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v32 = getpid();
        v150 = 138413058;
        selfCopy4 = Object;
        v152 = 2112;
        v153 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v33, v32);
        v154 = 1024;
        LODWORD(v155[0]) = getpid();
        WORD2(v155[0]) = 2048;
        *(v155 + 6) = self;
        v34 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    v134 = v5;
    v136 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v35, &v143, v149, 16);
    if (v36)
    {
      v39 = v36;
      v141 = *v144;
      v135 = v15;
      do
      {
        v40 = 0;
        v137 = v39;
        do
        {
          if (*v144 != v141)
          {
            objc_enumerationMutation(v15);
          }

          v41 = *(*(&v143 + 1) + 8 * v40);
          objc_msgSend_distance(v41, v37, v38);
          v45 = v44 - self->fDistanceOffset;
          if (v45 >= -2.22044605e-16)
          {
            if (v45 >= 2.22044605e-16)
            {
              v55 = objc_msgSend_endDate(v41, v42, v43);
              objc_msgSend_timeIntervalSinceReferenceDate(v55, v56, v57);
              v59 = v58;
              started = objc_msgSend_startDate(v41, v60, v61);
              objc_msgSend_timeIntervalSinceReferenceDate(started, v63, v64);
              self->fActiveTime = self->fActiveTime + v59 - v65;
              v140 = [CMSwimData alloc];
              v139 = objc_msgSend_recordId(v41, v66, v67);
              v138 = objc_msgSend_sourceId(v41, v68, v69);
              v72 = objc_msgSend_sessionId(v41, v70, v71);
              v75 = objc_msgSend_startDate(v41, v73, v74);
              v78 = objc_msgSend_endDate(v41, v76, v77);
              v81 = objc_msgSend_strokeCount(v41, v79, v80);
              fStrokeCountOffset = self->fStrokeCountOffset;
              objc_msgSend_distance(v41, v83, v84);
              v86 = v85;
              fDistanceOffset = self->fDistanceOffset;
              v90 = objc_msgSend_distanceTimestamp(v41, v88, v89);
              objc_msgSend_distance(v41, v91, v92);
              v95 = 0.0;
              if (v96 > self->fDistanceOffset)
              {
                fActiveTime = self->fActiveTime;
                objc_msgSend_distance(v41, v93, v94);
                v95 = fActiveTime / (v98 - self->fDistanceOffset);
              }

              v99 = v81 - fStrokeCountOffset;
              v100 = objc_msgSend_lapCount(v41, v93, v94) - self->fLapCountOffset;
              v103 = objc_msgSend_strokeType(v41, v101, v102);
              v106 = objc_msgSend_segment(v41, v104, v105);
              v108 = objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_strokeCount_distance_distanceTimestamp_avgPace_lapCount_strokeType_segment_SWOLF_segmentSWOLF_(v140, v107, v139, v138, v72, v75, v78, v99, v86 - fDistanceOffset, v95, 0.0, 0.0, v90, v100, v103, v106 - self->fSegmentCountOffset);
              objc_msgSend_addObject_(v136, v109, v108);

              v15 = v135;
              v39 = v137;
            }

            else
            {
              if (qword_1EAFE2978 != -1)
              {
                dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
              }

              v51 = qword_1EAFE2980;
              if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
              {
                v52 = self->fDistanceOffset;
                *buf = 134218498;
                selfCopy3 = *&v52;
                v158 = 2112;
                ExecutablePathFromPid = v41;
                v160 = 2048;
                v161[0] = self;
                _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEFAULT, "(Approximately) Zero distance from offset, %f, %@, %p", buf, 0x20u);
              }

              v53 = sub_19B420058();
              if (*(v53 + 160) > 1 || *(v53 + 164) > 1 || *(v53 + 168) > 1 || *(v53 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2978 != -1)
                {
                  dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
                }

                v54 = self->fDistanceOffset;
                v150 = 134218498;
                selfCopy4 = *&v54;
                v152 = 2112;
                v153 = v41;
                v154 = 2048;
                v155[0] = self;
                v50 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v50);
                goto LABEL_48;
              }
            }
          }

          else
          {
            if (qword_1EAFE2978 != -1)
            {
              dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
            }

            v46 = qword_1EAFE2980;
            if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_ERROR))
            {
              v47 = self->fDistanceOffset;
              *buf = 134218498;
              selfCopy3 = *&v47;
              v158 = 2112;
              ExecutablePathFromPid = v41;
              v160 = 2048;
              v161[0] = self;
              _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_ERROR, "Negative distance from offset, %f, %@, %p", buf, 0x20u);
            }

            v48 = sub_19B420058();
            if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2978 != -1)
              {
                dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
              }

              v49 = self->fDistanceOffset;
              v150 = 134218498;
              selfCopy4 = *&v49;
              v152 = 2112;
              v153 = v41;
              v154 = 2048;
              v155[0] = self;
              v50 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v50);
LABEL_48:
              if (v50 != buf)
              {
                free(v50);
              }
            }
          }

          ++v40;
        }

        while (v39 != v40);
        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v37, &v143, v149, 16);
        v39 = v110;
      }

      while (v110);
    }

    if (objc_msgSend_count(v136, v37, v38))
    {
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = sub_19B779758;
      v142[3] = &unk_1E7532B90;
      v142[4] = v136;
      v142[5] = v134;
      dispatch_async(MEMORY[0x1E69E96A0], v142);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v111 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
      {
        v114 = objc_msgSend_lastObject(v136, v112, v113);
        v115 = getpid();
        v117 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v116, v115);
        v118 = getpid();
        *buf = 138413058;
        selfCopy3 = v114;
        v158 = 2112;
        ExecutablePathFromPid = v117;
        v160 = 1024;
        LODWORD(v161[0]) = v118;
        WORD2(v161[0]) = 2048;
        *(v161 + 6) = self;
        _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_DEFAULT, "%@, %@, %d, %p", buf, 0x26u);
      }

      v119 = sub_19B420058();
      if (*(v119 + 160) > 1 || *(v119 + 164) > 1 || *(v119 + 168) > 1 || *(v119 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
        }

        v122 = objc_msgSend_lastObject(v136, v120, v121);
        v123 = getpid();
        v125 = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v124, v123);
        v126 = getpid();
        v150 = 138413058;
        selfCopy4 = v122;
        v152 = 2112;
        v153 = v125;
        v154 = 1024;
        LODWORD(v155[0]) = v126;
        WORD2(v155[0]) = 2048;
        *(v155 + 6) = self;
        v127 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v127);
        if (v127 != buf)
        {
          free(v127);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2978 != -1)
    {
      dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
    }

    v131 = qword_1EAFE2980;
    if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_19B41C000, v131, OS_LOG_TYPE_DEFAULT, "#Warning Empty swim update, %p", buf, 0xCu);
    }

    v132 = sub_19B420058();
    if (*(v132 + 160) > 1 || *(v132 + 164) > 1 || *(v132 + 168) > 1 || *(v132 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E3B728);
      }

      v150 = 134217984;
      selfCopy4 = self;
      v133 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSwimTrackerInternal _handleUpdates:]", "CoreLocation: %s\n", v133);
      if (v133 != buf)
      {
        free(v133);
      }
    }
  }

LABEL_4:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_resetOffsets
{
  self->fStrokeCountOffset = 0;
  self->fDistanceOffset = 1.79769313e308;
  self->fActiveTime = 0.0;
  self->fSegmentCountOffset = 0;
  self->fLapCountOffset = 0;
}

@end