void sub_100000F0C(uint64_t a1)
{
  v3 = objc_alloc_init(NSOperationQueue);
  v2 = [*(a1 + 32) urlRequest];
  [NSURLConnection sendAsynchronousRequest:v2 queue:v3 completionHandler:*(a1 + 40)];
}

void sub_100001170(void *a1, const UInt8 *a2, CFIndex a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a4)
  {
    v10 = CFDataCreate(kCFAllocatorDefault, a2, a3);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001324;
    v21[3] = &unk_100008670;
    v22 = v9;
    v11 = objc_retainBlock(v21);
    v12 = [NSString stringWithUTF8String:a5];
    if ([v12 isEqualToString:@"POST"])
    {
      v13 = @"application/jose+json";
    }

    else
    {
      v13 = @"application/json";
    }

    v14 = v10;
    v15 = v12;
    v16 = v13;
    v17 = v11;
    v18 = objc_autoreleasePoolPush();
    v19 = [NSString stringWithCString:a4 encoding:4];
    v20 = [[AcmeClient alloc] initWithURLString:v19];
    [(AcmeClient *)v20 post:v14 withMethod:v15 contentType:v16];
    [(AcmeClient *)v20 start3:v17];

    objc_autoreleasePoolPop(v18);
  }
}

void sub_100001324(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  context = objc_autoreleasePoolPush();
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1000018A4;
  v48 = sub_1000018B4;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1000018A4;
  v42 = sub_1000018B4;
  v43 = 0;
  v33 = v7;
  if (v7)
  {
    v10 = v7;
    v11 = [v10 valueForHTTPHeaderField:@"Location"];
    v12 = [v10 valueForHTTPHeaderField:@"Replay-Nonce"];
    if (v11)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000018BC;
      v37[3] = &unk_100008648;
      v37[4] = &v38;
      sub_100002968(v11, v37);
    }

    if (v12)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100001904;
      v36[3] = &unk_100008648;
      v36[4] = &v44;
      sub_100002968(v12, v36);
      v52 = @"Replay-Nonce";
      v53 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v35 = 0;
      v14 = [NSJSONSerialization dataWithJSONObject:v13 options:0 error:&v35];
    }

    else
    {
      v14 = 0;
    }

    v18 = [v10 statusCode];
    v19 = v18;
    if (v18 == 204 && v14 || v18 == 200 || v18 == 201 && [(__CFString *)v11 length])
    {
      v16 = 0;
      v15 = 0;
    }

    else
    {
      v16 = [NSHTTPURLResponse localizedStringForStatusCode:v19];
      v15 = xpc_int64_create(v19);
    }

    if (v9)
    {
      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v16)
    {
      v50 = NSLocalizedDescriptionKey;
      v51 = v16;
      v20 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v21 = [NSError errorWithDomain:NSURLErrorDomain code:v19 userInfo:v20];

      v17 = sub_10000194C(v21);

      v22 = 0;
      goto LABEL_30;
    }

    v17 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v9)
    {
LABEL_18:
      v16 = [v9 description];
LABEL_19:
      v17 = sub_10000194C(v9);
      if (!v15)
      {
        v15 = xpc_int64_create([v9 code]);
      }
    }
  }

  v22 = 0;
  if (v8 && !v16)
  {
    v23 = [v8 length];
    if (v23)
    {
      v24 = v8;
      v22 = xpc_data_create([v8 bytes], v23);
    }

    else
    {
      v22 = 0;
    }

    v16 = 0;
  }

