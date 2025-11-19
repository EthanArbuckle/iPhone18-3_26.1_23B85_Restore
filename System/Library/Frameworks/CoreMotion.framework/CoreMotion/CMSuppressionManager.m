@interface CMSuppressionManager
+ (BOOL)isAvailable;
+ (BOOL)isSourceAvailable:(unint64_t)a3;
- (CMSuppressionEventStruct)currentSuppressionEvent;
- (CMSuppressionManager)init;
- (CMSuppressionManager)initWithClientType:(int64_t)a3;
- (id)initPrivateWithClientType:(int64_t)a3;
- (id)staticPoseBlocking;
- (id)viewObstructedBlocking;
- (void)connect;
- (void)dealloc;
- (void)deallocPrivate;
- (void)didDetectSignificantUserInteraction;
- (void)feedDevicePresenceEvent:(int64_t)a3 timestamp:(double)a4 force:(BOOL)a5;
- (void)feedSmartPowerNapEvent:(int64_t)a3 timestamp:(double)a4 force:(BOOL)a5;
- (void)feedViewObstructedEvent:(int64_t)a3 facedown:(unint64_t)a4 timeSinceLastFacedownStatic:(double)a5 timestamp:(double)a6 force:(BOOL)a7;
- (void)handleSmartPowerNapState:(unsigned __int8)a3;
- (void)managerDidDetectEvent:(unint64_t)a3;
- (void)managerDidFindError:(unint64_t)a3;
- (void)onCameraCapturePoseData:(const CameraCapturePose *)a3;
- (void)onEclipseData:(const Suppress *)a3;
- (void)onNotification:(id)a3;
- (void)onViewObstructedStateData:(const ViewObstructedState *)a3;
- (void)sendServiceRequestPrivate;
- (void)sendSuppressionEventToClientPrivate;
- (void)sendViewObstructedRequestPrivate;
- (void)sendViewObstructedStateToClientPrivate:(float)a3;
- (void)simulateSignificantUserInteraction;
- (void)startCameraCapturePoseUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startCameraCapturePoseUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)startService;
- (void)startSuppressionUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startSuppressionUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)startSuppressionUpdatesToQueue:(id)a3 withOptions:(unint64_t)a4 withHandler:(id)a5;
- (void)startViewObstructedStateUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startViewObstructedStateUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopCameraCapturePoseUpdates;
- (void)stopCameraCapturePoseUpdatesPrivate;
- (void)stopService;
- (void)stopSuppressionUpdates;
- (void)stopSuppressionUpdatesPrivate;
- (void)stopViewObstructedStateUpdates;
- (void)stopViewObstructedStateUpdatesPrivate;
- (void)updateCurrentSuppressionEvent:(int64_t)a3 timestamp:(double)a4 reason:(unint64_t)a5 facedownState:(unint64_t)a6 timeSinceLastFacedownStatic:(double)a7;
- (void)updateSuppressionStateAndSendToClient;
@end

@implementation CMSuppressionManager

+ (BOOL)isAvailable
{
  if (qword_1EAFE35F8 != -1)
  {
    dispatch_once(&qword_1EAFE35F8, &unk_1F0E3B618);
  }

  return (byte_1EAFE35F0 | (sub_19B421620() >> 9)) & 1;
}

- (void)stopSuppressionUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B44B79C;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)didDetectSignificantUserInteraction
{
  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  if (qword_1EAFE3A68)
  {
    v3 = sub_19B420D84();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B44D81C;
    v4[3] = &unk_1E7532988;
    v4[4] = self;
    sub_19B421668(v3, v4);
  }
}

- (void)sendServiceRequestPrivate
{
  v19[4] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  internal = self->_internal;
  if (internal[232])
  {
    v7 = 1;
  }

  else
  {
    v7 = internal[233];
  }

  v8 = (*(internal + 42) & 0x18) != 0;
  v18[0] = @"CMEclipseServiceEnable";
  v19[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, v7 & 1);
  v18[1] = @"CMSuppressionManagerClientType";
  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_suppressionClientType(self, v10, v11);
  v19[1] = objc_msgSend_numberWithInteger_(v9, v13, v12);
  v18[2] = @"CMSuppressionManagerAlwaysOnViewObstructedRequested";
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, v8);
  v18[3] = @"CMSuppressionManagerClientID";
  v16 = *(internal + 43);
  v19[2] = v15;
  v19[3] = v16;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v19, v18, 4);
  sub_19B44BE58();
}

- (void)connect
{
  internal = self->_internal;
  if (!internal[27])
  {
    internal[28] = dispatch_queue_create("com.apple.CoreMotion.CMSuppressionManager", 0);
    operator new();
  }
}

