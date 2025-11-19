@interface CLGyroCalibrationDatabaseAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetBiasFit:(id *)a3;
- (BOOL)syncgetDoSync:(id)a3;
- (BOOL)syncgetInsertWithBias:(id *)a3 variance:(id *)a4 temperature:(float)a5 timestamp:(double)a6;
- (BOOL)syncgetSupportsMiniCalibration;
- (BOOL)syncgetWipeDatabase;
- (CLGyroCalibrationDatabaseAdapter)init;
- (double)syncgetLastMiniCalibration;
- (int)syncgetMaxDynamicTemperature;
- (int)syncgetNonFactoryRoundCount;
- (int)syncgetNumTemperatures;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)dumpDatabase:(id)a3 onCompletion:(id)a4;
- (void)endService;
- (void)getBiasFitWithReply:(id)a3;
- (void)startFactoryGYTT;
@end

@implementation CLGyroCalibrationDatabaseAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < objc_msgSend_count(a3, a2, a3))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(a3, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, a3, v5);
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

- (void)doAsync:(id)a3
{
  v4 = objc_msgSend_adaptee(self, a2, a3);
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)doAsync:(id)a3 withReply:(id)a4
{
  v6 = objc_msgSend_adaptee(self, a2, a3);
  (*(a3 + 2))(a3, v6);
  v7 = *(a4 + 2);

  v7(a4);
}

- (BOOL)syncgetDoSync:(id)a3
{
  v4 = objc_msgSend_adaptee(self, a2, a3);
  (*(a3 + 2))(a3, v4);
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

- (BOOL)syncgetBiasFit:(id *)a3
{
  v3 = *(*objc_msgSend_adaptee(self, a2, a3) + 216);

  return v3();
}

- (void)getBiasFitWithReply:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  v4 = objc_msgSend_adaptee(self, a2, a3);
  v5 = (*(*v4 + 216))(v4, __src);
  memcpy(v7, __src, sizeof(v7));
  (*(a3 + 2))(a3, v5, v7);
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

- (BOOL)syncgetInsertWithBias:(id *)a3 variance:(id *)a4 temperature:(float)a5 timestamp:(double)a6
{
  v8 = *(*objc_msgSend_adaptee(self, a2, a3) + 208);
  v9.n128_f32[0] = a5;
  v10.n128_f64[0] = a6;

  return v8(v9, v10);
}

- (void)dumpDatabase:(id)a3 onCompletion:(id)a4
{
  v6 = objc_msgSend_adaptee(self, a2, a3);
  v7 = (*(*v6 + 224))(v6, a3);
  v8 = *(a4 + 2);

  v8(a4, v7);
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