LABEL_30:
  if (v14)
  {
    v25 = v14;
    v26 = xpc_data_create([v14 bytes], objc_msgSend(v14, "length"));
  }

  else
  {
    v26 = 0;
  }

  v27 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v29 = reply;
  if (reply)
  {
    if (v17)
    {
      xpc_dictionary_set_value(reply, "AcmeError", v17);
    }

    if (v15)
    {
      xpc_dictionary_set_value(v29, "AcmeStatus", v15);
    }

    v30 = v45[5];
    if (v30)
    {
      xpc_dictionary_set_value(v29, "AcmeNonce", v30);
    }

    v31 = v39[5];
    if (v31)
    {
      xpc_dictionary_set_value(v29, "AcmeLocation", v31);
    }

    v32 = v22;
    if (v22 || (v32 = v26) != 0)
    {
      xpc_dictionary_set_value(v29, "AcmeReply", v32);
    }

    xpc_connection_send_message(v27, v29);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  objc_autoreleasePoolPop(context);
}

void sub_100001850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000018A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000018BC(uint64_t a1, char *string)
{
  v3 = xpc_string_create(string);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_100001904(uint64_t a1, char *string)
{
  v3 = xpc_string_create(string);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

id sub_10000194C(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:NSUnderlyingErrorKey];
  v4 = [v3 userInfo];

  if (!v4)
  {
    v4 = [v1 userInfo];
  }

  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v6 = [v4 objectForKey:NSErrorFailingURLStringKey];
  v7 = [v4 objectForKey:NSLocalizedDescriptionKey];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:NSErrorFailingURLStringKey];
  }

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  v8 = [v1 code];
  v9 = [v1 domain];
  v10 = [NSError errorWithDomain:v9 code:v8 userInfo:v5];
  v11 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(v10);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 0x40000000;
  v26[2] = sub_1000045D0;
  v26[3] = &unk_1000087F0;
  v26[4] = v11;
  v26[5] = "domain";
  sub_100002968(Domain, v26);
  Code = CFErrorGetCode(v10);
  xpc_dictionary_set_int64(v11, "code", Code);
  v14 = CFErrorCopyUserInfo(v10);
  v18 = sub_1000030B0(v14, 0, v15, v16, v17);
  if (v18)
  {
    v19 = v18;
    v25 = v7;
    v20 = v6;
    v21 = malloc_type_malloc(v18, 0xD5244697uLL);
    v22 = &v21[v19];
    v23 = sub_100003344(v14, 0, 0, v21, v22);
    if (v23)
    {
      xpc_dictionary_set_data(v11, "userinfo", v23, v22 - v23);
    }

    free(v21);
    v6 = v20;
    v7 = v25;
  }

  CFRelease(v14);

  return v11;
}

void sub_100001BE8(void *a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x4012000000;
  v6 = sub_100001D14;
  v7 = sub_100001D2C;
  v8 = 256;
  v1 = a1;
  v9 = v1;
  v4[7] = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001D34;
  handler[3] = &unk_100008620;
  handler[4] = &v3;
  xpc_connection_set_event_handler(v1, handler);
  xpc_connection_set_finalizer_f(v1, j__xpc_transaction_end);
  xpc_transaction_begin();
  xpc_connection_resume(v1);
  _Block_object_dispose(&v3, 8);
}

void sub_100001CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100001D14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  return result;
}

