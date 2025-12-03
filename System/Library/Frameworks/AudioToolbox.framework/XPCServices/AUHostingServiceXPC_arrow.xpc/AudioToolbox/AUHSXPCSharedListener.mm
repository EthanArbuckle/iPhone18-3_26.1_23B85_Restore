@interface AUHSXPCSharedListener
+ (id)connectToService:(id)service instanceIdentifier:(id)identifier listener:(id)listener error:(id *)error;
+ (id)connectionForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier;
+ (id)endpointCache;
+ (id)endpointForReply:(id)reply withListenerName:(id)name replyErrorCode:(int64_t *)code;
+ (id)listenerEndpointForService:(id)service listener:(id)listener error:(id *)error;
+ (id)sharedServiceListener;
+ (void)_endpointForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier queue:(id)queue async:(BOOL)async completion:(id)completion;
+ (void)cacheFutureEndpointsForServiceNamed:(id)named;
+ (void)connectToService:(id)service instanceIdentifier:(id)identifier listener:(id)listener queue:(id)queue completion:(id)completion;
+ (void)endpointForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier queue:(id)queue async:(BOOL)async completion:(id)completion;
+ (void)getSDKVersionOfServiceNamed:(id)named reply:(id)reply;
+ (void)listenerEndpointForService:(id)service instanceIdentifier:(id)identifier listener:(id)listener queue:(id)queue completion:(id)completion;
+ (void)service:(id)service builtForPlatform:(unsigned int)platform againstMinimumSDK:(unsigned int)k reply:(id)reply;
+ (void)setEndpointCache:(id)cache;
+ (void)warmUpClassNamed:(id)named inServiceNamed:(id)serviceNamed;
- (BOOL)shouldAcceptNewConnection:(id)connection forListenerNamed:(id)named;
- (id)listenerEndpointWithName:(id)name;
- (void)addDelegate:(id)delegate;
- (void)addListener:(id)listener withName:(id)name;
- (void)dealloc;
- (void)didAcceptNewConnection:(id)connection;
- (void)resumeAdditionalService:(id)service;
- (void)resumeSubService:(id)service;
@end

@implementation AUHSXPCSharedListener

- (void)resumeSubService:(id)service
{
  uTF8String = [service UTF8String];

  _xpc_handle_subservice(uTF8String, sub_10000155C);
}

- (void)resumeAdditionalService:(id)service
{
  uTF8String = [service UTF8String];

  _xpc_handle_service(uTF8String, sub_10000155C, 0);
}

- (BOOL)shouldAcceptNewConnection:(id)connection forListenerNamed:(id)named
{
  connectionCopy = connection;
  namedCopy = named;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 shouldAcceptNewConnection:connectionCopy] & 1) == 0)
        {
          NSLog(@"delegate %@ of %@ rejected connection for listener %@", v13, self, namedCopy);
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

- (void)didAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
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
          [v10 didAcceptNewConnection:{connectionCopy, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)listenerEndpointWithName:(id)name
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
  selfCopy = self;
  nameCopy = name;
  v8 = nameCopy;
  v9 = &v10;
  sub_100001438(&selfCopy->lock, v6);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)addListener:(id)listener withName:(id)name
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001F8C;
  v7[3] = &unk_100010588;
  selfCopy = self;
  listenerCopy = listener;
  nameCopy = name;
  v5 = nameCopy;
  v6 = listenerCopy;
  sub_100001438(&selfCopy->lock, v7);
  [v6 resume];
}

- (void)addDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002074;
  v4[3] = &unk_100010560;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  sub_100001438(&selfCopy->lock, v4);
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

+ (void)service:(id)service builtForPlatform:(unsigned int)platform againstMinimumSDK:(unsigned int)k reply:(id)reply
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000223C;
  v11[3] = &unk_100010A30;
  replyCopy = reply;
  platformCopy = platform;
  kCopy = k;
  v10 = replyCopy;
  [self connectToService:service listener:&stru_100010DE8 queue:0 completion:v11];
}

