@interface CLNotifierClientAdapter
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLNotifierClientAdapter)init;
- (CLNotifierClientAdapter)initWithClient:(CLNotifierClientBase *)a3;
- (NSString)debugDescription;
- (void)onNotification:(int)a3 withData:(id)a4;
@end

@implementation CLNotifierClientAdapter

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < objc_msgSend_count(a3, a2, a3))
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(a3, v6, v5);
    objc_msgSend_becameFatallyBlocked_index_(v7, v8, a3, v5);
  }
}

- (CLNotifierClientAdapter)init
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27F8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v3 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v4 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
  }
}

- (CLNotifierClientAdapter)initWithClient:(CLNotifierClientBase *)a3
{
  v8.receiver = self;
  v8.super_class = CLNotifierClientAdapter;
  v4 = [(CLNotifierClientAdapter *)&v8 init];
  v6 = v4;
  if (v4)
  {
    v4->_client = a3;
  }

  objc_msgSend_setValid_(v4, v5, 1);
  return v6;
}

- (void)onNotification:(int)a3 withData:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  client = self->_client;
  if (!client)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "_client";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v8 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "_client";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A740);
      }
    }

    v9 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "_client";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  v5 = *(client->var0 + 2);
  v6 = *MEMORY[0x1E69E9840];

  v5();
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CLNotifierClientAdapter;
  v4 = [(CLNotifierClientAdapter *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\nCLNotifierClientBase: %p", v4, self->_client);
}

@end