void sub_100001D34(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = xpc_dictionary_get_remote_connection(v3);
  type = xpc_get_type(v3);
  if (*(v2 + 60))
  {
    goto LABEL_2;
  }

  if (type == &_xpc_type_error)
  {
    if (v3 != &_xpc_error_termination_imminent)
    {
      *(v2 + 60) = 1;
    }
  }

  else
  {
    if (type != &_xpc_type_dictionary)
    {
      goto LABEL_2;
    }

    length = 0;
    string = xpc_dictionary_get_string(v3, "operation");
    xpc_connection_get_audit_token();
    if (!string || strcmp(string, "AcmeRequest"))
    {
      goto LABEL_2;
    }

    memset(&token, 0, sizeof(token));
    v7 = SecTaskCreateWithAuditToken(0, &token);
    if (!v7)
    {
LABEL_12:
      data = xpc_dictionary_get_data(v3, "request", &length);
      v12 = xpc_dictionary_get_string(v3, "url");
      v13 = xpc_dictionary_get_string(v3, "method");
      xpc_dictionary_get_int64(v3, "state");
      sub_100001170(v3, data, length, v12, v13);
      goto LABEL_2;
    }

    v8 = v7;
    v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.security.app-sandbox", 0);
    if (!v9)
    {
LABEL_11:
      CFRelease(v8);
      goto LABEL_12;
    }

    v10 = v9;
    if (CFEqual(kCFBooleanFalse, v9))
    {
      CFRelease(v10);
      goto LABEL_11;
    }

    v14 = SecTaskCopyValueForEntitlement(v8, @"com.apple.security.network.client", 0);
    if (!v14)
    {
      CFRelease(v10);
      CFRelease(v8);
      goto LABEL_2;
    }

    v15 = v14;
    v16 = CFEqual(kCFBooleanFalse, v14);
    CFRelease(v15);
    CFRelease(v10);
    CFRelease(v8);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

LABEL_2:
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = getenv("WAIT4DEBUGGER");
  if (v3)
  {
    if (!strcasecmp("YES", v3))
    {
      syslog(3, "Waiting for debugger");
      v4 = getpid();
      kill(v4, 17);
    }
  }

  sub_100001FB0();
  sub_100002028();
  xpc_main(sub_100001BE8);
}

size_t sub_100001FB0()
{
  bzero(v1, 0x400uLL);
  _set_user_dir_suffix();
  return confstr(65537, v1, 0x400uLL);
}

void sub_100002028()
{
  signal(15, 1);
  v0 = dispatch_get_global_queue(25, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  v2 = qword_10000C2F0;
  qword_10000C2F0 = v1;

  dispatch_source_set_event_handler(qword_10000C2F0, &stru_1000086B0);
  v3 = qword_10000C2F0;

  dispatch_activate(v3);
}

void sub_1000020B4(id a1)
{
  v1 = sub_100002278("acme");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

const void *sub_100002128(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_10000C300;
  if (!qword_10000C300)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_10000C300 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100002228;
    v5[3] = &unk_1000086D0;
    v5[4] = v1;
    sub_100002968(v1, v5);
    Value = CFDictionaryGetValue(qword_10000C300, v1);
  }

  os_unfair_lock_unlock(&unk_10000C2F8);
  return Value;
}

void sub_100002228(uint64_t a1, const char *a2)
{
  v2 = qword_10000C300;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

const void *sub_100002278(const char *a1)
{
  pthread_mutex_lock(&stru_10000C2B0);
  pthread_mutex_unlock(&stru_10000C2B0);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100002128(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100002128(0);
  }
}

uint64_t sub_100002308(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_100005430;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_100002370, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002370(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_1000023C0(result, a2, *(a3 + 16));
    if (result)
    {
      *(a3 + 8) += result;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_1000023C0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_1000030B0(a1, a3) && sub_1000030B0(a2, a3))
  {

    return ccder_sizeof();
  }

  else
  {
    sub_100002FE0(-6, v5, v6, a3, v7, @"null input");
    return 0;
  }
}

uint64_t sub_100002450(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v14[0] = 0xAAAAAAAAAAAAAA01;
  v14[1] = a2;
  BYTE1(v14[0]) = a3;
  v14[2] = Mutable;
  v14[3] = 0;
  CFDictionaryApplyFunction(a1, sub_100002688, v14);
  if ((v14[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  CFArraySortValues(Mutable, v15, sub_1000025CC, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_100002FE0(-7, v11, v12, a2, v13, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_1000025CC(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_100002688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v6 = sub_1000023C0(a1, a2, *(a3 + 8));
    if (!v6)
    {
      *a3 = 0;
      return;
    }

    v7 = v6;
    Mutable = CFDataCreateMutable(*(a3 + 24), v6);
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10 = *(a3 + 8);
    v11 = *(a3 + 1);
    v12 = sub_100003344(a2, v10, v11, MutableBytePtr, &MutableBytePtr[v7]);
    sub_100003344(a1, v10, v11, MutableBytePtr, v12);
    v13 = ccder_encode_constructed_tl();
    if (v13)
    {
      v18.length = v13 - MutableBytePtr;
      v18.location = 0;
      CFDataDeleteBytes(Mutable, v18);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      sub_100002FE0(-7, v14, v15, v10, v16, @"ccder failed to encode");
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_1000027CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_10000C318 != -1)
  {
    dispatch_once(&qword_10000C318, &stru_1000087A8);
  }

  v2 = qword_10000C320;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100002838(id a1)
{
  qword_10000C320 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_10000C320, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t sub_1000028E8(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void sub_100002968(const __CFString *a1, uint64_t a2)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v8 = sub_100002AB0;
  v9 = &unk_100008748;
  v10 = a2;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v4 = CStringPtr;
    v5 = strlen(CStringPtr);
    (v8)(v7, v4, v5);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v13.location = 0;
    v13.length = Length;
    CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1000028E8;
    v11[3] = &unk_100008720;
    v11[6] = 0;
    v11[7] = Length;
    v11[8] = usedBufLen;
    v11[4] = v7;
    v11[5] = a1;
    sub_100004448(usedBufLen + 1, v11);
  }
}

uint64_t sub_100002AC0(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_100002B24(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v6 = 9;
      v7 = 48;
      do
      {
        if ((v6 - 2) < 2)
        {
          break;
        }

        v8 = valuePtr >> v7;
        --v6;
        v7 -= 8;
      }

      while (HIBYTE(valuePtr) == v8);
    }

    return ccder_sizeof();
  }

  else
  {
    sub_100002FE0(-4, v3, v4, a2, v5, @"Unable to get number from data");
    return 0;
  }
}

uint64_t sub_100002BF4(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    sub_100002FE0(-4, v7, v8, a2, v9, @"Unable to get number from data");
    return 0;
  }

  v10 = valuePtr;
  v11 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v16 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 9;
    v13 = 48;
    v14 = 1;
    while ((v12 - 2) >= 2)
    {
      v15 = valuePtr >> v13;
      --v12;
      v13 -= 8;
      if (v11 != v15)
      {
        v14 = v12 - 1;
        goto LABEL_11;
      }
    }

    v12 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v14 - 8)) ^ v11) & 0x80) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v16)
  {
LABEL_22:
    sub_100002FE0(-3, v16, v8, a2, v9, @"Unknown size");
    return 0;
  }

  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  do
  {
    *--a4 = v10;
    v10 >>= 8;
    --v17;
  }

  while (v17);
  valuePtr = v10;
  result = ccder_encode_tl();
  if (!result)
  {
    sub_100002FE0(-7, v19, v20, a2, v21, @"ccder failed to encode");
    return 0;
  }

  return result;
}

void sub_100002D2C(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v28 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v11 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v11, kCFErrorDescriptionKey);
  if (Value)
  {
    v13 = CFStringCompare(v10, Value, 0) == kCFCompareEqualTo;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v16 = CFStringCompare(a2, Domain, 0);
  v18 = Code == a1 && v16 == kCFCompareEqualTo;
  v19 = cf;
  if (v18 && v13)
  {
    goto LABEL_19;
  }

  v21 = CFErrorCopyUserInfo(cf);
  if (v21)
  {
    v22 = v21;
    v23 = kSOSCountKey;
    if (CFDictionaryContainsKey(v21, kSOSCountKey) == 1)
    {
      v24 = CFDictionaryGetValue(v22, v23);
      if (v24)
      {
        valuePtr = 0;
        CFNumberGetValue(v24, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v22);
          v19 = cf;
LABEL_19:
          CFRetain(v19);
          *a4 = cf;
          CFRelease(cf);
          if (!v10)
          {
            return;
          }

          v20 = v10;
          goto LABEL_44;
        }

        v28 = valuePtr + 1;
      }
    }

    CFRelease(v22);
  }

LABEL_30:
  v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v28);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v27 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v25)
  {
    CFDictionaryAddValue(v27, kSOSCountKey, v25);
  }

  if (v10)
  {
    CFDictionaryAddValue(v27, kCFErrorDescriptionKey, v10);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v27);
  if (v25)
  {
    CFRelease(v25);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    v20 = cf;
LABEL_44:
    CFRelease(v20);
  }
}

void sub_10000301C(uint64_t a1, __CFString **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  cf = 0;
  if (a2)
  {
    sub_100002D2C(-1, kCFErrorDomainOSStatus, *a2, &cf, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", &a9);
    *a2 = cf;
  }

  else
  {
    sub_100002D2C(-1, kCFErrorDomainOSStatus, 0, &cf, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", &a9);
    v10 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v10);
    }
  }
}

uint64_t sub_1000030B0(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_100002FE0(-5, a2, a3, a2, a5, @"Null CFType");
    return 0;
  }

  v7 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v7)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 2);
        v9 += sub_1000030B0(ValueAtIndex, a2);
        --v10;
      }

      while (v10 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v7)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v7)
  {
    Length = CFDataGetLength(a1);

    return _ccder_sizeof_raw_octet_string(Length);
  }

  if (CFDateGetTypeID() == v7)
  {
    CFDateGetAbsoluteTime(a1);
    __dtoa();
    __freedtoa();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v7)
  {

    return sub_100002308(a1, a2);
  }

  if (CFSetGetTypeID() == v7)
  {

    return sub_100004070(a1, a2);
  }

  if (CFStringGetTypeID() == v7)
  {

    return sub_100003EAC(a1);
  }

  if (CFNumberGetTypeID() != v7)
  {
    if (CFNullGetTypeID() == v7)
    {
      goto LABEL_14;
    }

    sub_100002FE0(-5, v14, v15, a2, v16, @"Unsupported CFType");
    return 0;
  }

  return sub_100002B24(a1, a2);
}

