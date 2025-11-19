uint64_t sub_19B8D9C30(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    [*(a1 + 32) locationManagerSmoother];
    v4 = *(a1 + 40);
    [*(a1 + 48) intValue];

    return MEMORY[0x1EEE66B58](v3, sel_locationManager_didSmoothLocations_ofType_);
  }

  return result;
}

uint64_t sub_19B8DABE4(uint64_t a1)
{
  [MEMORY[0x1E696AD98] numberWithInt:1];
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "locationManagerSmootherProxy")];
  v3 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v2, sel_smoothLocations_useType_);
}

uint64_t sub_19B8DAD48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] array];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CLSmootherErrorDomain" code:1 userInfo:0];
  v4 = *(v1 + 16);

  return v4(v1, v2, v3);
}

uint64_t sub_19B8DAE9C(uint64_t a1)
{
  v2 = [*(a1 + 32) locationManagerSmootherProxy];
  v3 = *(a1 + 40);

  return [v2 setDelegate:v3];
}

os_log_t sub_19B8DAF08()
{
  result = os_log_create("com.apple.locationd.Position", "RouteSmoother");
  qword_1EAFE47A0 = result;
  return result;
}

void sub_19B8DB9C8(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#clgda,client,#warning,unexpected message,%s", buf, 0xCu);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B8DBBC0(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 136315138;
    v19 = v6;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#clgda,client,message,%s", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) < 0)
    {
      v9 = *v8;
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (*(v3 + 8))
  {
    v11 = CLConnectionMessage::name(*a2);
    if (*(v11 + 23) < 0 && *(v11 + 8) == 44 && !memcmp(*v11, "kCLConnectionMessageGnssDisablementAssertRsp", 0x2CuLL) && (*(v3 + 24) & 1) == 0)
    {
      v12 = *(v3 + 8);
      Dictionary = CLConnectionMessage::getDictionary(*a2);
      (*(v12 + 16))(v12, Dictionary);
      *(v3 + 24) = 1;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "#clgda,#warning,client,noRegisteredCallback", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::CLGnssDisablementAssertionInternal(dispatch_queue_t, const char *, NSDictionary *, CLGnssDisablementAssertionCallback)_block_invoke", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19B8DC334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (a25)
  {
    sub_19B8750F8(a25);
  }

  MEMORY[0x19EAE98C0](v33, v34);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B8DC430(uint64_t *result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#clgda,client,~CLGnssDisablementAssertionInternal()", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "CLGnssDisablementAssertionInternal::~CLGnssDisablementAssertionInternal()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_19B8B543C(v2);
    v6 = *MEMORY[0x1E69E9840];

    JUMPOUT(0x19EAE98C0);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8DC644(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

CLGnssDisablementAssertion *sub_19B8DC650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,reason missing}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#clgda,client,reason missing";
    v9 = "{msg%{public}.0s:#clgda,client,reason missing}";
    goto LABEL_35;
  }

  if (!a1 || !a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,bundleID or bundlePath needed}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#clgda,client,bundleID or bundlePath needed";
    v9 = "{msg%{public}.0s:#clgda,client,bundleID or bundlePath needed}";
    goto LABEL_35;
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,nil callback queue}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#clgda,client,nil callback queue";
    v9 = "{msg%{public}.0s:#clgda,client,nil callback queue}";
    goto LABEL_35;
  }

  if (!a5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#clgda,client,nil callback block}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B8E0);
      }
    }

    v7 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_36;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v8 = "#clgda,client,nil callback block";
    v9 = "{msg%{public}.0s:#clgda,client,nil callback block}";
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, 0x12u);
LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  v14[0] = @"kCLConnectionMessageBundleIdentifierKey";
  v14[1] = @"kCLConnectionMessageBundlePathKey";
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = @"kCLConnectionMessagePurposeKey";
  v15[2] = a3;
  result = -[CLGnssDisablementAssertion initWithRegistrationMessageName:messagePayload:callbackQueue:completionHandler:]([CLGnssDisablementAssertion alloc], "initWithRegistrationMessageName:messagePayload:callbackQueue:completionHandler:", "kCLConnectionMessageGnssDisablementAssertReq", [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3], a4, a5);
LABEL_37:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8DD4AC(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return MEMORY[0x1EEE66B58](Weak, sel_handleMessageWithName_payload_);
}

void sub_19B8DE36C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](v2, sel__resumeLocationUpdater);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater [CLLocationUpdater resume] called on an invalidated instance., self:%{public}p}", &v9, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v7 = *(a1 + 32);
      v9 = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v7;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater [CLLocationUpdater resume] called on an invalidated instance.", "{msg%{public}.0s:#locationUpdater [CLLocationUpdater resume] called on an invalidated instance., self:%{public}p}", &v9, 0x1Cu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_19B8DFD64(double a1, double a2)
{
  if (a2 > 134.82 || a2 < 73.48 || a1 < 18.15 || a1 > 53.6)
  {
    return 0;
  }

  if (a1 <= 42.3 && a2 <= 119.3 && a2 >= 107.1 || a1 <= 42.3 && a2 >= 119.3 && a1 >= 25.3 && a2 <= 123.45 || a1 >= 42.3 && a2 <= 129.2 && a1 <= 49.34 && a2 >= 119.93 || a2 <= 107.1 && a2 >= 98.76 && a1 >= 23.39 && a1 <= 41.58 || a1 <= 42.6 && a2 <= 98.76 && a1 >= 28.39 && a2 >= 85.19 || a2 <= 90.66 && a2 >= 80.81 && a1 >= 42.6 && a1 <= 45.2 || a2 <= 101.54 && a2 >= 99.4 && a1 >= 22.06 && a1 <= 23.39 || a2 <= 119.93 && a1 >= 42.3 && a1 <= 44.74 && a2 >= 111.924 || a2 <= 119.93 && a2 >= 116.55 && a1 >= 44.74 && a1 <= 46.35 || a2 <= 133.09 && a2 >= 129.2 && a1 >= 45.23 && a1 <= 47.66 || a2 <= 125.95 && a2 >= 120.78 && a1 >= 49.34 && a1 <= 52.86 || a2 >= 123.45 && a1 >= 41.38 && a1 <= 42.4 && a2 <= 126.51 || a2 <= 85.19 && a2 >= 79.24 && a1 >= 31.07 && a1 <= 41.73 || a2 <= 85.19 && a1 <= 42.6 && a1 >= 41.73 && a2 >= 80.28 || a2 >= 123.45 && a1 >= 40.9 && a1 <= 41.38 && a2 <= 125.97 || a2 >= 123.45 && a1 >= 40.47 && a1 <= 40.9 && a2 <= 125.0 || a2 <= 120.15 && a2 >= 119.2 && a1 >= 24.78 && a1 <= 25.4)
  {
    return 1;
  }

  if ((a2 > 108.15 || a2 < 97.511 || a1 < 21.14 || a1 > 28.39) && (a2 > 97.511 || a2 < 78.33 || a1 < 27.29 || a1 > 32.7) && (a1 > 41.73 || a1 < 32.7 || a2 > 79.24) && (a2 < 79.24 || a1 < 41.73 || a1 > 49.16 || a2 > 96.06) && (a1 < 41.38 || a2 > 115.52 || a1 > 45.45 || a2 < 96.06) && (a1 < 39.6 || a2 < 115.52) && (a2 < 119.3 || a1 < 21.7 || a1 > 25.3 || a2 > 122.5))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

void sub_19B8E053C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B8E0598(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessage:&v5];
  if (v6)
  {
    sub_19B8750F8(v6);
  }
}

void sub_19B8E05F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8E060C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak handleInterruption];
}

uint64_t sub_19B8E1420(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x19EAE95D0]();

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

os_log_t sub_19B8E146C()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B8E1AB0(void *a1, uint64_t a2, void *a3)
{
  v31 = 0;
  v30 = 0;
  v32 = 0;
  v37 = 0;
  v36 = 0;
  v38 = 0;
  [a3 latitude];
  v6 = v5;
  [a3 longitude];
  v8 = v7;
  [a3 horizontalUncertainty];
  v10 = v9;
  [objc_msgSend(a3 "date")];
  v12 = v11;
  v13 = [a3 referenceFrame];
  v20 = 0xFFFF;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  __asm { FMOV            V0.2D, #-1.0 }

  v24 = xmmword_19BA896C0;
  v25 = _Q0;
  v26 = _Q0;
  v27 = v12;
  v28 = 0;
  v29 = 0xBFF0000000000000;
  v33 = 0xBFF0000000000000;
  v34 = 0x7FFFFFFFLL;
  v35 = v13;
  return [a1 initWithClientLocation:&v20];
}

void sub_19B8E2378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19B8E23A4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v2 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Interrupted, serviceName %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v7 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B8E2570(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v2 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Invalidated - releasing, serviceName %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v12 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  Weak = objc_loadWeak((a1 + 40));
  if (!Weak)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v7 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "CLLocationManagerGathering object went away", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]_block_invoke", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  result = [Weak setConnection:0];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8E28CC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v3 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = [a2 localizedDescription];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "getRemoteObjectProxy error %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    [a2 localizedDescription];
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering getRemoteObjectProxy]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B8E2CF4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getRemoteObjectProxy];
  if (*(*(a1 + 32) + 16))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_19B8E2E30;
    v5[3] = &unk_1E753D660;
    v5[4] = *(a1 + 40);
    result = [v2 fetchAdvertisementsWithCompletion:v5];
  }

  else
  {
    v6 = *MEMORY[0x1E696A578];
    v7[0] = @"fetchAdvertisementsWithHandler unavailable";
    [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
    result = (*(*(a1 + 40) + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8E2E30(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v5 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = [a3 localizedDescription];
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "fetchAdvertisementsWithCompletion error: %@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      [a3 localizedDescription];
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering fetchAdvertisementsWithHandler:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8E3284(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getRemoteObjectProxy];
  if (*(*(a1 + 32) + 16))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_19B8E33C8;
    v5[3] = &unk_1E753D6B0;
    v5[4] = *(a1 + 40);
    result = [v2 fetchAdvertisementsDetailedWithCompletion:v5];
  }

  else
  {
    v6 = *MEMORY[0x1E696A578];
    v7[0] = @"fetchAdvertisementsDetailedWithHandler unavailable";
    [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
    result = (*(*(a1 + 40) + 16))(0.0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8E33C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v8 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = [a5 localizedDescription];
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "fetchAdvertisementsWithCompletion error: %@", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      [a5 localizedDescription];
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering fetchAdvertisementsDetailedWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  result = (*(*(a1 + 32) + 16))(a2);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B8E3844(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) getRemoteObjectProxy];
  if (*(*(a1 + 32) + 16))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE66B58](v2, sel_configure_withCompletion_);
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v6 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "configure:withCompletionHandler: connection invalid", buf, 2u);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManagerGathering configure:withCompletionHandler:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"configure:withCompletion unavailable";
    [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
    result = (*(*(a1 + 40) + 16))();
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

os_log_t sub_19B8E3AC0()
{
  result = os_log_create("com.apple.locationd.Position", "Gathering");
  qword_1EAFE4710 = result;
  return result;
}

uint64_t *sub_19B8E3AF0(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x1E69E5530] + 64;
  a1[52] = MEMORY[0x1E69E5530] + 64;
  v3 = *(MEMORY[0x1E69E54D0] + 16);
  v4 = *(MEMORY[0x1E69E54D0] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5530] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x19EAE9730](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_19B8E3C78(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x19EAE9870](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E3CB0()
{
  if (!qword_1EAFE5B18)
  {
    operator new();
  }

  return qword_1EAFE5B18;
}

void sub_19B8E3D48(uint64_t a1, uint64_t a2, double a3)
{
  v87[152] = *MEMORY[0x1E69E9840];
  if (*a1 != 1)
  {
    goto LABEL_137;
  }

  v5 = *(a1 + 32);
  v6 = v5 < 0.0;
  if (v5 < 0.0 || ((v29 = vabdd_f64(v5, a3), !v6) ? (v30 = v29 <= 30.0) : (v30 = 1), !v30))
  {
    *(a1 + 40) = a3;
    v7 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    *(a1 + 48) = v7 > 0x3B9ACA00;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 134349568;
      *&buf[4] = v9;
      *&buf[12] = 1026;
      *&buf[14] = v10;
      *&buf[18] = 2050;
      *&buf[20] = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "CLMM,Recorder,new start time saved,%{public}.1lf,minDiskSpaceRequirementMet,%{public}d,freeSpace,%{public}lu", buf, 0x1Cu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      LODWORD(__p[0]) = 134349568;
      *(__p + 4) = v12;
      WORD2(__p[1]) = 1026;
      *(&__p[1] + 6) = v13;
      WORD1(__p[2]) = 2050;
      *(&__p[2] + 4) = v7;
      LODWORD(v79) = 28;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLMapMatcherRecorder::storeStartTime(const CFAbsoluteTime)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      sub_19B890FA4((a1 + 8));
      *(a1 + 52) = 0;
    }

    sub_19B87BBB4();
    if (sub_19B93CCA4())
    {
      buf[0] = 0;
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
      {
LABEL_32:
        v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-172800.0];
        sub_19B87BBB4();
        if (sub_19B93CCA4())
        {
          v19 = [MEMORY[0x1E696AC08] defaultManager];
          v20 = [v19 enumeratorAtPath:@"/var/mobile/Library/Logs/locationd/mapmatcher"];
          for (i = [v20 nextObject]; i; i = objc_msgSend(v20, "nextObject"))
          {
            v81 = 0;
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/var/mobile/Library/Logs/locationd/mapmatcher", i];
            v23 = [objc_msgSend(v19 attributesOfItemAtPath:v22 error:{0), "fileCreationDate"}];
            if ([v23 compare:v18] == -1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
              }

              v24 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
              {
                [v23 timeIntervalSinceReferenceDate];
                *buf = 138543618;
                *&buf[4] = v22;
                *&buf[12] = 2050;
                *&buf[14] = v25;
                _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_INFO, "CLMM,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", buf, 0x16u);
              }

              v26 = sub_19B87DD40();
              if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
                }

                [v23 timeIntervalSinceReferenceDate];
                LODWORD(__p[0]) = 138543618;
                *(__p + 4) = v22;
                WORD2(__p[1]) = 2050;
                *(&__p[1] + 6) = v27;
                LODWORD(v79) = 22;
                v28 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void logRecorder::removeFilesOlderThanThisDate(NSDate *)", "CoreLocation: %s\n", v28);
                if (v28 != buf)
                {
                  free(v28);
                }
              }

              [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
            }
          }
        }

        goto LABEL_78;
      }

      v81 = 0;
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
        }

        v15 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = @"/var/mobile/Library/Logs/locationd/mapmatcher";
          _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_INFO, "CLMM,Recorder,created directory at path,%{public}@", buf, 0xCu);
        }

        v16 = sub_19B87DD40();
        if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
          }

          LODWORD(__p[0]) = 138543362;
          *(__p + 4) = @"/var/mobile/Library/Logs/locationd/mapmatcher";
          LODWORD(v79) = 12;
          v17 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL logRecorder::createDirectory()", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        goto LABEL_32;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = @"/var/mobile/Library/Logs/locationd/mapmatcher";
        *&buf[12] = 2114;
        *&buf[14] = v81;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_INFO, "CLMM,Recorder,unable to create directory at path,%{public}@, error, %{public}@", buf, 0x16u);
      }

      v32 = sub_19B87DD40();
      if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
        }

        LODWORD(__p[0]) = 138543618;
        *(__p + 4) = @"/var/mobile/Library/Logs/locationd/mapmatcher";
        WORD2(__p[1]) = 2114;
        *(&__p[1] + 6) = v81;
        LODWORD(v79) = 22;
        v33 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL logRecorder::createDirectory()", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
    }

    v34 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_ERROR, "CLMM,Recorder,unable to create directory, time,%{public}.1lf", buf, 0xCu);
    }

    v35 = sub_19B87DD40();
    if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      LODWORD(__p[0]) = 134349056;
      *(__p + 4) = *&a3;
      LODWORD(v79) = 12;
      v36 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLMapMatcherRecorder::storeStartTime(const CFAbsoluteTime)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

LABEL_78:
  *(a1 + 32) = a3;
  v37 = *(a1 + 52);
  if (*(a1 + 48) != 1 || v37 < 25001)
  {
    goto LABEL_120;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = *(a1 + 8);
  for (j = *(a1 + 16); v41 != j; v41 += 3)
  {
    v43 = v41;
    if (*(v41 + 23) < 0)
    {
      v43 = *v41;
    }

    [v40 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s", v43, v79)}];
  }

  v44 = *(a1 + 40);
  sub_19B87BBB4();
  if (sub_19B93CCA4())
  {
    v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v44];
    v46 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v46 setDateFormat:@"yy-MM-dd"];
    v47 = [v46 stringFromDate:v45];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/mapmatcher_%@.clmm", @"/var/mobile/Library/Logs/locationd/mapmatcher", v47];
    sub_19B8759E8(__p, [v48 UTF8String]);
    buf[0] = 0;
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      sub_19B8E3AF0(buf);
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&buf[*(*buf - 24) + 32] | 4);
      }

      *buf = *MEMORY[0x1E69E54D0];
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x19EAE9740](&buf[8]);
      std::ostream::~ostream();
      MEMORY[0x19EAE9870](v87);
    }

    v49 = objc_autoreleasePoolPush();
    v50 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v48];
    if (!v50)
    {
      goto LABEL_117;
    }

    v81 = 0;
    v51 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v40 requiringSecureCoding:1 error:&v81];
    if ([v51 length])
    {
      [v50 seekToEndOfFile];
      [v50 writeData:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"clmm, %d, %d, AA", v44, objc_msgSend(v51, "length")), "dataUsingEncoding:", 4)}];
      [v50 writeData:v51];
      [v50 closeFile];
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v52 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        v53 = [v51 length];
        *buf = 67240192;
        *&buf[4] = v53;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_INFO, "CLMM,Recorder,writeToFile,success,length,%{public}d", buf, 8u);
      }

      v54 = sub_19B87DD40();
      if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
      {
        goto LABEL_117;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v55 = [v51 length];
      v83 = 67240192;
      v84 = v55;
      v56 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void logRecorder::writeToFile(id, CFAbsoluteTime)", "CoreLocation: %s\n", v56);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      v57 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_INFO, "CLMM,Recorder,writeToFile,failed as date length is 0", buf, 2u);
      }

      v58 = sub_19B87DD40();
      if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
      {
        goto LABEL_117;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B980);
      }

      LOWORD(v83) = 0;
      v56 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void logRecorder::writeToFile(id, CFAbsoluteTime)", "CoreLocation: %s\n", v56);
    }

    if (v56 != buf)
    {
      free(v56);
    }