- (void)stopService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B44D4BC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)stopSuppressionUpdatesPrivate
{
  v62 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isSourceAvailable_(CMSuppressionManager, v4, *(internal + 42)))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    v8 = &unk_19B7BD000;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_suppressionClientType(self, v6, v7);
      v10 = *(internal + 43);
      v12 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v11, *(internal + 10));
      v13 = *(internal + 9);
      v15 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v14, *(internal + 16));
      v16 = *(internal + 15);
      v18 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v17, *(internal + 21));
      v19 = *(internal + 20);
      *buf = 134350850;
      v47 = v9;
      v48 = 2114;
      v49 = v10;
      v50 = 2114;
      v51 = v12;
      v52 = 2050;
      v53 = v13;
      v8 = &unk_19B7BD000;
      v54 = 2114;
      v55 = v15;
      v56 = 2050;
      v57 = v16;
      v58 = 2114;
      v59 = v18;
      v60 = 2050;
      v61 = v19;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Stopping suppression updates. Final states: VO: %{public}@ @ %{public}f, SPN: %{public}@ @ %{public}f, DP: %{public}@ @ %{public}f", buf, 0x52u);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(self, v23, v24);
      v25 = *(internal + 43);
      objc_msgSend_stringForEventType_(CMSuppressionEvent, v26, *(internal + 10));
      v27 = *(internal + 9);
      objc_msgSend_stringForEventType_(CMSuppressionEvent, v28, *(internal + 16));
      v29 = *(internal + 15);
      objc_msgSend_stringForEventType_(CMSuppressionEvent, v30, *(internal + 21));
      v44 = v8[270];
      v45 = *(internal + 20);
      v31 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopSuppressionUpdatesPrivate]", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v32 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v21, v22);
    objc_msgSend_removeObserver_name_object_(v32, v33, self, @"CMSuppressionEventSendNotification", 0);
    v36 = *(internal + 42);
    if ((v36 & 2) != 0)
    {
      v37 = *(internal + 25);
      if (v37)
      {
        objc_msgSend_unregister(v37, v34, v35);

        *(internal + 25) = 0;
        v36 = *(internal + 42);
      }
    }

    if ((v36 & 4) != 0)
    {
      v38 = *(internal + 26);
      if (v38)
      {
        objc_msgSend_unregisterForWatchPresence(v38, v34, v35);

        *(internal + 26) = 0;
        v36 = *(internal + 42);
      }
    }

    if ((v36 & 0x19) != 0 && *(internal + 14))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 0, *(internal + 14));
      v39 = *(internal + 14);
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }

      *(internal + 14) = 0;
    }

    if (*(internal + 41))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 2, *(internal + 41));
      v40 = *(internal + 41);
      if (v40)
      {
        (*(*v40 + 8))(v40);
      }

      *(internal + 41) = 0;
      self->_isCameraCapturePose = 1;
      self->_cameraCapturePoseUIHint = 0;
    }

    v41 = *(internal + 7);
    if (v41)
    {

      *(internal + 7) = 0;
    }

    v42 = *(internal + 6);
    if (v42)
    {

      *(internal + 6) = 0;
    }

    *(internal + 5) = 0;
    *(internal + 24) = 0u;
    *(internal + 8) = 0u;
    *(internal + 72) = 0u;
    *(internal + 88) = 0u;
    *(internal + 13) = 0;
    *(internal + 120) = 0u;
    *(internal + 136) = 0u;
    *(internal + 152) = 0u;
    *(internal + 168) = 0u;
    *(internal + 184) = 0u;
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)updateSuppressionStateAndSendToClient
{
  v79 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  v5 = *(internal + 2);
  v4 = *(internal + 3);
  v6 = *(internal + 1);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_suppressionClientType(self, v8, v9);
    v11 = *(internal + 43);
    *buf = 134350082;
    v70 = v10;
    v71 = 2114;
    v72 = v11;
    v73 = 2114;
    v74 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v12, v5);
    v75 = 2114;
    v76 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v13, v4);
    v77 = 2050;
    v78 = v6;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] Previous: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v14 = sub_19B420058();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(self, v15, v16);
    v66 = *(internal + 43);
    objc_msgSend_stringForEventType_(CMSuppressionEvent, v17, v5);
    objc_msgSend_stringForEventReason_(CMSuppressionEvent, v18, v4);
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = *(internal + 10);
  if (v20 != 1)
  {
    v21 = v4 & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_17;
  }

  v21 = v4 | 1;
  v22 = *(internal + 9);
  if (v22 <= 0.0)
  {
LABEL_17:
    v22 = 0.0;
  }

  v23 = *(internal + 16);
  if (v23 != 1)
  {
    v24 = v21 & 0xFFFFFFFFFFFFFFFDLL;
    goto LABEL_22;
  }

  v24 = v21 | 2;
  v25 = *(internal + 15);
  if (v25 <= v22)
  {
LABEL_22:
    v25 = v22;
  }

  v26 = *(internal + 13);
  v27 = *(internal + 21);
  if (v27 == 1)
  {
    v28 = v24 | 4;
    if (*(internal + 20) > v25)
    {
      v25 = *(internal + 20);
    }

    v29 = 1;
  }

  else
  {
    v28 = v24 & 0xFFFFFFFFFFFFFFFBLL;
    v29 = 1;
    if (v20 != 1 && v23 != 1)
    {
      if (v20 == 2 && *(internal + 9) > v25)
      {
        v28 = 1;
        v25 = *(internal + 9);
      }

      if (v23 == 2 && *(internal + 15) > v25)
      {
        v28 = 2;
        v25 = *(internal + 15);
      }

      if (v27 == 2 && *(internal + 20) > v25)
      {
        v28 = 4;
        v25 = *(internal + 20);
      }

      if (v25 == 0.0)
      {
        __assert_rtn("[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CMSuppressionManager.mm", 867, "nextTimestamp != 0.");
      }

      v29 = 2;
    }
  }

  v65 = *(internal + 12);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v30 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    v33 = self;
    v34 = objc_msgSend_suppressionClientType(self, v31, v32);
    v35 = *(internal + 43);
    v37 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v36, v29);
    v39 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v38, v28);
    *buf = 134350082;
    v70 = v34;
    self = v33;
    v71 = 2114;
    v72 = v35;
    v73 = 2114;
    v74 = v37;
    v75 = 2114;
    v76 = v39;
    v77 = 2050;
    v78 = v25;
    _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] Next: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v40 = sub_19B420058();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(self, v42, v43);
    v67 = *(internal + 43);
    objc_msgSend_stringForEventType_(CMSuppressionEvent, v44, v29);
    objc_msgSend_stringForEventReason_(CMSuppressionEvent, v45, v28);
    v46 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  if (v29 == v5 && v28 == v4)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v47 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v50 = objc_msgSend_suppressionClientType(self, v48, v49);
      v51 = *(internal + 43);
      v53 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v52, v5);
      v55 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v54, v4);
      *buf = 134350082;
      v70 = v50;
      v71 = 2114;
      v72 = v51;
      v73 = 2114;
      v74 = v53;
      v75 = 2114;
      v76 = v55;
      v77 = 2050;
      v78 = v6;
      _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_INFO, "[%{public}ld][%{public}@] No Transition: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
    }

    v56 = sub_19B420058();
    if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(self, v57, v58);
      v68 = *(internal + 43);
      objc_msgSend_stringForEventType_(CMSuppressionEvent, v59, v5);
      objc_msgSend_stringForEventReason_(CMSuppressionEvent, v60, v4);
      v61 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateSuppressionStateAndSendToClient]", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }
  }

  else
  {
    objc_msgSend_updateCurrentSuppressionEvent_timestamp_reason_facedownState_timeSinceLastFacedownStatic_(self, v41, v29, v28, v65, v25, v26);
    objc_msgSend_sendSuppressionEventToClientPrivate(self, v62, v63);
  }

  v64 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSourceAvailable:(unint64_t)a3
{
  if (a3 <= 0x1F)
  {
    if ((a3 & 0x19) == 0 || (isAvailable = objc_msgSend_isAvailable(CMSuppressionManager, a2, a3)) != 0)
    {
      LOBYTE(isAvailable) = 1;
    }
  }

  else
  {
    LOBYTE(isAvailable) = 0;
  }

  return isAvailable;
}