uint64_t sub_100003344(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_100002FE0(-5, a2, a3, a2, a5, @"Null CFType");
    return 0;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count + 1;
      v13 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12 - 2);
        v13 = sub_100003344(ValueAtIndex, a2, a3, a4, v13);
        --v12;
      }

      while (v12 > 1);
    }

LABEL_6:
    v15 = ccder_encode_constructed_tl();
    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v10)
  {
    buf[0] = CFBooleanGetValue(a1);
    ccder_encode_body();
LABEL_13:
    v15 = ccder_encode_tl();
LABEL_14:
    v19 = v15;
    if (!v15)
    {
      sub_100002FE0(-7, v16, v17, a2, v18, @"ccder failed to encode");
    }

    return v19;
  }

  if (CFDataGetTypeID() == v10)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccder_encode_body();
    goto LABEL_13;
  }

  if (CFDateGetTypeID() == v10)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2000000000;
    v75 = -86;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100002AC0;
    v79 = &unk_1000087D0;
    v80 = &v72;
    v81 = AbsoluteTime;
    v82 = &v71 + 4;
    v83 = &v71;
    v84 = &v70 + 4;
    v85 = &v70;
    v86 = &v69 + 4;
    v87 = &v69;
    if (qword_10000C308 != -1)
    {
      dispatch_once(&qword_10000C308, &stru_100008768);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000027CC;
    block[3] = &unk_1000086F8;
    block[4] = buf;
    dispatch_sync(qword_10000C310, block);
    if (*(v73 + 24) == 1)
    {
      _Block_object_dispose(&v72, 8);
    }

    else
    {
      sub_100002FE0(-1, v22, v23, a2, v24, @"Failed to encode date.");
      v32 = *(v73 + 24);
      _Block_object_dispose(&v72, 8);
      if ((v32 & 1) == 0)
      {
        v37 = sub_100002278("SecError");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v38 = *a2;
          }

          else
          {
            v38 = 0;
          }

          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
        }

        goto LABEL_6;
      }
    }

    block[0] = 0;
    v34 = v71;
    v33 = HIDWORD(v71);
    if ((v71 & 0x300000000) != 0)
    {
      v35 = 0;
    }

    else
    {
      HIDWORD(v36) = -1030792151 * HIDWORD(v71) + 85899344;
      LODWORD(v36) = HIDWORD(v36);
      if ((v36 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v40) = -1030792151 * HIDWORD(v71) + 85899344;
        LODWORD(v40) = HIDWORD(v40);
        v35 = (v40 >> 4) < 0xA3D70B;
      }

      else
      {
        v35 = 1;
      }
    }

    v41 = HIDWORD(v70);
    v42 = HIDWORD(v69);
    if (v69 > 61 || SHIDWORD(v69) > 59 || v70 > 23 || (v71 - 13) < 0xFFFFFFF4 || (HIDWORD(v70) - 32) < 0xFFFFFFE1 || v71 == 2 && (v35 | 0x1Cu) < HIDWORD(v70))
    {
      goto LABEL_54;
    }

    if (v71 == 2)
    {
      v34 = 2;
      goto LABEL_70;
    }

    if (dword_100005488[v71] - dword_100005488[(v71 - 1)] < SHIDWORD(v70))
    {
LABEL_54:
      sub_10000301C(v25, block, v26, v27, v28, v29, v30, v31, SBYTE4(v71));
      v43 = CFErrorCopyDescription(block[0]);
      v44 = sub_100002278("SecError");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v43;
        *&buf[12] = 1024;
        *&buf[14] = 1405091842;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", buf, 0x12u);
      }

      getpid();
      SimulateCrash();
      if (v43)
      {
        CFRelease(v43);
      }

      v45 = sub_100002278("SecError");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = "continuing";
        if (a3)
        {
          v46 = "setting default value";
        }

        *buf = 138412546;
        *&buf[4] = block[0];
        *&buf[12] = 2080;
        *&buf[14] = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
      }

      v47 = block[0];
      if (block[0])
      {
        block[0] = 0;
        CFRelease(v47);
      }

      if (a3)
      {
        v33 = 2001;
        v42 = 1;
        v71 = 0x7D100000001;
        HIDWORD(v70) = 1;
        HIDWORD(v69) = 1;
        v41 = 1;
        v34 = 1;
      }

      else
      {
        v34 = v71;
        v33 = HIDWORD(v71);
        v41 = HIDWORD(v70);
        v42 = HIDWORD(v69);
      }
    }

