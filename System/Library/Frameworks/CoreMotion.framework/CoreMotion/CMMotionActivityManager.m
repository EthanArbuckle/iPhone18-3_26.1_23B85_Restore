@interface CMMotionActivityManager
+ (BOOL)isActivityAvailable;
+ (void)paginateDatesIntoDatesFrom:(id)a3 datesTo:(id)a4 start:(id)a5 end:(id)a6 intervalLength:(double)a7;
- (CMMotionActivityManager)init;
- (id)filterActivities:(id)a3 withAttribute:(int64_t)a4;
- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 onQueue:(id)a4 withHandler:(id)a5;
- (void)dealloc;
- (void)queryActivityStartingFromDate:(NSDate *)start toDate:(NSDate *)end toQueue:(NSOperationQueue *)queue withHandler:(CMMotionActivityQueryHandler)handler;
- (void)queryActivityWithAttribute:(int64_t)a3 fromDate:(id)a4 toDate:(id)a5 toQueue:(id)a6 withHandler:(id)a7;
- (void)startActivityLiteUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)startActivityUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMotionActivityHandler)handler;
- (void)startPeriodicActivityUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopActivityLiteUpdates;
- (void)stopActivityUpdates;
- (void)stopPeriodicActivityUpdates;
@end

@implementation CMMotionActivityManager

- (CMMotionActivityManager)init
{
  v6.receiver = self;
  v6.super_class = CMMotionActivityManager;
  v2 = [(CMMotionActivityManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->fIncomingQueue = dispatch_queue_create("com.apple.CoreMotion.CMMotionActivityManager.incoming", v3);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->fOutgoingQueue = dispatch_queue_create("com.apple.CoreMotion.CMMotionActivityManager.outgoing", v4);
    operator new();
  }

  return 0;
}

- (void)stopActivityUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B451CC4;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

+ (BOOL)isActivityAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 23) & 1;
  }

  return v2;
}

- (void)dealloc
{
  fHandler = self->fHandler;
  if (fHandler)
  {
    _Block_release(fHandler);
  }

  if (self->fLocationConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  fIncomingQueue = self->fIncomingQueue;
  self->fIncomingQueue = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D1698;
  block[3] = &unk_1E7532988;
  block[4] = fIncomingQueue;
  dispatch_async(fIncomingQueue, block);
  fOutgoingQueue = self->fOutgoingQueue;
  self->fOutgoingQueue = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B5D16A0;
  v8[3] = &unk_1E7532988;
  v8[4] = fOutgoingQueue;
  dispatch_async(fOutgoingQueue, v8);
  v7.receiver = self;
  v7.super_class = CMMotionActivityManager;
  [(CMMotionActivityManager *)&v7 dealloc];
}

+ (void)paginateDatesIntoDatesFrom:(id)a3 datesTo:(id)a4 start:(id)a5 end:(id)a6 intervalLength:(double)a7
{
  v9 = a5;
  objc_msgSend_timeIntervalSinceDate_(a6, a2, a5);
  if (v13 <= a7)
  {
    v14 = v9;
  }

  else
  {
    do
    {
      v14 = objc_msgSend_dateWithTimeInterval_sinceDate_(MEMORY[0x1E695DF00], v12, v9, a7);
      objc_msgSend_addObject_(a3, v15, v9);
      objc_msgSend_addObject_(a4, v16, v14);
      objc_msgSend_timeIntervalSinceDate_(a6, v17, v14);
      v9 = v14;
    }

    while (v18 > a7);
  }

  objc_msgSend_addObject_(a3, v12, v14);

  objc_msgSend_addObject_(a4, v19, a6);
}

- (void)queryActivityStartingFromDate:(NSDate *)start toDate:(NSDate *)end toQueue:(NSOperationQueue *)queue withHandler:(CMMotionActivityQueryHandler)handler
{
  if (start)
  {
    if (end)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CMMotionActivityManager.mm", 161, @"Invalid parameter not satisfying: %@", @"start");
    if (end)
    {
LABEL_3:
      if (queue)
      {
        goto LABEL_4;
      }

LABEL_8:
      v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CMMotionActivityManager.mm", 163, @"Invalid parameter not satisfying: %@", @"queue");
      if (handler)
      {
        goto LABEL_5;
      }

LABEL_9:
      v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CMMotionActivityManager.mm", 164, @"Invalid parameter not satisfying: %@", @"handler");
      goto LABEL_5;
    }
  }

  v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, start);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CMMotionActivityManager.mm", 162, @"Invalid parameter not satisfying: %@", @"end");
  if (!queue)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!handler)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = objc_msgSend_initWithCapacity_(v12, v13, 16);
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = objc_msgSend_initWithCapacity_(v15, v16, 16);
  objc_msgSend_paginateDatesIntoDatesFrom_datesTo_start_end_intervalLength_(CMMotionActivityManager, v18, v14, v17, start, end, 21600.0);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_19B5D1984;
  v28[3] = &unk_1E7532C58;
  v28[4] = self;
  v28[5] = v14;
  v28[6] = v17;
  v28[7] = queue;
  v28[8] = handler;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, v19, v28);
}

