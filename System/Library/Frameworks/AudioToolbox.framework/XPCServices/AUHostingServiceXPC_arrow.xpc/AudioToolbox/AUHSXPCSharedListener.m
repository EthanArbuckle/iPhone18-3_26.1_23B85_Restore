@interface AUHSXPCSharedListener
+ (id)connectToService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 error:(id *)a6;
+ (id)connectionForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5;
+ (id)endpointCache;
+ (id)endpointForReply:(id)a3 withListenerName:(id)a4 replyErrorCode:(int64_t *)a5;
+ (id)listenerEndpointForService:(id)a3 listener:(id)a4 error:(id *)a5;
+ (id)sharedServiceListener;
+ (void)_endpointForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5 queue:(id)a6 async:(BOOL)a7 completion:(id)a8;
+ (void)cacheFutureEndpointsForServiceNamed:(id)a3;
+ (void)connectToService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 queue:(id)a6 completion:(id)a7;
+ (void)endpointForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5 queue:(id)a6 async:(BOOL)a7 completion:(id)a8;
+ (void)getSDKVersionOfServiceNamed:(id)a3 reply:(id)a4;
+ (void)listenerEndpointForService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 queue:(id)a6 completion:(id)a7;
+ (void)service:(id)a3 builtForPlatform:(unsigned int)a4 againstMinimumSDK:(unsigned int)a5 reply:(id)a6;
+ (void)setEndpointCache:(id)a3;
+ (void)warmUpClassNamed:(id)a3 inServiceNamed:(id)a4;
- (BOOL)shouldAcceptNewConnection:(id)a3 forListenerNamed:(id)a4;
- (id)listenerEndpointWithName:(id)a3;
- (void)addDelegate:(id)a3;
- (void)addListener:(id)a3 withName:(id)a4;
- (void)dealloc;
- (void)didAcceptNewConnection:(id)a3;
- (void)resumeAdditionalService:(id)a3;
- (void)resumeSubService:(id)a3;
@end

@implementation AUHSXPCSharedListener

- (void)resumeSubService:(id)a3
{
  v3 = [a3 UTF8String];

  _xpc_handle_subservice(v3, sub_10000155C);
}

- (void)resumeAdditionalService:(id)a3
{
  v3 = [a3 UTF8String];

  _xpc_handle_service(v3, sub_10000155C, 0);
}

- (BOOL)shouldAcceptNewConnection:(id)a3 forListenerNamed:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_delegates;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 shouldAcceptNewConnection:v6] & 1) == 0)
        {
          NSLog(@"delegate %@ of %@ rejected connection for listener %@", v13, self, v7);
          v14 = 0;
          goto LABEL_12;
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (void)didAcceptNewConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_delegates;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 didAcceptNewConnection:{v4, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)listenerEndpointWithName:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100001E2C;
  v14 = sub_100001E3C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001E44;
  v6[3] = &unk_1000105B0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  sub_100001438(&v7->lock, v6);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)addListener:(id)a3 withName:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F8C;
  v7[3] = &unk_100010588;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  sub_100001438(&v8->lock, v7);
  [v6 resume];
}

- (void)addDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002074;
  v4[3] = &unk_100010560;
  v5 = self;
  v6 = a3;
  v3 = v6;
  sub_100001438(&v5->lock, v4);
}

- (void)dealloc
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002174;
  v4[3] = &unk_100010538;
  v4[4] = self;
  sub_100001438(&self->lock, v4);
  v3.receiver = self;
  v3.super_class = AUHSXPCSharedListener;
  [(AUHSXPCSharedListener *)&v3 dealloc];
}

+ (void)service:(id)a3 builtForPlatform:(unsigned int)a4 againstMinimumSDK:(unsigned int)a5 reply:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000223C;
  v11[3] = &unk_100010A30;
  v12 = a6;
  v13 = a4;
  v14 = a5;
  v10 = v12;
  [a1 connectToService:a3 listener:&stru_100010DE8 queue:0 completion:v11];
}

+ (void)getSDKVersionOfServiceNamed:(id)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002540;
  v7[3] = &unk_1000109E0;
  v8 = a4;
  v6 = v8;
  [a1 connectToService:a3 listener:&stru_100010DE8 queue:0 completion:v7];
}

+ (void)warmUpClassNamed:(id)a3 inServiceNamed:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002818;
  v9[3] = &unk_100010968;
  v11 = a4;
  v12 = a1;
  v10 = v6;
  v7 = v11;
  v8 = v6;
  [a1 connectToService:v7 listener:&stru_100010DE8 queue:0 completion:v9];
}

+ (id)sharedServiceListener
{
  if (qword_1000153C8 != -1)
  {
    dispatch_once(&qword_1000153C8, &stru_1000108F0);
  }

  v3 = qword_1000153D0;

  return v3;
}