LABEL_70:
    if ((a4 + 1) <= a5)
    {
      *(a5 - 1) = 90;
      v48 = a5 - 1;
    }

    else
    {
      v48 = 0;
    }

    v67 = v70;
    v68 = v69;
    LODWORD(v72) = -1431655766;
    v76 = -1431655766;
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v49 = __dtoa();
    v50 = v72;
    v51 = *buf;
    if (AbsoluteTime < 0.0)
    {
      v52 = v49 + (v72 & ~(v72 >> 31));
      if (v52 < *buf)
      {
        v53 = (*buf - 1);
        for (*v53 = 106 - *(*buf - 1); v53 > v52; *v53 = 105 - v54)
        {
          v54 = *--v53;
        }
      }

      v50 = v72;
      v51 = *buf;
    }

    if (v51 - v49 <= v50)
    {
      goto LABEL_94;
    }

    if (v50 < 0)
    {
      v66 = v33;
      ccder_encode_body();
      v55 = -v72;
      v56 = ccder_encode_body_nocopy();
      v48 = v56;
      if (!v56)
      {
        v33 = v66;
        goto LABEL_94;
      }

      if (AbsoluteTime >= 0.0)
      {
        v57 = 48;
      }

      else
      {
        v57 = 57;
      }

      memset(v56, v57, v55);
      v33 = v66;
    }

    else
    {
      v48 = ccder_encode_body();
    }

    if ((a4 + 1) <= v48)
    {
      *--v48 = 46;
    }

    else
    {
      v48 = 0;
    }