- (void)startActivityUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMMotionActivityHandler)handler
{
  if (!queue)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMMotionActivityManager.mm", 221, @"Invalid parameter not satisfying: %@", @"queue");
    if (handler)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, queue);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMMotionActivityManager.mm", 222, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_3;
  }

  if (!handler)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B5D1F34;
  v12[3] = &unk_1E7532C80;
  v12[5] = queue;
  v12[6] = handler;
  v12[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v12);
}

- (void)_handleQueryResponse:(shared_ptr<CLConnectionMessage>)a3 onQueue:(id)a4 withHandler:(id)a5
{
  var1 = a3.var1;
  if (*a3.var0)
  {
    var0 = a3.var0;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    a2 = objc_msgSend_setWithObjects_(v8, v13, v9, v10, v11, v12, 0);
    if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, a2)) != 0)
    {
      v15 = DictionaryOfClasses;
      v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, a2, @"CMErrorMessage");
      v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMMotionActivityDataArray");
      if (v16)
      {
        v19 = v22;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_19B5D243C;
        v22[3] = &unk_1E7532B90;
        v22[5] = a4;
        a4 = v16;
      }

      else if (v18)
      {
        v19 = v21;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_19B5D24B4;
        v21[3] = &unk_1E7532B90;
        v21[5] = a4;
        a4 = v18;
      }

      else
      {
        v19 = v20;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = sub_19B5D24CC;
        v20[3] = &unk_1E7532B40;
      }
    }

    else
    {
      v19 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B5D23D8;
      v23[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v19 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B5D2374;
    v24[3] = &unk_1E7532B40;
  }

  v19[4] = a4;
  objc_msgSend_addOperationWithBlock_(var1, a2, v19);
}

- (void)startPeriodicActivityUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  if (!a3)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CMMotionActivityManager.mm", 299, @"Invalid parameter not satisfying: %@", @"queue");
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMMotionActivityManager.mm", 300, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B5D2648;
  v12[3] = &unk_1E7532C80;
  v12[5] = a3;
  v12[6] = a4;
  v12[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v12);
}

- (void)stopPeriodicActivityUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B5D2884;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startActivityLiteUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a2;
  v29 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, a2, a3) & 1) == 0)
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v11 = qword_1ED71C7A8;
    v6 = "";
    self = "assert";
    a4 = "[CMMotionActivityManager isActivityLiteAvailable]";
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }
    }

    v12 = qword_1ED71C7A8;
    if (os_signpost_enabled(qword_1ED71C7A8))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Activity Lite is unavailable on this platform", "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }
    }

    v5 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = 347;
    v19 = "[CMMotionActivityManager startActivityLiteUpdatesToQueue:withHandler:]";
    v17 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Activity/CMMotionActivityManager.mm";
    abort_report_np();
LABEL_16:
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, v6, self, @"CMMotionActivityManager.mm", 349, @"Invalid parameter not satisfying: %@", @"queue");
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_17:
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, v6, self, @"CMMotionActivityManager.mm", 350, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_4:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B5D2DAC;
  v20[3] = &unk_1E7532C80;
  v20[5] = v5;
  v20[6] = a4;
  v20[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, v8, v20);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopActivityLiteUpdates
{
  v18 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isActivityLiteAvailable(CMMotionActivityManager, a2, v2) & 1) == 0)
  {
    if (qword_1ED71C7A0 != -1)
    {
      dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
    }

    v6 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }
    }

    v7 = qword_1ED71C7A8;
    if (os_signpost_enabled(qword_1ED71C7A8))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Activity Lite is unavailable on this platform", "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C7A0 != -1)
      {
        dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
      }
    }

    v8 = qword_1ED71C7A8;
    if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "[CMMotionActivityManager isActivityLiteAvailable]";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Activity Lite is unavailable on this platform, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B5D3238;
  v9[3] = &unk_1E7532988;
  v9[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, v4, v9);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)filterActivities:(id)a3 withAttribute:(int64_t)a4
{
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  if (objc_msgSend_count(a3, v8, v9))
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(a3, v10, v11);
      v15 = objc_msgSend_copy(v12, v13, v14);
      objc_msgSend_evaluateNextActivity_attribute_result_(v6, v16, v15, a4, v7);

      ++v11;
    }

    while (v11 < objc_msgSend_count(a3, v17, v18));
  }

  return v7;
}

- (void)queryActivityWithAttribute:(int64_t)a3 fromDate:(id)a4 toDate:(id)a5 toQueue:(id)a6 withHandler:(id)a7
{
  if (!a7)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMMotionActivityManager.mm", 415, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B5D359C;
  v16[3] = &unk_1E7532CA8;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = self;
  v16[7] = a7;
  v16[8] = a3;
  objc_msgSend_queryActivityStartingFromDate_toDate_toQueue_withHandler_(self, a2, a4, a5, a6, v16);
}

@end