+ (id)listenerEndpointForService:(id)a3 listener:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100001E2C;
  v24 = sub_100001E3C;
  v25 = 0;
  v10 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002C9C;
  v15[3] = &unk_1000108B0;
  v19 = a5;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v20;
  [a1 endpointForListenerNamed:v12 fromServiceNamed:v11 instanceIdentifier:0 queue:v10 async:0 completion:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

+ (void)connectToService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 queue:(id)a6 completion:(id)a7
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002E74;
  v15[3] = &unk_100010860;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v12 = v18;
  v13 = v17;
  v14 = v16;
  [a1 listenerEndpointForService:v14 instanceIdentifier:a4 listener:v13 queue:a6 completion:v15];
}

+ (id)connectToService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100001E2C;
  v27 = sub_100001E3C;
  v28 = 0;
  v13 = dispatch_get_global_queue(0, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000030E0;
  v18[3] = &unk_1000108B0;
  v22 = a6;
  v14 = v10;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  v21 = &v23;
  [a1 endpointForListenerNamed:v15 fromServiceNamed:v14 instanceIdentifier:v11 queue:v13 async:0 completion:v18];
  v16 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v16;
}

+ (void)listenerEndpointForService:(id)a3 instanceIdentifier:(id)a4 listener:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    v15 = dispatch_get_global_queue(0, 0);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000332C;
  v22[3] = &unk_100010888;
  v23 = v14;
  v24 = v12;
  v25 = v13;
  v26 = v15;
  v27 = v16;
  v28 = a1;
  v17 = v16;
  v18 = v15;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  dispatch_async(v18, v22);
}

+ (id)connectionForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v12 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100001E2C;
  v37 = sub_100001E3C;
  v38 = 0;
  block = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10000371C;
  v25 = &unk_100010838;
  v32 = a1;
  v13 = v8;
  v26 = v13;
  v14 = v9;
  v27 = v14;
  v15 = v10;
  v28 = v15;
  v16 = v11;
  v29 = v16;
  v31 = &v33;
  v17 = v12;
  v30 = v17;
  dispatch_async(v16, &block);
  v18 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v17, v18))
  {
    NSLog(@"%s timed out awaiting endpoint for %@ in %@. Did the service fail to bootstrap itself? Is the system absurdly loaded?", "+[AUHSXPCSharedListener connectionForListenerNamed:fromServiceNamed:instanceIdentifier:]", v13, v14, block, v23, v24, v25, v26, v27, v28, v29);
    [NSException raise:NSInternalInconsistencyException format:@"%@ unable to create endpoint for listener named %@", a1, v13];
  }

  v19 = [NSXPCConnection alloc];
  v20 = [v19 initWithListenerEndpoint:v34[5]];

  _Block_object_dispose(&v33, 8);

  return v20;
}

+ (void)endpointForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5 queue:(id)a6 async:(BOOL)a7 completion:(id)a8
{
  v25 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = os_log_create("com.apple.ViewBridge.AUHSXPCSharedListener", "AUHSXPCSharedListener");
  v19 = os_signpost_id_generate(v18);

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100003C20;
  v26[3] = &unk_1000107E8;
  v28 = v19;
  v20 = v17;
  v27 = v20;
  v21 = objc_retainBlock(v26);
  v22 = os_log_create("com.apple.ViewBridge.AUHSXPCSharedListener", "AUHSXPCSharedListener");
  if (os_signpost_enabled(v22))
  {
    v23 = v22;
    v24 = v23;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 138412802;
      v30 = v14;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v19, "endpoint-lookup", "%@ %@ %@", buf, 0x20u);
    }
  }

  [a1 _endpointForListenerNamed:v13 fromServiceNamed:v14 instanceIdentifier:v15 queue:v16 async:v25 completion:v21];
}

