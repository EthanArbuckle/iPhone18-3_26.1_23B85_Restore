@interface CMStepCounterProxy
- (CMStepCounterProxy)init;
- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 onQueue:(id)a4 withHandler:(id)a5;
- (void)_queryStepCountStartingFromInternal:(id)a3 to:(id)a4 toQueue:(id)a5 withHandler:(id)a6;
- (void)_startStepCountingUpdatesToQueue:(id)a3 updateOn:(int64_t)a4 withHandler:(id)a5;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMStepCounterProxy

- (CMStepCounterProxy)init
{
  v4.receiver = self;
  v4.super_class = CMStepCounterProxy;
  v2 = [(CMStepCounterProxy *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("CMStepCounterQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMStepCounterProxy;
  [(CMStepCounterProxy *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    MEMORY[0x19EAE71C0](fLocationdConnection, a2);

    JUMPOUT(0x19EAE76F0);
  }
}

- (void)_queryStepCountStartingFromInternal:(id)a3 to:(id)a4 toQueue:(id)a5 withHandler:(id)a6
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"CMPedometerStartTime";
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(a3, a2, a3);
  v17[0] = objc_msgSend_numberWithDouble_(v7, v8, v9);
  v16[1] = @"CMPedometerStopTime";
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(a4, v11, v12);
  v17[1] = objc_msgSend_numberWithDouble_(v10, v13, v14);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v17, v16, 2);
  sub_19B6C0F30();
}

- (void)_startStepCountingUpdatesToQueue:(id)a3 updateOn:(int64_t)a4 withHandler:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  self->fStepCountFromStart = -1;
  self->fPrevStepCount = -1;
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageStepCountUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v8 < 0)
  {
    operator delete(__p);
  }

  v9 = @"kCLConnectionMessageSubscribeKey";
  v10[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v10, &v9, 1);
  sub_19B6CA5DC();
}

- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 onQueue:(id)a4 withHandler:(id)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v42 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v8, v12, v9, v10, v11, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v13)) != 0)
  {
    v16 = DictionaryOfClasses;
    v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
    v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMPedometerDataObject");
    v22 = objc_msgSend_numberOfSteps(v19, v20, v21);
    v25 = objc_msgSend_integerValue(v22, v23, v24);
    if (v17)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_19B75E758;
      v37[3] = &unk_1E7532B90;
      v37[4] = v17;
      v37[5] = a4;
      objc_msgSend_addOperationWithBlock_(var1, v26, v37);
    }

    else if (v19)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_19B75E7D0;
      v36[3] = &unk_1E7532AD8;
      v36[4] = a4;
      v36[5] = v25;
      objc_msgSend_addOperationWithBlock_(var1, v26, v36);
    }

    else
    {
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
      }

      v32 = qword_1EAFE2818;
      if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v41 = v16;
        _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Unable to parse mesage (%{public}@) for query response", buf, 0xCu);
      }

      v33 = sub_19B420058();
      if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27F0 != -1)
        {
          dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
        }

        v38 = 138543362;
        v39 = v16;
        v34 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounterProxy _handleQueryResponse:onQueue:withHandler:]", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
    }

    v27 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability!", buf, 2u);
    }

    v28 = sub_19B420058();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E27BA0);
      }

      LOWORD(v38) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMStepCounterProxy _handleQueryResponse:onQueue:withHandler:]", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_19B75E7E8;
    v35[3] = &unk_1E7532B40;
    v35[4] = a4;
    objc_msgSend_addOperationWithBlock_(var1, v29, v35);
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end