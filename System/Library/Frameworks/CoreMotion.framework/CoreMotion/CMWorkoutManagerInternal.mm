@interface CMWorkoutManagerInternal
- (BOOL)_isAutoPauseAllowedForWorkoutType:(int64_t)type;
- (BOOL)_isReminderAllowedForType:(int64_t)type;
- (CMWorkoutManagerInternal)init;
- (void)_checkWorkout:(id)workout;
- (void)_endWorkoutSession:(id)session;
- (void)_getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler;
- (void)_handleDaemonEvent:(id)event;
- (void)_handleDaemonResponse:(id)response;
- (void)_pauseWorkout:(id)workout;
- (void)_registerForWorkoutEvents;
- (void)_resumeWorkout:(id)workout;
- (void)_setSuggestedStopTimeout:(double)timeout;
- (void)_setWorkout:(id)workout;
- (void)_snapshotWithCompletion:(id)completion;
- (void)_startWorkout:(id)workout;
- (void)_stopWorkout:(id)workout;
- (void)_teardown;
- (void)_triggerWorkoutLocationUpdateForTesting:(int64_t)testing;
- (void)_unregisterForWorkoutEvents;
- (void)_userDismissedWorkoutAlert;
- (void)dealloc;
@end

@implementation CMWorkoutManagerInternal

- (CMWorkoutManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMWorkoutManagerInternal;
  v2 = [(CMWorkoutManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMWorkoutManager", v3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMWorkoutManagerInternal;
  [(CMWorkoutManagerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__unregisterForWorkoutEvents(self, a2, v2);
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
  CLConnectionClient::setHandlerForMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  self->fSessionState = 0;
  objc_msgSend__setWorkout_(self, v5, 0);

  self->fWorkoutOverview = 0;
  self->fEnableWorkoutChangeDetection = 0;
  if (self->fLocationdConnection)
  {
    v6 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v6, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;

  self->fMuteSettings = 0;
  self->fAutoPauseMuteSettings = 0;
}

- (void)_startWorkout:(id)workout
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v9 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      workoutCopy = workout;
      v33 = 2112;
      v34 = v8;
      v35 = 1024;
      v36 = getpid();
      v37 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Workout, START, %@, %@, %d, %p", buf, 0x26u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v23 = 138413058;
      workoutCopy2 = workout;
      v25 = 2112;
      v26 = v8;
      v27 = 1024;
      v28 = getpid();
      v29 = 2048;
      selfCopy2 = self;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _startWorkout:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = [CMWorkoutOverview alloc];
  v15 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v13, v14);
  workoutCopy3 = workout;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &workoutCopy3, 1);
  v19 = objc_msgSend_initWithOverviewId_workouts_(v12, v18, v15, v17);
  objc_msgSend__beginWorkoutSession_withWorkout_enableWorkoutChangeDetection_(self, v20, v19, workout, 0);
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_stopWorkout:(id)workout
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      workoutCopy = workout;
      v16 = 2112;
      v17 = v9;
      v18 = 1024;
      v19 = getpid();
      v20 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Workout, STOP, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      getpid();
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _stopWorkout:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  objc_msgSend__endWorkoutSession_(self, v8, workout);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setSuggestedStopTimeout:(double)timeout
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v10 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v11 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138412802;
      *&buf[1] = v10;
      v24 = 1024;
      v25 = getpid();
      v26 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Workout, Registering suggested stop timeout, %@, %d, %p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      *v18 = 138412802;
      *&v18[4] = v10;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy2 = self;
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _setSuggestedStopTimeout:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v16 = @"CMWorkoutTimeout";
    v17 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, timeout);
    *v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v17, &v16, 1);
    sub_19B686B90();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_userDismissedWorkoutAlert
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v4, v3);
  if (ExecutablePathFromPid)
  {
    v6 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v7 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138412802;
      *&buf[1] = v6;
      v12 = 1024;
      v13 = getpid();
      v14 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Workout, User dismissed workout alert, %@, %d, %p", buf, 0x1Cu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      getpid();
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _userDismissedWorkoutAlert]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    sub_19B686CD4();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_triggerWorkoutLocationUpdateForTesting:(int64_t)testing
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 134218754;
      *&buf[1] = testing;
      v26 = 2112;
      v27 = v9;
      v28 = 1024;
      v29 = getpid();
      v30 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Workout, SET LOCATION FOR TESTING, %zd, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v17 = 134218754;
      testingCopy = testing;
      v19 = 2112;
      v20 = v9;
      v21 = 1024;
      v22 = getpid();
      v23 = 2048;
      selfCopy2 = self;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _triggerWorkoutLocationUpdateForTesting:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v15 = @"CMWorkoutTriggerWorkoutLocationEventForTesting";
    v16 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, testing);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, &v16, &v15, 1);
    operator new();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleDaemonResponse:(id)response
{
  *&v36[409] = *MEMORY[0x1E69E9840];
  if (!self->fDelegate)
  {
    goto LABEL_30;
  }

  if (response)
  {
    if (!objc_msgSend_objectForKeyedSubscript_(response, a2, @"CMErrorMessage"))
    {
      goto LABEL_30;
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = objc_msgSend_objectForKeyedSubscript_(response, v5, @"CMErrorMessage");
    v10 = objc_msgSend_integerValue(v7, v8, v9);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v11, @"CMErrorDomain", v10, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v13 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(response, v14, @"CMErrorMessage");
      v18 = objc_msgSend_intValue(v15, v16, v17);
      fWorkout = self->fWorkout;
      *buf = 67109378;
      v36[0] = v18;
      LOWORD(v36[1]) = 2112;
      *(&v36[1] + 2) = fWorkout;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Workout, Error, %d, %@", buf, 0x12u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(response, v21, @"CMErrorMessage");
    objc_msgSend_intValue(v22, v23, v24);
    v34 = self->fWorkout;
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v25 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
    {
      v26 = self->fWorkout;
      *buf = 138412290;
      *v36 = v26;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "Workout, nil event dictionary, %@", buf, 0xCu);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v33 = self->fWorkout;
  }

  v28 = _os_log_send_and_compose_impl();
  sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonResponse:]", "CoreLocation: %s\n", v28);
  if (v28 != buf)
  {
    free(v28);
  }

LABEL_26:
  fDelegate = self->fDelegate;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_workoutManager_didFailWorkout_withError_(self->fDelegate, v30, self->fSender, self->fWorkout, v12);
  }

  else if (objc_opt_respondsToSelector())
  {
    objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v31, self->fSender, self->fWorkout, v12);
  }