LABEL_117:
    objc_autoreleasePoolPop(v49);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  objc_autoreleasePoolPop(v39);
  sub_19B890FA4((a1 + 8));
  v37 = 0;
  *(a1 + 52) = 0;
LABEL_120:
  v59 = *(a2 + 23);
  if ((v59 & 0x80u) != 0)
  {
    v59 = *(a2 + 8);
  }

  *(a1 + 52) = v37 + v59;
  if (*(a2 + 23) >= 0)
  {
    v60 = a2;
  }

  else
  {
    v60 = *a2;
  }

  sub_19B8759E8(__p, v60);
  v62 = *(a1 + 16);
  v61 = *(a1 + 24);
  if (v62 >= v61)
  {
    v64 = *(a1 + 8);
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v64) >> 3);
    v66 = v65 + 1;
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v67 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v64) >> 3);
    if (2 * v67 > v66)
    {
      v66 = 2 * v67;
    }

    if (v67 >= 0x555555555555555)
    {
      v68 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v68 = v66;
    }

    v86 = a1 + 8;
    if (v68)
    {
      sub_19B8B8A58(a1 + 8, v68);
    }

    v69 = 24 * v65;
    v70 = *__p;
    *(v69 + 16) = __p[2];
    *v69 = v70;
    memset(__p, 0, 24);
    v71 = 24 * v65 + 24;
    v72 = *(a1 + 8);
    v73 = *(a1 + 16) - v72;
    v74 = 24 * v65 - v73;
    memcpy((v69 - v73), v72, v73);
    v75 = *(a1 + 8);
    *(a1 + 8) = v74;
    *(a1 + 16) = v71;
    v76 = *(a1 + 24);
    *(a1 + 24) = 0;
    *&buf[16] = v75;
    *&buf[24] = v76;
    *buf = v75;
    *&buf[8] = v75;
    sub_19B8B8AE4(buf);
    v77 = SHIBYTE(__p[2]);
    *(a1 + 16) = v71;
    if (v77 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v63 = *__p;
    *(v62 + 16) = __p[2];
    *v62 = v63;
    *(a1 + 16) = v62 + 24;
  }

LABEL_137:
  v78 = *MEMORY[0x1E69E9840];
}

void sub_19B8E4E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B8E4E80()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8E4EB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x19EAE9740](a1 + 1);

  return std::ostream::~ostream();
}

void sub_19B8E5918(void *a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_19B880238(a1);
}

void sub_19B8E5A9C(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_19B93466C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E5AC0(uint64_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(result + 104))
  {
    v1 = result;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Creating maps geocaching OS transaction", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapGeometry::takeOSTransaction()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    if (*(v1 + 151) < 0)
    {
      v5 = *(v1 + 128);
    }

    result = os_transaction_create();
    *(v1 + 104) = result;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8E5C90(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Releasing maps geocaching OS transaction", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapGeometry::releaseOSTransaction()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    *(a1 + 104) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B8E5E54(uint64_t a1, unint64_t *a2, unsigned int a3, __int128 **a4)
{
  if (*(a1 + 168) == 1 && a2 != 0)
  {
    v7 = sub_19B8E5F08(a1 + 288, a2, 1);
    if (v7)
    {
      v8 = v7;
      if (*(v7 + a3) == 1)
      {
        sub_19B8E6054(v7, a3);
      }

      v9 = *a4;
      for (i = a4[1]; v9 != i; ++v9)
      {
        if (a3)
        {
          v8[1] = 1;
          v11 = 8;
        }

        else
        {
          *v8 = 1;
          v11 = 32;
        }

        sub_19B8EAB68(&v8[v11], v9);
      }
    }
  }
}

uint64_t sub_19B8E5F08(uint64_t a1, unint64_t *a2, int a3)
{
  if (sub_19B8F07E0(a1, a2))
  {
    *&v8 = a2;
    return sub_19B8F0840(a1, a2) + 48;
  }

  else if (a3)
  {
    v12 = 0;
    memset(v13, 0, sizeof(v13));
    v14 = 0xBFF0000000000000;
    v8 = *a2;
    v9 = 0;
    memset(v10, 0, sizeof(v10));
    v11 = 0xBFF0000000000000;
    sub_19B8F0B5C(a1, &v8);
    v15 = &v10[1] + 1;
    sub_19B8F0E84(&v15);
    v15 = v10;
    sub_19B8F0E84(&v15);
    *&v8 = a2;
    v6 = sub_19B8F0840(a1, a2) + 48;
    *&v8 = &v13[1] + 8;
    sub_19B8F0E84(&v8);
    *&v8 = v13;
    sub_19B8F0E84(&v8);
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_19B8E6030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_19B8F0F24(va);
  _Unwind_Resume(a1);
}

void sub_19B8E6054(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_19B8F0F70(a1, (a1 + 8));
    *(a1 + 1) = 0;
  }

  else
  {
    sub_19B8F0F70(a1, (a1 + 32));
    *a1 = 0;
  }
}

uint64_t sub_19B8E609C(uint64_t a1, unint64_t *a2, unsigned int a3, void *a4)
{
  if (*(a1 + 168) != 1 || a2 == 0)
  {
    return 0;
  }

  result = sub_19B8E5F08(a1 + 288, a2, 0);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (*(result + a3) != 1)
  {
    return 0;
  }

  v9 = 32;
  if (a3)
  {
    v9 = 8;
  }

  v10 = result + v9;
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v11 - v12;
  v14 = (v11 - v12) >> 4;
  if (v14 >= 1)
  {
    v16 = a4[1];
    v15 = a4[2];
    if (v15 - v16 >= v13)
    {
      v40 = a4[1];
      v41 = v16;
      v35 = a4;
      v36 = &v40;
      v37 = &v41;
      if (v12 == v11)
      {
        v23 = v16;
      }

      else
      {
        v23 = v16;
        do
        {
          *v16 = *v12;
          v24 = *(v12 + 1);
          v16[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v12 += 16;
          v16 += 2;
          v23 += 2;
        }

        while (v12 != v11);
        v41 = v16;
      }

      LOBYTE(v38) = 1;
      sub_19B8F0E08(&v35);
      a4[1] = v23;
    }

    else
    {
      v17 = *a4;
      v18 = v16 - *a4;
      v19 = v14 + (v18 >> 4);
      if (v19 >> 60)
      {
        sub_19B8B8A40();
      }

      v20 = v15 - v17;
      v21 = (v15 - v17) >> 3;
      if (v21 > v19)
      {
        v19 = v21;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v22 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v19;
      }

      v39 = a4;
      if (v22)
      {
        sub_19B8F0D38(a4, v22);
      }

      v25 = 16 * (v18 >> 4);
      v38 = 0;
      v26 = (v25 + v13);
      v27 = v25;
      do
      {
        *v27 = *v12;
        v28 = *(v12 + 1);
        *(v27 + 1) = v28;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        v27 += 16;
        v12 += 16;
      }

      while (v27 != v26);
      memcpy(v26, v16, a4[1] - v16);
      v29 = *a4;
      v30 = &v26[a4[1] - v16];
      a4[1] = v16;
      v31 = v16 - v29;
      v32 = (v25 - (v16 - v29));
      memcpy(v32, v29, v31);
      v33 = *a4;
      *a4 = v32;
      a4[1] = v30;
      v34 = a4[2];
      a4[2] = v38;
      v37 = v33;
      v38 = v34;
      v35 = v33;
      v36 = v33;
      sub_19B8F10D0(&v35);
    }
  }

  *(v8 + 56) = CFAbsoluteTimeGetCurrent();
  return 1;
}

void sub_19B8E62BC(uint64_t a1, double a2, double a3, double a4)
{
  __p[205] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = v41;
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v9 = *(a1 + 24);
  v10 = v9 < 0.0;
  v11 = vabdd_f64(a2, v9);
  v12 = !v10 && v11 <= a3;
  if (!v12 || v7 >= 501)
  {
    v14 = (a1 + 8);
    v13 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v15 = *(v13 + 13);
        v16 = vabdd_f64(a2, v15);
        if (v15 >= 0.0 && v16 <= a4)
        {
          if (v7 >= 501)
          {
            v19 = fabs((a2 - v15));
            v39 = v19;
            for (i = v41[0]; i; i = *i)
            {
              v21 = *(i + 8);
              if (v21 <= v19)
              {
                if (v21 >= v19)
                {
                  __p[0] = &v39;
                  v23 = sub_19B8F1678(&v40, &v39);
                  sub_19B8F1158((v23 + 5), v13 + 2);
                  goto LABEL_24;
                }

                ++i;
              }
            }

            memset(__p, 0, 24);
            sub_19B8F1158(__p, v13 + 2);
            *v42 = &v39;
            v22 = sub_19B8F1678(&v40, &v39) + 5;
            if (v22 != __p)
            {
              sub_19B8F1798(v22, __p[0], __p[1], (__p[1] - __p[0]) >> 4);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

LABEL_24:
          v24 = v13[1];
          if (v24)
          {
            do
            {
              v18 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v18 = v13[2];
              v25 = *v18 == v13;
              v13 = v18;
            }

            while (!v25);
          }
        }

        else
        {
          sub_19B8F0F70((v13 + 6), v13 + 7);
          sub_19B8F0F70((v13 + 6), v13 + 10);
          v18 = sub_19B8F1230(a1, v13);
        }

        v13 = v18;
      }

      while (v18 != v14);
      if (v41 != v40)
      {
        do
        {
          if (*(a1 + 16) < 0x1F5uLL)
          {
            break;
          }

          v26 = *v8;
          v27 = *v8;
          v28 = v8;
          if (*v8)
          {
            do
            {
              v29 = v27;
              v27 = v27[1];
            }

            while (v27);
          }

          else
          {
            do
            {
              v29 = v28[2];
              v25 = *v29 == v28;
              v28 = v29;
            }

            while (v25);
          }

          v30 = v29[5];
          v31 = v29[6];
          if (v30 != v31)
          {
            do
            {
              if (sub_19B8F07E0(a1, v30))
              {
                __p[0] = v30;
                v32 = sub_19B8F0840(a1, v30);
                sub_19B8F0F70(v32 + 48, (v32 + 56));
                sub_19B8F0F70(v32 + 48, (v32 + 80));
                sub_19B8F1908(a1, v30);
                if (*(a1 + 16) < 0x1F5uLL)
                {
                  break;
                }
              }

              v30 += 16;
            }

            while (v30 != v31);
            v26 = *v8;
          }

          if (v26)
          {
            do
            {
              v33 = v26;
              v26 = v26[1];
            }

            while (v26);
          }

          else
          {
            do
            {
              v33 = v8[2];
              v25 = *v33 == v8;
              v8 = v33;
            }

            while (v25);
          }

          v8 = v33;
        }

        while (v33 != v40);
      }
    }

    v34 = *(a1 + 16);
    *(a1 + 24) = a2;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p[0]) = 134349568;
      *(__p + 4) = *&a2;
      WORD2(__p[1]) = 1026;
      *(&__p[1] + 6) = v7;
      WORD1(__p[2]) = 1026;
      HIDWORD(__p[2]) = v34;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,ClearStoredStaleConnections,szBefore,%{public}d,szAfter,%{public}d", __p, 0x18u);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v42 = 134349568;
      *&v42[4] = a2;
      v43 = 1026;
      v44 = v7;
      v45 = 1026;
      v46 = v34;
      v37 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureAccessGeometryCommon::CLGeoRoadConnectionsMap::clearStoredStaleConnections(const CFAbsoluteTime, const double, const double)", "CoreLocation: %s\n", v37);
      if (v37 != __p)
      {
        free(v37);
      }
    }
  }

  sub_19B8F19C4(&v40, v41[0]);
  v38 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B8E67BC(uint64_t a1, char a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v102 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  ++*(a1 + 112);
  if ((a2 & 1) == 0 && !sub_19B8E7644((a1 + 56), (a1 + 16), *(a1 + 217), a6, a7, a8))
  {
    goto LABEL_68;
  }

  if (a3)
  {
    if (sub_19B8E7710(a5, a8, a6, a7))
    {
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

LABEL_38:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349825;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = a6;
      *&buf[22] = 2053;
      v94 = a7;
      LOWORD(v95) = 2050;
      *(&v95 + 2) = a8;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", buf, 0x2Au);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v81 = 134349825;
      *&v81[4] = a5;
      *&v81[12] = 2053;
      *&v81[14] = a6;
      *&v81[22] = 2053;
      v82 = a7;
      LOWORD(v83) = 2050;
      *(&v83 + 2) = a8;
      v37 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL, const BOOL)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    v38 = 0;
    goto LABEL_69;
  }

  *buf = a8;
  v16 = (a1 + 176);
  v17 = (a1 + 184);
  if (*(a1 + 184) >= a8)
  {
    v17 = buf;
  }

  if (*(a1 + 176) <= a8)
  {
    v16 = v17;
  }

  a8 = *v16;
  if (!sub_19B8E7710(a5, *v16, a6, a7))
  {
    goto LABEL_38;
  }

LABEL_12:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v18 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 112);
    v19 = *(a1 + 116);
    v21 = *(a1 + 320);
    v22 = *(a1 + 224);
    v23 = *(a1 + 192);
    *buf = 134351105;
    *&buf[4] = a5;
    *&buf[12] = 2053;
    *&buf[14] = a6;
    *&buf[22] = 2053;
    v94 = a7;
    LOWORD(v95) = 2050;
    *(&v95 + 2) = a8;
    WORD5(v95) = 1026;
    HIDWORD(v95) = v19;
    LOWORD(v96) = 1026;
    *(&v96 + 2) = v20;
    HIWORD(v96) = 2050;
    v97 = v21;
    LOWORD(v98) = 1026;
    *(&v98 + 2) = v22;
    HIWORD(v98) = 1026;
    LODWORD(v99) = v23;
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,queryInProgress,%{public}d,network,%{public}d", buf, 0x4Cu);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v26 = *(a1 + 112);
    v25 = *(a1 + 116);
    v27 = *(a1 + 320);
    v28 = *(a1 + 224);
    v29 = *(a1 + 192);
    *v81 = 134351105;
    *&v81[4] = a5;
    *&v81[12] = 2053;
    *&v81[14] = a6;
    *&v81[22] = 2053;
    v82 = a7;
    LOWORD(v83) = 2050;
    *(&v83 + 2) = a8;
    WORD5(v83) = 1026;
    HIDWORD(v83) = v25;
    LOWORD(v84) = 1026;
    *(&v84 + 2) = v26;
    HIWORD(v84) = 2050;
    v85 = v27;
    LOWORD(v86) = 1026;
    *(&v86 + 2) = v28;
    HIWORD(v86) = 1026;
    LODWORD(v87) = v29;
    LODWORD(v62) = 76;
    v30 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL, const BOOL)", "CoreLocation: %s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

LABEL_24:
  (*(*a1 + 16))(a1);
  if (*(a1 + 169) == 1)
  {
    v31 = *(a1 + 224);
    if (v31 == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v32 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_INFO, "CLMM,CLTSP,road data query already in progress using XPC", buf, 2u);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        *v81 = 0;
        v34 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    else
    {
      v42 = *(a1 + 192);
      v66[0] = a1;
      (*(*a1 + 16))(a1);
      LOWORD(v67) = 256;
      v43 = mach_continuous_time();
      v44 = sub_19B994BF4(v43);
      v45 = objc_autoreleasePoolPush();
      *v81 = 0;
      *&v81[8] = v81;
      *&v81[16] = 0x2020000000;
      LOBYTE(v82) = 0;
      v46 = CLLocationCoordinate2DMake(a6, a7);
      *(a1 + 224) = 1;
      v47 = +[CLMapsXPCServiceManager sharedInstance];
      v48 = *(a1 + 193);
      v49 = (*(a1 + 152) & 0xFFFFFFFE) == 2;
      v50 = *(a1 + 216);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B8EC534;
      v94 = COERCE_DOUBLE(&unk_1E753D7B0);
      v96 = a5;
      v97 = a8;
      v98 = a6;
      v99 = a7;
      *&v95 = v81;
      *(&v95 + 1) = a1;
      v101 = v42;
      v100 = v44;
      [(CLMapsXPCServiceManager *)v47 collectMapDataOfType:0 aroundCoordinate:v42 inRadius:v48 allowNetwork:v49 preferCachedTiles:a4 isPedestrianOrCycling:v50 clearTiles:v46.latitude callSynchronously:v46.longitude WithReply:a8, buf, v62];
      _Block_object_dispose(v81, 8);
      objc_autoreleasePoolPop(v45);
      (*(*a1 + 24))(a1);
    }

    v38 = v31 ^ 1u;
    goto LABEL_67;
  }

  if (!*(a1 + 88))
  {
LABEL_64:
    v38 = 0;
    goto LABEL_67;
  }

  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v39 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_INFO, "CLMM,CLTSP,road data query already in progress using maps API", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v81 = 0;
      v41 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    goto LABEL_64;
  }

  v78 = a1;
  (*(*a1 + 16))(a1);
  v80 = 256;
  v53 = mach_continuous_time();
  v54 = sub_19B994BF4(v53);
  v55 = objc_autoreleasePoolPush();
  v72 = 0;
  v73 = &v72;
  v74 = 0x3052000000;
  v75 = sub_19B8EBCE4;
  v76 = sub_19B8EBCF4;
  v77 = 0;
  v56 = *(a1 + 216);
  if (v56 == 1)
  {
    v73[5] = dispatch_semaphore_create(0);
  }

  v66[0] = 0;
  v66[1] = v66;
  v67 = 0x4812000000;
  v68 = sub_19B8EBD00;
  v69 = sub_19B8EBD24;
  v70 = "";
  memset(v71, 0, sizeof(v71));
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = sub_19B8EBD50;
  v63[3] = &unk_1E753D760;
  v63[5] = v66;
  v63[6] = a1;
  v63[4] = v64;
  *v81 = MEMORY[0x1E69E9820];
  *&v81[8] = 3221225472;
  *&v81[16] = sub_19B8EBF3C;
  v82 = COERCE_DOUBLE(&unk_1E753D788);
  v86 = a5;
  v87 = a8;
  v88 = a6;
  v89 = a7;
  v90 = v54;
  v91 = a4;
  *&v83 = v64;
  *(&v83 + 1) = v66;
  v92 = v56;
  v84 = &v72;
  v85 = a1;
  ++*(a1 + 116);
  *(a1 + 224) = 1;
  [*(a1 + 88) findRoadsNear:v63 radius:v81 handler:a6 completionHandler:{a7, a8}];
  if (!v56)
  {
    goto LABEL_88;
  }

  v57 = dispatch_semaphore_wait(v73[5], 0xFFFFFFFFFFFFFFFFLL);
  v58 = v73[5];
  if (v58)
  {
    dispatch_release(v58);
  }

  if (v57)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v59 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance,semaphore timed out", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v61 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }
    }

    v38 = 0;
  }

  else
  {
LABEL_88:
    v38 = 1;
  }

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);
  *buf = v71;
  sub_19B8F0E84(buf);
  _Block_object_dispose(&v72, 8);
  objc_autoreleasePoolPop(v55);
  if (HIBYTE(v80) == 1)
  {
    if (v80)
    {
      pthread_mutex_unlock(v79);
    }

    else
    {
      (*(*v78 + 24))(v78);
    }
  }

