@interface CAMOverlayClientConnection
- (CAMOverlayClientConnection)initWithBoardServiceConnection:(id)a3 queue:(id)a4;
- (NSString)description;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)_handleConnectionDidActivate:(id)a3;
- (void)_handleConnectionDidInterrupt:(id)a3;
- (void)_handleConnectionDidInvalidate:(id)a3;
- (void)_updateStatusWithReason:(unint64_t)a3;
- (void)addObserver:(id)a3;
- (void)applyControlUpdate:(id)a3;
- (void)clientDidConfigureControls:(id)a3 initialUpdates:(id)a4 reply:(id)a5;
- (void)clientDidUpdateControl:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)sendActiveControlIdentifier:(id)a3;
- (void)setFocusLockGestureEnabled:(id)a3;
@end

@implementation CAMOverlayClientConnection

- (CAMOverlayClientConnection)initWithBoardServiceConnection:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = CAMOverlayClientConnection;
  v9 = [(CAMOverlayClientConnection *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->__connectionQueue, a4);
    v11 = [NSHashTable hashTableWithOptions:517];
    registeredObservers = v10->__registeredObservers;
    v10->__registeredObservers = v11;

    v13 = [v7 remoteToken];
    auditToken = v10->_auditToken;
    v10->_auditToken = v13;

    v10->__debugID = ++qword_100060600;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100012324;
    v24 = &unk_1000558B8;
    v25 = v8;
    v15 = v10;
    v26 = v15;
    [v7 configureConnection:&v21];
    v16 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 _loggingHeader];
      v18 = [v7 userInfo];
      v19 = [(BSAuditToken *)v10->_auditToken pid];
      *buf = 138543874;
      v29 = v17;
      v30 = 2114;
      v31 = v18;
      v32 = 1024;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Activating connection from %{public}@:%d", buf, 0x1Cu);
    }

    [v7 activate];
    objc_storeStrong(v15 + 8, a3);
  }

  return v10;
}

- (void)dealloc
{
  [(BSServiceConnectionHost *)self->__connection invalidate];
  connection = self->__connection;
  self->__connection = 0;

  v4.receiver = self;
  v4.super_class = CAMOverlayClientConnection;
  [(CAMOverlayClientConnection *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(CAMOverlayClientConnection *)self _debugID];
  v5 = [(CAMOverlayClientConnection *)self auditToken];
  v6 = [v5 pid];
  v7 = [(CAMOverlayClientConnection *)self status];
  if (v7 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_100055A40[v7];
  }

  v9 = [NSString stringWithFormat:@"<%@ ID: [%lu] pid: %d; status: %@>", v3, v4, v6, v8];;

  return v9;
}

- (void)_updateStatusWithReason:(unint64_t)a3
{
  v5 = [(CAMOverlayClientConnection *)self _connection];

  if (v5)
  {
    v6 = [(CAMOverlayClientConnection *)self _clientProxy];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 2;
  }

  if (v7 != [(CAMOverlayClientConnection *)self status])
  {
    v8 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CAMOverlayClientConnection *)self _loggingHeader];
      v10 = v9;
      v11 = off_100055A40[v7];
      if (a3 > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_100055A58[a3];
      }

      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Status became %{public}@ for reason %{public}@", buf, 0x20u);
    }

    [(CAMOverlayClientConnection *)self _setStatus:v7];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100012968;
    v13[3] = &unk_1000558E0;
    v13[4] = self;
    v13[5] = v7;
    [(CAMOverlayClientConnection *)self _enumerateObserversWithBlock:v13];
  }
}

- (void)invalidate
{
  v3 = [(CAMOverlayClientConnection *)self _connection];
  [v3 invalidate];

  [(CAMOverlayClientConnection *)self set_connection:0];
  [(CAMOverlayClientConnection *)self _setClientProxy:0];

  [(CAMOverlayClientConnection *)self _updateStatusWithReason:1];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayClientConnection *)self _registeredObservers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayClientConnection *)self _registeredObservers];
  [v5 removeObject:v4];
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayClientConnection *)self _registeredObservers];
  v6 = [v5 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_handleConnectionDidActivate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012C5C;
  v4[3] = &unk_100055908;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_handleConnectionDidInterrupt:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012D28;
  block[3] = &unk_100055490;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleConnectionDidInvalidate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012DE0;
  block[3] = &unk_100055490;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)applyControlUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 controlIdentifier];
  v6 = [(CAMOverlayClientConnection *)self controlsByID];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CAMOverlayClientConnection *)self _loggingHeader];
    v10 = [v4 debugDescription];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending value %{public}@ for ID %{public}@", &v13, 0x20u);
  }

  v11 = [(CAMOverlayClientConnection *)self _updatesByID];
  [v11 setObject:v4 forKeyedSubscript:v5];

  v12 = [(CAMOverlayClientConnection *)self _clientProxy];
  [v12 serverDidUpdateControl:v4];
}

