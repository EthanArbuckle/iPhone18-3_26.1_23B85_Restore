id sub_100001074(uint64_t a1, void *a2)
{
  v7 = kCFErrorDebugDescriptionKey;
  v8 = a2;
  v3 = a2;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:@"AUHSXPCSharedListenerErrorDomain" code:a1 userInfo:v4];

  return v5;
}

id sub_100001340(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  if ([v7 length])
  {
    v10 = [NSString stringWithFormat:@"'%@'", v7];
  }

  else
  {
    v10 = @"for whole-service management";
  }

  v11 = [NSString stringWithFormat:@"%@ for listener %@ BEFORE ASSIGNING A BUG TO ANYONE ELSE, search backward for earlier logging regarding service/extension '%@'", v9, v10, v8];;

  v12 = sub_100001074(a1, v11);

  return v12;
}

void sub_100001438(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2]();
  os_unfair_lock_unlock(a1);
}

void sub_10000149C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

void sub_10000155C(void *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000164C;
  handler[3] = &unk_100010A58;
  v3 = a1;
  v1 = v3;
  xpc_connection_set_event_handler(v1, handler);
  xpc_connection_resume(v1);
}

void sub_10000164C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_error)
  {
    if (v5 != &_xpc_error_connection_invalid)
    {
      string = xpc_dictionary_get_string(v5, _xpc_error_key_description);
      NSLog(@"%s %s", "xpc_event_handler_no_catch", string);
    }
  }

  else if (type == &_xpc_type_dictionary)
  {
    v8 = xpc_dictionary_get_value(v5, off_100015118);
    v9 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v8)];
    +[AUHSXPCSharedListener sharedServiceListener];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000186C;
    v13 = v12[3] = &unk_100010708;
    v14 = v9;
    v15 = v4;
    v16 = v5;
    v10 = v9;
    v11 = v13;
    [v11 whileHoldingLock:v12];
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"connection received unknown message type"];
  }
}

void sub_10000186C(uint64_t a1)
{
  v12 = [*(a1 + 32) listeners];
  v2 = [v12 objectForKey:*(a1 + 40)];
  if (v2)
  {
    if ([*(a1 + 32) shouldAcceptNewConnection:*(a1 + 48) forListenerNamed:*(a1 + 40)])
    {
      [*(a1 + 32) didAcceptNewConnection:*(a1 + 48)];
      v3 = 0;
      v4 = 1;
    }

    else
    {

      v2 = 0;
      v4 = 0;
      v3 = 5;
    }
  }

  else
  {
    NSLog(@"listener named %@ not found", *(a1 + 40));
    v4 = 0;
    v3 = 3;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  v6 = *(a1 + 48);
  v7 = v2;
  v8 = reply;
  v9 = v8;
  if ((v4 & 1) == 0)
  {
    xpc_dictionary_set_int64(v8, "error-code", v3);
  }

  if (v7)
  {
    v10 = [v7 endpoint];
    v11 = [v10 _endpoint];
    xpc_dictionary_set_value(v9, "listener-endpoint", v11);
  }

  xpc_connection_send_message(v6, v9);
}

void sub_100001E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001E2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001E44(uint64_t a1)
{
  v2 = [*(a1 + 32) listeners];
  v6 = [v2 objectForKey:*(a1 + 40)];

  v3 = [v6 endpoint];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100001F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) listeners];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

id sub_100002074(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_10000223C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHSXPCSharedListenerManager];
    [v5 setRemoteObjectInterface:v6];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000023C8;
    v13[3] = &unk_100010990;
    v14 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v13];
    [v5 resume];
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000023DC;
    v10[3] = &unk_100010A08;
    v12 = *(a1 + 32);
    v11 = v5;
    [v7 builtForPlatform:v8 againstMinimumSDK:v9 reply:v10];
  }
}

void sub_1000023DC(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void sub_100002540(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHSXPCSharedListenerManager];
    [v5 setRemoteObjectInterface:v6];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000026B8;
    v11[3] = &unk_100010990;
    v12 = *(a1 + 32);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
    [v5 resume];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000026D0;
    v8[3] = &unk_1000109B8;
    v10 = *(a1 + 32);
    v9 = v5;
    [v7 getProgramSDKVersion:v8];
  }
}