- (CMSuppressionManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428B30;
  v11 = sub_19B429098;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B765634;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (CMSuppressionManager)initWithClientType:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_19B428B30;
  v13 = sub_19B429098;
  v14 = 0;
  v5 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B765764;
  v8[3] = &unk_1E7535D48;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  sub_19B420C9C(v5, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)initPrivateWithClientType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CMSuppressionManager;
  v4 = [(CMSuppressionManager *)&v6 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CMSuppressionManagerInternal);
    v4->_isCameraCapturePose = 1;
    v4->_cameraCapturePoseUIHint = 0;
    v4->_suppressionClientType = a3;
  }

  return v4;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428B30;
  v6[4] = sub_19B429098;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B765900;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMSuppressionManager;
  [(CMSuppressionManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopSuppressionUpdatesPrivate(self, a2, v2);
  objc_msgSend_stopViewObstructedStateUpdatesPrivate(self, v4, v5);
  objc_msgSend_stopCameraCapturePoseUpdatesPrivate(self, v6, v7);
  objc_msgSend_teardownPrivate(self->_internal, v8, v9);
  internal = self->_internal;
}

- (void)sendViewObstructedRequestPrivate
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  v5 = *(self->_internal + 234);
  v9 = @"CMViewObstructedStateEnable";
  v10[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, v5);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v10, &v9, 1);
  sub_19B659120();
}