- (void)sendActiveControlIdentifier:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CAMOverlayClientConnection *)self _loggingHeader];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending active control ID %@", &v8, 0x16u);
  }

  v7 = [(CAMOverlayClientConnection *)self _clientProxy];
  [v7 serverDidChangeActiveControlIdentifier:v4];
}

- (void)clientDidConfigureControls:(id)a3 initialUpdates:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v83 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
  v82 = +[NSMutableSet set];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v96 objects:v105 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v97;
    do
    {
      v14 = 0;
      do
      {
        if (*v97 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v96 + 1) + 8 * v14);
        if ([v15 isValueUpdate])
        {
          v16 = [v15 controlIdentifier];
          [v83 setObject:v15 forKeyedSubscript:v16];
LABEL_8:

          goto LABEL_11;
        }

        if ([v15 valueType] == 5 && (objc_msgSend(v15, "isEnabled") & 1) == 0)
        {
          v16 = [v15 controlIdentifier];
          [v82 addObject:v16];
          goto LABEL_8;
        }

LABEL_11:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v17 = [v10 countByEnumeratingWithState:&v96 objects:v105 count:16];
      v12 = v17;
    }

    while (v17);
  }

  v71 = v9;
  v73 = v10;

  v81 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v93;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v93 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v92 + 1) + 8 * i);
        v23 = [v22 identifier];
        v24 = [v82 containsObject:v23];
        v25 = [v83 objectForKeyedSubscript:v23];
        v26 = [v25 debugDescription];
        v27 = v26;
        v28 = &stru_1000572E8;
        if (v24)
        {
          v28 = @" [disabled]";
        }

        v29 = [NSString stringWithFormat:@"\n\t%@ [%@]%@", v22, v26, v28];
        [v81 addObject:v29];
      }

      v19 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
    }

    while (v19);
  }

  v30 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(CAMOverlayClientConnection *)self _loggingHeader];
    v32 = [v81 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    *&buf[4] = v31;
    v102 = 2114;
    v103 = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Received controls: (%{public}@\n)", buf, 0x16u);
  }

  v76 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [obj count]);
  v75 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [obj count]);
  v74 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v73 count]);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v77 = obj;
  v33 = [v77 countByEnumeratingWithState:&v88 objects:v100 count:16];
  if (!v33)
  {
    v35 = 0;
    goto LABEL_63;
  }

  v34 = v33;
  v35 = 0;
  obja = *v89;
  v78 = CAMOverlayErrorDomain;
  do
  {
    for (j = 0; j != v34; j = j + 1)
    {
      if (*v89 != obja)
      {
        objc_enumerationMutation(v77);
      }

      v37 = *(*(&v88 + 1) + 8 * j);
      v38 = [CAMOverlayServiceControlHelpers interpretControl:v37];
      v39 = [v38 identifier];
      v40 = [v83 objectForKeyedSubscript:v39];
      if (!v40)
      {
        v106 = NSDebugDescriptionErrorKey;
        *buf = @"MissingValue";
        v47 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
        v48 = [NSError errorWithDomain:v78 code:-10 userInfo:v47];

        if (v48)
        {
          v106 = NSDebugDescriptionErrorKey;
          *buf = @"MissingValue";
          v49 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
          v50 = [NSError errorWithDomain:v78 code:-10 userInfo:v49];

          if ([v50 code] != -13)
          {

LABEL_53:
            v55 = os_log_create("com.apple.camera.overlay", "Angel");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v106 = NSDebugDescriptionErrorKey;
              *buf = @"MissingValue";
              v58 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
              v59 = [NSError errorWithDomain:v78 code:-10 userInfo:v58];

              *buf = 138543618;
              *&buf[4] = v37;
              v102 = 2114;
              v103 = v59;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Rejecting control %{public}@: %{public}@", buf, 0x16u);
            }

            if (!v35)
            {
              v35 = +[NSMutableArray array];
            }

            v106 = NSDebugDescriptionErrorKey;
            *buf = @"MissingValue";
            v56 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
            v54 = [NSError errorWithDomain:v78 code:-10 userInfo:v56];

LABEL_58:
            [v35 addObject:v54];

            goto LABEL_59;
          }

          v51 = [v37 controlType];

          if (v51)
          {
            goto LABEL_53;
          }

          v52 = os_log_create("com.apple.camera.overlay", "Angel");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v106 = NSDebugDescriptionErrorKey;
            *buf = @"MissingValue";
            v61 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
            v62 = [NSError errorWithDomain:v78 code:-10 userInfo:v61];

            *buf = 138543618;
            *&buf[4] = v37;
            v102 = 2114;
            v103 = v62;
            _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Ignoring update validation error for control %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v41 = [v38 validateUpdate:v40];

      if (!v41)
      {
        goto LABEL_38;
      }

      v42 = [v38 validateUpdate:v40];
      if ([v42 code] != -13)
      {

LABEL_47:
        v53 = os_log_create("com.apple.camera.overlay", "Angel");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v57 = [v38 validateUpdate:v40];
          *buf = 138543618;
          *&buf[4] = v37;
          v102 = 2114;
          v103 = v57;
          _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Rejecting control %{public}@: %{public}@", buf, 0x16u);
        }

        if (!v35)
        {
          v35 = +[NSMutableArray array];
        }

        v54 = [v38 validateUpdate:v40];
        goto LABEL_58;
      }

      v43 = [v37 controlType];

      if (v43)
      {
        goto LABEL_47;
      }

      v44 = os_log_create("com.apple.camera.overlay", "Angel");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v60 = [v38 validateUpdate:v40];
        *buf = 138543618;
        *&buf[4] = v37;
        v102 = 2114;
        v103 = v60;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Ignoring update validation error for control %{public}@: %{public}@", buf, 0x16u);
      }

LABEL_38:
      [v76 addObject:v38];
      [v75 setObject:v38 forKeyedSubscript:v39];
      [v74 setObject:v40 forKeyedSubscript:v39];
      v45 = [v38 identifier];
      v46 = [v82 containsObject:v45];

      if (v46)
      {
        [v38 setEnabled:0];
      }

LABEL_59:
    }

    v34 = [v77 countByEnumeratingWithState:&v88 objects:v100 count:16];
  }

  while (v34);