void sub_100002818(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [a1[6] _failedToWarmUpClassNamed:a1[4] inServiceNamed:a1[5] dueTo:a3];
  }

  else
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHSXPCSharedListenerManager];
    [v5 setRemoteObjectInterface:v6];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002998;
    v11[3] = &unk_100010918;
    v14 = a1[6];
    v12 = a1[4];
    v13 = a1[5];
    v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
    [v5 resume];
    v8 = a1[4];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000029AC;
    v9[3] = &unk_100010940;
    v10 = v5;
    [v7 warmUpClassNamed:v8 withReply:v9];
  }
}

void sub_100002A38(id a1)
{
  v1 = objc_alloc_init(AUHSXPCSharedListener);
  v2 = qword_1000153D0;
  qword_1000153D0 = v1;

  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  [qword_1000153D0 setListeners:v3];

  v6 = +[NSXPCListener anonymousListener];
  v4 = objc_alloc_init(AUHSXPCSharedListenerManagerDelegate);
  v5 = qword_1000153D8;
  qword_1000153D8 = v4;

  [qword_1000153D8 setListener:v6];
  [v6 setDelegate:qword_1000153D8];
  [qword_1000153D0 addListener:v6 withName:&stru_100010DE8];
}

void sub_100002C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002C9C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 56))
    {
      v8 = v6;
      **(a1 + 56) = v7;
    }
  }

  else if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v9 = *(a1 + 56);
    if (v9)
    {
      *v9 = 0;
    }
  }

  else if (*(a1 + 56))
  {
    **(a1 + 56) = sub_100001340(3, @"could not obtain endpoint", *(a1 + 32), *(a1 + 40));
  }
}

void sub_100002E74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = a2;
    v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:v8];

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_100001340(4, @"could not create connection given endpoint", *(a1 + 32), *(a1 + 40));
    }
  }

  v9 = v6;
  (*(*(a1 + 48) + 16))();
}

void sub_1000030C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000030E0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (*(a1 + 56))
    {
      v7 = v5;
      **(a1 + 56) = v6;
    }
  }

  else if (v12)
  {
    v8 = [[NSXPCConnection alloc] initWithListenerEndpoint:v12];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 56);
    if (v11)
    {
      *v11 = 0;
    }
  }

  else if (*(a1 + 56))
  {
    **(a1 + 56) = sub_100001340(3, @"could not obtain endpoint", *(a1 + 32), *(a1 + 40));
  }
}

void sub_10000332C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000340C;
  v7[3] = &unk_100010860;
  v8 = v3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  [v2 endpointForListenerNamed:v4 fromServiceNamed:v8 instanceIdentifier:v5 queue:v6 completion:v7];
}