- (void)startService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B766900;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startSuppressionUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B766CF0;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)startSuppressionUpdatesToQueue:(id)a3 withOptions:(unint64_t)a4 withHandler:(id)a5
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B766D98;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a5;
  v10[7] = a4;
  sub_19B421668(v9, v10);
}

- (void)startCameraCapturePoseUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Starting CameraCapturePose updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v13 = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startCameraCapturePoseUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B767264;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  sub_19B421668(v10, v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopCameraCapturePoseUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping CameraCapturePose updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopCameraCapturePoseUpdates]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B767478;
  v8[3] = &unk_1E7532988;
  v8[4] = self;
  sub_19B421668(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)simulateSignificantUserInteraction
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v2 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Simulated significant user interaction detected", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager simulateSignificantUserInteraction]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  if (qword_1EAFE3A58 != -1)
  {
    dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
  }

  if (qword_1EAFE3A68)
  {
    v5 = sub_19B420D84();
    sub_19B421668(v5, &unk_1F0E3B5F8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)viewObstructedBlocking
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMSuppressionManager, a2, v2))
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3052000000;
    v15 = sub_19B428B30;
    v16 = sub_19B429098;
    v17 = 0;
    v3 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B767944;
    v10[3] = &unk_1E7533730;
    v10[4] = buf;
    sub_19B420C9C(v3, v10);
    v4 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Suppression is not supported on this hardware.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v11 = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager viewObstructedBlocking]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)staticPoseBlocking
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAvailable(CMSuppressionManager, a2, v2))
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3052000000;
    v15 = sub_19B428B30;
    v16 = sub_19B429098;
    v17 = 0;
    v3 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B767C78;
    v10[3] = &unk_1E7533730;
    v10[4] = buf;
    sub_19B420C9C(v3, v10);
    v4 = *(v13 + 5);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Suppression is not supported on this hardware.", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v11 = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager staticPoseBlocking]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)sendSuppressionEventToClientPrivate
{
  v49 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 7))
  {
    v4 = objc_autoreleasePoolPush();
    if ((*(internal + 2) - 1) > 1 || !*(internal + 3) || (v5 = *(internal + 1), v5 == 0.0))
    {
      __assert_rtn("[CMSuppressionManager sendSuppressionEventToClientPrivate]", "CMSuppressionManager.mm", 572, "internal->fCurrentSuppressionEvent.isInitialized()");
    }

    v6 = v4;
    v7 = *(internal + 42);
    if ((v7 & 0xF) != 0)
    {
      v8 = *(internal + 2);
    }

    else
    {
      v8 = 0;
    }

    if ((v7 & 0xF) != 0)
    {
      v9 = *(internal + 3);
    }

    else
    {
      v9 = 0;
    }

    if ((v7 & 0x10) != 0)
    {
      v10 = *(internal + 4);
      v11 = *(internal + 5);
    }

    else
    {
      v10 = 0;
      v11 = 10000.0;
    }

    v12 = [CMSuppressionEvent alloc];
    FacedownStatic = objc_msgSend_initWithEventType_reason_facedownState_timestamp_timeSinceLastFacedownStatic_(v12, v13, v8, v9, v10, v5, v11);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v15 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_suppressionClientType(self, v16, v17);
      v19 = *(internal + 43);
      v20 = mach_absolute_time();
      *buf = 134349826;
      v42 = v18;
      v43 = 2114;
      v44 = v19;
      v45 = 2114;
      v46 = FacedownStatic;
      v47 = 2050;
      v48 = sub_19B41E070(v20);
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] Sending to client: %{public}@,now,%{public}f", buf, 0x2Au);
    }

    v21 = sub_19B420058();
    if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v25 = objc_msgSend_suppressionClientType(self, v23, v24);
      v26 = *(internal + 43);
      v27 = mach_absolute_time();
      v33 = 134349826;
      v34 = v25;
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = FacedownStatic;
      v39 = 2050;
      v40 = sub_19B41E070(v27);
      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager sendSuppressionEventToClientPrivate]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v30 = *(internal + 6);
    v29 = *(internal + 7);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_19B768090;
    v32[3] = &unk_1E7532B90;
    v32[4] = FacedownStatic;
    v32[5] = v30;
    objc_msgSend_addOperationWithBlock_(v29, v22, v32);

    objc_autoreleasePoolPop(v6);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)onEclipseData:(const Suppress *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v5 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_suppressionClientType(self, v6, v7);
      fLux_low = LOBYTE(a3->fLux);
      v10 = *&a3->fType;
      *buf = 134349568;
      v24 = v8;
      v25 = 1026;
      v26 = fLux_low;
      v27 = 2050;
      v28 = v10;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming view obstructed event, shouldSuppress,%{public}u, timestampSecs,%{public}f", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      objc_msgSend_suppressionClientType(self, v13, v14);
      v21 = LOBYTE(a3->fLux);
      v22 = *&a3->fType;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager onEclipseData:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (LOBYTE(a3->fLux))
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (BYTE1(a3->fLux))
    {
      objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v12, v16, 1, 0, *&a3->fFacedownStatic, *&a3->fType);
    }

    else
    {
      objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v12, v16, 2, 0, *&a3->fFacedownStatic, *&a3->fType);
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v17 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onEclipseData:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)onNotification:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_userInfo(a3, a2, a3);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"CMSuppressionEventTypeKey");
  v10 = objc_msgSend_userInfo(a3, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"CMSuppressionEventReasonKey");
  if (v7)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v16 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Invalid notification payload!", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) != 0 && (*(v17 + 164) & 0x80000000) != 0 && (*(v17 + 168) & 0x80000000) != 0 && !*(v17 + 152))
    {
      goto LABEL_52;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  v18 = v12;
  v21 = objc_msgSend_intValue(v7, v13, v14);
  v22 = objc_msgSend_unsignedIntValue(v18, v19, v20);
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v23 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v46 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v24, v21);
    v47 = 2114;
    v48 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v25, v22);
    _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "Incoming suppression notification: %{public}@ (%{public}@)", buf, 0x16u);
  }

  v26 = sub_19B420058();
  if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_stringForEventType_(CMSuppressionEvent, v27, v21);
    objc_msgSend_stringForEventReason_(CMSuppressionEvent, v28, v22);
    v29 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager onNotification:]", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if ((v21 - 1) >= 2)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v30 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v46 = v21;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "Notification event type %{public}lu is invalid!", buf, 0xCu);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_52;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      goto LABEL_62;
    }