LABEL_67:
  (*(*a1 + 24))(a1);
  if (v38)
  {
LABEL_68:
    v38 = 1;
  }

LABEL_69:
  (*(*a1 + 24))(a1);
  v51 = *MEMORY[0x1E69E9840];
  return v38;
}

void sub_19B8E7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void **a61)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  sub_19B8F0E84(&a61);
  _Block_object_dispose(&a38, 8);
  sub_19B888D7C(&a44);
  sub_19B888D7C(&a14);
  sub_19B888D7C(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E7644(double *a1, float64x2_t *a2, int a3, double a4, double a5, double a6)
{
  v12 = a1[1];
  v13 = a1[2];
  if (!sub_19B8E7710(*a1, a1[3], v12, v13))
  {
    return 1;
  }

  v14 = sub_19BA0C01C(a2, a4, a5, v12, v13, 0.0);
  v15 = a1[3];
  if (a3)
  {
    return v14 >= v15 * 0.5;
  }

  v17 = v15 * 0.9;
  return v14 > v17 && v14 + a6 >= v17;
}

BOOL sub_19B8E7710(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a1 > 0.0 && a2 > 0.0)
  {
    v5 = fabs(a3);
    if (v5 >= 0.00003 || fabs(a4) >= 0.00003)
    {
      v6 = v5 <= 90.0;
      if (a4 > 180.0)
      {
        v6 = 0;
      }

      return a4 >= -180.0 && v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19B8E77AC(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7)
{
  v20 = a1;
  (*(*a1 + 16))(a1);
  v21 = 256;
  if (*(a1 + 216) == 1 && (Current = CFAbsoluteTimeGetCurrent(), (sub_19B8E67BC(a1, 0, 0, 0, Current, a5, a6, a7) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    sub_19B8E794C(a1, (a1 + 240), a2, a3, a5, a6, a7);
    if (a4)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      sub_19B8E794C(a1, (a1 + 264), &v17, a3, a5, a6, a7);
      sub_19B8F1A28(a2, *(a2 + 8), v17, v18, (v18 - v17) >> 4);
      v22 = &v17;
      sub_19B8F0E84(&v22);
    }

    v15 = 1;
  }

  (*(*a1 + 24))(a1);
  return v15;
}

void sub_19B8E7914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a10;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8E794C(uint64_t a1, void *a2, uint64_t *a3, int a4, double a5, double a6, double a7)
{
  v88 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,map data requested while map data buffering was in progress", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      LOWORD(v81) = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::findRoadsNear(const double, const double, const double, const std::map<CLMapRoadKey, CLMapRoadPtr> &, std::vector<CLMapRoadPtr> &, const BOOL)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else
  {
    v81 = a1;
    (*(*a1 + 16))(a1);
    v82 = 256;
    v17 = *(a1 + 328);
    v18 = *(a1 + 336);
    if (v17 != v18)
    {
      v80[0] = 0;
      v80[1] = 0;
      v79 = v80;
      do
      {
        v19 = *v17;
        *buf = **v17;
        buf[16] = 1;
        if (!*sub_19B8F08E8(&v79, v83, buf))
        {
          operator new();
        }

        v20 = *(a1 + 248);
        v21 = *v19;
        for (i = *(v19 + 1); v20; v20 = *v20)
        {
          v23 = v20[4];
          v24 = v20[5];
          v25 = v24 > i;
          if (v23 != v21)
          {
            v25 = v23 > v21;
          }

          if (!v25)
          {
            v26 = v24 < i;
            v27 = v23 == v21;
            v28 = v23 < v21;
            if (v27)
            {
              v28 = v26;
            }

            if (!v28)
            {
              goto LABEL_45;
            }

            ++v20;
          }
        }

        for (j = *(a1 + 272); j; j = *j)
        {
          v30 = j[4];
          v31 = j[5];
          v32 = v31 > i;
          if (v30 != v21)
          {
            v32 = v30 > v21;
          }

          if (!v32)
          {
            v33 = v31 < i;
            v27 = v30 == v21;
            v34 = v30 < v21;
            if (v27)
            {
              v34 = v33;
            }

            if (!v34)
            {
              goto LABEL_45;
            }

            ++j;
          }
        }

        if (sub_19B9F6598(*v17))
        {
          *buf = *v19;
          *&buf[16] = *v17;
          v35 = v17[1];
          v87 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B8F34D8(a1 + 240, *buf, *&buf[8]);
        }

        else
        {
          *buf = *v19;
          *&buf[16] = *v17;
          v36 = v17[1];
          v87 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B8F34D8(a1 + 264, *buf, *&buf[8]);
        }

        if (*&v87 != 0.0)
        {
          sub_19B8750F8(v87);
        }

LABEL_45:
        v17 += 2;
      }

      while (v17 != v18);
      sub_19B8EBC04((a1 + 328));
      sub_19B8EBC50((a1 + 240), &v79);
      sub_19B8EBC50((a1 + 264), &v79);
      if ((*(a1 + 216) & 1) == 0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        v37 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 256);
          v39 = *(a1 + 280);
          *buf = 134349312;
          *&buf[4] = v38;
          *&buf[12] = 2050;
          *&buf[14] = v39;
          _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,newly buffered data ingested,roads,%{public}lu,zeroLengthRoads,%{public}lu", buf, 0x16u);
        }

        v40 = sub_19B87DD40();
        if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
          }

          v41 = *(a1 + 256);
          v42 = *(a1 + 280);
          *v83 = 134349312;
          *&v83[4] = v41;
          v84 = 2050;
          v85 = v42;
          v43 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLGeoMapFeatureRoadGeometryBuffer::updateRoadDataObjectsWithNewlyBufferedData()", "CoreLocation: %s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }
      }

      sub_19B8F3484(&v79, v80[0]);
    }

    (*(*a1 + 24))(a1);
  }

  if (!a4)
  {
    sub_19B8EBC04(a3);
    v60 = *a2;
    v58 = (a2 + 1);
    v59 = v60;
    if (v60 == v58)
    {
      goto LABEL_105;
    }

    while (1)
    {
      v61 = *(v59 + 6);
      if (v61)
      {
        v62 = *(v61 + 136);
        if (*(v61 + 144) - v62 >= 0x11uLL)
        {
          v63 = 0;
          v64 = 0;
          while (1)
          {
            v65 = &v62[v63];
            v66 = *v65;
            v67 = v65[1];
            v68 = v65[2];
            v69 = v65[3];
            GEOClosestCoordinateOnLineSegmentFromCoordinate();
            GEOCalculateDistance();
            if (v70 <= a7)
            {
              break;
            }

            ++v64;
            v62 = *(v61 + 136);
            v63 += 2;
            if (v64 >= ((*(v61 + 144) - v62) >> 4) - 1)
            {
              goto LABEL_99;
            }
          }

LABEL_98:
          sub_19B8EAB68(a3, v59 + 3);
          goto LABEL_99;
        }

        v71 = *v62;
        v72 = v62[1];
        GEOCalculateDistance();
        if (v73 <= a7)
        {
          goto LABEL_98;
        }
      }

LABEL_99:
      v74 = *(v59 + 1);
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = *(v59 + 2);
          v27 = *v75 == v59;
          v59 = v75;
        }

        while (!v27);
      }

      v59 = v75;
      if (v75 == v58)
      {
        goto LABEL_105;
      }
    }
  }

  v44 = mach_continuous_time();
  sub_19B994BF4(v44);
  sub_19B8F1EE8(buf, a5, a6, a7);
  sub_19B8EBC04(a3);
  v48 = *a2;
  v46 = (a2 + 1);
  v47 = v48;
  if (v48 == v46)
  {
    goto LABEL_105;
  }

  do
  {
    v45 = v47 + 3;
    v49 = *(v47 + 6);
    if (!v49)
    {
      goto LABEL_83;
    }

    v50 = *(v49 + 136);
    v51 = *(v49 + 144);
    if (v50 == v51)
    {
      goto LABEL_83;
    }

    while (1)
    {
      if (*buf > *v50 || *&buf[16] < *v50)
      {
        goto LABEL_80;
      }

      v53 = v50[1];
      if (*&v87 <= *&buf[8])
      {
        break;
      }

      if (*&v87 >= v53 && *&buf[8] <= v53)
      {
        goto LABEL_82;
      }

LABEL_80:
      v50 += 2;
      if (v50 == v51)
      {
        goto LABEL_83;
      }
    }

    if (*&v87 >= *&buf[8])
    {
      goto LABEL_80;
    }

    if (*&v87 <= v53 && *&buf[8] >= v53)
    {
      goto LABEL_80;
    }

LABEL_82:
    sub_19B8EAB68(a3, v45);
LABEL_83:
    v56 = *(v47 + 1);
    if (v56)
    {
      do
      {
        v57 = v56;
        v56 = *v56;
      }

      while (v56);
    }

    else
    {
      do
      {
        v57 = *(v47 + 2);
        v27 = *v57 == v47;
        v47 = v57;
      }

      while (!v27);
    }

    v47 = v57;
  }

  while (v57 != v46);
LABEL_105:
  (*(*a1 + 24))(a1, v45);
  v76 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_19B8E8190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void *);
  v11 = va_arg(va2, void);
  sub_19B8F3484(va1, v10);
  sub_19B888D7C(va2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E8210(uint64_t a1, uint64_t *a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v31 = a1;
  (*(*a1 + 16))(a1);
  v32 = 256;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (sub_19B8E83FC(a1, a3, &v28, 0, a4, a5, a6, a7, a8, a9))
  {
    v18 = v28;
    v19 = v29;
    if (v28 == v29)
    {
      v25 = *a2 != 0;
      v20 = -1.0;
    }

    else
    {
      v20 = -1.0;
      do
      {
        v21 = *v18;
        if (v20 < 0.0 || v21 && *(v21 + 56) > v20)
        {
          v22 = v18[1];
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          }

          v23 = a2[1];
          *a2 = v21;
          a2[1] = v22;
          if (v23)
          {
            sub_19B8750F8(v23);
          }

          v20 = *(*v18 + 56);
        }

        v18 += 2;
      }

      while (v18 != v19);
      v24 = *a2;
      v25 = *a2 != 0;
      if (*a2 && v20 > 0.0)
      {
        v25 = 1;
        *(v24 + 64) = 1;
        *(v24 + 112) = 0x3FF0000000000000;
      }
    }

    v26 = v20 >= 0.0 && v25;
  }

  else
  {
    v26 = 0;
  }

  v33 = &v28;
  sub_19B8F0E84(&v33);
  (*(*a1 + 24))(a1);
  return v26;
}