LABEL_30:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)_handleDaemonEvent:(id)event
{
  v298 = *MEMORY[0x1E69E9840];
  if (!self->fDelegate)
  {
    goto LABEL_59;
  }

  if (!event)
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v32 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
    {
      fWorkout = self->fWorkout;
      *buf = 138412290;
      *v295 = fWorkout;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Workout, nil event dictionary, %@", buf, 0xCu);
    }

    v34 = sub_19B420058();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v292 = self->fWorkout;
    goto LABEL_52;
  }

  if (objc_msgSend_objectForKeyedSubscript_(event, a2, @"CMErrorMessage"))
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = objc_msgSend_objectForKeyedSubscript_(event, v5, @"CMErrorMessage");
    v10 = objc_msgSend_integerValue(v7, v8, v9);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v11, @"CMErrorDomain", v10, 0);
    v14 = objc_msgSend_objectForKeyedSubscript_(event, v13, @"CMWorkoutAttributes");
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v15 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(event, v16, @"CMErrorMessage");
      *buf = 67109378;
      *v295 = objc_msgSend_intValue(v17, v18, v19);
      *&v295[4] = 2112;
      *&v295[6] = v14;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Workout, ERROR, %d, %@", buf, 0x12u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v22 = objc_msgSend_objectForKeyedSubscript_(event, v21, @"CMErrorMessage");
      objc_msgSend_intValue(v22, v23, v24);
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    fDelegate = self->fDelegate;
    v28 = objc_opt_respondsToSelector();
    v29 = self->fDelegate;
    if ((v28 & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v49, self->fSender, v14, v12);
      }

      goto LABEL_59;
    }

    fSender = self->fSender;
    v31 = v14;
LABEL_56:
    objc_msgSend_workoutManager_didFailWorkout_withError_(v29, v27, fSender, v31, v12);
LABEL_59:
    v57 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!objc_msgSend_objectForKeyedSubscript_(event, v5, @"CMReturnCode") || !objc_msgSend_objectForKeyedSubscript_(event, v35, @"CMWorkoutAttributes"))
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v35, @"CMErrorDomain", 103, 0);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v50 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
    {
      v51 = self->fWorkout;
      *buf = 138412290;
      *v295 = v51;
      _os_log_impl(&dword_19B41C000, v50, OS_LOG_TYPE_FAULT, "Workout, Unrecognizable event dictionary, %@", buf, 0xCu);
    }

    v52 = sub_19B420058();
    if ((*(v52 + 160) & 0x80000000) != 0 && (*(v52 + 164) & 0x80000000) != 0 && (*(v52 + 168) & 0x80000000) != 0 && !*(v52 + 152))
    {
      goto LABEL_54;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v293 = self->fWorkout;
LABEL_52:
    v53 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v53);
    if (v53 != buf)
    {
      free(v53);
    }