LABEL_50:
    v34 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onNotification:]", "CoreLocation: %s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }

    goto LABEL_52;
  }

  if ((v22 & 7) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v32 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349056;
      v46 = v22;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Notification event reason %{public}lu is invalid!", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_52;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_50;
    }

LABEL_62:
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    goto LABEL_50;
  }

  if (v22)
  {
    v36 = mach_absolute_time();
    v37 = sub_19B41E070(v36);
    objc_msgSend_feedViewObstructedEvent_facedown_timeSinceLastFacedownStatic_timestamp_force_(self, v38, v21, 2, 0, 0.0, v37);
    if ((v22 & 2) == 0)
    {
LABEL_31:
      if ((v22 & 4) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_52;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_31;
  }

  v39 = mach_absolute_time();
  v40 = sub_19B41E070(v39);
  objc_msgSend_feedSmartPowerNapEvent_timestamp_force_(self, v41, v21, 0, v40);
  if ((v22 & 4) != 0)
  {
LABEL_55:
    v42 = mach_absolute_time();
    v43 = sub_19B41E070(v42);
    objc_msgSend_feedDevicePresenceEvent_timestamp_force_(self, v44, v21, 0, v43);
  }

LABEL_52:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)updateCurrentSuppressionEvent:(int64_t)a3 timestamp:(double)a4 reason:(unint64_t)a5 facedownState:(unint64_t)a6 timeSinceLastFacedownStatic:(double)a7
{
  v39 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v14 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_suppressionClientType(self, v15, v16);
    v18 = *(internal + 43);
    *buf = 134350082;
    v30 = v17;
    v31 = 2114;
    v32 = v18;
    v33 = 2114;
    v34 = objc_msgSend_stringForEventType_(CMSuppressionEvent, v19, a3);
    v35 = 2114;
    v36 = objc_msgSend_stringForEventReason_(CMSuppressionEvent, v20, a5);
    v37 = 2050;
    v38 = a4;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}ld][%{public}@] ==== Updating current suppression event: %{public}@ (%{public}@) @ %{public}f", buf, 0x34u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(self, v22, v23);
    v28 = *(internal + 43);
    objc_msgSend_stringForEventType_(CMSuppressionEvent, v24, a3);
    objc_msgSend_stringForEventReason_(CMSuppressionEvent, v25, a5);
    v26 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager updateCurrentSuppressionEvent:timestamp:reason:facedownState:timeSinceLastFacedownStatic:]", "CoreLocation: %s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  internal[1] = a4;
  *(internal + 2) = a3;
  *(internal + 3) = a5;
  *(internal + 4) = a6;
  internal[5] = a7;
  v27 = *MEMORY[0x1E69E9840];
}