void sub_10000340C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!(v6 | v5))
  {
    v5 = sub_100001340(3, @"could not obtain endpoint", *(a1 + 32), *(a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000036E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  objc_exception_rethrow();
}

void sub_10000371C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003828;
  v8[3] = &unk_100010810;
  v7 = *(a1 + 64);
  v6 = v7;
  v9 = v7;
  [v1 endpointForListenerNamed:v2 fromServiceNamed:v3 instanceIdentifier:v4 queue:v5 completion:v8];
}

void sub_100003828(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(@"%s failed to obtain endpoint due to %@", "+[AUHSXPCSharedListener connectionForListenerNamed:fromServiceNamed:instanceIdentifier:]_block_invoke_2", v6);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100003C20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.ViewBridge.AUHSXPCSharedListener", "AUHSXPCSharedListener");
  if (os_signpost_enabled(v7))
  {
    v8 = v7;
    v9 = v8;
    v10 = *(a1 + 40);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = @"success";
      if (v5)
      {
        v11 = v5;
      }

      v12 = 138412290;
      v13 = v11;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "endpoint-lookup", "%@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000042F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id sub_10000433C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11[0] = @"listenerName";
  v11[1] = @"serviceName";
  v12[0] = v5;
  v12[1] = v6;
  v11[2] = @"instanceIdentifier";
  v8 = v7;
  if (!v7)
  {
    v8 = +[NSNull null];
  }

  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!v7)
  {
  }

  return v9;
}

uint64_t sub_100004448(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100004498(void *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004C38;
  v2[3] = &unk_1000106E0;
  v3 = a1;
  v1 = v3;
  sub_100001438(&unk_1000153F0, v2);
}

void sub_100004544(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004B1C;
  v6[3] = &unk_100010708;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = v3;
  [v8 whileHoldingLock:v6];
}

void sub_100004624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000474C;
  v13[3] = &unk_100010798;
  v5 = v4;
  v18 = *(a1 + 72);
  v14 = v5;
  v15 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v16 = v11;
  v17 = v10;
  v12 = v3;
  [v5 whileHoldingLock:v13];
}

void sub_10000474C(uint64_t a1)
{
  xpc_connection_set_event_handler(*(*(a1 + 32) + 24), &stru_100010770);
  v15 = 0;
  v2 = [*(a1 + 80) endpointForReply:*(a1 + 40) withListenerName:*(*(a1 + 32) + 32) replyErrorCode:&v15];
  if (v15)
  {
    [*(a1 + 32) addError:v15 description:"returned by service" forListenerNamed:*(a1 + 48) fromServiceNamed:*(a1 + 56)];
  }

  if ([*(*(a1 + 32) + 16) count] >= 2)
  {
    v3 = *(a1 + 48);
    NSLog(@"while attempting to connect to %@, multiple errors occurred: %@", v3, *(*(a1 + 32) + 16));
  }

  if (![*(*(a1 + 32) + 16) count])
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);
    v7 = v4;
    v8 = v5;
    v9 = v2;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000049C4;
    v19[3] = &unk_100010A80;
    v21 = &v22;
    v10 = v7;
    v20 = v10;
    sub_1000049FC(v19);
    if (*(v23 + 24))
    {
      v11 = sub_10000433C(v6, v10, v8);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100004A90;
      v16[3] = &unk_100010AA8;
      v12 = v11;
      v17 = v12;
      v18 = v9;
      sub_100004498(v16);
    }

    _Block_object_dispose(&v22, 8);
  }

  v13 = *(a1 + 72);
  v14 = [*(*(a1 + 32) + 16) firstObject];
  (*(v13 + 16))(v13, v2, v14);
}