LABEL_54:
    v54 = self->fDelegate;
    v55 = objc_opt_respondsToSelector();
    v29 = self->fDelegate;
    if ((v55 & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v56, self->fSender, self->fWorkout, v12);
      }

      goto LABEL_59;
    }

    fSender = self->fSender;
    v31 = self->fWorkout;
    goto LABEL_56;
  }

  v36 = objc_msgSend_objectForKeyedSubscript_(event, v35, @"CMReturnCode");
  v39 = objc_msgSend_integerValue(v36, v37, v38);
  v41 = objc_msgSend_objectForKeyedSubscript_(event, v40, @"CMWorkoutAttributes");
  v43 = objc_msgSend_objectForKeyedSubscript_(event, v42, @"CMWorkoutOverviewData");
  v45 = v43;
  switch(v39)
  {
    case 2uLL:
      if (!objc_msgSend_objectForKeyedSubscript_(event, v44, @"CMWorkoutEventDate"))
      {
        goto LABEL_170;
      }

      v125 = objc_msgSend_type(v41, v44, v124);
      isAutoPauseAllowedForWorkoutType = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v126, v125);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v128 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v130 = objc_msgSend_objectForKeyedSubscript_(event, v129, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v130, v131, v132);
        *buf = 134218498;
        *v295 = v133;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = isAutoPauseAllowedForWorkoutType;
        _os_log_impl(&dword_19B41C000, v128, OS_LOG_TYPE_DEFAULT, "Workout, WILL PAUSE at %f, %@, allowed %d", buf, 0x1Cu);
      }

      v134 = sub_19B420058();
      if (*(v134 + 160) > 1 || *(v134 + 164) > 1 || *(v134 + 168) > 1 || *(v134 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v136 = objc_msgSend_objectForKeyedSubscript_(event, v135, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v136, v137, v138);
        v139 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v139);
        if (v139 != buf)
        {
          free(v139);
        }
      }

      if (isAutoPauseAllowedForWorkoutType)
      {
        v140 = self->fDelegate;
        v141 = objc_opt_respondsToSelector();
        v143 = self->fDelegate;
        if (v141)
        {
          v144 = self->fSender;
          v145 = objc_msgSend_objectForKeyedSubscript_(event, v142, @"CMWorkoutEventDate");
          objc_msgSend_workoutManager_willPauseWorkout_atDate_(v143, v146, v144, v41, v145);
        }

        else
        {
          v286 = self->fDelegate;
          if (objc_opt_respondsToSelector())
          {
            v289 = self->fDelegate;
            v288 = self->fSender;
            v290 = objc_msgSend_objectForKeyedSubscript_(event, v287, @"CMWorkoutEventDate");
            objc_msgSend_workoutManagerWillPauseWorkout_workout_pauseDate_(v289, v291, v288, v41, v290);
          }
        }
      }

      goto LABEL_59;
    case 3uLL:
      if (!objc_msgSend_objectForKeyedSubscript_(event, v44, @"CMWorkoutEventDate"))
      {
        goto LABEL_170;
      }

      v91 = objc_msgSend_type(v41, v44, v90);
      v93 = objc_msgSend__isAutoPauseAllowedForWorkoutType_(self, v92, v91);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v94 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v96 = objc_msgSend_objectForKeyedSubscript_(event, v95, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v96, v97, v98);
        *buf = 134218498;
        *v295 = v99;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = v93;
        _os_log_impl(&dword_19B41C000, v94, OS_LOG_TYPE_DEFAULT, "Workout, WILL RESUME at %f, %@, allowed %d", buf, 0x1Cu);
      }

      v100 = sub_19B420058();
      if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v102 = objc_msgSend_objectForKeyedSubscript_(event, v101, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v102, v103, v104);
        v105 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v105);
        if (v105 != buf)
        {
          free(v105);
        }
      }

      if (v93)
      {
        v106 = self->fDelegate;
        v107 = objc_opt_respondsToSelector();
        v109 = self->fDelegate;
        if (v107)
        {
          v110 = self->fSender;
          v111 = objc_msgSend_objectForKeyedSubscript_(event, v108, @"CMWorkoutEventDate");
          objc_msgSend_workoutManager_willResumeWorkout_atDate_(v109, v112, v110, v41, v111);
        }

        else
        {
          v280 = self->fDelegate;
          if (objc_opt_respondsToSelector())
          {
            v283 = self->fDelegate;
            v282 = self->fSender;
            v284 = objc_msgSend_objectForKeyedSubscript_(event, v281, @"CMWorkoutEventDate");
            objc_msgSend_workoutManagerWillResumeWorkout_workout_resumeDate_(v283, v285, v282, v41, v284);
          }
        }
      }

      goto LABEL_59;
    case 4uLL:
      isReminderAllowedForType = objc_msgSend__isReminderAllowedForType_(self, v44, 2);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v170 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v173 = objc_msgSend_endDate(v41, v171, v172);
        objc_msgSend_timeIntervalSinceReferenceDate(v173, v174, v175);
        *buf = 134218498;
        *v295 = v176;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = isReminderAllowedForType;
        _os_log_impl(&dword_19B41C000, v170, OS_LOG_TYPE_DEFAULT, "Workout, SUGGESTED STOP at %f, %@, allowed %d", buf, 0x1Cu);
      }

      v177 = sub_19B420058();
      if (*(v177 + 160) > 1 || *(v177 + 164) > 1 || *(v177 + 168) > 1 || *(v177 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v180 = objc_msgSend_endDate(v41, v178, v179);
        objc_msgSend_timeIntervalSinceReferenceDate(v180, v181, v182);
        v183 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v183);
        if (v183 != buf)
        {
          free(v183);
        }
      }

      if (isReminderAllowedForType)
      {
        v184 = self->fDelegate;
        v185 = objc_opt_respondsToSelector();
        v188 = self->fDelegate;
        if (v185)
        {
          v189 = self->fSender;
          v190 = objc_msgSend_endDate(v41, v186, v187);
          objc_msgSend_workoutManager_suggestedStopWorkout_atDate_(v188, v191, v189, v41, v190);
        }

        else
        {
          v273 = self->fDelegate;
          if (objc_opt_respondsToSelector())
          {
            v277 = self->fDelegate;
            v276 = self->fSender;
            v278 = objc_msgSend_endDate(v41, v274, v275);
            objc_msgSend_workoutManagerSuggestedStop_workout_stopDate_(v277, v279, v276, v41, v278);
          }
        }
      }

      goto LABEL_59;
    case 6uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v113 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v115 = objc_msgSend_objectForKeyedSubscript_(event, v114, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v115, v116, v117);
        *buf = 134218242;
        *v295 = v118;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        _os_log_impl(&dword_19B41C000, v113, OS_LOG_TYPE_DEFAULT, "Workout, PREDICTION START DID MUTE at %f, %@", buf, 0x16u);
      }

      v119 = sub_19B420058();
      if (*(v119 + 160) <= 1 && *(v119 + 164) <= 1 && *(v119 + 168) <= 1 && !*(v119 + 152))
      {
        goto LABEL_59;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v121 = objc_msgSend_objectForKeyedSubscript_(event, v120, @"CMWorkoutEventDate");
      objc_msgSend_timeIntervalSinceReferenceDate(v121, v122, v123);
      goto LABEL_252;
    case 7uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v75 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v77 = objc_msgSend_objectForKeyedSubscript_(event, v76, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v77, v78, v79);
        *buf = 134218242;
        *v295 = v80;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        _os_log_impl(&dword_19B41C000, v75, OS_LOG_TYPE_DEFAULT, "Workout, LOCATION DID UPDATE at %f, %@", buf, 0x16u);
      }

      v81 = sub_19B420058();
      if (*(v81 + 160) > 1 || *(v81 + 164) > 1 || *(v81 + 168) > 1 || *(v81 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v84 = objc_msgSend_objectForKeyedSubscript_(event, v83, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v84, v85, v86);
        v87 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }
      }

      objc_msgSend__setWorkout_(self, v82, v41);
      v88 = self->fDelegate;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_workoutManager_workoutLocationEventUpdate_(self->fDelegate, v89, self->fSender, v41);
      }

      goto LABEL_59;
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
      v46 = objc_msgSend__isReminderAllowedForType_(self, v44, 0);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v47 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *v295 = v39;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = v46;
        _os_log_impl(&dword_19B41C000, v47, OS_LOG_TYPE_DEFAULT, "Workout, PREDICTION, event %lu, %@, allowed %d", buf, 0x1Cu);
      }

      v48 = sub_19B420058();
      if (*(v48 + 160) <= 1 && *(v48 + 164) <= 1 && *(v48 + 168) <= 1 && !*(v48 + 152))
      {
        goto LABEL_224;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 == -1)
      {
        goto LABEL_222;
      }

      goto LABEL_330;
    case 9uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v192 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v295 = v41;
        _os_log_impl(&dword_19B41C000, v192, OS_LOG_TYPE_DEFAULT, "Workout, (internal only) PREDICTION UPDATE, %@", buf, 0xCu);
      }

      v193 = sub_19B420058();
      if (*(v193 + 160) <= 1 && *(v193 + 164) <= 1 && *(v193 + 168) <= 1 && !*(v193 + 152))
      {
        goto LABEL_59;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

LABEL_252:
      v194 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v194);
      if (v194 != buf)
      {
        free(v194);
      }

      goto LABEL_59;
    case 0xCuLL:
      v46 = objc_msgSend__isReminderAllowedForType_(self, v44, 2);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v164 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *v295 = 12;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = v46;
        _os_log_impl(&dword_19B41C000, v164, OS_LOG_TYPE_DEFAULT, "Workout, STOP RETRACTION, event %lu, %@, allowed %d", buf, 0x1Cu);
      }

      v165 = sub_19B420058();
      if (*(v165 + 160) <= 1 && *(v165 + 164) <= 1 && *(v165 + 168) <= 1 && !*(v165 + 152))
      {
        goto LABEL_224;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
LABEL_330:
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

LABEL_222:
      v166 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v166);
      if (v166 != buf)
      {
        free(v166);
      }

