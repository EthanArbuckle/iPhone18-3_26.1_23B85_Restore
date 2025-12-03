@interface CLAssertion
- (CLAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLAssertion

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLAssertion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6EDF0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLAssertion, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  var0 = self->_internal->var0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B880AE8;
  block[3] = &unk_1E753CC90;
  block[4] = self;
  dispatch_sync(var0, block);
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLAssertion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6EDF0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLAssertion, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  if (internal)
  {
    sub_19B880AF4(self->_internal);
    dispatch_release(internal->var0);
    MEMORY[0x19EAE98C0](internal, 0xA0C40BD48D6D6);
  }

  v9.receiver = self;
  v9.super_class = CLAssertion;
  [(CLAssertion *)&v9 dealloc];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (CLAssertion)initWithRegistrationMessageName:(const char *)name messageDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLAssertion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6EDF0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290050;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    dictionaryCopy = "activity";
    v25 = 2114;
    v26 = v10;
    v27 = 2050;
    selfCopy = self;
    v29 = 2082;
    nameCopy = name;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLAssertion, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v17.receiver = self;
  v17.super_class = CLAssertion;
  v11 = [(CLAssertion *)&v17 init];
  if (v11)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6EDF0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      dictionaryCopy = dictionary;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting new assertion, messageDictionary:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v13 = dispatch_queue_create("CLAssertionInternalQueue", 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_19BA4C07C;
    v16[3] = &unk_1E753ED68;
    v16[4] = v11;
    v16[5] = v13;
    v16[6] = dictionary;
    v16[7] = name;
    dispatch_sync(v13, v16);
    dispatch_release(v13);
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

@end