+ (void)getSDKVersionOfServiceNamed:(id)named reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002540;
  v7[3] = &unk_1000109E0;
  replyCopy = reply;
  v6 = replyCopy;
  [self connectToService:named listener:&stru_100010DE8 queue:0 completion:v7];
}

+ (void)warmUpClassNamed:(id)named inServiceNamed:(id)serviceNamed
{
  namedCopy = named;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002818;
  v9[3] = &unk_100010968;
  serviceNamedCopy = serviceNamed;
  selfCopy = self;
  v10 = namedCopy;
  v7 = serviceNamedCopy;
  v8 = namedCopy;
  [self connectToService:v7 listener:&stru_100010DE8 queue:0 completion:v9];
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

+ (id)listenerEndpointForService:(id)service listener:(id)listener error:(id *)error
{
  serviceCopy = service;
  listenerCopy = listener;
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
  errorCopy = error;
  v11 = serviceCopy;
  v16 = v11;
  v12 = listenerCopy;
  v17 = v12;
  v18 = &v20;
  [self endpointForListenerNamed:v12 fromServiceNamed:v11 instanceIdentifier:0 queue:v10 async:0 completion:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

+ (void)connectToService:(id)service instanceIdentifier:(id)identifier listener:(id)listener queue:(id)queue completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002E74;
  v15[3] = &unk_100010860;
  serviceCopy = service;
  listenerCopy = listener;
  completionCopy = completion;
  v12 = completionCopy;
  v13 = listenerCopy;
  v14 = serviceCopy;
  [self listenerEndpointForService:v14 instanceIdentifier:identifier listener:v13 queue:queue completion:v15];
}

+ (id)connectToService:(id)service instanceIdentifier:(id)identifier listener:(id)listener error:(id *)error
{
  serviceCopy = service;
  identifierCopy = identifier;
  listenerCopy = listener;
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
  errorCopy = error;
  v14 = serviceCopy;
  v19 = v14;
  v15 = listenerCopy;
  v20 = v15;
  v21 = &v23;
  [self endpointForListenerNamed:v15 fromServiceNamed:v14 instanceIdentifier:identifierCopy queue:v13 async:0 completion:v18];
  v16 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v16;
}

+ (void)listenerEndpointForService:(id)service instanceIdentifier:(id)identifier listener:(id)listener queue:(id)queue completion:(id)completion
{
  serviceCopy = service;
  identifierCopy = identifier;
  listenerCopy = listener;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = dispatch_get_global_queue(0, 0);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000332C;
  v22[3] = &unk_100010888;
  v23 = listenerCopy;
  v24 = serviceCopy;
  v25 = identifierCopy;
  v26 = queueCopy;
  v27 = completionCopy;
  selfCopy = self;
  v17 = completionCopy;
  v18 = queueCopy;
  v19 = identifierCopy;
  v20 = serviceCopy;
  v21 = listenerCopy;
  dispatch_async(v18, v22);
}

+ (id)connectionForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier
{
  namedCopy = named;
  serviceNamedCopy = serviceNamed;
  identifierCopy = identifier;
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
  selfCopy = self;
  v13 = namedCopy;
  v26 = v13;
  v14 = serviceNamedCopy;
  v27 = v14;
  v15 = identifierCopy;
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
    [NSException raise:NSInternalInconsistencyException format:@"%@ unable to create endpoint for listener named %@", self, v13];
  }

  v19 = [NSXPCConnection alloc];
  v20 = [v19 initWithListenerEndpoint:v34[5]];

  _Block_object_dispose(&v33, 8);

  return v20;
}

+ (void)endpointForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier queue:(id)queue async:(BOOL)async completion:(id)completion
{
  asyncCopy = async;
  namedCopy = named;
  serviceNamedCopy = serviceNamed;
  identifierCopy = identifier;
  queueCopy = queue;
  completionCopy = completion;
  v18 = os_log_create("com.apple.ViewBridge.AUHSXPCSharedListener", "AUHSXPCSharedListener");
  v19 = os_signpost_id_generate(v18);

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100003C20;
  v26[3] = &unk_1000107E8;
  v28 = v19;
  v20 = completionCopy;
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
      v30 = serviceNamedCopy;
      v31 = 2112;
      v32 = namedCopy;
      v33 = 2112;
      v34 = identifierCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v19, "endpoint-lookup", "%@ %@ %@", buf, 0x20u);
    }
  }

  [self _endpointForListenerNamed:namedCopy fromServiceNamed:serviceNamedCopy instanceIdentifier:identifierCopy queue:queueCopy async:asyncCopy completion:v21];
}

