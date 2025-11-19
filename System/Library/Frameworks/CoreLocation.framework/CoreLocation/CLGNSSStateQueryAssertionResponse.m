@interface CLGNSSStateQueryAssertionResponse
+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (CLGNSSStateQueryAssertionResponse)initWithRegistrationMessageName:(const char *)a3 messagePayload:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLGNSSStateQueryAssertionResponse

- (CLGNSSStateQueryAssertionResponse)initWithRegistrationMessageName:(const char *)a3 messagePayload:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CLGNSSStateQueryAssertionResponse;
  if ([(CLGNSSStateQueryAssertionResponse *)&v8 init])
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
  sub_19B8B5950(&self->fInternal, 0);
  sub_19B8B5950(&self->fInternal, 0);
  v3.receiver = self;
  v3.super_class = CLGNSSStateQueryAssertionResponse;
  [(CLGNSSStateQueryAssertionResponse *)&v3 dealloc];
}

+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,client,newAssertionForBundleIdentifier", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLGNSSStateQueryAssertionResponse newAssertionForBundleIdentifier:withReason:callbackQueue:completionHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  result = sub_19B8B5B70([a3 copy], &stru_1F0E6F140, objc_msgSend(a4, "copy"), a5, a6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,client,newAssertionForBundle", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B760);
    }

    v12 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "+[CLGNSSStateQueryAssertionResponse newAssertionForBundle:withReason:callbackQueue:completionHandler:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  result = sub_19B8B5B70(&stru_1F0E6F140, [objc_msgSend(a3 "bundlePath")], objc_msgSend(a4, "copy"), a5, a6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end