LABEL_63:

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000140E8;
  block[3] = &unk_100055958;
  block[4] = self;
  v63 = v76;
  v85 = v63;
  v64 = v75;
  v86 = v64;
  v65 = v74;
  v87 = v65;
  dispatch_async(&_dispatch_main_q, block);
  v66 = v35;
  if ([v66 count] == 1)
  {
    v67 = [v66 firstObject];
  }

  else
  {
    v68 = [v66 count];

    if (v68 < 2)
    {
      v67 = 0;
    }

    else
    {
      v69 = CAMOverlayErrorDomain;
      v106 = NSDebugDescriptionErrorKey;
      *buf = @"MultipleErrors";
      v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v106 count:1];
      v67 = [NSError errorWithDomain:v69 code:-1000 userInfo:v70];
    }
  }

  (v71)[2](v71, v67);
}

- (void)clientDidUpdateControl:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 controlIdentifier];
  v9 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(CAMOverlayClientConnection *)self _loggingHeader];
    v11 = [v6 debugDescription];
    *buf = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Received value %{public}@ for ID %{public}@", buf, 0x20u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100014350;
  v15[3] = &unk_1000559D0;
  v15[4] = self;
  v16 = v8;
  v17 = v6;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, v15);
}

- (void)setFocusLockGestureEnabled:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = os_log_create("com.apple.camera.overlay", "Angel");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CAMOverlayClientConnection *)self _loggingHeader];
    v7 = v6;
    v8 = @"DISABLED";
    if (v4)
    {
      v8 = @"ENABLED";
    }

    *buf = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received focus lock gesture %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014748;
  v9[3] = &unk_100055A20;
  v10 = v4;
  v9[4] = self;
  dispatch_async(&_dispatch_main_q, v9);
}

@end