id sub_1000049C4(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000049FC(void *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100004AAC;
  v2[3] = &unk_1000106E0;
  v3 = a1;
  v1 = v3;
  sub_100001438(&unk_1000153E0, v2);
}

void *sub_100004A90(void *result, void *a2)
{
  if ((byte_1000153C0 & 1) == 0)
  {
    return [a2 setObject:result[5] forKeyedSubscript:result[4]];
  }

  return result;
}

uint64_t sub_100004AAC(uint64_t a1)
{
  if (!qword_1000153E8)
  {
    v2 = [NSMutableSet setWithCapacity:10];
    v3 = qword_1000153E8;
    qword_1000153E8 = v2;
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_100004B1C(uint64_t a1)
{
  type = xpc_get_type(*(a1 + 32));
  v3 = xpc_copy_description(*(a1 + 32));
  v4 = v3;
  if (type == &_xpc_type_error)
  {
    [*(a1 + 40) addError:2 description:v3 forListenerNamed:*(a1 + 48) fromServiceNamed:*(a1 + 56)];
  }

  else
  {
    NSLog(@"while attempting to connect to %@, %s received %s", *(a1 + 48), "+[AUHSXPCSharedListener _endpointForListenerNamed:fromServiceNamed:instanceIdentifier:queue:async:completion:]_block_invoke_3", v3);
  }

  free(v4);
}

uint64_t sub_100004C38(uint64_t a1)
{
  if (!qword_1000153F8)
  {
    v2 = [NSMutableDictionary dictionaryWithCapacity:10];
    v3 = qword_1000153F8;
    qword_1000153F8 = v2;
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t sub_100004DF0(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100004E38(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004EF4;
    v5[3] = &unk_100010690;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_100004EF4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 objectForKeyedSubscript:@"serviceName"];
  if ([*(*(*(a1 + 40) + 8) + 40) containsObject:v6])
  {
    [*(a1 + 32) setObject:v5 forKey:v7];
  }
}

void sub_10000507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005094(uint64_t a1, uint64_t a2)
{
  v3 = [NSMutableDictionary dictionaryWithDictionary:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100005420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = AUHostingService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_1000056D8(uint64_t a1, char a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005788;
  v6[3] = &unk_100010AD0;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = v3;
  v9 = a2;
  v4 = objc_retainBlock(v6);

  return v4;
}

void sub_100005788(uint64_t a1)
{
  v2 = (a1 + 32);
  CAFormatter::CAFormatter(&v13, (*(a1 + 32) + 24));
  v3 = *v2;
  v4 = (*v2 + 48);
  if (*(v3 + 71) < 0)
  {
    v4 = *v4;
  }

  if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
  {
    sub_100005B6C("com.apple.coreaudio", "AUHostingService");
    __cxa_guard_release(&qword_100015450);
  }

  v5 = qword_100015440;
  if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v15 = "AUHostingService.mm";
    v16 = 1024;
    v17 = 186;
    v18 = 2080;
    v19 = v13;
    v20 = 2080;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Releasing Audio Unit %s and disconnecting from Hosting Service %s", buf, 0x26u);
  }

  v6 = +[AUHostingServiceInstanceMap sharedInstance];
  v7 = [*(*(a1 + 32) + 8) audioUnitUUID];
  [v6 unregisterInstance:v7];

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained invalidate];

  v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v11 setExportedObject:0];

  if (*(a1 + 48) == 1)
  {
    atomic_load(&unk_100015400);
    (*(*(a1 + 40) + 16))();
  }

  if (*(a1 + 49) == 1)
  {
    if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
    {
      sub_100005B6C("com.apple.coreaudio", "AUHostingService");
      __cxa_guard_release(&qword_100015450);
    }

    v12 = qword_100015440;
    if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "AUHostingService.mm";
      v16 = 1024;
      v17 = 202;
      v18 = 2080;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%25s:%-5d Shutting down Audio Unit Hosting Service %s", buf, 0x1Cu);
    }

    if ((atomic_load_explicit(&qword_100015430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015430))
    {
      dword_100015408 = 0;
      qword_100015410 = off_100010B28;
      qword_100015428 = &qword_100015410;
      __cxa_guard_release(&qword_100015430);
    }

    os_unfair_lock_lock(&dword_100015408);
    if (!qword_100015428)
    {
      sub_100005BB0();
    }

    (*(*qword_100015428 + 48))(qword_100015428);
    os_unfair_lock_unlock(&dword_100015408);
  }

  if (v13)
  {
    free(v13);
  }
}

void sub_100005B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(&dword_100015408);
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100005B6C(const char *a1, const char *a2)
{
  qword_100015440 = 0;
  qword_100015448 = 0;
  qword_100015440 = os_log_create(a1, a2);

  return _objc_release_x1();
}

void sub_100005BB0()
{
  exception = __cxa_allocate_exception(8uLL);
}

std::string *sub_1000066D8(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100006720(a1, __s, v4);
}

std::string *sub_100006720(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void sub_100006A2C()
{
  if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
  {
    qword_100015448 = 0;
    qword_100015440 = os_log_create("com.apple.coreaudio", "AUHostingService");

    __cxa_guard_release(&qword_100015450);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  if ((atomic_load_explicit(&qword_100015450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100015450))
  {
    sub_100005B6C("com.apple.coreaudio", "AUHostingService");
    __cxa_guard_release(&qword_100015450);
  }

  v1 = qword_100015440;
  if (os_log_type_enabled(qword_100015440, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "AUHostingServiceMain.mm";
    v9 = 1024;
    v10 = 112;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%25s:%-5d entering main()", &v7, 0x12u);
  }

  v2 = +[AUHostingServiceInstanceMap sharedInstance];
  v3 = +[NSXPCListener anonymousListener];
  v4 = objc_opt_new();
  [v3 setDelegate:v4];
  objc_storeStrong(&qword_100015438, v3);
  atexit(sub_100006E30);
  v5 = +[AUHSXPCSharedListener sharedServiceListener];
  [v5 addListener:v3 withName:@"AUHostingServiceMain"];
  [v5 resume];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_100006E30()
{
  [qword_100015438 invalidate];
  v0 = qword_100015438;
  qword_100015438 = 0;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}