void sub_19B8E83DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_19B8F0E84(va1);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B8E83FC(uint64_t a1, int a2, void *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v262 = *MEMORY[0x1E69E9840];
  v239 = a1;
  (*(*a1 + 16))(a1);
  v241 = 256;
  v19 = *(a1 + 200);
  if (*(a1 + 208) >= v19 + a9 * 4.0)
  {
    v20 = v19 + a9 * 4.0;
  }

  else
  {
    v20 = *(a1 + 208);
  }

  v237 = a7;
  v238 = a6;
  v236 = a9;
  if (sub_19B94960C((a1 + 232), a2, &v238, &v237, &v236, 5, a6, a7, a9) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v238;
      *&buf[22] = 2053;
      *&buf[24] = v237;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,getSnapCandidates,location shifting failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v253 = 134349569;
      *&v253[4] = a5;
      *&v253[12] = 2053;
      *&v253[14] = v238;
      *&v253[22] = 2053;
      v254 = v237;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    goto LABEL_130;
  }

  v233 = 0;
  v234 = 0;
  v235 = 0;
  if ((sub_19B8E77AC(a1, &v233, a4, 0, v238, v237, v20) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v83 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v238;
      *&buf[22] = 2053;
      *&buf[24] = v237;
      _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,getSnapCandidates,findRoadsNear failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v84 = sub_19B87DD40();
    if (*(v84 + 160) <= 1 && *(v84 + 164) <= 1 && *(v84 + 168) <= 1 && !*(v84 + 152))
    {
      goto LABEL_129;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_127;
    }

    goto LABEL_401;
  }

  v24 = v233;
  v25 = v234;
  if (v233 != v234)
  {
    goto LABEL_19;
  }

  v89 = *(a1 + 208);
  if (v20 == v89)
  {
    goto LABEL_19;
  }

  if ((sub_19B8E77AC(a1, &v233, a4, 0, v238, v237, v89) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v219 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349569;
      *&buf[4] = a5;
      *&buf[12] = 2053;
      *&buf[14] = v238;
      *&buf[22] = 2053;
      *&buf[24] = v237;
      _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,getSnapCandidates,findRoadsNear failed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
    }

    v220 = sub_19B87DD40();
    if (*(v220 + 160) <= 1 && *(v220 + 164) <= 1 && *(v220 + 168) <= 1 && !*(v220 + 152))
    {
      goto LABEL_129;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_127;
    }

    goto LABEL_401;
  }

  v24 = v233;
  v25 = v234;
  if (v233 != v234)
  {
LABEL_19:
    v230 = 0;
    v231 = 0;
    v232 = 0;
    *&v253[8] = 0;
    *&v253[16] = 0;
    *v253 = &v253[8];
    v224 = a3;
    if (v24 == v25)
    {
      v109 = 0;
      *(&__y + 1) = 0;
      *&v249 = 0;
      *&__y = &__y + 8;
    }

    else
    {
      do
      {
        v27 = *v24;
        v26 = v24[1];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          *buf = v27;
          *&buf[8] = v26;
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          memset(&buf[16], 0, 32);
          sub_19B8750F8(v26);
          v28 = *v24;
        }

        else
        {
          *buf = *v24;
          memset(&buf[8], 0, 40);
          v28 = v27;
        }

        *&__y = v28;
        v29 = sub_19B8F35D8(v253, *v28, v28[1]);
        v30 = v29;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v31 = v29[7];
        v30[6] = v27;
        v30[7] = v26;
        if (v31)
        {
          sub_19B8750F8(v31);
        }

        v32 = v30[9];
        v30[8] = 0;
        v30[9] = 0;
        if (v32)
        {
          sub_19B8750F8(v32);
        }

        v33 = v30[11];
        v30[10] = 0;
        v30[11] = 0;
        if (v33)
        {
          sub_19B8750F8(v33);
        }

        if (v26)
        {
          sub_19B8750F8(v26);
        }

        v24 += 2;
      }

      while (v24 != v25);
      v34 = *v253;
      if (*v253 != &v253[8])
      {
        while (1)
        {
          memset(buf, 0, 24);
          sub_19B8EB310(a1, v34 + 6, buf, 1);
          v35 = *buf;
          v36 = *&buf[8];
          if (*buf == *&buf[8])
          {
            v38 = 0;
            goto LABEL_68;
          }

          v37 = 0;
          v38 = 0;
          v39 = 360.0;
          do
          {
            v40 = *v35;
            if (!*v35)
            {
              goto LABEL_61;
            }

            v41 = *&v253[8];
            if (!*&v253[8])
            {
              goto LABEL_61;
            }

            v42 = *v40;
            v43 = v40[1];
            while (1)
            {
              v44 = v41[4];
              v45 = v41[5];
              v46 = v45 > v43;
              if (v44 != v42)
              {
                v46 = v44 > v42;
              }

              if (v46)
              {
                goto LABEL_47;
              }

              v47 = v45 < v43;
              v48 = v44 == v42;
              v49 = v44 < v42;
              if (v48)
              {
                v49 = v47;
              }

              if (!v49)
              {
                break;
              }

              ++v41;
LABEL_47:
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_61;
              }
            }

            v50 = sub_19B9F5C98(*(v34 + 6), 0);
            v51 = ((*v35)[18] - (*v35)[17]) >> 4;
            v52 = -1.0;
            if (v51 >= 2)
            {
              v52 = sub_19B9F5C98(*v35, v51 - 2);
            }

            v53 = fmod(v50 - v52, 360.0);
            if (v53 < 0.0)
            {
              v53 = v53 + 360.0;
            }

            if (v53 > 180.0)
            {
              v53 = v53 + -360.0;
            }

            v54 = fabs(v53);
            if (v54 < v39)
            {
              v37 = *v35;
              v55 = v35[1];
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v38)
              {
                sub_19B8750F8(v38);
              }

              v38 = v55;
              v39 = v54;
            }

LABEL_61:
            v35 += 2;
          }

          while (v35 != v36);
          if (v39 < 30.0)
          {
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v56 = *(v34 + 9);
            *(v34 + 8) = v37;
            *(v34 + 9) = v38;
            if (v56)
            {
              sub_19B8750F8(v56);
            }
          }

LABEL_68:
          __y = 0uLL;
          *&v249 = 0;
          sub_19B8EAC7C(a1, v34 + 6, &__y, 1);
          v58 = *(&__y + 1);
          v57 = __y;
          if (__y == *(&__y + 1))
          {
            p_y = &__y;
            sub_19B8F0E84(&p_y);
            if (v38)
            {
              goto LABEL_108;
            }

            goto LABEL_109;
          }

          v59 = 0;
          v60 = 0;
          v61 = 360.0;
          while (2)
          {
            v62 = *v57;
            if (!*v57)
            {
              goto LABEL_99;
            }

            v63 = *&v253[8];
            if (!*&v253[8])
            {
              goto LABEL_99;
            }

            v64 = *v62;
            v65 = v62[1];
            while (2)
            {
              v66 = v63[4];
              v67 = v63[5];
              v68 = v67 > v65;
              if (v66 != v64)
              {
                v68 = v66 > v64;
              }

              if (v68)
              {
LABEL_80:
                v63 = *v63;
                if (!v63)
                {
                  goto LABEL_99;
                }

                continue;
              }

              break;
            }

            v69 = v67 < v65;
            v48 = v66 == v64;
            v70 = v66 < v64;
            if (v48)
            {
              v70 = v69;
            }

            if (v70)
            {
              ++v63;
              goto LABEL_80;
            }

            v71 = *(v34 + 6);
            if (sub_19B9F6278(v71, v57))
            {
              v72 = sub_19B9F5C98(v62, 0);
              v73 = *(v34 + 6);
              v74 = (v73[18] - v73[17]) >> 4;
              v75 = -1.0;
              if (v74 >= 2)
              {
                v75 = sub_19B9F5C98(v73, v74 - 2);
              }
            }

            else
            {
              v76 = (v62[18] - v62[17]) >> 4;
              if (v76 >= 2)
              {
                v72 = sub_19B9F5C98(v62, v76 - 2);
                v71 = *(v34 + 6);
              }

              else
              {
                v72 = -1.0;
              }

              v75 = sub_19B9F5C98(v71, 0);
            }

            v77 = fmod(v72 - v75, 360.0);
            if (v77 < 0.0)
            {
              v77 = v77 + 360.0;
            }

            if (v77 > 180.0)
            {
              v77 = v77 + -360.0;
            }

            v78 = fabs(v77);
            if (v78 < v61)
            {
              v60 = *v57;
              v79 = v57[1];
              if (v79)
              {
                atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v59)
              {
                sub_19B8750F8(v59);
              }

              v59 = v79;
              v61 = v78;
            }

LABEL_99:
            v57 += 2;
            if (v57 != v58)
            {
              continue;
            }

            break;
          }

          if (v61 < 30.0)
          {
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v80 = *(v34 + 11);
            *(v34 + 10) = v60;
            *(v34 + 11) = v59;
            if (v80)
            {
              sub_19B8750F8(v80);
            }
          }

          p_y = &__y;
          sub_19B8F0E84(&p_y);
          if (v59)
          {
            sub_19B8750F8(v59);
          }

          if (v38)
          {
LABEL_108:
            sub_19B8750F8(v38);
          }

LABEL_109:
          *&__y = buf;
          sub_19B8F0E84(&__y);
          v81 = *(v34 + 1);
          if (v81)
          {
            do
            {
              v82 = v81;
              v81 = *v81;
            }

            while (v81);
          }

          else
          {
            do
            {
              v82 = *(v34 + 2);
              v48 = *v82 == v34;
              v34 = v82;
            }

            while (!v48);
          }

          v34 = v82;
          if (v82 == &v253[8])
          {
            v34 = *v253;
            break;
          }
        }
      }

      *(&__y + 1) = 0;
      *&v249 = 0;
      *&__y = &__y + 8;
      if (v34 != &v253[8])
      {
        while (1)
        {
          v92 = *(v34 + 6);
          v93 = *(v34 + 7);
          v94 = v92;
          if (v93)
          {
            atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
            v94 = *(v34 + 6);
          }

          if (v94 && !sub_19B8F07E0(&__y, v92))
          {
            break;
          }

          if (v93)
          {
            goto LABEL_154;
          }

LABEL_155:
          v95 = *(v34 + 1);
          if (v95)
          {
            do
            {
              v96 = v95;
              v95 = *v95;
            }

            while (v95);
          }

          else
          {
            do
            {
              v96 = *(v34 + 2);
              v48 = *v96 == v34;
              v34 = v96;
            }

            while (!v48);
          }

          v34 = v96;
          if (v96 == &v253[8])
          {
            v109 = *(&__y + 1);
            goto LABEL_183;
          }
        }

        p_y = 0;
        v246 = 0;
        v247 = 0;
        sub_19B8ECDD4((v34 + 48), v253, &p_y);
        sub_19B8ED318(&p_y, v34 + 6);
        sub_19B8ED434((v34 + 48), v253, &p_y);
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v98 = p_y;
        v97 = v246;
        while (v98 != v97)
        {
          v99 = *v98;
          if (*v98)
          {
            *buf = *v98;
            *(sub_19B8F3760(&__y, v99) + 48) = 1;
            sub_19B8EAB68(&v242, v98);
          }

          v98 += 3;
        }

        v100 = v231;
        if (v231 >= v232)
        {
          v102 = 0xAAAAAAAAAAAAAAABLL * ((v231 - v230) >> 3);
          v103 = v102 + 1;
          if (v102 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_19B8B8A40();
          }

          if (0x5555555555555556 * ((v232 - v230) >> 3) > v103)
          {
            v103 = 0x5555555555555556 * ((v232 - v230) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v232 - v230) >> 3) >= 0x555555555555555)
          {
            v104 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v104 = v103;
          }

          *&buf[32] = &v230;
          if (v104)
          {
            if (v104 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_19B8B8AB0();
          }

          v105 = (8 * ((v231 - v230) >> 3));
          *buf = 0;
          *&buf[8] = v105;
          *&buf[16] = v105;
          *&buf[24] = 0;
          v105[1] = 0;
          v105[2] = 0;
          *v105 = 0;
          sub_19B8F0C74(24 * v102, v242, v243, (v243 - v242) >> 4);
          v101 = *&buf[16] + 24;
          v106 = (*&buf[8] - (v231 - v230));
          memcpy(v106, v230, v231 - v230);
          v107 = v230;
          v108 = v232;
          v230 = v106;
          v231 = v101;
          v232 = *&buf[24];
          *&buf[16] = v107;
          *&buf[24] = v108;
          *buf = v107;
          *&buf[8] = v107;
          sub_19B8F22C8(buf);
        }

        else
        {
          *v231 = 0;
          *(v100 + 8) = 0;
          *(v100 + 16) = 0;
          sub_19B8F0C74(v100, v242, v243, (v243 - v242) >> 4);
          v101 = v100 + 24;
        }

        v231 = v101;
        *buf = &v242;
        sub_19B8F0E84(buf);
        *buf = &p_y;
        sub_19B8F2328(buf);
        if (!v93)
        {
          goto LABEL_155;
        }

LABEL_154:
        sub_19B8750F8(v93);
        goto LABEL_155;
      }

      v109 = 0;
    }

LABEL_183:
    v227 = a5;
    sub_19B8F3484(&__y, v109);
    sub_19B8F36F0(*&v253[8]);
    memset(&buf[7], 0, 32);
    *&v253[16] = 0;
    v255 = 0;
    v256 = 0;
    v257 = *buf;
    *v258 = *&buf[16];
    *&v258[15] = 0;
    *v253 = v236 * v236 * 0.5;
    *&v253[8] = *v253;
    v110 = a10 * a10;
    if (a10 <= 0.0)
    {
      v110 = -1.0;
    }

    v254 = v110;
    sub_19B9C1640(v253);
    v112 = v237;
    v111 = v238;
    p_y = 0;
    v246 = 0;
    v247 = 0;
    v113 = v230;
    v225 = v231;
    if (v230 == v231)
    {
LABEL_339:
      v86 = *v224 != v224[1];
    }

    else
    {
      v114 = a8 >= 0.0;
      if (a10 <= 0.0)
      {
        v114 = 0;
      }

      v226 = v114;
      while (1)
      {
        v242 = 0;
        v243 = 0;
        v244 = 0;
        v115 = *v113;
        if (*v113 != *(v113 + 1))
        {
          break;
        }

        *&buf[8] = 0;
        *buf = &v242;
        sub_19B8F0E84(buf);
        v113 += 24;
        if (v113 == v225)
        {
          goto LABEL_339;
        }
      }

      v116 = *v115;
      if (!*v115)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        v207 = a5;
        v208 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = a5;
          _os_log_impl(&dword_19B873000, v208, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,road is nullptr", buf, 0xCu);
        }

        v209 = sub_19B87DD40();
        if ((*(v209 + 160) & 0x80000000) == 0 || (*(v209 + 164) & 0x80000000) == 0 || (*(v209 + 168) & 0x80000000) == 0 || *(v209 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_378;
          }

          goto LABEL_400;
        }

        goto LABEL_380;
      }

      v117 = *(v116 + 136);
      v118 = *(v116 + 144) - v117;
      if ((v118 >> 4) > 1)
      {
        v119 = *v117;
        v120 = v117[1];
        *buf = 0;
        *&buf[8] = 0;
        v121 = 0.0;
        sub_19BA0BE88((a1 + 16), buf, &buf[8], &__y, v111, v112, 0.0, v119, v120, 0.0);
        v122 = 0;
        v123 = *buf;
        v124 = *&buf[8];
        v125 = ((v118 >> 4) & 0x7FFFFFFF) - 1;
        v126 = -1.0;
        v127 = 0.0;
        while (1)
        {
          v128 = v123;
          v129 = v124;
          v130 = *(v116 + 136) + v122;
          v131 = *(v130 + 16);
          v132 = *(v130 + 24);
          __y = 0uLL;
          sub_19BA0BE88((a1 + 16), &__y, &__y + 1, &v229, v111, v112, 0.0, v131, v132, 0.0);
          v124 = *(&__y + 1);
          v123 = *&__y;
          v133 = (v128 - *&__y) * (v128 - *&__y) + (v129 - *(&__y + 1)) * (v129 - *(&__y + 1));
          v134 = 0.0;
          v135 = 0.0 - v128;
          if (v133 >= 0.001)
          {
            v134 = ((0.0 - v129) * (*(&__y + 1) - v129) + v135 * (*&__y - v128)) / v133;
            if (v134 < 0.0)
            {
              v138 = v135 * v135 + (0.0 - v129) * (0.0 - v129);
              v134 = 0.0;
              goto LABEL_200;
            }

            if (v134 > 1.0)
            {
              v138 = (0.0 - *&__y) * (0.0 - *&__y) + (0.0 - *(&__y + 1)) * (0.0 - *(&__y + 1));
              v134 = 1.0;
              goto LABEL_200;
            }

            v136 = (0.0 - (v128 + (*&__y - v128) * v134)) * (0.0 - (v128 + (*&__y - v128) * v134));
            v137 = 0.0 - (v129 + (*(&__y + 1) - v129) * v134);
          }

          else
          {
            v136 = v135 * v135;
            v137 = 0.0 - v129;
          }

          v138 = v136 + v137 * v137;
LABEL_200:
          v139 = sqrt(v133);
          v140 = sqrt(v138);
          v141 = v126 < 0.0;
          if (v140 < v126)
          {
            v141 = 1;
          }

          v142 = v121 + v139 * v134;
          if (v141)
          {
            v126 = v140;
            v127 = v142;
          }

          v121 = v121 + v139;
          v122 += 16;
          if (!--v125)
          {
            if (v121 >= 0.001)
            {
              v143 = v127 / v121;
            }

            else
            {
              v143 = 0.0;
            }

            v145 = *v115;
            v144 = v115[1];
            if (v144)
            {
              atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v145)
            {
              v146 = (*(v145 + 144) - *(v145 + 136)) >> 4;
              if (v146 > 0)
              {
                v147 = 0.0;
                if (v146 == 1)
                {
                  goto LABEL_241;
                }

                sub_19B9F5AA8(v145);
                v148 = (*(v145 + 168) - *(v145 + 160)) >> 3;
                if (v148 == v146 - 1)
                {
                  sub_19B9F5AA8(v145);
                  if (v143 < 0.000001)
                  {
                    v149 = *(v145 + 136);
                    v147 = *v149;
                    v150 = v149[1];
                    v151 = v149[2];
                    v152 = v149[3];
                    *buf = 0;
                    *&__y = 0;
                    v153 = (a1 + 16);
                    v154 = v147;
                    v155 = v150;
                    goto LABEL_296;
                  }

                  if (v143 >= 0.999999)
                  {
                    v179 = *(v145 + 136) + 16 * v148;
                    v147 = *v179;
                    v150 = *(v179 + 8);
                    v154 = *(v179 - 16);
                    v155 = *(v179 - 8);
                    *buf = 0;
                    *&__y = 0;
                    v153 = (a1 + 16);
                    v151 = v147;
                    v152 = v150;
LABEL_296:
                    sub_19BA0BE88(v153, buf, &__y, &v229, v154, v155, 0.0, v151, v152, 0.0);
                    v180 = atan2(*&__y, *buf);
                    if (v180 < 0.0)
                    {
                      v180 = v180 + 6.28318531;
                    }

                    v161 = v180 * 57.2957795;
LABEL_299:
                    LOBYTE(v146) = 1;
                    goto LABEL_242;
                  }

                  v171 = *(v145 + 160);
                  v172 = *(v145 + 168);
                  if (v171 != v172)
                  {
                    v173 = 0.0;
                    v174 = 2;
                    v175 = 24;
                    while (1)
                    {
                      v176 = *v171 / *(v145 + 40);
                      if (vabdd_f64(v143, v173 + v176) < 0.000001)
                      {
                        break;
                      }

                      if (v173 + v176 > v143)
                      {
                        v193 = (*(v145 + 136) + v175);
                        v194 = *(v193 - 2);
                        v195 = *v193;
                        v196 = v194 + 360.0;
                        if (v194 >= 0.0)
                        {
                          v196 = *(v193 - 2);
                        }

                        v197 = v195 + 360.0;
                        v222 = *v193;
                        if (v195 >= 0.0)
                        {
                          v197 = *v193;
                        }

                        v198 = v197 - v196;
                        if (v198 <= 180.0)
                        {
                          if (v198 < -180.0)
                          {
                            v198 = v198 + 360.0;
                          }
                        }

                        else
                        {
                          v198 = v198 + -360.0;
                        }

                        v201 = (v143 - v173) / v176;
                        v202 = *(v193 - 3);
                        v203 = *(v193 - 1);
                        v204 = fmod(v194 + v198 * v201, 360.0);
                        if (v204 <= -180.0)
                        {
                          v205 = v204 + 360.0;
                        }

                        else
                        {
                          v205 = v204;
                          if (v204 > 180.0)
                          {
                            v205 = v204 + -360.0;
                          }
                        }

                        v147 = v202 + (v203 - v202) * v201;
                        *buf = 0;
                        *&__y = 0;
                        sub_19BA0BE88((a1 + 16), buf, &__y, &v229, v202, v194, 0.0, v203, v222, 0.0);
                        v206 = atan2(*&__y, *buf);
                        if (v206 < 0.0)
                        {
                          v206 = v206 + 6.28318531;
                        }

                        v161 = v206 * 57.2957795;
                        LOBYTE(v146) = 1;
                        v150 = v205;
                        goto LABEL_242;
                      }

                      ++v171;
                      v175 += 16;
                      ++v174;
                      v173 = v173 + v176;
                      if (v171 == v172)
                      {
                        goto LABEL_285;
                      }
                    }

                    if (v174 < v146)
                    {
                      v181 = (*(v145 + 136) + v175);
                      v147 = *(v181 - 1);
                      v150 = *v181;
                      v182 = *(v181 - 3);
                      v183 = *(v181 - 2);
                      *buf = 0;
                      *&__y = 0;
                      sub_19BA0BE88((a1 + 16), buf, &__y, &v229, v182, v183, 0.0, v147, v150, 0.0);
                      v184 = *&__y;
                      v185 = *buf;
                      v186 = *(v145 + 136) + v175;
                      v187 = *(v186 + 8);
                      v188 = *(v186 + 16);
                      *buf = 0;
                      *&__y = 0;
                      sub_19BA0BE88((a1 + 16), buf, &__y, &v229, v147, v150, 0.0, v187, v188, 0.0);
                      v221 = *buf;
                      v223 = *&__y;
                      v189 = atan2(v184, v185);
                      if (v189 < 0.0)
                      {
                        v189 = v189 + 6.28318531;
                      }

                      v190 = v189 * 57.2957795;
                      v191 = atan2(v223, v221);
                      if (v191 < 0.0)
                      {
                        v191 = v191 + 6.28318531;
                      }

                      sub_19B8B646C(v190, v191 * 57.2957795);
                      v161 = v192;
                      goto LABEL_299;
                    }

                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
                    }

                    v199 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19B873000, v199, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
                    }

                    v200 = sub_19B87DD40();
                    if ((*(v200 + 160) & 0x80000000) == 0 || (*(v200 + 164) & 0x80000000) == 0 || (*(v200 + 168) & 0x80000000) == 0 || *(v200 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        goto LABEL_332;
                      }

                      goto LABEL_226;
                    }

LABEL_240:
                    LOBYTE(v146) = 0;
                    v147 = 0.0;
LABEL_241:
                    v150 = 0.0;
                    v161 = 0.0;
LABEL_242:
                    if (v144)
                    {
                      sub_19B8750F8(v144);
                    }

                    if (v146)
                    {
                      memset(buf, 0, 24);
                      *&buf[24] = 0x3FF0000000000000;
                      *&buf[32] = 0u;
                      v260 = 0u;
                      v261 = 0;
                      sub_19BA0BE88((a1 + 16), &buf[40], &buf[32], &v260, v147, v150, 0.0, v238, v237, 0.0);
                      v162 = v161 >= 0.0 && v226;
                      if (v162)
                      {
                        v163 = fmod(a8 - v161, 360.0);
                        if (v163 < 0.0)
                        {
                          v163 = v163 + 360.0;
                        }

                        if (v163 > 180.0)
                        {
                          v163 = v163 + -360.0;
                        }

                        *(&v260 + 1) = fabs(v163);
                      }

                      sub_19B9C1C60(v253, buf);
                      v164 = !v162;
                      if ((*(a1 + 152) & 0xFFFFFFFE) != 2)
                      {
                        v164 = 1;
                      }

                      if ((v164 & 1) == 0)
                      {
                        __y = 0uLL;
                        *&v249 = 0;
                        *(&v249 + 1) = 0x3FF0000000000000;
                        v252 = 0;
                        v165 = fmod(v161 + 180.0, 360.0);
                        if (v165 >= 0.0)
                        {
                          v166 = v165;
                        }

                        else
                        {
                          v166 = v165 + 360.0;
                        }

                        v250 = *&buf[32];
                        *&v251 = v260;
                        v167 = fmod(a8 - v166, 360.0);
                        if (v167 < 0.0)
                        {
                          v167 = v167 + 360.0;
                        }

                        if (v167 > 180.0)
                        {
                          v167 = v167 + -360.0;
                        }

                        *(&v251 + 1) = fabs(v167);
                        sub_19B9C1C60(v253, &__y);
                        if (*&__y > *buf)
                        {
                          *&buf[32] = v250;
                          v260 = v251;
                          v261 = v252;
                          *buf = __y;
                          *&buf[16] = v249;
                        }
                      }

                      operator new();
                    }

                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
                    }

                    v207 = v227;
                    v215 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134349056;
                      *&buf[4] = v227;
                      _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,interpolateOnRoad,interpolateProjections returned false", buf, 0xCu);
                    }

                    v216 = sub_19B87DD40();
                    if ((*(v216 + 160) & 0x80000000) == 0 || (*(v216 + 164) & 0x80000000) == 0 || (*(v216 + 168) & 0x80000000) == 0 || *(v216 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 == -1)
                      {
LABEL_378:
                        LODWORD(__y) = 134349056;
                        *(&__y + 4) = v207;
                        v217 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v217);
                        if (v217 != buf)
                        {
                          free(v217);
                        }

                        goto LABEL_380;
                      }

LABEL_400:
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
                      goto LABEL_378;
                    }

                    goto LABEL_380;
                  }

LABEL_285:
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
                  }

                  v177 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B873000, v177, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
                  }

                  v178 = sub_19B87DD40();
                  if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 == -1)
                    {
                      goto LABEL_276;
                    }