LABEL_224:
      if (v46)
      {
        v167 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_issuedPrediction_(self->fDelegate, v168, self->fSender, v41);
        }
      }

      goto LABEL_59;
    case 0xDuLL:
      if (v43)
      {
        v215 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v216 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v295 = v41;
            _os_log_impl(&dword_19B41C000, v216, OS_LOG_TYPE_DEFAULT, "Workout, SESSION DID BEGIN, %@", buf, 0xCu);
          }

          v217 = sub_19B420058();
          if (*(v217 + 160) > 1 || *(v217 + 164) > 1 || *(v217 + 168) > 1 || *(v217 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            v219 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v219);
            if (v219 != buf)
            {
              free(v219);
            }
          }

          objc_msgSend_workoutManager_didBeginWorkoutSessionWithWorkout_withOverview_(self->fDelegate, v218, self->fSender, v41, v45);
          goto LABEL_59;
        }
      }

      v241 = self->fDelegate;
      if (objc_opt_respondsToSelector())
      {
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v242 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          started = objc_msgSend_startDate(v41, v243, v244);
          objc_msgSend_timeIntervalSinceReferenceDate(started, v246, v247);
          *buf = 134218242;
          *v295 = v248;
          *&v295[8] = 2112;
          *&v295[10] = v41;
          _os_log_impl(&dword_19B41C000, v242, OS_LOG_TYPE_DEFAULT, "Workout, DID START at %f, %@", buf, 0x16u);
        }

        v249 = sub_19B420058();
        if (*(v249 + 160) > 1 || *(v249 + 164) > 1 || *(v249 + 168) > 1 || *(v249 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v254 = objc_msgSend_startDate(v41, v252, v253);
          objc_msgSend_timeIntervalSinceReferenceDate(v254, v255, v256);
          v257 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v257);
          if (v257 != buf)
          {
            free(v257);
          }
        }

        v259 = self->fDelegate;
        v258 = self->fSender;
        v260 = objc_msgSend_startDate(v41, v250, v251);
        objc_msgSend_workoutManager_didStartWorkout_atDate_(v259, v261, v258, v41, v260);
        goto LABEL_59;
      }

      v268 = self->fDelegate;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_59;
      }

      v271 = self->fDelegate;
      v270 = self->fSender;
      objc_msgSend_objectForKeyedSubscript_(event, v269, @"CMWorkoutEventDate");
      v272 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v271, sel_workoutManagerDidStartWorkout_workout_startDate_, v270);
      return;
    case 0xEuLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v69 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v295 = v41;
        _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_DEFAULT, "Workout, SET CURRENT TYPE, %@", buf, 0xCu);
      }

      v70 = sub_19B420058();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v72 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }
      }

      if (v45)
      {
        objc_msgSend__setWorkout_(self, v71, v41);
        v73 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_didSetCurrentWorkoutType_withOverview_(self->fDelegate, v74, self->fSender, v41, v45);
        }
      }

      goto LABEL_59;
    case 0xFuLL:
      if (v43)
      {
        v64 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v65 = qword_1EAFE27B8;
          if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v295 = v41;
            _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_DEFAULT, "Workout, SESSION DID END, %@", buf, 0xCu);
          }

          v66 = sub_19B420058();
          if (*(v66 + 160) > 1 || *(v66 + 164) > 1 || *(v66 + 168) > 1 || *(v66 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2780 != -1)
            {
              dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
            }

            v68 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v68);
            if (v68 != buf)
            {
              free(v68);
            }
          }

          objc_msgSend_workoutManager_didEndWorkoutSessionWithWorkout_withOverview_(self->fDelegate, v67, self->fSender, v41, v45);
          goto LABEL_59;
        }
      }

      v220 = self->fDelegate;
      if (objc_opt_respondsToSelector())
      {
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v221 = qword_1EAFE27B8;
        if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
        {
          v224 = objc_msgSend_endDate(v41, v222, v223);
          objc_msgSend_timeIntervalSinceReferenceDate(v224, v225, v226);
          *buf = 134218242;
          *v295 = v227;
          *&v295[8] = 2112;
          *&v295[10] = v41;
          _os_log_impl(&dword_19B41C000, v221, OS_LOG_TYPE_DEFAULT, "Workout, DID STOP at %f, %@", buf, 0x16u);
        }

        v228 = sub_19B420058();
        if (*(v228 + 160) > 1 || *(v228 + 164) > 1 || *(v228 + 168) > 1 || *(v228 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2780 != -1)
          {
            dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
          }

          v233 = objc_msgSend_endDate(v41, v231, v232);
          objc_msgSend_timeIntervalSinceReferenceDate(v233, v234, v235);
          v236 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v236);
          if (v236 != buf)
          {
            free(v236);
          }
        }

        v238 = self->fDelegate;
        v237 = self->fSender;
        v239 = objc_msgSend_endDate(v41, v229, v230);
        objc_msgSend_workoutManager_didStopWorkout_atDate_(v238, v240, v237, v41, v239);
        goto LABEL_59;
      }

      v263 = self->fDelegate;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_59;
      }

      v266 = self->fDelegate;
      v265 = self->fSender;
      objc_msgSend_objectForKeyedSubscript_(event, v264, @"CMWorkoutEventDate");
      v267 = *MEMORY[0x1E69E9840];

      MEMORY[0x1EEE66B58](v266, sel_workoutManagerDidStopWorkout_workout_stopDate_, v265);
      break;
    case 0x10uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v58 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v295 = v41;
        _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_DEFAULT, "Workout, PAUSED, %@", buf, 0xCu);
      }

      v59 = sub_19B420058();
      if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v61 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      if (v45)
      {
        objc_msgSend__setWorkout_(self, v60, v41);
        v62 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_didPauseWorkout_withOverview_(self->fDelegate, v63, self->fSender, v41, v45);
        }
      }

      goto LABEL_59;
    case 0x11uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v153 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v295 = v41;
        _os_log_impl(&dword_19B41C000, v153, OS_LOG_TYPE_DEFAULT, "Workout, RESUMED, %@", buf, 0xCu);
      }

      v154 = sub_19B420058();
      if (*(v154 + 160) > 1 || *(v154 + 164) > 1 || *(v154 + 168) > 1 || *(v154 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v156 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v156);
        if (v156 != buf)
        {
          free(v156);
        }
      }

      if (v45)
      {
        objc_msgSend__setWorkout_(self, v155, v41);
        v157 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_didResumeWorkout_withOverview_(self->fDelegate, v158, self->fSender, v41, v45);
        }
      }

      goto LABEL_59;
    case 0x12uLL:
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v159 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v295 = v41;
        _os_log_impl(&dword_19B41C000, v159, OS_LOG_TYPE_DEFAULT, "Workout, DETECTED CHANGE, %@", buf, 0xCu);
      }

      v160 = sub_19B420058();
      if (*(v160 + 160) > 1 || *(v160 + 164) > 1 || *(v160 + 168) > 1 || *(v160 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v161 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v161);
        if (v161 != buf)
        {
          free(v161);
        }
      }

      if (v45)
      {
        v162 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_workoutManager_detectedChangeInWorkoutType_withOverview_(self->fDelegate, v163, self->fSender, v41, v45);
        }
      }

      goto LABEL_59;
    case 0x16uLL:
      v195 = objc_msgSend__isReminderAllowedForType_(self, v44, 1);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v196 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
      {
        v198 = objc_msgSend_objectForKeyedSubscript_(event, v197, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v198, v199, v200);
        *buf = 134218498;
        *v295 = v201;
        *&v295[8] = 2112;
        *&v295[10] = v41;
        v296 = 1024;
        v297 = v195;
        _os_log_impl(&dword_19B41C000, v196, OS_LOG_TYPE_DEFAULT, "Workout, RESUME SUGGESTION at %f, %@, allowed %d", buf, 0x1Cu);
      }

      v202 = sub_19B420058();
      if (*(v202 + 160) > 1 || *(v202 + 164) > 1 || *(v202 + 168) > 1 || *(v202 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v204 = objc_msgSend_objectForKeyedSubscript_(event, v203, @"CMWorkoutEventDate");
        objc_msgSend_timeIntervalSinceReferenceDate(v204, v205, v206);
        v207 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v207);
        if (v207 != buf)
        {
          free(v207);
        }
      }

      if (v195)
      {
        v208 = self->fDelegate;
        if (objc_opt_respondsToSelector())
        {
          v212 = self->fDelegate;
          v211 = self->fSender;
          v213 = objc_msgSend_startDate(v41, v209, v210);
          objc_msgSend_workoutManager_suggestedResumeWorkout_atDate_(v212, v214, v211, v41, v213);
        }
      }

      goto LABEL_59;
    default:
      if (v39 < 2)
      {
        goto LABEL_59;
      }

