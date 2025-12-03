@interface CMPedometerProxy
- (CMPedometerProxy)init;
- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)response onQueue:(id)queue withHandler:(id)handler;
- (void)_handleRecordQueryResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler shouldStartUpdates:(BOOL)updates;
- (void)_internalQueryPedometerDataFromDate:(id)date toDate:(id)toDate onQueue:(id)queue withHandler:(id)handler;
- (void)_queryPedometerDataFromDate:(id)date toDate:(id)toDate withHandler:(id)handler;
- (void)_queryPedometerDataSinceDataRecord:(id)record withHandler:(id)handler shouldStartUpdates:(BOOL)updates;
- (void)_startPedometerEventUpdatesWithHandler:(id)handler;
- (void)_startPedometerUpdatesFromDate:(id)date withHandler:(id)handler;
- (void)_startPedometerUpdatesSinceDataRecord:(id)record withHandler:(id)handler;
- (void)_stopPedometerEventUpdates;
- (void)_stopPedometerUpdates;
- (void)_subscribeToCumulativePedometerUpdates:(id)updates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMPedometerProxy

- (CMPedometerProxy)init
{
  v4.receiver = self;
  v4.super_class = CMPedometerProxy;
  v2 = [(CMPedometerProxy *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMPedometerInternalQueue", 0);
    v2->fAppQueue = dispatch_queue_create("com.apple.CoreMotion.CMPedometerUpdateQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  _Block_release(self->fOffsetUpdateHandler);
  self->fOffsetUpdateHandler = 0;

  self->fCumulativeUpdateHandler = 0;
  _Block_release(self->fEventHandler);
  self->fEventHandler = 0;
  dispatch_release(self->fInternalQueue);
  self->fInternalQueue = 0;
  dispatch_release(self->fAppQueue);
  self->fAppQueue = 0;
  v3.receiver = self;
  v3.super_class = CMPedometerProxy;
  [(CMPedometerProxy *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(&__p, "kCLConnectionMessageStepCountUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (self->fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (void)_internalQueryPedometerDataFromDate:(id)date toDate:(id)toDate onQueue:(id)queue withHandler:(id)handler
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"CMPedometerStartTime";
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(date, a2, date);
  v17[0] = objc_msgSend_numberWithDouble_(v7, v8, v9);
  v16[1] = @"CMPedometerStopTime";
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(toDate, v11, v12);
  v17[1] = objc_msgSend_numberWithDouble_(v10, v13, v14);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v17, v16, 2);
  sub_19B6C0F30();
}

- (void)_queryPedometerDataFromDate:(id)date toDate:(id)toDate withHandler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6C62DC;
  v6[3] = &unk_1E7533678;
  v6[4] = self;
  v6[5] = date;
  v6[6] = toDate;
  v6[7] = handler;
  dispatch_async(fInternalQueue, v6);
}

- (void)_startPedometerUpdatesFromDate:(id)date withHandler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C6368;
  block[3] = &unk_1E7532C80;
  block[5] = date;
  block[6] = handler;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopPedometerUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C69D8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)response onQueue:(id)queue withHandler:(id)handler
{
  var1 = response.var1;
  var0 = response.var0;
  v35 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v8, v12, v9, v10, v11, 0);
  if (!*var0 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v13)) == 0)
  {
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v21 = qword_1EAFE2818;
    if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Unable to parse message when checking for availability!", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F0 != -1)
      {
        dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
      }

      LOWORD(v31) = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _handleQueryResponse:onQueue:withHandler:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C709C;
    block[3] = &unk_1E7532B90;
    block[4] = 0;
    block[5] = queue;
    v20 = block;
    goto LABEL_17;
  }

  v16 = DictionaryOfClasses;
  v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
  v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMPedometerDataObject");
  if (v17)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_19B6C6FC8;
    v30[3] = &unk_1E75344C0;
    v30[5] = v17;
    v30[6] = queue;
    v30[4] = v16;
    v20 = v30;
LABEL_17:
    dispatch_async(var1, v20);
    goto LABEL_18;
  }

  if (v19)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_19B6C7048;
    v29[3] = &unk_1E75344C0;
    v29[5] = v16;
    v29[6] = queue;
    v29[4] = v19;
    v20 = v29;
    goto LABEL_17;
  }

  if (qword_1EAFE27F0 != -1)
  {
    dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
  }

  v25 = qword_1EAFE2818;
  if (os_log_type_enabled(qword_1EAFE2818, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v34 = v16;
    _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "Unable to parse message (%{public}@) for query response ", buf, 0xCu);
  }

  v26 = sub_19B420058();
  if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27F0 != -1)
    {
      dispatch_once(&qword_1EAFE27F0, &unk_1F0E3AFB0);
    }

    v31 = 138543362;
    v32 = v16;
    v27 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedometerProxy _handleQueryResponse:onQueue:withHandler:]", "CoreLocation: %s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