LABEL_335:
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
LABEL_276:
                    LOWORD(__y) = 0;
                    v170 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v170);
                    if (v170 != buf)
                    {
                      free(v170);
                    }
                  }
                }

                else
                {
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
                  }

                  v168 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
                  }

                  v169 = sub_19B87DD40();
                  if (*(v169 + 160) > 1 || *(v169 + 164) > 1 || *(v169 + 168) > 1 || *(v169 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      goto LABEL_335;
                    }

                    goto LABEL_276;
                  }
                }

                LOBYTE(v146) = 0;
                goto LABEL_241;
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
              }

              v159 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v159, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
              }

              v160 = sub_19B87DD40();
              if (*(v160 + 160) <= 1 && *(v160 + 164) <= 1 && *(v160 + 168) <= 1 && !*(v160 + 152))
              {
                goto LABEL_240;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
              }

              LOWORD(__y) = 0;
              v158 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v158);
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
              }

              v156 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v156, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
              }

              v157 = sub_19B87DD40();
              if ((*(v157 + 160) & 0x80000000) != 0 && (*(v157 + 164) & 0x80000000) != 0 && (*(v157 + 168) & 0x80000000) != 0 && !*(v157 + 152))
              {
                goto LABEL_240;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
LABEL_332:
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
              }