+ (void)_endpointForListenerNamed:(id)a3 fromServiceNamed:(id)a4 instanceIdentifier:(id)a5 queue:(id)a6 async:(BOOL)a7 completion:(id)a8
{
  v45 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  targetq = a6;
  v49 = a8;
  v15 = v12;
  v16 = v13;
  v17 = v14;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100001E2C;
  v70 = sub_100001E3C;
  v71 = 0;
  sub_10000433C(v15, v16, v17);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100004448;
  v63[3] = &unk_1000106B8;
  v18 = v65 = &v66;
  v64 = v18;
  sub_100004498(v63);
  v19 = v67[5];

  _Block_object_dispose(&v66, 8);
  if (!v19)
  {
    v47 = objc_opt_new();
    v20 = v16;
    v21 = [v16 UTF8String];
    v22 = geteuid();
    if (v22 != 92 && v22 != 203)
    {
      v29 = xpc_connection_create(v21, targetq);
      v30 = *(v47 + 24);
      *(v47 + 24) = v29;

      goto LABEL_10;
    }

    v23 = SecTaskCreateFromSelf(kCFAllocatorDefault);
    CFAutorelease(v23);
    v24 = SecTaskCopyValueForEntitlement(v23, @"com.apple.private.xpc.launchd.per-user-lookup", 0);
    if (v24)
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [v24 BOOLValue];

        if (v25)
        {
          NSLog(@"%@ working around rdar://problem/35553241", a1);
          mach_service = xpc_connection_create_mach_service(v21, targetq, 0);
          v27 = *(v47 + 24);
          *(v47 + 24) = mach_service;

          v28 = *(v47 + 24);
          xpc_connection_set_target_uid();
LABEL_10:
          if (v17)
          {
            v66 = 0;
            v67 = 0;
            [v17 getUUIDBytes:&v66];
            v31 = *(v47 + 24);
            xpc_connection_set_oneshot_instance();
          }

          v32 = v15;
          v33 = xpc_string_create([v15 UTF8String]);
          v34 = *(v47 + 32);
          *(v47 + 32) = v33;

          v35 = xpc_dictionary_create(&off_100015118, (v47 + 32), 1uLL);
          v36 = *(v47 + 40);
          *(v47 + 40) = v35;

          v37 = *(v47 + 24);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100004544;
          handler[3] = &unk_100010730;
          v38 = v47;
          v58 = v38;
          v39 = v15;
          v59 = v39;
          v40 = v16;
          v60 = v40;
          xpc_connection_set_event_handler(v37, handler);
          xpc_connection_resume(*(v47 + 24));
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100004624;
          v50[3] = &unk_1000107C0;
          v51 = v38;
          v56 = a1;
          v52 = v39;
          v53 = v40;
          v54 = v17;
          v55 = v49;
          v41 = objc_retainBlock(v50);
          v42 = *(v47 + 24);
          v43 = *(v47 + 40);
          if (v45)
          {
            xpc_connection_send_message_with_reply(v42, v43, targetq, v41);
          }

          else
          {
            v44 = xpc_connection_send_message_with_reply_sync(v42, v43);
            (v41[2])(v41, v44);
          }

          goto LABEL_21;
        }

LABEL_18:
        NSLog(@"%@ should but cannot work around rdar://problem/35553241", a1);
        if (v45)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000452C;
          block[3] = &unk_1000106E0;
          v62 = v49;
          dispatch_async(targetq, block);
        }

        else
        {
          (*(v49 + 2))(v49, 0, 0);
        }

LABEL_21:

        goto LABEL_22;
      }

      NSLog(@"%s encountered insufficiently BOOLish value of %@", "canWorkAroundRadar35553241", @"com.apple.private.xpc.launchd.per-user-lookup");
    }

    goto LABEL_18;
  }

  (*(v49 + 2))(v49, v19, 0);
LABEL_22:
}

+ (void)setEndpointCache:(id)a3
{
  v3 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100001E2C;
  v9[4] = sub_100001E3C;
  v10 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004DF0;
  v8[3] = &unk_100010668;
  v8[4] = v9;
  sub_1000049FC(v8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004E38;
  v5[3] = &unk_1000106B8;
  v7 = v9;
  v4 = v3;
  v6 = v4;
  sub_100004498(v5);

  _Block_object_dispose(v9, 8);
}

+ (id)endpointCache
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100001E2C;
  v9 = sub_100001E3C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005094;
  v4[3] = &unk_100010640;
  v4[4] = &v5;
  sub_100004498(v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (void)cacheFutureEndpointsForServiceNamed:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000051AC;
  v4[3] = &unk_1000105D8;
  v5 = [a3 copy];
  v3 = v5;
  sub_1000049FC(v4);
}

+ (id)endpointForReply:(id)a3 withListenerName:(id)a4 replyErrorCode:(int64_t *)a5
{
  v7 = a3;
  v8 = a4;
  type = xpc_get_type(v7);
  if (type == &_xpc_type_error)
  {
    string_ptr = xpc_string_get_string_ptr(v8);
    string = xpc_dictionary_get_string(v7, _xpc_error_key_description);
    NSLog(@"%s: an error occurred while attempting to obtain endpoint for listener '%s': %s", "+[AUHSXPCSharedListener endpointForReply:withListenerName:replyErrorCode:]", string_ptr, string);
  }

  else if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v7, "error-code");
    *a5 = int64;
    if (!int64)
    {
      v15 = xpc_dictionary_get_value(v7, "listener-endpoint");
      if (v15)
      {
        v13 = objc_opt_new();
        [v13 _setEndpoint:v15];
      }

      else
      {
        NSLog(@"%s: raw endpoint absent; faking error", "+[AUHSXPCSharedListener endpointForReply:withListenerName:replyErrorCode:]");
        v13 = 0;
        *a5 = 3;
      }

      goto LABEL_7;
    }
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"reply has unknown message type"];
  }

  v13 = 0;
LABEL_7:

  return v13;
}

@end