LABEL_94:
    __freedtoa();
    if (!v48)
    {
      goto LABEL_102;
    }

    v64 = (a4 + 2);
    if ((a4 + 2) > v48)
    {
      goto LABEL_102;
    }

    *(v48 - 2) = v68 / 10 + 48;
    *(v48 - 1) = v68 % 10 + 48;
    if (v64 > v48 - 2)
    {
      goto LABEL_102;
    }

    *(v48 - 4) = v42 / 10 + 48;
    *(v48 - 3) = v42 % 10 + 48;
    if (v64 > v48 - 4)
    {
      goto LABEL_102;
    }

    *(v48 - 6) = v67 / 10 + 48;
    *(v48 - 5) = v67 % 10 + 48;
    if (v64 > v48 - 6)
    {
      goto LABEL_102;
    }

    *(v48 - 8) = v41 / 10 + 48;
    *(v48 - 7) = v41 % 10 + 48;
    if (v64 <= v48 - 8 && (*(v48 - 10) = v34 / 10 + 48, *(v48 - 9) = v34 % 10 + 48, v64 <= v48 - 10) && (v65 = (((103 * (v33 % 100)) >> 15) & 1) + ((103 * (v33 % 100)) >> 10), *(v48 - 12) = v65 + 48, *(v48 - 11) = v33 % 100 - 10 * v65 + 48, v64 <= v48 - 12))
    {
      *(v48 - 14) = v33 / 1000 + 48;
      *(v48 - 13) = v33 / 100 % 10 + 48;
    }

    else
    {
LABEL_102:
      sub_100002FE0(-7, v61, v62, a2, v63, @"ccder failed to encode");
    }

    goto LABEL_6;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_100002450(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_100004128(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_100003F2C(a1, a2, a4, a5, v39);
  }

  if (CFNumberGetTypeID() == v10)
  {

    return sub_100002BF4(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v10)
  {
    sub_100002FE0(-5, v58, v59, a2, v60, @"Unsupported CFType");
    return 0;
  }

  return sub_10000401C(a2);
}

uint64_t sub_100003EAC(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_100003F2C(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v18.location = 0;
    v18.length = Length;
    if (CFStringGetBytes(a1, v18, 0x8000100u, 0, 0, a3, a4 - a3, &usedBufLen) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      sub_100002FE0(-7, v14, v15, a2, v16, @"ccder failed to encode");
    }

    else
    {
      sub_100002FE0(-5, v10, v11, a2, v12, @"String extraction failed");
    }
  }

  else
  {
    sub_100002FE0(-6, a2, a3, a2, a5, @"null input");
  }

  return 0;
}

uint64_t sub_10000401C(CFTypeRef *a1)
{
  v5 = ccder_encode_tl();
  if (!v5)
  {
    sub_100002FE0(-7, v2, v3, a1, v4, @"ccder failed to encode");
  }

  return v5;
}

uint64_t sub_100004070(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_100005430;
  v4 = a2;
  CFSetApplyFunction(a1, sub_1000040D8, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000040D8(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = sub_1000030B0(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_100004128(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v14[0] = 0xAAAAAAAAAAAAAA01;
  v14[1] = a2;
  BYTE1(v14[0]) = a3;
  v14[2] = Mutable;
  v14[3] = 0;
  CFSetApplyFunction(a1, sub_100004360, v14);
  if ((v14[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  CFArraySortValues(Mutable, v15, sub_1000042A4, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_100002FE0(-7, v11, v12, a2, v13, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_1000042A4(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_100004360(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v7 = sub_1000030B0(a1, *(a2 + 8), a3, a4, a5);
    if (!v7)
    {
      *a2 = 0;
      return;
    }

    v8 = v7;
    Mutable = CFDataCreateMutable(*(a2 + 24), v7);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v11 = sub_100003344(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v8]);
    if (v11)
    {
      v13.length = v11 - MutableBytePtr;
      v13.location = 0;
      CFDataDeleteBytes(Mutable, v13);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

void sub_100004448(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}