LABEL_18:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_startPedometerUpdatesSinceDataRecord:(id)record withHandler:(id)handler
{
  if ((objc_msgSend_isStepCountingAvailable(CMPedometer, a2, record) & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMPedometer.mm", 408, @"Step Counting not available on this platform.");
  }

  objc_msgSend__queryPedometerDataSinceDataRecord_withHandler_shouldStartUpdates_(self, v8, record, handler, 1);
}

- (void)_subscribeToCumulativePedometerUpdates:(id)updates
{
  v7[1] = *MEMORY[0x1E69E9840];

  self->fCumulativeUpdateHandler = 0;
  self->fCumulativeUpdateHandler = updates;
  v6 = @"kCLConnectionMessageSubscribeKey";
  v7[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v7, &v6, 1);
  sub_19B6CA5DC();
}

- (void)_queryPedometerDataSinceDataRecord:(id)record withHandler:(id)handler shouldStartUpdates:(BOOL)updates
{
  fInternalQueue = self->fInternalQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B6C7338;
  v6[3] = &unk_1E75340D8;
  v6[4] = record;
  v6[5] = self;
  v6[6] = handler;
  updatesCopy = updates;
  dispatch_async(fInternalQueue, v6);
}

- (void)_handleRecordQueryResponse:(shared_ptr<CLConnectionMessage>)response withHandler:(id)handler shouldStartUpdates:(BOOL)updates
{
  var1 = response.var1;
  var0 = response.var0;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v9, v14, v10, v11, v12, v13, 0);
  if (!*var0 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v15)) == 0)
  {
    fAppQueue = self->fAppQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6C77AC;
    block[3] = &unk_1E7532B40;
    block[4] = var1;
    v23 = block;
    goto LABEL_6;
  }

  v18 = DictionaryOfClasses;
  v19 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v17, @"CMErrorMessage");
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v20, @"CMPedometerDataArray");
  if (v19)
  {
    fAppQueue = self->fAppQueue;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_19B6C7810;
    v41[3] = &unk_1E7534510;
    v41[5] = self;
    v41[6] = var1;
    handlerCopy = handler;
    v41[4] = v19;
    v23 = v41;
LABEL_6:
    dispatch_async(fAppQueue, v23);
    return;
  }

  v24 = v21;
  fAppQueue = self->fAppQueue;
  if (!v24)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_19B6C793C;
    v37[3] = &unk_1E7534538;
    handlerCopy2 = handler;
    v37[4] = self;
    v37[5] = var1;
    v23 = v37;
    goto LABEL_6;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_19B6C78B4;
  v39[3] = &unk_1E7534510;
  v39[5] = self;
  v39[6] = var1;
  handlerCopy3 = handler;
  v39[4] = v24;
  dispatch_async(fAppQueue, v39);
  v27 = objc_msgSend_count(v24, v25, v26);
  v30 = objc_msgSend_maxPedometerEntries(CMPedometerData, v28, v29);
  if (v27 == objc_msgSend_unsignedIntegerValue(v30, v31, v32))
  {
    Object = objc_msgSend_lastObject(v24, v33, v34);
    objc_msgSend__queryPedometerDataSinceDataRecord_withHandler_shouldStartUpdates_(self, v36, Object, var1, handler);
  }
}

- (void)_startPedometerEventUpdatesWithHandler:(id)handler
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B6C7A38;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(fInternalQueue, v4);
}

- (void)_stopPedometerEventUpdates
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6C7BDC;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

@end