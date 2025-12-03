@interface CLGnssDisablementAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason callbackQueue:(id)queue completionHandler:(id)handler;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason callbackQueue:(id)queue completionHandler:(id)handler;
- (CLGnssDisablementAssertion)initWithRegistrationMessageName:(const char *)name messagePayload:(id)payload callbackQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLGnssDisablementAssertion

- (CLGnssDisablementAssertion)initWithRegistrationMessageName:(const char *)name messagePayload:(id)payload callbackQueue:(id)queue completionHandler:(id)handler
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CLGnssDisablementAssertion;
  if ([(CLGnssDisablementAssertion *)&v8 init])
  {
    operator new();
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)invalidate
{
  ptr = self->fInternal.__ptr_;
  if (ptr)
  {
    sub_19B8B543C(ptr);
  }
}

- (void)dealloc
{
  sub_19B8DC430(&self->fInternal, 0);
  sub_19B8DC430(&self->fInternal, 0);
  v3.receiver = self;
  v3.super_class = CLGnssDisablementAssertion;
  [(CLGnssDisablementAssertion *)&v3 dealloc];
}

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason callbackQueue:(id)queue completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "#clgda,client,newAssertionForBundleIdentifier", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLGnssDisablementAssertion newAssertionForBundleIdentifier:withReason:callbackQueue:completionHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  result = sub_19B8DC650([identifier copy], &stru_1F0E6F140, objc_msgSend(reason, "copy"), queue, handler);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason callbackQueue:(id)queue completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "#clgda,client,newAssertionForBundle", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLGnssDisablementAssertion newAssertionForBundle:withReason:callbackQueue:completionHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  result = sub_19B8DC650(&stru_1F0E6F140, [objc_msgSend(bundle "bundlePath")], objc_msgSend(reason, "copy"), queue, handler);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end