LABEL_226:
              LOWORD(__y) = 0;
              v158 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n", v158);
            }

            if (v158 != buf)
            {
              free(v158);
            }

            goto LABEL_240;
          }
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v207 = a5;
      v210 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v210, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
      }

      v211 = sub_19B87DD40();
      if (*(v211 + 160) > 1 || *(v211 + 164) > 1 || *(v211 + 168) > 1 || *(v211 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        LOWORD(__y) = 0;
        v212 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v212);
        if (v212 != buf)
        {
          free(v212);
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v213 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = a5;
        _os_log_impl(&dword_19B873000, v213, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,findClosestPointOnRoad returned false", buf, 0xCu);
      }

      v214 = sub_19B87DD40();
      if ((*(v214 + 160) & 0x80000000) == 0 || (*(v214 + 164) & 0x80000000) == 0 || (*(v214 + 168) & 0x80000000) == 0 || *(v214 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_378;
        }

        goto LABEL_400;
      }

LABEL_380:
      *buf = &v242;
      sub_19B8F0E84(buf);
      v86 = 0;
    }

    *buf = &p_y;
    sub_19B8F0E84(buf);
    *buf = &v230;
    sub_19B8F1C84(buf);
    v218 = HIBYTE(v241);
    *buf = &v233;
    sub_19B8F0E84(buf);
    if ((v218 & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_131;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v90 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
  {
    *buf = 134349569;
    *&buf[4] = a5;
    *&buf[12] = 2053;
    *&buf[14] = v238;
    *&buf[22] = 2053;
    *&buf[24] = v237;
    _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,roads not available close to this point,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  v91 = sub_19B87DD40();
  if (*(v91 + 160) <= 1 && *(v91 + 164) <= 1 && *(v91 + 168) <= 1 && !*(v91 + 152))
  {
    goto LABEL_129;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46D0 != -1)
  {
LABEL_401:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

LABEL_127:
  *v253 = 134349569;
  *&v253[4] = a5;
  *&v253[12] = 2053;
  *&v253[14] = v238;
  *&v253[22] = 2053;
  v254 = v237;
  v85 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::getSnapCandidates(const double, const double, const double, const double, const double, const double, const CLClientLocationReferenceFrame, std::vector<CLGeoMapSnapDataPtr> &, const BOOL)", "CoreLocation: %s\n", v85);
  if (v85 != buf)
  {
    free(v85);
  }

LABEL_129:
  *buf = &v233;
  sub_19B8F0E84(buf);
LABEL_130:
  v86 = 0;
LABEL_131:
  if (v241)
  {
    pthread_mutex_unlock(v240);
  }

  else
  {
    (*(*v239 + 24))(v239);
  }

LABEL_134:
  v87 = *MEMORY[0x1E69E9840];
  return v86;
}

void sub_19B8EA974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void ***a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70)
  {
    sub_19B8750F8(a70);
  }

  a28 = &a42;
  sub_19B8F0E84(&a28);
  a42 = &a45;
  sub_19B8F0E84(&a42);
  a59 = &a30;
  sub_19B8F1C84(&a59);
  a59 = &a33;
  sub_19B8F0E84(&a59);
  sub_19B888D7C(&a39);
  _Unwind_Resume(a1);
}

void **sub_19B8EAB68(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_19B8F0D38(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_19B8F10D0(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_19B8EAC7C(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v45[2] = a1;
  (*(*a1 + 16))(a1);
  v46 = 256;
  if (!*a2)
  {
    v10 = 0;
    goto LABEL_70;
  }

  if (!sub_19B8E609C(a1, *a2, 0, a3))
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (*(a1 + 216) == 1 && ((Current = CFAbsoluteTimeGetCurrent(), v12 = *(*a2 + 144), v12 == *(*a2 + 136)) ? (v13 = 0.0, v14 = 0.0) : (v13 = *(v12 - 16), v14 = *(v12 - 8)), (sub_19B8E67BC(a1, 0, 1, 0, Current, v13, v14, *(a1 + 160)) & 1) == 0))
    {
      v10 = 0;
    }

    else
    {
      v15 = *(*a2 + 144);
      if (v15 == *(*a2 + 136))
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        v16 = *(v15 - 16);
        v17 = *(v15 - 8);
      }

      sub_19B8E794C(a1, (a1 + 264), &v42, 1, v16, v17, *(a1 + 160));
      v18 = *(*a2 + 144);
      if (v18 == *(*a2 + 136))
      {
        v19 = 0.0;
        v20 = 0.0;
      }

      else
      {
        v19 = *(v18 - 16);
        v20 = *(v18 - 8);
      }

      sub_19B8E794C(a1, (a1 + 240), &v39, 1, v19, v20, *(a1 + 160));
      __p = 0;
      v37 = 0;
      v38 = 0;
      v35 = *(*a2 + 112);
      sub_19B8EB230(&__p, &v35);
      v21 = v42;
      v22 = v43;
      while (v21 != v22)
      {
        if (sub_19B9F6278(*a2, v21))
        {
          v35 = *(*v21 + 112);
          sub_19B8EB230(&__p, &v35);
        }

        if ((*(a1 + 152) & 0xFFFFFFFE) == 2 && sub_19B9F6340(*a2, v21))
        {
          v35 = *(*v21 + 108);
          sub_19B8EB230(&__p, &v35);
        }

        v21 += 2;
      }

      v23 = v39;
      v24 = v40;
      if (v39 != v40)
      {
        do
        {
          v25 = *v23;
          if (!*v23)
          {
            goto LABEL_52;
          }

          v26 = *a2;
          if (*v25 == **a2 && *(v25 + 8) == *(v26 + 8))
          {
            goto LABEL_52;
          }

          if (*(v26 + 17) != *(v25 + 17))
          {
            goto LABEL_52;
          }

          if (sub_19B9F6278(*a2, v23) && vabdd_f64(*(v26 + 128), *(v25 + 120)) < 1.0)
          {
            if (*(v26 + 117))
            {
              goto LABEL_51;
            }

            if ((~*(v26 + 112) & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            if (*(v25 + 116))
            {
              goto LABEL_51;
            }

            v27 = *(v25 + 108);
            if ((~v27 & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            for (i = __p; i != v37; ++i)
            {
              if (*i == v27)
              {
                goto LABEL_51;
              }
            }
          }

          if ((*(a1 + 152) & 0xFFFFFFFE) != 2 || !sub_19B9F6340(v26, v23) || vabdd_f64(*(v26 + 128), *(v25 + 128)) >= 1.0)
          {
            goto LABEL_52;
          }

          if ((*(v26 + 117) & 1) == 0 && (~*(v26 + 112) & 0x7FFFFFFF) != 0 && (*(v25 + 117) & 1) == 0)
          {
            v29 = *(v25 + 112);
            if ((~v29 & 0x7FFFFFFF) != 0)
            {
              for (j = __p; j != v37; ++j)
              {
                if (*j == v29)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_52;
            }
          }

LABEL_51:
          sub_19B8EAB68(a3, v23);
LABEL_52:
          v23 += 2;
        }

        while (v23 != v24);
      }

      sub_19B8E5E54(a1, *a2, 0, a3);
      if (a4)
      {
        v31 = *a2;
        v32 = a2[1];
        v34[0] = v31;
        v34[1] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B8EB190(v34, a3);
        if (v32)
        {
          sub_19B8750F8(v32);
        }
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      v10 = 1;
    }

    __p = &v39;
    sub_19B8F0E84(&__p);
    v39 = &v42;
    sub_19B8F0E84(&v39);
    goto LABEL_70;
  }

  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v45[0] = v8;
    v45[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B8EB190(v45, a3);
    if (v9)
    {
      sub_19B8750F8(v9);
    }
  }

  ++*(a1 + 320);
  v10 = 1;
LABEL_70:
  (*(*a1 + 24))(a1);
  return v10;
}

void sub_19B8EB0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **__p, char **a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_19B8F0E84(&__p);
  a16 = &a19;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(&a24);
  _Unwind_Resume(a1);
}

void sub_19B8EB190(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (!sub_19B9F6128(*v2, a1))
    {
      v2 += 16;
      if (v2 == v3)
      {
        return;
      }
    }

    sub_19B8F1CF8(&v10, (v2 + 16), v3, v2);
    v7 = v6;
    v8 = a2[1];
    if (v8 != v6)
    {
      do
      {
        v9 = *(v8 - 8);
        if (v9)
        {
          sub_19B8750F8(v9);
        }

        v8 -= 16;
      }

      while (v8 != v7);
    }

    a2[1] = v7;
  }
}

void sub_19B8EB230(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_19B8B8A40();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8F1D64(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_19B8EB310(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v45[2] = a1;
  (*(*a1 + 16))(a1);
  v46 = 256;
  if (!*a2)
  {
    v10 = 0;
    goto LABEL_70;
  }

  if (!sub_19B8E609C(a1, *a2, 1u, a3))
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (*(a1 + 216) == 1 && ((Current = CFAbsoluteTimeGetCurrent(), v12 = *(*a2 + 136), *(*a2 + 144) == v12) ? (v13 = 0.0, v14 = 0.0) : (v13 = *v12, v14 = v12[1]), (sub_19B8E67BC(a1, 0, 1, 0, Current, v13, v14, *(a1 + 160)) & 1) == 0))
    {
      v10 = 0;
    }

    else
    {
      v15 = *(*a2 + 136);
      if (*(*a2 + 144) == v15)
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        v16 = *v15;
        v17 = v15[1];
      }

      sub_19B8E794C(a1, (a1 + 264), &v42, 1, v16, v17, *(a1 + 160));
      v18 = *(*a2 + 136);
      if (*(*a2 + 144) == v18)
      {
        v19 = 0.0;
        v20 = 0.0;
      }

      else
      {
        v19 = *v18;
        v20 = v18[1];
      }

      sub_19B8E794C(a1, (a1 + 240), &v39, 1, v19, v20, *(a1 + 160));
      __p = 0;
      v37 = 0;
      v38 = 0;
      v35 = *(*a2 + 108);
      sub_19B8EB230(&__p, &v35);
      v21 = v42;
      v22 = v43;
      while (v21 != v22)
      {
        if (sub_19B9F6214(*a2, v21))
        {
          v35 = *(*v21 + 108);
          sub_19B8EB230(&__p, &v35);
        }

        if ((*(a1 + 152) & 0xFFFFFFFE) == 2 && sub_19B9F62DC(*a2, v21))
        {
          v35 = *(*v21 + 112);
          sub_19B8EB230(&__p, &v35);
        }

        v21 += 2;
      }

      v23 = v39;
      v24 = v40;
      if (v39 != v40)
      {
        do
        {
          v25 = *v23;
          if (!*v23)
          {
            goto LABEL_52;
          }

          v26 = *a2;
          if (*v25 == **a2 && *(v25 + 8) == *(v26 + 8))
          {
            goto LABEL_52;
          }

          if (*(v26 + 17) != *(v25 + 17))
          {
            goto LABEL_52;
          }

          if (sub_19B9F6214(*a2, v23) && vabdd_f64(*(v26 + 120), *(v25 + 128)) < 1.0)
          {
            if (*(v26 + 116))
            {
              goto LABEL_51;
            }

            if ((~*(v26 + 108) & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            if (*(v25 + 117))
            {
              goto LABEL_51;
            }

            v27 = *(v25 + 112);
            if ((~v27 & 0x7FFFFFFF) == 0)
            {
              goto LABEL_51;
            }

            for (i = __p; i != v37; ++i)
            {
              if (*i == v27)
              {
                goto LABEL_51;
              }
            }
          }

          if ((*(a1 + 152) & 0xFFFFFFFE) != 2 || !sub_19B9F62DC(v26, v23) || vabdd_f64(*(v26 + 120), *(v25 + 120)) >= 1.0)
          {
            goto LABEL_52;
          }

          if ((*(v26 + 116) & 1) == 0 && (~*(v26 + 108) & 0x7FFFFFFF) != 0 && (*(v25 + 116) & 1) == 0)
          {
            v29 = *(v25 + 108);
            if ((~v29 & 0x7FFFFFFF) != 0)
            {
              for (j = __p; j != v37; ++j)
              {
                if (*j == v29)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_52;
            }
          }

LABEL_51:
          sub_19B8EAB68(a3, v23);
LABEL_52:
          v23 += 2;
        }

        while (v23 != v24);
      }

      sub_19B8E5E54(a1, *a2, 1u, a3);
      if (a4)
      {
        v31 = *a2;
        v32 = a2[1];
        v34[0] = v31;
        v34[1] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B8EB190(v34, a3);
        if (v32)
        {
          sub_19B8750F8(v32);
        }
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      v10 = 1;
    }

    __p = &v39;
    sub_19B8F0E84(&__p);
    v39 = &v42;
    sub_19B8F0E84(&v39);
    goto LABEL_70;
  }

  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v45[0] = v8;
    v45[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B8EB190(v45, a3);
    if (v9)
    {
      sub_19B8750F8(v9);
    }
  }

  ++*(a1 + 320);
  v10 = 1;
LABEL_70:
  (*(*a1 + 24))(a1);
  return v10;
}

void sub_19B8EB78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **__p, char **a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a16;
  sub_19B8F0E84(&__p);
  a16 = &a19;
  sub_19B8F0E84(&a16);
  sub_19B888D7C(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8EB824(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, int a5, double a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = a1;
  (*(*a1 + 16))(a1);
  v26 = 256;
  sub_19B8EBC04(a3);
  sub_19B8EBC04(a4);
  if (!*a2)
  {
    v14 = 0;
    goto LABEL_40;
  }

  v12 = a2[1];
  *&v24 = *a2;
  *(&v24 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 150;
  do
  {
    v14 = 0;
    if (!v24 || a6 <= 0.0)
    {
      goto LABEL_38;
    }

    *buf = 0;
    v29 = 0;
    v30 = 0;
    if (a5)
    {
      if ((sub_19B8EAC7C(a1, &v24, buf, 1) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (!sub_19B8EB310(a1, &v24, buf, 1))
    {
LABEL_31:
      v14 = 0;
LABEL_36:
      sub_19B8EBC04(a3);
LABEL_37:
      v27[0] = buf;
      sub_19B8F0E84(v27);
      goto LABEL_38;
    }

    sub_19B8EAB68(a3, &v24);
    v15 = (v29 - *buf) >> 4;
    if (v15 >= 2)
    {
      if (buf != a4)
      {
        sub_19B8F1DAC(a4, *buf, v29, v15);
      }

      v14 = 1;
      goto LABEL_37;
    }

    if (*buf == v29)
    {
      v14 = 1;
      a3 = a4;
      goto LABEL_36;
    }

    v17 = **buf;
    v16 = *(*buf + 8);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(&v24 + 1);
    *&v24 = v17;
    *(&v24 + 1) = v16;
    if (v18)
    {
      sub_19B8750F8(v18);
      v17 = v24;
    }

    sub_19B9F5AA8(v17);
    a6 = a6 - *(v17 + 40);
    v27[0] = buf;
    sub_19B8F0E84(v27);
    --v13;
  }

  while (v13);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v19 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,findAllRoadsUntilTheMultiIntersectionFromThisRoad,exceeded maximum tolerable road search count. Discovered roads may be limited", buf, 2u);
  }

  v20 = sub_19B87DD40();
  if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    LOWORD(v27[0]) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::findAllRoadsUntilTheMultiIntersectionFromThisRoad(const CLMapRoadPtr, std::vector<CLMapRoadPtr> &, std::vector<CLMapRoadPtr> &, const BOOL, double)", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v14 = 0;
LABEL_38:
  if (*(&v24 + 1))
  {
    sub_19B8750F8(*(&v24 + 1));
  }

LABEL_40:
  (*(*a1 + 24))(a1);
  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_19B8EBBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, char a19)
{
  a17 = &a19;
  sub_19B8F0E84(&a17);
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  sub_19B888D7C(&a14);
  _Unwind_Resume(a1);
}

void sub_19B8EBC04(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_19B8EBC50(uint64_t *result, uint64_t a2)
{
  v3 = result + 1;
  v2 = *result;
  if (*result != result + 1)
  {
    v5 = result;
    do
    {
      if (sub_19B8F07E0(a2, v2 + 4))
      {
        v6 = v2[1];
        if (v6)
        {
          do
          {
            result = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            result = v2[2];
            v7 = *result == v2;
            v2 = result;
          }

          while (!v7);
        }
      }

      else
      {
        result = sub_19B8F3444(v5, v2);
      }

      v2 = result;
    }

    while (result != v3);
  }

  return result;
}

__n128 sub_19B8EBD00(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_19B8EBD50(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 48);
    v3 = a2;
    if (v3)
    {
      v4 = v3;
      v5 = *(v2 + 152);
      if (v5 == 1)
      {
        if ([v3 isDrivable])
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 152);
      }

      if (v5 == 2)
      {
        v6 = [v4 isRoadPedestrianNavigable];
        v7 = [v4 walkableSide];
        v8 = [v4 isRail];
        if ((((v7 - 1) > 2) & ~v6) == 0 && !v8)
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 152);
      }

      if (v5 == 3)
      {
        if ((v9 = [v4 isRoadPedestrianNavigable], v10 = objc_msgSend(v4, "walkableSide"), v11 = objc_msgSend(v4, "isRail"), (((v10 - 1) > 2) & ~v9) == 0) && !v11 || (v12 = objc_msgSend(v4, "bikeableSide"), (objc_msgSend(v4, "isRail") & 1) == 0) && (v12 - 4) >= 0xFFFFFFFD)
        {
LABEL_15:
          sub_19B8F30F0();
        }
      }
    }
  }
}

void sub_19B8EBF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8EBF3C(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      *v42 = [a2 code];
      *&v42[8] = 2114;
      *v43 = [a2 domain];
      *&v43[8] = 2113;
      *v44 = [a2 localizedDescription];
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,Roads,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      [a2 code];
      [a2 domain];
      [a2 localizedDescription];
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (sub_19B8E7710(v9, v8, v10, v11))
    {
      *(v4 + 56) = v9;
      *(v4 + 64) = v10;
      *(v4 + 72) = v11;
      *(v4 + 80) = v8;
    }

    *(v4 + 124) = 0;
  }

  if (*(a1 + 72) > 0.5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v4 + 280) + *(v4 + 256);
      v14 = *(*(*(a1 + 32) + 8) + 24);
      v15 = 0.0;
      if (*(a1 + 96) >= 0.0)
      {
        v16 = mach_continuous_time();
        v15 = vabdd_f64(sub_19B994BF4(v16), *(a1 + 96)) * 1000.0;
      }

      v18 = *(a1 + 80);
      v17 = *(a1 + 88);
      v19 = *(a1 + 72);
      v20 = *(v4 + 320);
      v22 = *(v4 + 112);
      v21 = *(v4 + 116);
      v23 = *(v4 + 120);
      v24 = *(v4 + 124);
      *buf = 67243009;
      *v42 = v13;
      *&v42[4] = 1026;
      *&v42[6] = v14;
      *v43 = 2050;
      *&v43[2] = v15;
      *v44 = 2053;
      *&v44[2] = v18;
      v45 = 2053;
      v46 = v17;
      v47 = 2050;
      v48 = v19;
      v49 = 1026;
      v50 = a2 != 0;
      v51 = 1026;
      v52 = v21;
      v53 = 2050;
      v54 = v20;
      v55 = 1026;
      v56 = v22;
      v57 = 1026;
      v58 = v23;
      v59 = 1026;
      v60 = v24;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,bufferDataUsingMapsAPI,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", buf, 0x5Eu);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v26 = *(v4 + 280) + *(v4 + 256);
      v27 = *(*(*(a1 + 32) + 8) + 24);
      if (*(a1 + 96) >= 0.0)
      {
        v28 = mach_continuous_time();
        v29 = vabdd_f64(sub_19B994BF4(v28), *(a1 + 96)) * 1000.0;
      }

      v33 = *(a1 + 80);
      v34 = *(a1 + 88);
      v35 = *(a1 + 72);
      v36 = *(v4 + 116);
      v37 = *(v4 + 320);
      v38 = *(v4 + 112);
      v39 = *(v4 + 120);
      v40 = *(v4 + 124);
      v30 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  if (*(a1 + 104) == 1)
  {
    [*(v4 + 88) clearRoadTiles];
  }

  v31 = *(*(a1 + 40) + 8);
  if (v4 + 328 != v31 + 48)
  {
    sub_19B8F1DAC((v4 + 328), *(v31 + 48), *(v31 + 56), (*(v31 + 56) - *(v31 + 48)) >> 4);
  }

  *(v4 + 224) = 0;
  if (*(a1 + 105) == 1)
  {
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_19B8EC534(uint64_t a1, void *a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  ++*(v4 + 116);
  v68[0] = 0;
  v68[1] = 0;
  v66 = 0;
  v67 = v68;
  v64 = 0;
  v65 = 0;
  if (a2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (sub_19B8E7710(v6, v5, v7, v8))
    {
      *(v4 + 56) = v6;
      *(v4 + 64) = v7;
      *(v4 + 72) = v8;
      *(v4 + 80) = v5;
    }

    *(v4 + 124) = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v60 objects:v106 count:16];
    if (v9)
    {
      v10 = *v61;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v61 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_19B8F30F0();
          }
        }

        v9 = [a2 countByEnumeratingWithState:&v60 objects:v106 count:16];
      }

      while (v9);
    }

    if ((v4 + 328) != &v64)
    {
      sub_19B8F1DAC((v4 + 328), v64, v65, (v65 - v64) >> 4);
    }
  }

  else
  {
    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 64);
      v14 = *(a1 + 72);
      v16 = *(a1 + 56);
      v18 = *(v4 + 112);
      v17 = *(v4 + 116);
      v19 = *(v4 + 120);
      v20 = *(v4 + 124);
      v21 = *(a1 + 88);
      *buf = 134547457;
      *&buf[4] = v15;
      *&buf[12] = 2053;
      *v89 = v14;
      *&v89[8] = 2050;
      *v90 = v16;
      *&v90[8] = 1026;
      *v91 = v17;
      *&v91[4] = 1026;
      *&v91[6] = v18;
      v92 = 1026;
      *v93 = v19;
      *&v93[4] = 1026;
      *&v93[6] = v20;
      *v94 = 1026;
      *&v94[2] = v21;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned,xpcError,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,apiCalls,%{public}d,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x3Eu);
    }

    v22 = sub_19B87DD40();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v24 = *(a1 + 64);
      v23 = *(a1 + 72);
      v25 = *(a1 + 56);
      v27 = *(v4 + 112);
      v26 = *(v4 + 116);
      v28 = *(v4 + 120);
      v29 = *(v4 + 124);
      v30 = *(a1 + 88);
      v69 = 134547457;
      *v70 = v24;
      *&v70[8] = 2053;
      *v71 = v23;
      *&v71[8] = 2050;
      *v72 = v25;
      *&v72[8] = 1026;
      *v73 = v26;
      *&v73[4] = 1026;
      *&v73[6] = v27;
      v74 = 1026;
      *v75 = v28;
      *&v75[4] = 1026;
      *&v75[6] = v29;
      *v76 = 1026;
      *&v76[2] = v30;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }

  *(v4 + 224) = 0;
  if (*(a1 + 56) > *(v4 + 160))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v33 = [a2 count];
      }

      else
      {
        v33 = 0;
      }

      v34 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v35 = mach_continuous_time();
        v34 = vabdd_f64(sub_19B994BF4(v35), *(a1 + 80)) * 1000.0;
      }

      v37 = *(a1 + 64);
      v36 = *(a1 + 72);
      v38 = *(a1 + 56);
      v39 = *(v4 + 320);
      v41 = *(v4 + 112);
      v40 = *(v4 + 116);
      v42 = *(v4 + 120);
      v43 = *(v4 + 124);
      v44 = *(a1 + 88);
      *buf = 67243265;
      *&buf[4] = v33;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      *v89 = 2050;
      *&v89[2] = v34;
      *v90 = 2053;
      *&v90[2] = v37;
      *v91 = 2053;
      *&v91[2] = v36;
      v92 = 2050;
      *v93 = v38;
      *&v93[8] = 1026;
      *v94 = a2 == 0;
      *&v94[4] = 1026;
      v95 = v40;
      v96 = 2050;
      v97 = v39;
      v98 = 1026;
      v99 = v41;
      v100 = 1026;
      v101 = v42;
      v102 = 1026;
      v103 = v43;
      v104 = 1026;
      v105 = v44;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,MapHelperService,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x64u);
    }

    v45 = sub_19B87DD40();
    if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      if (a2)
      {
        v46 = [a2 count];
      }

      else
      {
        v46 = 0;
      }

      v47 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v48 = mach_continuous_time();
        v47 = vabdd_f64(sub_19B994BF4(v48), *(a1 + 80)) * 1000.0;
      }

      v50 = *(a1 + 64);
      v49 = *(a1 + 72);
      v51 = *(a1 + 56);
      v52 = *(v4 + 320);
      v54 = *(v4 + 112);
      v53 = *(v4 + 116);
      v55 = *(v4 + 120);
      v56 = *(v4 + 124);
      v57 = *(a1 + 88);
      v69 = 67243265;
      *v70 = v46;
      *&v70[4] = 1026;
      *&v70[6] = 0;
      *v71 = 2050;
      *&v71[2] = v47;
      *v72 = 2053;
      *&v72[2] = v50;
      *v73 = 2053;
      *&v73[2] = v49;
      v74 = 2050;
      *v75 = v51;
      *&v75[8] = 1026;
      *v76 = a2 == 0;
      *&v76[4] = 1026;
      v77 = v53;
      v78 = 2050;
      v79 = v52;
      v80 = 1026;
      v81 = v54;
      v82 = 1026;
      v83 = v55;
      v84 = 1026;
      v85 = v56;
      v86 = 1026;
      v87 = v57;
      v58 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }
  }

  *buf = &v64;
  sub_19B8F0E84(buf);
  sub_19B8F3484(&v67, v68[0]);
  v59 = *MEMORY[0x1E69E9840];
}

void sub_19B8ECD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void **a39)
{
  a39 = &a19;
  sub_19B8F0E84(&a39);
  sub_19B8F3484(&a22, a23);
  _Unwind_Resume(a1);
}

void *sub_19B8ECD8C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

void sub_19B8ECDD4(uint64_t a1, uint64_t a2, char **a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = *a3;
    v7 = *v3;
    v8 = a3[1] - *a3;
    if (v8)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (**v6 != v7 || *(*v6 + 8) != v3[1])
      {
        v6 += 48;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v63 = *(a1 + 16);
      v10 = sub_19B8F35D8(a2, v7, v3[1]);
      v12 = v10[6];
      v11 = v10[7];
      v54 = v12;
      v55 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v10[9];
      v56 = v10[8];
      v57 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v10[11];
      v58 = v10[10];
      v59 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = *a3;
      v15 = a3[1];
      v17 = a3[2];
      if (v15 >= v17)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4) + 1;
        if (v20 <= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 4);
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x2AAAAAAAAAAAAAALL)
          {
            v22 = 0x555555555555555;
          }

          else
          {
            v22 = v20;
          }

          v62 = a3;
          if (v22)
          {
            sub_19B8F2148(v22);
          }

          v60 = 0u;
          v61 = 0u;
          v64 = a3;
          sub_19B8F2148(1uLL);
        }

        sub_19B8B8A40();
      }

      if (v16 == v15)
      {
        *v15 = v12;
        v23 = v55;
        *(v15 + 1) = v55;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v15 + 2) = v56;
        v24 = v57;
        *(v15 + 3) = v57;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v15 + 4) = v58;
        v25 = v59;
        *(v15 + 5) = v59;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        a3[1] = v15 + 48;
      }

      else
      {
        v18 = v15 - 48;
        if (v15 < 0x30)
        {
          v19 = a3[1];
        }

        else
        {
          v19 = v15 + 48;
          *v15 = *v18;
          *v18 = 0;
          *(v15 - 5) = 0;
          *(v15 + 1) = *(v15 - 2);
          *(v15 - 4) = 0;
          *(v15 - 3) = 0;
          *(v15 + 2) = *(v15 - 1);
          *(v15 - 2) = 0;
          *(v15 - 1) = 0;
        }

        a3[1] = v19;
        if (v15 != v16 + 48)
        {
          v26 = v16 - v15 + 48;
          v27 = v15 - 96;
          v28 = v15 - 24;
          do
          {
            v29 = *v27;
            *v27 = 0;
            *(v27 + 1) = 0;
            v30 = *(v28 - 2);
            *(v28 - 24) = v29;
            if (v30)
            {
              sub_19B8750F8(v30);
            }

            v31 = *(v27 + 1);
            *(v27 + 2) = 0;
            *(v27 + 3) = 0;
            v32 = *v28;
            *(v28 - 8) = v31;
            if (v32)
            {
              sub_19B8750F8(v32);
            }

            v33 = *(v27 + 2);
            *(v27 + 4) = 0;
            *(v27 + 5) = 0;
            v34 = *(v28 + 2);
            *(v28 + 8) = v33;
            if (v34)
            {
              sub_19B8750F8(v34);
            }

            v27 -= 48;
            v28 -= 48;
            v26 += 48;
          }

          while (v26);
          v19 = a3[1];
        }

        v35 = v16 <= &v54;
        v36 = v19 > &v54;
        v38 = v35 && v36;
        v37 = !v35 || !v36;
        v39 = 48;
        if (v37)
        {
          v39 = 0;
        }

        v40 = *(&v54 + v39);
        v41 = 8;
        if (!v37)
        {
          v41 = 56;
        }

        v42 = *(&v54 + v41);
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }

        v43 = *(v16 + 1);
        *v16 = v40;
        *(v16 + 1) = v42;
        if (v43)
        {
          sub_19B8750F8(v43);
        }

        v44 = 16;
        if (v38)
        {
          v44 = 64;
        }

        v45 = *(&v54 + v44);
        v46 = 24;
        if (v38)
        {
          v46 = 72;
        }

        v47 = *(&v54 + v46);
        if (v47)
        {
          atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
        }

        v48 = *(v16 + 3);
        *(v16 + 2) = v45;
        *(v16 + 3) = v47;
        if (v48)
        {
          sub_19B8750F8(v48);
        }

        v49 = 32;
        if (v38)
        {
          v49 = 80;
        }

        v50 = *(&v54 + v49);
        v51 = 40;
        if (v38)
        {
          v51 = 88;
        }

        v52 = *(&v54 + v51);
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        v53 = *(v16 + 5);
        *(v16 + 4) = v50;
        *(v16 + 5) = v52;
        if (v53)
        {
          sub_19B8750F8(v53);
        }
      }

      sub_19B8ECDD4(&v54, a2, a3);
      if (v59)
      {
        sub_19B8750F8(v59);
      }

      if (v57)
      {
        sub_19B8750F8(v57);
      }

      if (v55)
      {
        sub_19B8750F8(v55);
      }
    }
  }
}