+ (void)_endpointForListenerNamed:(id)named fromServiceNamed:(id)serviceNamed instanceIdentifier:(id)identifier queue:(id)queue async:(BOOL)async completion:(id)completion
{
  asyncCopy = async;
  namedCopy = named;
  serviceNamedCopy = serviceNamed;
  identifierCopy = identifier;
  targetq = queue;
  completionCopy = completion;
  v15 = namedCopy;
  v16 = serviceNamedCopy;
  v17 = identifierCopy;
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
    uTF8String = [v16 UTF8String];
    v22 = geteuid();
    if (v22 != 92 && v22 != 203)
    {
      v29 = xpc_connection_create(uTF8String, targetq);
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
        bOOLValue = [v24 BOOLValue];

        if (bOOLValue)
        {
          NSLog(@"%@ working around rdar://problem/35553241", self);
          mach_service = xpc_connection_create_mach_service(uTF8String, targetq, 0);
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
          selfCopy = self;
          v52 = v39;
          v53 = v40;
          v54 = v17;
          v55 = completionCopy;
          v41 = objc_retainBlock(v50);
          v42 = *(v47 + 24);
          v43 = *(v47 + 40);
          if (asyncCopy)
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
        NSLog(@"%@ should but cannot work around rdar://problem/35553241", self);
        if (asyncCopy)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000452C;
          block[3] = &unk_1000106E0;
          v62 = completionCopy;
          dispatch_async(targetq, block);
        }

        else
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
        }

LABEL_21:

        goto LABEL_22;
      }

      NSLog(@"%s encountered insufficiently BOOLish value of %@", "canWorkAroundRadar35553241", @"com.apple.private.xpc.launchd.per-user-lookup");
    }

    goto LABEL_18;
  }

  (*(completionCopy + 2))(completionCopy, v19, 0);
LABEL_22:
}

+ (void)setEndpointCache:(id)cache
{
  cacheCopy = cache;
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
  v4 = cacheCopy;
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

+ (void)cacheFutureEndpointsForServiceNamed:(id)named
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000051AC;
  v4[3] = &unk_1000105D8;
  v5 = [named copy];
  v3 = v5;
  sub_1000049FC(v4);
}

+ (id)endpointForReply:(id)reply withListenerName:(id)name replyErrorCode:(int64_t *)code
{
  replyCopy = reply;
  nameCopy = name;
  type = xpc_get_type(replyCopy);
  if (type == &_xpc_type_error)
  {
    string_ptr = xpc_string_get_string_ptr(nameCopy);
    string = xpc_dictionary_get_string(replyCopy, _xpc_error_key_description);
    NSLog(@"%s: an error occurred while attempting to obtain endpoint for listener '%s': %s", "+[AUHSXPCSharedListener endpointForReply:withListenerName:replyErrorCode:]", string_ptr, string);
  }

  else if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(replyCopy, "error-code");
    *code = int64;
    if (!int64)
    {
      v15 = xpc_dictionary_get_value(replyCopy, "listener-endpoint");
      if (v15)
      {
        v13 = objc_opt_new();
        [v13 _setEndpoint:v15];
      }

      else
      {
        NSLog(@"%s: raw endpoint absent; faking error", "+[AUHSXPCSharedListener endpointForReply:withListenerName:replyErrorCode:]");
        v13 = 0;
        *code = 3;
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