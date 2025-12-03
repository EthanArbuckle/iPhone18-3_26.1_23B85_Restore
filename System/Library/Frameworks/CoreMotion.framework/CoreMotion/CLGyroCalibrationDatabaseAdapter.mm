@interface CLGyroCalibrationDatabaseAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncgetBiasFit:(id *)fit;
- (BOOL)syncgetDoSync:(id)sync;
- (BOOL)syncgetInsertWithBias:(id *)bias variance:(id *)variance temperature:(float)temperature timestamp:(double)timestamp;
- (BOOL)syncgetSupportsMiniCalibration;
- (BOOL)syncgetWipeDatabase;
- (CLGyroCalibrationDatabaseAdapter)init;
- (double)syncgetLastMiniCalibration;
- (int)syncgetMaxDynamicTemperature;
- (int)syncgetNonFactoryRoundCount;
- (int)syncgetNumTemperatures;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)async;
- (void)doAsync:(id)async withReply:(id)reply;
- (void)dumpDatabase:(id)database onCompletion:(id)completion;
- (void)endService;
- (void)getBiasFitWithReply:(id)reply;
- (void)startFactoryGYTT;
@end

@implementation CLGyroCalibrationDatabaseAdapter

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < objc_msgSend_count(blocked, a2, blocked))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(blocked, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, blocked, v5);
  }
}

+ (id)getSilo
{
  if (qword_1ED71D6F8 != -1)
  {
    dispatch_once(&qword_1ED71D6F8, &unk_1F0E2A260);
  }

  return qword_1ED71D6F0;
}

- (CLGyroCalibrationDatabaseAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLGyroCalibrationDatabaseAdapter;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F0E7C428 outboundProtocol:&unk_1F0E85720];
}

- (void)beginService
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_universe(self, a2, v2);
  v5 = sub_19B651C54(v4);
  objc_msgSend_setAdaptedNotifier_(self, v6, v5);
  if (!objc_msgSend_notifier(self, v7, v8))
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B518);
    }

    v10 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__null != self.notifier";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B518);
      }
    }

    v11 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__null != self.notifier";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B518);
      }
    }

    v12 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "__null != self.notifier";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)endService
{
  v3 = *(*objc_msgSend_notifier(self, a2, v2) + 16);

  v3();
}

- (void)adaptee
{
  result = objc_msgSend_notifier(self, a2, v2);
  if (result)
  {
    v4 = **result;

    return __dynamic_cast(result, &unk_1F0E37D70, &unk_1F0E37848, 0);
  }

  return result;
}

- (void)doAsync:(id)async
{
  v4 = objc_msgSend_adaptee(self, a2, async);
  v5 = *(async + 2);

  v5(async, v4);
}

- (void)doAsync:(id)async withReply:(id)reply
{
  v6 = objc_msgSend_adaptee(self, a2, async);
  (*(async + 2))(async, v6);
  v7 = *(reply + 2);

  v7(reply);
}

- (BOOL)syncgetDoSync:(id)sync
{
  v4 = objc_msgSend_adaptee(self, a2, sync);
  (*(sync + 2))(sync, v4);
  return 0;
}

+ (BOOL)isSupported
{
  if (qword_1ED71D700 != -1)
  {
    dispatch_once(&qword_1ED71D700, &unk_1F0E3B4F8);
  }

  return byte_1ED71D6E8;
}

- (int)syncgetMaxDynamicTemperature
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 264);

  return v3();
}

- (void)startFactoryGYTT
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 248);

  v3();
}

- (BOOL)syncgetBiasFit:(id *)fit
{
  v3 = *(*objc_msgSend_adaptee(self, a2, fit) + 216);

  return v3();
}

- (void)getBiasFitWithReply:(id)reply
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  v4 = objc_msgSend_adaptee(self, a2, reply);
  v5 = (*(*v4 + 216))(v4, __src);
  memcpy(v7, __src, sizeof(v7));
  (*(reply + 2))(reply, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (int)syncgetNonFactoryRoundCount
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 296);

  return v3();
}

- (BOOL)syncgetSupportsMiniCalibration
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 272);

  return v3();
}

- (double)syncgetLastMiniCalibration
{
  v5 = 0.0;
  v3 = objc_msgSend_adaptee(self, a2, v2);
  (*(*v3 + 288))(v3, &v5);
  return v5;
}

- (BOOL)syncgetInsertWithBias:(id *)bias variance:(id *)variance temperature:(float)temperature timestamp:(double)timestamp
{
  v8 = *(*objc_msgSend_adaptee(self, a2, bias) + 208);
  v9.n128_f32[0] = temperature;
  v10.n128_f64[0] = timestamp;

  return v8(v9, v10);
}

- (void)dumpDatabase:(id)database onCompletion:(id)completion
{
  v6 = objc_msgSend_adaptee(self, a2, database);
  v7 = (*(*v6 + 224))(v6, database);
  v8 = *(completion + 2);

  v8(completion, v7);
}

- (BOOL)syncgetWipeDatabase
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 232);

  return v3();
}

- (int)syncgetNumTemperatures
{
  v3 = *(*objc_msgSend_adaptee(self, a2, v2) + 240);

  return v3();
}

@end