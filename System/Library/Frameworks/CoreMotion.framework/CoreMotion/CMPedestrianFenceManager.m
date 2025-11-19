@interface CMPedestrianFenceManager
+ (unint64_t)availableFenceTypes;
- (CMPedestrianFenceManager)init;
- (void)clearFence:(id)a3;
- (void)dealloc;
- (void)endSession;
- (void)forceClearAllFences;
- (void)forceClearFence:(id)a3;
- (void)setFence:(id)a3 withRadius:(float)a4 withCompletion:(id)a5;
- (void)startSessionWithStatusHandler:(id)a3;
@end

@implementation CMPedestrianFenceManager

+ (unint64_t)availableFenceTypes
{
  sub_19B421798();
  if (sub_19B5F9308())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  sub_19B421798();
  return v2 | sub_19B5F93B8();
}

- (void)startSessionWithStatusHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Starting pedestrian fence session", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager startSessionWithStatusHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend__internal(self, v7, v8);
  objc_msgSend__setInSession_withStatusHandler_(v10, v11, 1, a3);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)endSession
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v3 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Ending pedestrian fence session", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager endSession]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = objc_msgSend__internal(self, v5, v6);
  objc_msgSend__setInSession_withStatusHandler_(v8, v9, 0, 0);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setFence:(id)a3 withRadius:(float)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a2;
  v35 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, a3))
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v24 = qword_1EAFE27D0;
    v8 = "";
    self = "assert";
    v7 = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v25 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    a5 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, a5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v29 = 236;
    v30 = "[CMPedestrianFenceManager setFence:withRadius:withCompletion:]";
    v28 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm";
    abort_report_np();
  }

  v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v28, v29, v30);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, v8, self, @"CMPedestrianFenceManager.mm", 237, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v12 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *v32 = v7;
    *&v32[8] = 2050;
    *&v32[10] = a4;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Setting pedestrian fence: fenceID,%{public}@,radiusMeters,%{public}f", buf, 0x16u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v17 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager setFence:withRadius:withCompletion:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  *&v16 = a4;
  v18 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16);
  v21 = objc_msgSend__internal(self, v19, v20);
  objc_msgSend__setFence_withRadius_wake_delay_withCompletion_(v21, v22, v7, v18, 1, 0, a5);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)clearFence:(id)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, a3))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v13 = qword_1EAFE27D0;
    self = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v14 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v3 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v16 = 246;
    v17 = "[CMPedestrianFenceManager clearFence:]";
    v15 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v19 = v3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Clearing pedestrian fence: fenceID,%{public}@", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    LODWORD(v16) = 12;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager clearFence:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend__internal(self, v7, v8, v15, v16, v17);
  objc_msgSend__clearFence_force_(v10, v11, v3, 0);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)forceClearFence:(id)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, a3))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v13 = qword_1EAFE27D0;
    self = "[CMPedestrianFenceManager isAvailable]";
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v14 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v3 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v19 = 0;
      *&v19[4] = 2082;
      *&v19[6] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v16 = 263;
    v17 = "[CMPedestrianFenceManager forceClearFence:]";
    v15 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v5 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v19 = v3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Force clearing pedestrian fence: fenceID,%{public}@", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    LODWORD(v16) = 12;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager forceClearFence:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend__internal(self, v7, v8, v15, v16, v17);
  objc_msgSend__clearFence_force_(v10, v11, v3, 1);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)forceClearAllFences
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMPedestrianFenceManager, a2, v2))
  {
    if (qword_1EAFE2798 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v12 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    v13 = qword_1EAFE27D0;
    if (os_signpost_enabled(qword_1EAFE27D0))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "[CMPedestrianFenceManager isAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PedestrianFence is not available on this platform", "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }
    }

    self = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "[CMPedestrianFenceManager isAvailable]";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:PedestrianFence is not available on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v15 = 270;
    v16 = "[CMPedestrianFenceManager forceClearAllFences]";
    v14 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/PedestrianFence/CMPedestrianFenceManager.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
LABEL_3:
  v4 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Force clearing all fences", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    LODWORD(v15) = 2;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManager forceClearAllFences]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_msgSend__internal(self, v6, v7, v14, v15, v16);
  objc_msgSend__clearFence_force_(v9, v10, 0, 1);
  v11 = *MEMORY[0x1E69E9840];
}

- (CMPedestrianFenceManager)init
{
  v4.receiver = self;
  v4.super_class = CMPedestrianFenceManager;
  v2 = [(CMPedestrianFenceManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMPedestrianFenceManagerInternal);
  }

  return v2;
}

- (void)dealloc
{
  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CMPedestrianFenceManager;
  [(CMPedestrianFenceManager *)&v3 dealloc];
}

@end