void sub_19B8ED2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_19B8F2278(&a15);
  sub_19B8ECD8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED318(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_19B8B8A40();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      sub_19B8F2148(v10);
    }

    v11 = 48 * v7;
    sub_19B8F20FC(v11, a2);
    v6 = v11 + 48;
    v12 = a1[1];
    v13 = (v11 + *a1 - v12);
    sub_19B8F21A0(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11 + 48;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_19B8F2278(v16);
  }

  else
  {
    result = sub_19B8F20FC(v3, a2);
    v6 = result + 48;
  }

  a1[1] = v6;
  return result;
}

void sub_19B8ED434(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = *a3;
    v7 = *v3;
    v8 = a3[1] - *a3;
    if (v8)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (**v6 != v7 || *(*v6 + 8) != v3[1])
      {
        v6 += 48;
        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v14[6] = *(a1 + 32);
      v10 = sub_19B8F35D8(a2, v7, v3[1]);
      v11 = v10[7];
      v14[0] = v10[6];
      v14[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v10[9];
      v14[2] = v10[8];
      v14[3] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v10[11];
      v14[4] = v10[10];
      v14[5] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B8ED318(a3, v14);
      sub_19B8ED434(v14, a2, a3);
      if (v13)
      {
        sub_19B8750F8(v13);
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      if (v11)
      {
        sub_19B8750F8(v11);
      }
    }
  }
}

void sub_19B8ED568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8ECD8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED57C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  (*(*a1 + 16))(a1);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (*a2 != v9)
  {
    v10 = -1.0;
    do
    {
      v11 = *v8;
      if (*v8)
      {
        v12 = *a3;
        if (a4 >= 0.0 && v12 != 0 && v10 >= 0.0)
        {
          v14 = *v12;
          if (*v12)
          {
            if ((*(v14 + 17) & 1) != 0 || !*(v14 + 72))
            {
              if (sub_19B9F6128(*v11, v12))
              {
                v15 = fmod(*(v11 + 40) - a4, 360.0);
                if (v15 < 0.0)
                {
                  v15 = v15 + 360.0;
                }

                if (v15 > 180.0)
                {
                  v15 = v15 + -360.0;
                }

                if (fabs(v15) >= 90.0)
                {
                  goto LABEL_26;
                }

LABEL_21:
                v16 = v8[1];
                if (v16)
                {
                  atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
                }

                v17 = *(a3 + 8);
                *a3 = v11;
                *(a3 + 8) = v16;
                if (v17)
                {
                  sub_19B8750F8(v17);
                }

                v10 = *(*v8 + 56);
                goto LABEL_26;
              }
            }
          }
        }

        if (v10 < 0.0 || *(v11 + 56) > v10)
        {
          goto LABEL_21;
        }
      }

LABEL_26:
      v8 += 2;
    }

    while (v8 != v9);
  }

  v18 = *a3;
  if (*a3 && (v19 = *(v18 + 7), v19 > 0.0))
  {
    v20 = 1;
    *(v18 + 64) = 1;
    v21 = *a2;
    v22 = *(a2 + 8);
    if (*a2 != v22)
    {
      do
      {
        if (*v21)
        {
          *(*v21 + 112) = *(*v21 + 56) / v19;
        }

        v21 += 2;
      }

      while (v21 != v22);
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  (*(*a1 + 24))(a1);
  return v20;
}

uint64_t sub_19B8ED778(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  sub_19B8EAC7C(a1, a2, &v8, a4);
  v5 = v8;
  if (v8 == v9)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    while (**v5 != **a3 || *(*v5 + 8) != *(*a3 + 8))
    {
      v5 += 16;
      if (v5 == v9)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
  }

  v11 = &v8;
  sub_19B8F0E84(&v11);
  return v6;
}

void sub_19B8ED814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8ED82C(uint64_t a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v98 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(a1);
  ++*(a1 + 112);
  if ((a2 & 1) == 0 && !sub_19B8E7644((a1 + 56), (a1 + 16), *(a1 + 217), a5, a6, a7))
  {
    goto LABEL_92;
  }

  *buf = a7;
  v14 = (a1 + 176);
  v15 = (a1 + 184);
  if (*(a1 + 184) >= a7)
  {
    v15 = buf;
  }

  if (*(a1 + 176) <= a7)
  {
    v14 = v15;
  }

  v16 = *v14;
  if (!sub_19B8E7710(a4, *v14, a5, a6))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349825;
      *&buf[4] = a4;
      *&buf[12] = 2053;
      *&buf[14] = a5;
      *&buf[22] = 2053;
      v91 = a6;
      LOWORD(v92) = 2050;
      *(&v92 + 2) = v16;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,%{public}.1lf,cacheRoadData,invalid input,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf", buf, 0x2Au);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v78 = 134349825;
      *&v78[4] = a4;
      *&v78[12] = 2053;
      *&v78[14] = a5;
      *&v78[22] = 2053;
      v79 = a6;
      LOWORD(v80) = 2050;
      *(&v80 + 2) = v16;
      v32 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    v33 = 0;
    goto LABEL_93;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v17 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 112);
    v18 = *(a1 + 116);
    v20 = *(a1 + 224);
    *buf = 134350593;
    *&buf[4] = a4;
    *&buf[12] = 2053;
    *&buf[14] = a5;
    *&buf[22] = 2053;
    v91 = a6;
    LOWORD(v92) = 2050;
    *(&v92 + 2) = v16;
    WORD5(v92) = 1026;
    HIDWORD(v92) = v18;
    LOWORD(v93) = 1026;
    *(&v93 + 2) = v19;
    HIWORD(v93) = 1026;
    LODWORD(v94) = v20;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,%{public}.1lf,buffering map data,ll,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,mapsAPICalls,%{public}d,bufferCalls,%{public}d,queryInProgress,%{public}d", buf, 0x3Cu);
  }

  v21 = sub_19B87DD40();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v23 = *(a1 + 112);
    v22 = *(a1 + 116);
    v24 = *(a1 + 224);
    *v78 = 134350593;
    *&v78[4] = a4;
    *&v78[12] = 2053;
    *&v78[14] = a5;
    *&v78[22] = 2053;
    v79 = a6;
    LOWORD(v80) = 2050;
    *(&v80 + 2) = v16;
    WORD5(v80) = 1026;
    HIDWORD(v80) = v22;
    LOWORD(v81) = 1026;
    *(&v81 + 2) = v23;
    HIWORD(v81) = 1026;
    LODWORD(v82) = v24;
    LODWORD(v59) = 60;
    v25 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::bufferMapData(const CFAbsoluteTime, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  (*(*a1 + 16))(a1);
  if (*(a1 + 169) == 1)
  {
    v26 = *(a1 + 224);
    if (v26 == 1)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v27 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_INFO, "CLMM,CLTSP,building data query already in progress using XPC", buf, 2u);
      }

      v28 = sub_19B87DD40();
      if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
        }

        *v78 = 0;
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    else
    {
      v38 = *(a1 + 192);
      v63[0] = a1;
      (*(*a1 + 16))(a1);
      LOWORD(v64) = 256;
      v39 = mach_continuous_time();
      v40 = sub_19B994BF4(v39);
      v41 = objc_autoreleasePoolPush();
      ++*(a1 + 116);
      *v78 = 0;
      *&v78[8] = v78;
      *&v78[16] = 0x2020000000;
      LOBYTE(v79) = 0;
      v42 = CLLocationCoordinate2DMake(a5, a6);
      *(a1 + 224) = 1;
      v43 = +[CLMapsXPCServiceManager sharedInstance];
      if (*(a1 + 220) == 1)
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      v45 = *(a1 + 193);
      v46 = (*(a1 + 152) & 0xFFFFFFFE) == 2;
      v47 = *(a1 + 216);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B8EF530;
      v91 = COERCE_DOUBLE(&unk_1E753D800);
      v93 = a4;
      v94 = v16;
      v95 = a5;
      v96 = a6;
      *&v92 = v78;
      *(&v92 + 1) = a1;
      v97 = v40;
      [(CLMapsXPCServiceManager *)v43 collectMapDataOfType:v44 aroundCoordinate:v38 inRadius:v45 allowNetwork:v46 preferCachedTiles:a3 isPedestrianOrCycling:v47 clearTiles:v42.latitude callSynchronously:v42.longitude WithReply:v16, buf, v59];
      _Block_object_dispose(v78, 8);
      objc_autoreleasePoolPop(v41);
      (*(*a1 + 24))(a1);
    }

    v33 = v26 ^ 1u;
    goto LABEL_91;
  }

  if (!*(a1 + 88))
  {
    v33 = 0;
    goto LABEL_91;
  }

  v75 = a1;
  (*(*a1 + 16))(a1);
  v77 = 256;
  if (!*(a1 + 88))
  {
    goto LABEL_61;
  }

  if (*(a1 + 224) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v34 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_INFO, "CLMM,CLTSP,building data query already in progress using maps API", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      *v78 = 0;
      v36 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

LABEL_61:
    v33 = 0;
    v37 = a1;
    goto LABEL_62;
  }

  v48 = mach_continuous_time();
  v49 = sub_19B994BF4(v48);
  v50 = objc_autoreleasePoolPush();
  v69 = 0;
  v70 = &v69;
  v71 = 0x3052000000;
  v72 = sub_19B8EBCE4;
  v73 = sub_19B8EBCF4;
  v74 = 0;
  v51 = *(a1 + 216);
  if (v51 == 1)
  {
    v70[5] = dispatch_semaphore_create(0);
  }

  v63[0] = 0;
  v63[1] = v63;
  v64 = 0x4812000000;
  v65 = sub_19B8EEC1C;
  v66 = sub_19B8EEC40;
  v67 = "";
  memset(v68, 0, sizeof(v68));
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = 0;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = sub_19B8EEC6C;
  v60[3] = &unk_1E753D7D8;
  v60[4] = v63;
  v60[5] = v61;
  *v78 = MEMORY[0x1E69E9820];
  *&v78[8] = 3221225472;
  *&v78[16] = sub_19B8EEF50;
  v79 = COERCE_DOUBLE(&unk_1E753D788);
  v83 = a4;
  v84 = v16;
  v85 = a5;
  v86 = a6;
  *&v80 = v63;
  *(&v80 + 1) = v61;
  v87 = v49;
  v88 = v51;
  v89 = a3;
  v81 = &v69;
  v82 = a1;
  ++*(a1 + 116);
  *(a1 + 224) = 1;
  [*(a1 + 88) findBuildingsNear:*(a1 + 220) == 1 radius:v60 tileSetStyle:v78 handler:a5 completionHandler:{a6, v16}];
  if (!v51)
  {
    goto LABEL_87;
  }

  v52 = dispatch_semaphore_wait(v70[5], 0xFFFFFFFFFFFFFFFFLL);
  v53 = v70[5];
  if (v53)
  {
    dispatch_release(v53);
  }

  if (v52)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v54 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,queryForBuildingsWithinDistance,semaphore timed out", buf, 2u);
    }

    v55 = sub_19B87DD40();
    if ((*(v55 + 160) & 0x80000000) == 0 || (*(v55 + 164) & 0x80000000) == 0 || (*(v55 + 168) & 0x80000000) == 0 || *(v55 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      v56 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)", "CoreLocation: %s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    v33 = 0;
  }

  else
  {
LABEL_87:
    v33 = 1;
  }

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
  *buf = v68;
  sub_19B8F0E84(buf);
  _Block_object_dispose(&v69, 8);
  objc_autoreleasePoolPop(v50);
  if ((v77 & 0x100) != 0)
  {
    if (v77)
    {
      pthread_mutex_unlock(v76);
      goto LABEL_91;
    }

    v37 = v75;
LABEL_62:
    (*(*v37 + 24))(v37);
  }

LABEL_91:
  (*(*a1 + 24))(a1);
  if (v33)
  {
LABEL_92:
    v33 = 1;
  }

LABEL_93:
  (*(*a1 + 24))(a1);
  v57 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_19B8EE5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void **a61)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  sub_19B8F0E84(&a61);
  _Block_object_dispose(&a38, 8);
  sub_19B888D7C(&a44);
  sub_19B888D7C(&a14);
  sub_19B888D7C(&a11);
  _Unwind_Resume(a1);
}