- (CMSuppressionEventStruct)currentSuppressionEvent
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5812000000;
  v13 = sub_19B768ECC;
  v14 = nullsub_192;
  v15 = &unk_19B840009;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v5 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B768EE4;
  v9[3] = &unk_1E75338E8;
  v9[4] = self;
  v9[5] = &v10;
  sub_19B420C9C(v5, v9);
  v6 = v11;
  v7 = *(v11 + 4);
  *&retstr->timestamp = *(v11 + 3);
  *&retstr->reason = v7;
  *&retstr->timeSinceLastFacedownStatic = v6[10];
  _Block_object_dispose(&v10, 8);
  return result;
}

- (void)feedViewObstructedEvent:(int64_t)a3 facedown:(unint64_t)a4 timeSinceLastFacedownStatic:(double)a5 timestamp:(double)a6 force:(BOOL)a7
{
  v13 = sub_19B420D84();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B768FB8;
  v14[3] = &unk_1E7535D90;
  v15 = a7;
  v14[4] = self;
  v14[5] = a3;
  *&v14[6] = a6;
  v14[7] = a4;
  *&v14[8] = a5;
  sub_19B421668(v13, v14);
}

- (void)feedSmartPowerNapEvent:(int64_t)a3 timestamp:(double)a4 force:(BOOL)a5
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B76964C;
  v10[3] = &unk_1E75343F8;
  v11 = a5;
  v10[4] = self;
  v10[5] = a3;
  *&v10[6] = a4;
  sub_19B421668(v9, v10);
}

- (void)feedDevicePresenceEvent:(int64_t)a3 timestamp:(double)a4 force:(BOOL)a5
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B769EC8;
  v10[3] = &unk_1E75343F8;
  v11 = a5;
  v10[4] = self;
  v10[5] = a3;
  *&v10[6] = a4;
  sub_19B421668(v9, v10);
}

- (void)startSuppressionUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isSourceAvailable_(CMSuppressionManager, v8, *(internal + 42)))
  {
    v10 = *(internal + 7);
    if (v10 != a3)
    {

      *(internal + 7) = a3;
    }

    v11 = *(internal + 6);
    if (v11 != a4)
    {

      *(internal + 6) = objc_msgSend_copy(a4, v12, v13);
    }

    objc_msgSend_updateCurrentSuppressionEvent_timestamp_reason_facedownState_timeSinceLastFacedownStatic_(self, v9, 0, 0, 0, 0.0, 0.0);
    if ((*(internal + 336) & 0x19) != 0 && !*(internal + 14) && (sub_19B421620() & 0x200) != 0)
    {
      operator new();
    }

    if (qword_1EAFE3A58 != -1)
    {
      dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
    }

    if (qword_1EAFE3A68 && !*(internal + 41))
    {
      operator new();
    }

    v16 = *(internal + 42);
    if ((v16 & 2) != 0 && !*(internal + 25))
    {
      *(internal + 25) = objc_alloc_init(off_1ED71C840[0]());
      objc_initWeak(buf, self);
      v29 = *(internal + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B76ABCC;
      block[3] = &unk_1E7533528;
      objc_copyWeak(&v34, buf);
      block[4] = internal;
      dispatch_async(v29, block);
      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
      if ((*(internal + 42) & 4) != 0)
      {
LABEL_18:
        if (!*(internal + 26))
        {
          v17 = objc_alloc(off_1ED71C848[0]());
          v19 = objc_msgSend_initWithDelegate_(v17, v18, self);
          *(internal + 26) = v19;
          objc_msgSend_registerForWatchPresence(v19, v20, v21);
          objc_msgSend_getCurrentWatchPresenceStatus(*(internal + 26), v22, v23);
        }
      }
    }

    else if ((v16 & 4) != 0)
    {
      goto LABEL_18;
    }

    v30 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v14, v15);
    objc_msgSend_addObserver_selector_name_object_suspensionBehavior_(v30, v31, self, sel_onNotification_, @"CMSuppressionEventSendNotification", 0, 4);
    goto LABEL_33;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v24 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    v25 = *(internal + 42);
    *buf = 134349056;
    v38 = v25;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Suppression updates for sources=%{public}lu not available on this platform", buf, 0xCu);
  }

  v26 = sub_19B420058();
  if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v27 = *(internal + 42);
    v35 = 134349056;
    v36 = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager startSuppressionUpdatesPrivateToQueue:withHandler:]", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

