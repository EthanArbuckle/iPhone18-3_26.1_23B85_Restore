@interface CLGeomagneticModelProviderAdapter
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (BOOL)syncgetDoSync:(id)a3;
- (CLGeomagneticModelProviderAdapter)init;
- (void)adaptee;
- (void)beginService;
- (void)doAsync:(id)a3;
- (void)doAsync:(id)a3 withReply:(id)a4;
- (void)endService;
- (void)fetchGeomagneticModelData:(id)a3;
@end

@implementation CLGeomagneticModelProviderAdapter

+ (BOOL)isSupported
{
  if (qword_1ED71D558 != -1)
  {
    dispatch_once(&qword_1ED71D558, &unk_1F0E28AC0);
  }

  return byte_1ED71D550;
}

+ (id)getSilo
{
  if (qword_1ED71D568 != -1)
  {
    dispatch_once(&qword_1ED71D568, &unk_1F0E29CA0);
  }

  return qword_1ED71D560;
}

- (CLGeomagneticModelProviderAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLGeomagneticModelProviderAdapter;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F0E787A8 outboundProtocol:&unk_1F0E85660];
}

- (void)beginService
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_universe(self, a2, v2);
  v5 = sub_19B43E33C(v4);
  objc_msgSend_setAdaptedNotifier_(self, v6, v5);
  if (!objc_msgSend_notifier(self, v7, v8))
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B088);
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
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B088);
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
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E3B088);
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

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < objc_msgSend_count(a3, a2, a3))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(a3, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, a3, v5);
  }
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

    return __dynamic_cast(result, &unk_1F0E37D70, &unk_1F0E37830, 0);
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

- (void)fetchGeomagneticModelData:(id)a3
{
  v4 = objc_msgSend_adaptee(self, a2, a3);
  (*(*v4 + 208))(v5);
  (*(a3 + 2))(a3, v5);
}

@end