void sub_19B8EE678(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B8F23AC(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_19B8EE770(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v64 = a1;
  (*(*a1 + 16))(a1);
  v65 = 256;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v10 = mach_continuous_time();
  sub_19B994BF4(v10);
  sub_19B8F1EE8(__p, a3, a4, a5);
  if (*(a1 + 216) == 1 && (Current = CFAbsoluteTimeGetCurrent(), !sub_19B8ED82C(a1, 0, 0, Current, a3, a4, a5)))
  {
    v51 = 0;
  }

  else
  {
    v13 = v61;
    for (i = v62; i != v13; i -= 2)
    {
      v14 = *(i - 1);
      if (v14)
      {
        sub_19B8750F8(v14);
      }
    }

    v62 = v13;
    v15 = *(a1 + 232);
    v16 = *(a1 + 240);
    if (v15 != v16)
    {
      do
      {
        v17 = *v15;
        if (*v15)
        {
          v19 = v17 + 16;
          v18 = *(v17 + 16);
          v20 = 0x8E38E38E38E38E39 * ((*(v19 + 8) - v18) >> 3);
          if (v20 >= 1)
          {
            v21 = 0;
            do
            {
              if (v18)
              {
                if (v20 > v21)
                {
                  v22 = *(v18 + 72 * v21 + 48);
                  v23 = *(v18 + 72 * v21 + 56) - v22;
                  if ((v23 >> 4) >= 1)
                  {
                    v24 = 0;
                    v25 = v23 >> 4;
                    v26 = (v23 >> 4) & 0x7FFFFFFF;
                    do
                    {
                      if (v25 <= v24)
                      {
                        v27 = 0;
                      }

                      else
                      {
                        v27 = v22;
                      }

                      if (*__p <= *v27 && *&v58 >= *v27)
                      {
                        v29 = v27[1];
                        if (*(&v58 + 1) <= *&__p[1])
                        {
                          if (*(&v58 + 1) < *&__p[1] && (*(&v58 + 1) > v29 || *&__p[1] < v29))
                          {
LABEL_37:
                            sub_19B8EE678(&v61, v15);
                            goto LABEL_38;
                          }
                        }

                        else if (*(&v58 + 1) >= v29 && *&__p[1] <= v29)
                        {
                          goto LABEL_37;
                        }
                      }

                      ++v24;
                      v22 += 2;
                    }

                    while (v26 != v24);
                  }
                }
              }

              ++v21;
            }

            while (v21 != (v20 & 0x7FFFFFFF));
          }
        }

LABEL_38:
        ++v15;
      }

      while (v15 != v16);
      v13 = v62;
    }

    v32 = v61;
    if (v61 != v13)
    {
      v53 = v13;
      do
      {
        v33 = *v32;
        v34 = *(*v32 + 16);
        v35 = 0x8E38E38E38E38E39 * ((*(*v32 + 24) - v34) >> 3);
        if (v35 >= 1)
        {
          v36 = 0;
          do
          {
            if (v35 > v36 && v34)
            {
              v37 = v34 + 72 * v36;
              v59 = 0u;
              v60 = 0u;
              *__p = 0u;
              v58 = 0u;
              __p[0] = *(v37 + 32);
              v39 = *(v37 + 48);
              v38 = *(v37 + 56);
              v40 = v38 - v39;
              if (((v38 - v39) >> 4) < 1)
              {
                v46 = 0uLL;
                v47 = 0uLL;
              }

              else
              {
                v41 = 0;
                v42 = 0;
                v43 = 0;
                do
                {
                  if (v39 && v40 >> 4 > v43)
                  {
                    v56 = 0;
                    v55 = 0uLL;
                    sub_19BA0BE88((a1 + 16), &v55 + 1, &v55, &v56, a3, a4, 0.0, *(v39 + v41), *(v39 + v41 + 8), 0.0);
                    v44 = *(&v55 + 1);
                    v54 = v55;
                    if (v42 >= *(&v58 + 1))
                    {
                      v42 = sub_19B8F23F4(&__p[1], &v54);
                    }

                    else
                    {
                      *&v42->f64[0] = v55;
                      v42->f64[1] = v44;
                      ++v42;
                    }

                    *&v58 = v42;
                    v39 = *(v37 + 48);
                    v38 = *(v37 + 56);
                  }

                  ++v43;
                  v40 = v38 - v39;
                  v41 += 16;
                }

                while (v43 < ((v38 - v39) >> 4));
                v45 = __p[1];
                v46 = 0uLL;
                v47 = 0uLL;
                if (__p[1] != v42)
                {
                  v47 = *__p[1];
                  v46 = *__p[1];
                  do
                  {
                    v48 = *v45++;
                    v47 = vbslq_s8(vcgtq_f64(v47, v48), v48, v47);
                    v46 = vbslq_s8(vcgtq_f64(v48, v46), v48, v46);
                  }

                  while (v45 != v42);
                }
              }

              v59 = v47;
              v60 = v46;
              v49 = a2[1];
              if (v49 >= a2[2])
              {
                v50 = sub_19B8F258C(a2, __p);
              }

              else
              {
                *v49 = __p[0];
                *(v49 + 16) = 0;
                *(v49 + 24) = 0;
                *(v49 + 8) = 0;
                sub_19B8F2708(v49 + 8, __p[1], v58, (v58 - __p[1]) >> 4);
                *(v49 + 32) = v59;
                *(v49 + 48) = v60;
                v50 = v49 + 64;
                a2[1] = v49 + 64;
              }

              a2[1] = v50;
              if (__p[1])
              {
                *&v58 = __p[1];
                operator delete(__p[1]);
              }

              v33 = *v32;
            }

            ++v36;
            v34 = *(v33 + 16);
            v35 = 0x8E38E38E38E38E39 * ((*(v33 + 24) - v34) >> 3);
          }

          while (v36 < v35);
        }

        v32 += 2;
      }

      while (v32 != v53);
    }

    v51 = 1;
  }

  __p[0] = &v61;
  sub_19B8F0E84(__p);
  (*(*a1 + 24))(a1);
  return v51;
}

void sub_19B8EEBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = &a24;
  sub_19B8F0E84(&a10);
  sub_19B888D7C(&a27);
  _Unwind_Resume(a1);
}

__n128 sub_19B8EEC1C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_19B8EEC6C(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a2 && a2)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_19B8EEF50(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  *(v4 + 224) = 0;
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v40 = [a2 code];
      v41 = 2114;
      *v42 = [a2 domain];
      *&v42[8] = 2113;
      *&v42[10] = [a2 localizedDescription];
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,Buildings,Warning,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      [a2 code];
      [a2 domain];
      [a2 localizedDescription];
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
  }

  else
  {
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (sub_19B8E7710(v9, v8, v10, v11))
    {
      *(v4 + 56) = v9;
      *(v4 + 64) = v10;
      *(v4 + 72) = v11;
      *(v4 + 80) = v8;
    }

    *(v4 + 124) = 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v12 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v13 = (*(*(*(a1 + 32) + 8) + 56) - *(*(*(a1 + 32) + 8) + 48)) >> 4;
    v14 = *(*(*(a1 + 40) + 8) + 24);
    v15 = 0.0;
    if (*(a1 + 96) >= 0.0)
    {
      v16 = mach_continuous_time();
      v15 = vabdd_f64(sub_19B994BF4(v16), *(a1 + 96)) * 1000.0;
    }

    v18 = *(a1 + 80);
    v17 = *(a1 + 88);
    v19 = *(a1 + 72);
    v20 = *(a1 + 104);
    v21 = *(v4 + 116);
    v22 = *(v4 + 120);
    v23 = *(v4 + 124);
    *buf = 134351617;
    v40 = v13;
    v41 = 1026;
    *v42 = v14;
    *&v42[4] = 2050;
    *&v42[6] = v15;
    *&v42[14] = 2053;
    *&v42[16] = v18;
    v43 = 2053;
    v44 = v17;
    v45 = 2050;
    v46 = v19;
    v47 = 1026;
    v48 = a2 != 0;
    v49 = 1026;
    v50 = v21;
    v51 = 1026;
    v52 = v20;
    v53 = 1026;
    v54 = v22;
    v55 = 1026;
    v56 = v23;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,bufferDataUsingMapsAPI,bldgCount,%{public}lu,sizeOfBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d", buf, 0x58u);
  }

  v24 = sub_19B87DD40();
  if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v25 = (*(*(*(a1 + 32) + 8) + 56) - *(*(*(a1 + 32) + 8) + 48)) >> 4;
    v26 = *(*(*(a1 + 40) + 8) + 24);
    if (*(a1 + 96) >= 0.0)
    {
      v27 = mach_continuous_time();
      v28 = vabdd_f64(sub_19B994BF4(v27), *(a1 + 96)) * 1000.0;
    }

    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    v34 = *(a1 + 72);
    v35 = *(v4 + 116);
    v36 = *(a1 + 104);
    v37 = *(v4 + 120);
    v38 = *(v4 + 124);
    v29 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingLocalMapsAPIObject(const double, const double, const double, const double, const BOOL)_block_invoke", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if (*(a1 + 105) == 1)
  {
    [*(v4 + 88) clearBuildingTiles];
  }

  v30 = *(*(a1 + 32) + 8);
  if (v4 + 232 != v30 + 48)
  {
    sub_19B8F2F00((v4 + 232), *(v30 + 48), *(v30 + 56), (*(v30 + 56) - *(v30 + 48)) >> 4);
  }

  if (*(a1 + 104) == 1)
  {
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_19B8EF530(uint64_t a1, void *a2)
{
  v120 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v2[28].i8[0] = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v58 = v2;
  if (a2)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    if (sub_19B8E7710(v5, v4, v6, v7))
    {
      *&v2[7] = v5;
      *&v2[8] = v6;
      *&v2[9] = v7;
      *&v2[10] = v4;
    }

    v2[15].i32[1] = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v61 objects:v94 count:16];
    if (v8)
    {
      v9 = v8;
      v59 = *v62;
      do
      {
        v10 = 0;
        do
        {
          if (*v62 != v59)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v61 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            operator new();
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
          }

          v12 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            v13 = [a2 count];
            *buf = 67240192;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Buildings,conversion to building failed,%{public}d", buf, 8u);
          }

          v14 = sub_19B87DD40();
          if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
            }

            v15 = [a2 count];
            v68 = 67240192;
            v69 = v15;
            v16 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v16);
            if (v16 != buf)
            {
              free(v16);
            }
          }

          ++v10;
        }

        while (v10 != v9);
        v17 = [a2 countByEnumeratingWithState:&v61 objects:v94 count:16];
        v9 = v17;
      }

      while (v17);
    }
  }

  else
  {
    v2[15] = vadd_s32(v2[15], 0x100000001);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    v18 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,Buildings,xpcQueryForBuildingData returned error", buf, 2u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
      }

      LOWORD(v68) = 0;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
  }

  v21 = a2;
  v22 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v23 = [a2 count];
    }

    else
    {
      v23 = 0;
    }

    v25 = v65;
    v24 = v66;
    v26 = a1;
    v27 = 0.0;
    if (*(a1 + 80) >= 0.0)
    {
      v28 = mach_continuous_time();
      v29 = sub_19B994BF4(v28);
      v26 = a1;
      v27 = vabdd_f64(v29, *(a1 + 80)) * 1000.0;
    }

    v31 = v26[8];
    v30 = v26[9];
    v32 = (v24 - v25) >> 4;
    v21 = a2;
    v33 = v26[7];
    v34 = v58[27].u8[0];
    v35 = v58[14].i32[1];
    v36 = v58[15].i32[0];
    v37 = v58[15].i32[1];
    v38 = v58[24].u8[0];
    *buf = 67243265;
    *&buf[4] = v23;
    v96 = 1026;
    v97 = 0;
    v98 = 1026;
    v99 = v32;
    v100 = 2050;
    v101 = v27;
    v102 = 2053;
    v103 = v31;
    v104 = 2053;
    v105 = v30;
    v106 = 2050;
    v107 = v33;
    v108 = 1026;
    v109 = a2 == 0;
    v110 = 1026;
    v111 = v35;
    v112 = 1026;
    v113 = v34;
    v114 = 1026;
    v115 = v36;
    v116 = 1026;
    v117 = v37;
    v118 = 1026;
    v119 = v38;
    _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Buildings,MapHelperService,bldgCount,%{public}d,sizeOfBuildings,%{public}d,convertedBuildings,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,bufferSynchronously,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x60u);
  }

  v39 = sub_19B87DD40();
  if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6B9A0);
    }

    if (v21)
    {
      v40 = [v21 count];
    }

    else
    {
      v40 = 0;
    }

    v42 = v65;
    v41 = v66;
    v43 = a1;
    v44 = 0.0;
    if (*(a1 + 80) >= 0.0)
    {
      v45 = mach_continuous_time();
      v46 = sub_19B994BF4(v45);
      v43 = a1;
      v44 = vabdd_f64(v46, *(a1 + 80)) * 1000.0;
    }

    v48 = v43[8];
    v47 = v43[9];
    v49 = v43[7];
    v50 = v58[27].u8[0];
    v51 = v58[14].i32[1];
    v52 = v58[15].i32[0];
    v53 = v58[15].i32[1];
    v54 = v58[24].u8[0];
    v68 = 67243265;
    v69 = v40;
    v70 = 1026;
    v71 = 0;
    v72 = 1026;
    v73 = (v41 - v42) >> 4;
    v74 = 2050;
    v75 = v44;
    v76 = 2053;
    v77 = v48;
    v78 = 2053;
    v79 = v47;
    __p_2 = 2050;
    __p_4 = v49;
    __p_12 = 1026;
    __p_14 = a2 == 0;
    v84 = 1026;
    v85 = v51;
    v86 = 1026;
    v87 = v50;
    v88 = 1026;
    v89 = v52;
    v90 = 1026;
    v91 = v53;
    v92 = 1026;
    v93 = v54;
    v55 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureBuildingGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "CoreLocation: %s\n", v55);
    if (v55 != buf)
    {
      free(v55);
    }
  }

  if (&v58[29] != &v65)
  {
    sub_19B8F2F00(&v58[29], v65, v66, (v66 - v65) >> 4);
  }

  *buf = &v65;
  sub_19B8F0E84(buf);
  v56 = *MEMORY[0x1E69E9840];
}

void sub_19B8F0728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42)
{
  a35 = &a30;
  sub_19B8F0E84(&a35);
  _Unwind_Resume(a1);
}

os_log_t sub_19B8F07B0()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B8F07E0(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    result = 1;
    do
    {
      v6 = v2[4];
      v7 = v2[5];
      v8 = v4 < v7;
      if (v3 != v6)
      {
        v8 = v3 < v6;
      }

      if (!v8)
      {
        v9 = v7 < v4;
        if (v3 == v6)
        {
          v10 = v9;
        }

        else
        {
          v10 = v6 < v3;
        }

        if (!v10)
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B8F0840(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_19B8F08E8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_19B8F08E8(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = v8[5];
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t *sub_19B8F0968(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_19B8F09C0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_19B8F09C0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_19B8F0B5C(uint64_t a1, unint64_t *a2)
{
  result = *sub_19B8F08E8(a1, &v3, a2);
  if (!result)
  {
    sub_19B8F0BDC();
  }

  return result;
}

uint64_t sub_19B8F0C74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B8F0CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void sub_19B8F0CFC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_19B8F0D38(a1, a2);
  }

  sub_19B8B8A40();
}

void sub_19B8F0D38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void *sub_19B8F0D80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B8F0E08(v7);
  return v4;
}

uint64_t sub_19B8F0E08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

void sub_19B8F0E40(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 16;
  }
}

void sub_19B8F0E84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B8EBC04(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_19B8F0ED8(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_19B8F0E84(&v3);
  v3 = (a1 + 24);
  sub_19B8F0E84(&v3);
  return a1;
}

uint64_t sub_19B8F0F24(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_19B8F0E84(&v3);
  v3 = (a1 + 8);
  sub_19B8F0E84(&v3);
  return a1;
}

void sub_19B8F0F70(uint64_t a1, uint64_t *a2)
{
  sub_19B8EBC04(a2);
  sub_19B8F0FC8(a2);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  memset(v3, 0, sizeof(v3));
  v4 = v3;
  sub_19B8F0E84(&v4);
}

void sub_19B8F0FC8(uint64_t *a1)
{
  if (*a1)
  {
    sub_19B8EBC04(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_19B8F1008(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_19B8F106C(&v11, a2, v7, v6);
}

void *sub_19B8F106C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_19B8750F8(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void **sub_19B8F10D0(void **a1)
{
  sub_19B8F1104(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F1104(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_19B8F1158(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_19B8F1750(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_19B8F1230(uint64_t **a1, uint64_t a2)
{
  v3 = sub_19B8F128C(a1, a2);
  v5 = (a2 + 80);
  sub_19B8F0E84(&v5);
  v5 = (a2 + 56);
  sub_19B8F0E84(&v5);
  operator delete(a2);
  return v3;
}

uint64_t *sub_19B8F128C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_19B8F1300(v6, a2);
  return v3;
}

uint64_t *sub_19B8F1300(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *sub_19B8F1678(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_19B8F1750(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void *sub_19B8F1798(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_19B8F18CC(v7, v11);
    }

    sub_19B8B8A40();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_19B8F18CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_19B8F1750(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19B8F1908(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_19B8F1950(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_19B8F1230(a1, v3);
  return 1;
}

uint64_t sub_19B8F1950(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 40) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  v13 = v6 < *(v7 + 40);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

void sub_19B8F19C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B8F19C4(a1, *a2);
    sub_19B8F19C4(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *sub_19B8F1A28(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B8F1008(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = sub_19B8F0D80(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_19B8F1008(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      sub_19B8F1C0C(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      sub_19B8F0D38(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_19B8F10D0(v30);
    return v19;
  }

  return v5;
}

uint64_t *sub_19B8F1C0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B8F1C84(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_19B8F0E84(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

__int128 *sub_19B8F1CF8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B8F1D64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F1DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_19B8F0FC8(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F1C0C(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F1C0C(&v17, a2, (a2 + v11), v7);
    a1[1] = sub_19B8F0D80(a1, v12, a3, a1[1]);
  }
}

double *sub_19B8F1EE8(double *a1, double a2, double a3, double a4)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  sub_19B8B7B58(a1, a1 + 1, a1 + 2, a1 + 3, a2, a3, a4);
  v5 = fmod(a1[1], 360.0);
  if (v5 <= -180.0)
  {
    v5 = v5 + 360.0;
  }

  else if (v5 > 180.0)
  {
    v5 = v5 + -360.0;
  }

  a1[1] = v5;
  v6 = fmod(a1[3], 360.0);
  if (v6 <= -180.0)
  {
    v6 = v6 + 360.0;
  }

  else if (v6 > 180.0)
  {
    v6 = v6 + -360.0;
  }

  a1[3] = v6;
  return a1;
}

double sub_19B8F1FB4(int a1, int a2, int a3, uint64_t *a4, unint64_t *a5)
{
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v6 = 4;
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v20 = 0uLL;
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  if (v9 >= 2 * v7 + 2)
  {
    v20 = *(v8 + 16 * v7);
  }

  else
  {
    v10 = 0.7;
    if (a3)
    {
      v10 = 0.9;
    }

    if (a1)
    {
      v10 = 0.775;
    }

    if (a2)
    {
      v11 = 0.825;
    }

    else
    {
      v11 = v10;
    }

    v12 = v9 > 2;
    v13 = (v8 + 16 * (v9 > 2));
    v14 = *v13;
    v15 = v13[1];
    v16 = 16;
    if (v12)
    {
      v16 = 32;
    }

    sub_19B8D9740(&v20, v14, v15, *(v8 + v16), *(v8 + v16 + 8), v11);
  }

  result = *(&v20 + 1);
  v18 = vabdd_f64(0.0, *&v20) >= 0.0000001;
  v19 = vabdd_f64(0.0, *(&v20 + 1)) >= 0.0000001 || v18;
  if (v19 == 1)
  {
    result = (*(&v20 + 1) + 180.0) * 10000000.0;
    *a5 = result | (((*&v20 + 90.0) * 10000000.0) << 32);
  }

  return result;
}

void *sub_19B8F20FC(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[3];
  result[2] = a2[2];
  result[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[5];
  result[4] = a2[4];
  result[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_19B8F2148(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F21A0(void *a1, void *a2, _OWORD *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      v5[1] = 0;
      a3[1] = *(v5 + 1);
      v5[2] = 0;
      v5[3] = 0;
      a3[2] = *(v5 + 2);
      v5[4] = 0;
      v5[5] = 0;
      v5 += 6;
      a3 += 3;
    }

    while (v5 != a2);
    do
    {
      sub_19B8F221C(v4);
      v4 += 6;
    }

    while (v4 != a2);
  }
}

void sub_19B8F221C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = a1[1];
  if (v4)
  {

    sub_19B8750F8(v4);
  }
}

uint64_t sub_19B8F2278(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_19B8F221C((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B8F22C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_19B8F0E84(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F2328(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 6;
        sub_19B8F221C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_19B8F23AC(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B8F23F4(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_19B8B8A40();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_19B8F1750(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  v13 = 0;
  sub_19B8F2510(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_19B8F24D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B8F2510(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_19B8F258C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_19B8B8A40();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_19B8F278C(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_19B8F26A0(a1, v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_19B8F27D4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_19B8F2924(&v14);
  return v13;
}

void sub_19B8F268C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B8F2924(va);
  _Unwind_Resume(a1);
}

double sub_19B8F26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_19B8F2708(a2 + 8, *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 4);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 48) = *(a3 + 48);
  result = *(a3 + 56);
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_19B8F2708(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F18CC(result, a4);
  }

  return result;
}