LABEL_33:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)onViewObstructedStateData:(const ViewObstructedState *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    internal = self->_internal;
    v5 = *&a3->fSuppress.fTimeSinceLastFacedownStatic;
    v6 = *&a3->fMeanProbabilities[3];
    v7 = *&a3->fSuppress.fOrientation;
    *(internal + 74) = LODWORD(a3->fMeanProbabilities[7]);
    *(internal + 248) = v7;
    *(internal + 264) = v5;
    *(internal + 280) = v6;
    v8 = *&a3->fType;
    v9 = sub_19B420D84();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B76B0F0;
    v14[3] = &unk_1E75357E0;
    v14[4] = self;
    v15 = v8;
    sub_19B421668(v9, v14);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v10 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v16 = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onViewObstructedStateData:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)onCameraCapturePoseData:(const CameraCapturePose *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    var1 = a3->var1;
    var2 = a3->var2;
    v6 = sub_19B420D84();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B76B308;
    v11[3] = &unk_1E75343A8;
    v12 = var1;
    v11[4] = self;
    v11[5] = var2;
    sub_19B421668(v6, v11);
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v7 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v13 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager onCameraCapturePoseData:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)startViewObstructedStateUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v7 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Starting view obstructed state updates.", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v13 = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager startViewObstructedStateUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B76B5DC;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  sub_19B421668(v10, v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopViewObstructedStateUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping view obstructed state updates.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager stopViewObstructedStateUpdates]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B76B830;
  v8[3] = &unk_1E7532988;
  v8[4] = self;
  sub_19B421668(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendViewObstructedStateToClientPrivate:(float)a3
{
  v81 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 7))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E696AEC0];
    v8 = sub_19B449494(internal[253]);
    v10 = objc_msgSend_stringWithUTF8String_(v7, v9, v8);
    v11 = MEMORY[0x1E696AEC0];
    sub_19B688FAC(internal[254], __p);
    if (v70 >= 0)
    {
      v13 = objc_msgSend_stringWithUTF8String_(v11, v12, __p);
    }

    else
    {
      v13 = objc_msgSend_stringWithUTF8String_(v11, v12, *__p);
    }

    v14 = v13;
    if (SHIBYTE(v70) < 0)
    {
      operator delete(*__p);
    }

    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v19 = objc_msgSend_initWithCapacity_(v15, v16, 8);
    for (i = 0; i != 32; i += 4)
    {
      LODWORD(v20) = *&internal[i + 268];
      v22 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v17, v18, v20);
      objc_msgSend_addObject_(v19, v23, v22);
    }

    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    v24 = off_1EAFE2828;
    v25 = a3;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      v26 = internal[250];
      v27 = internal[252];
      v28 = internal[253];
      v29 = internal[254];
      v30 = *(internal + 255);
      v31 = *(internal + 259);
      *__p = 134350850;
      *&__p[4] = v25;
      v67 = 1026;
      v68 = v26;
      v69 = 1026;
      v70 = v27;
      v71 = 1026;
      v72 = v28;
      v73 = 1026;
      v74 = v29;
      v75 = 2050;
      v76 = v30;
      v77 = 2050;
      v78 = v31;
      v79 = 2114;
      v80 = v19;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "Incoming view obstructed state event, timestampSecs,%{public}f,shouldSuppress,%{public}u,currentState,%{public}u,orientation,%{public}u,motionType,%{public}u,lux,%{public}f,pocketProbability,%{public}f,meanProbabilities,%{public}@", __p, 0x42u);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
      }

      v33 = internal[250];
      v34 = internal[252];
      v35 = internal[253];
      v36 = internal[254];
      v37 = *(internal + 255);
      v38 = *(internal + 259);
      v50 = 134350850;
      v51 = v25;
      v52 = 1026;
      v53 = v33;
      v54 = 1026;
      v55 = v34;
      v56 = 1026;
      v57 = v35;
      v58 = 1026;
      v59 = v36;
      v60 = 2050;
      v61 = v37;
      v62 = 2050;
      v63 = v38;
      v64 = 2114;
      v65 = v19;
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager sendViewObstructedStateToClientPrivate:]", "CoreLocation: %s\n", v39);
      if (v39 != __p)
      {
        free(v39);
      }
    }

    v40 = [CMViewObstructedStateEvent alloc];
    LODWORD(v41) = *(internal + 255);
    LODWORD(v42) = *(internal + 259);
    ShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray = objc_msgSend_initWithShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray_(v40, v43, internal[250], internal[252], v10, v14, v19, v41, v42);
    v45 = *(internal + 30);
    v46 = *(internal + 7);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_19B76BCB4;
    v49[3] = &unk_1E7532B90;
    v49[4] = ShouldSupress_currentState_orientation_motionType_lux_pocketProbability_meanProbabilitiesFloatArray;
    v49[5] = v45;
    objc_msgSend_addOperationWithBlock_(v46, v47, v49);

    objc_autoreleasePoolPop(v6);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)startViewObstructedStateUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v8, v9))
  {
    v10 = internal[7];
    if (v10 != a3)
    {

      internal[7] = a3;
    }

    v11 = internal[30];
    if (v11 != a4)
    {

      internal[30] = objc_msgSend_copy(a4, v12, v13);
    }

    if (qword_1EAFE3A58 != -1)
    {
      dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
    }

    if (qword_1EAFE3A68)
    {
      operator new();
    }
  }
}