LABEL_170:
      v147 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v44, @"CMErrorDomain", 103, 0);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      v148 = qword_1EAFE27B8;
      if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        *v295 = v41;
        *&v295[8] = 2048;
        *&v295[10] = v39;
        _os_log_impl(&dword_19B41C000, v148, OS_LOG_TYPE_FAULT, "Workout, Unrecognized event, %@, %ld", buf, 0x16u);
      }

      v149 = sub_19B420058();
      if ((*(v149 + 160) & 0x80000000) == 0 || (*(v149 + 164) & 0x80000000) == 0 || (*(v149 + 168) & 0x80000000) == 0 || *(v149 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2780 != -1)
        {
          dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
        }

        v150 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _handleDaemonEvent:]", "CoreLocation: %s\n", v150);
        if (v150 != buf)
        {
          free(v150);
        }
      }

      v151 = self->fDelegate;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_workoutManager_didFailWorkout_withError_(self->fDelegate, v152, self->fSender, v41, v147);
      }

      else if (objc_opt_respondsToSelector())
      {
        objc_msgSend_workoutManagerDidFail_workout_error_(self->fDelegate, v262, self->fSender, v41, v147);
      }

      goto LABEL_59;
  }
}

- (void)_registerForWorkoutEvents
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->fLocationdConnection)
  {
    sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v7, &v6, 1);
    sub_19B6A2040();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForWorkoutEvents
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->fLocationdConnection)
  {
    sub_19B428B50(&__p, "kCLConnectionMessageWorkoutEvent");
    CLConnectionClient::setHandlerForMessage();
    if (v5 < 0)
    {
      operator delete(__p);
    }

    v6 = @"kCLConnectionMessageSubscribeKey";
    v7[0] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v7, &v6, 1);
    sub_19B6A2040();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_getPromptsNeededForWorkoutType:(int64_t)type handler:(id)handler
{
  if (objc_msgSend__shouldAllowMotionCalibrationPromptsForWorkoutType_(self, a2, type))
  {
    sub_19B5DE920();
  }

  v5 = *(handler + 2);

  v5(handler, 0, 0);
}