- (void)stopViewObstructedStateUpdatesPrivate
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v4, v5))
  {
    if (*(internal + 38))
    {
      if (qword_1EAFE3A58 != -1)
      {
        dispatch_once(&qword_1EAFE3A58, &unk_1F0E29B00);
      }

      sub_19B426A14(qword_1EAFE3A68, 1, *(internal + 38));
      v6 = *(internal + 38);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(internal + 38) = 0;
    }

    v7 = *(internal + 7);
    if (v7)
    {

      *(internal + 7) = 0;
    }

    v8 = *(internal + 30);
    if (v8)
    {

      *(internal + 30) = 0;
    }

    *(internal + 248) = 0u;
    v9 = internal + 248;
    *(v9 + 12) = 0;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
  }
}

- (void)startCameraCapturePoseUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v8, v9))
  {
    v10 = internal[39];
    if (v10 != a3)
    {

      internal[39] = a3;
    }

    v11 = internal[40];
    if (v11 != a4)
    {

      internal[40] = objc_msgSend_copy(a4, v12, v13);
    }
  }
}

- (void)stopCameraCapturePoseUpdatesPrivate
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMSuppressionManager, v4, v5))
  {
    v6 = internal[39];
    if (v6)
    {

      internal[39] = 0;
    }

    v7 = internal[40];
    if (v7)
    {

      internal[40] = 0;
    }
  }
}

- (void)handleSmartPowerNapState:(unsigned __int8)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v5 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v18 = objc_msgSend_suppressionClientType(self, v6, v7);
    v19 = 1026;
    v20 = v3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming smart power nap event, %{public}u", buf, 0x12u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(self, v9, v10);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager handleSmartPowerNapState:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (v3 == 1)
  {
    v12 = 1;
    goto LABEL_17;
  }

  if (!v3)
  {
    v12 = 2;
LABEL_17:
    v13 = mach_absolute_time();
    v14 = sub_19B41E070(v13);
    objc_msgSend_feedSmartPowerNapEvent_timestamp_force_(self, v15, v12, 0, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)managerDidDetectEvent:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v5 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v18 = objc_msgSend_suppressionClientType(self, v6, v7);
    v19 = 2050;
    v20 = a3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "[%{public}ld] Incoming device presence event, %{public}lu", buf, 0x16u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    objc_msgSend_suppressionClientType(self, v9, v10);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSuppressionManager managerDidDetectEvent:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (a3 == 1)
  {
    v12 = 2;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    v12 = 1;
LABEL_17:
    v13 = mach_absolute_time();
    v14 = sub_19B41E070(v13);
    objc_msgSend_feedDevicePresenceEvent_timestamp_force_(self, v15, v12, 0, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)managerDidFindError:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
  }

  v4 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v9 = sub_19B76C480(a3);
    v10 = 2050;
    v11 = a3;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_ERROR, "Device presence error: %{public}s %{public}lu", buf, 0x16u);
  }

  v5 = sub_19B420058();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E3B638);
    }

    sub_19B76C480(a3);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSuppressionManager managerDidFindError:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end