- (void)_setWorkout:(id)workout
{
  if (!workout || objc_msgSend_type(workout, a2, workout) != 33)
  {
    workoutCopy = workout;

    self->fLastNonTransitionWorkout = workout;
  }

  workoutCopy2 = workout;

  self->fWorkout = workout;
}

- (void)_endWorkoutSession:(id)session
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = session;
      v24 = 2112;
      v25 = v9;
      v26 = 1024;
      v27 = getpid();
      v28 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, end session, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      *v16 = 138413058;
      *&v16[4] = session;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy2 = self;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _endWorkoutSession:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v14 = @"CMWorkoutAttributes";
    sessionCopy = session;
    *v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &sessionCopy, &v14, 1);
    sub_19B686B90();
  }

  objc_msgSend__setWorkout_(self, v8, 0);

  self->fWorkoutOverview = 0;
  self->fSessionState = 0;
  self->fEnableWorkoutChangeDetection = 0;
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_pauseWorkout:(id)workout
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = workout;
      v24 = 2112;
      v25 = v9;
      v26 = 1024;
      v27 = getpid();
      v28 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, manually pause, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      *v16 = 138413058;
      *&v16[4] = workout;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy2 = self;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _pauseWorkout:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v14 = @"CMWorkoutAttributes";
    workoutCopy = workout;
    *v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &workoutCopy, &v14, 1);
    sub_19B6A2040();
  }

  self->fSessionState = 2;
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_resumeWorkout:(id)workout
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v9 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v10 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 138413058;
      *&buf[1] = workout;
      v24 = 2112;
      v25 = v9;
      v26 = 1024;
      v27 = getpid();
      v28 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "WorkoutSession, manually resume, %@, %@, %d, %p", buf, 0x26u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      *v16 = 138413058;
      *&v16[4] = workout;
      v17 = 2112;
      v18 = v9;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy2 = self;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _resumeWorkout:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    v14 = @"CMWorkoutAttributes";
    workoutCopy = workout;
    *v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, &workoutCopy, &v14, 1);
    sub_19B66451C();
  }

  self->fSessionState = 1;
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_snapshotWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v6, v5);
  if (ExecutablePathFromPid)
  {
    v8 = ExecutablePathFromPid;
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v9 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_INFO))
    {
      buf[0] = 138412802;
      *&buf[1] = v8;
      v19 = 1024;
      v20 = getpid();
      v21 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "[snapshot] getting state for %@, %d, %p", buf, 0x1Cu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      getpid();
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutManagerInternal _snapshotWithCompletion:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (self->fLocationdConnection)
  {
    operator new();
  }

  if (qword_1EAFE2780 != -1)
  {
    dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
  }

  v12 = qword_1EAFE27B8;
  if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[snapshot] error, no connection to locationd", buf, 2u);
  }

  v13 = sub_19B420058();
  if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v15 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _snapshotWithCompletion:]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"CMErrorDomain", 103, 0);
  (*(completion + 2))(completion, 0, v16);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)_checkWorkout:(id)workout
{
  v14 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_type(workout, a2, workout) == 19)
  {
    if (!objc_msgSend_swimWorkoutInstance_(CMSwimWorkout, v4, workout))
    {
      if (qword_1EAFE2978 != -1)
      {
        dispatch_once(&qword_1EAFE2978, &unk_1F0E28500);
      }

      v6 = qword_1EAFE2980;
      if (os_log_type_enabled(qword_1EAFE2980, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Trying to start a swim session without using a CMSwimWorkout!  Treating this swim as an open water swim.", buf, 2u);
      }

      v7 = sub_19B420058();
      if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2978 != -1)
        {
          dispatch_once(&qword_1EAFE2978, &unk_1F0E28500);
        }

LABEL_23:
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutManagerInternal _checkWorkout:]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  else if (objc_msgSend_type(workout, v4, v5) == 14 && !objc_msgSend_genericWorkoutInstance_(CMGenericWorkout, v8, workout))
  {
    if (qword_1EAFE2780 != -1)
    {
      dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
    }

    v9 = qword_1EAFE27B8;
    if (os_log_type_enabled(qword_1EAFE27B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Trying to start a generic workout without using CMGenericWorkout!", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2780 != -1)
      {
        dispatch_once(&qword_1EAFE2780, &unk_1F0E2A7A0);
      }

      goto LABEL_23;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isReminderAllowedForType:(int64_t)type
{
  fMuteSettings = self->fMuteSettings;
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, type);
  if (!objc_msgSend_objectForKey_(fMuteSettings, v7, v6))
  {
    return 1;
  }

  v9 = self->fMuteSettings;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, type);
  v12 = objc_msgSend_objectForKey_(v9, v11, v10);
  return objc_msgSend_BOOLValue(v12, v13, v14) ^ 1;
}

- (BOOL)_isAutoPauseAllowedForWorkoutType:(int64_t)type
{
  v5 = type > 0x18;
  fAutoPauseMuteSettings = self->fAutoPauseMuteSettings;
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, type);
  if (objc_msgSend_objectForKey_(fAutoPauseMuteSettings, v8, v7))
  {
    v10 = self->fAutoPauseMuteSettings;
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, type);
    v13 = objc_msgSend_objectForKey_(v10, v12, v11);
    LOBYTE(v16) = objc_msgSend_BOOLValue(v13, v14, v15) ^ 1;
  }

  else
  {
    v16 = v5 | (0xFE7FFFu >> type);
  }

  return v16 & 1;
}

@end