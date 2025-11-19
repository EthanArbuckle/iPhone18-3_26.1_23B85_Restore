@interface NWConnectionManager
- (NSString)stateString;
- (NWConnectionManager)init;
- (NWConnectionManager)initWithNWConnection:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startRead:(id)a3;
- (void)waitForConnection:(unsigned int)a3;
- (void)writeData:(const void *)a3 size:(unsigned int)a4;
@end

@implementation NWConnectionManager

- (NWConnectionManager)init
{
  v11.receiver = self;
  v11.super_class = NWConnectionManager;
  v2 = [(NWConnectionManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    networkConnectionReadySemaphore = v2->networkConnectionReadySemaphore;
    v2->networkConnectionReadySemaphore = v3;

    v5 = dispatch_semaphore_create(0);
    sendSemaphore = v2->sendSemaphore;
    v2->sendSemaphore = v5;

    v7 = dispatch_queue_create("NWConnection read queue", 0);
    readDispatchQueue = v2->readDispatchQueue;
    v2->readDispatchQueue = v7;

    v9 = objc_opt_new();
    [(NWConnectionManager *)v2 setWriteLock:v9];
  }

  return v2;
}

- (NWConnectionManager)initWithNWConnection:(id)a3
{
  v4 = a3;
  v5 = [(NWConnectionManager *)self init];
  if (v5)
  {
    if (sub_1000423E0())
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[NWConnectionManager initWithNWConnection:]";
        v14 = 1024;
        v15 = 60;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] init with initWithNWConnection", &v12, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 60, "[NWConnectionManager initWithNWConnection:]", 7, 0, "init with initWithNWConnection");
    [(NWConnectionManager *)v5 setConnection:v4];
    v7 = [(NWConnectionManager *)v5 connection];
    [v7 addObserver:v5 forKeyPath:@"connectionState" options:5 context:0];

    v8 = [(NWConnectionManager *)v5 connection];
    [v8 addObserver:v5 forKeyPath:@"viable" options:5 context:0];

    v9 = [(NWConnectionManager *)v5 connection];
    [v9 addObserver:v5 forKeyPath:@"hasBetterPath" options:5 context:0];

    v10 = [(NWConnectionManager *)v5 connection];
    [v10 addObserver:v5 forKeyPath:@"error" options:5 context:0];
  }

  return v5;
}

- (void)waitForConnection:(unsigned int)a3
{
  v5 = [(NWConnectionManager *)self connection];
  v6 = [v5 connectionState];

  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NWConnectionManager *)self connection];
      v9 = [(NWConnectionManager *)self stateString];
      *buf = 136315906;
      v20 = "[NWConnectionManager waitForConnection:]";
      v21 = 1024;
      v22 = 91;
      v23 = 2048;
      v24 = v8;
      v25 = 2080;
      v26 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] connection state for %p is %s", buf, 0x26u);
    }
  }

  v10 = [(NWConnectionManager *)self connection];
  v11 = [(NWConnectionManager *)self stateString];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 91, "-[NWConnectionManager waitForConnection:]", 7, 0, "connection state for %p is %s", v10, [v11 UTF8String]);

  if (v6 != 3)
  {
    if (sub_1000423E0())
    {
      v12 = sub_100042E68();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[NWConnectionManager waitForConnection:]";
        v21 = 1024;
        v22 = 94;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to wait for connection to be ready", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 94, "[NWConnectionManager waitForConnection:]", 7, 0, "going to wait for connection to be ready");
    networkConnectionReadySemaphore = self->networkConnectionReadySemaphore;
    if (a3)
    {
      v14 = dispatch_time(0, 1000000 * a3);
    }

    else
    {
      v14 = -1;
    }

    dispatch_semaphore_wait(networkConnectionReadySemaphore, v14);
    if (sub_1000423E0())
    {
      v15 = sub_100042E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(NWConnectionManager *)self stateString];
        v17 = [v16 UTF8String];
        *buf = 136315650;
        v20 = "[NWConnectionManager waitForConnection:]";
        v21 = 1024;
        v22 = 96;
        v23 = 2080;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] done waiting connection state is %s", buf, 0x1Cu);
      }
    }

    v18 = [(NWConnectionManager *)self stateString];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 96, "-[NWConnectionManager waitForConnection:]", 7, 0, "done waiting connection state is %s", [v18 UTF8String]);
  }
}

- (void)dealloc
{
  v3 = [(NWConnectionManager *)self connection];
  [v3 removeObserver:self forKeyPath:@"connectionState"];

  v4 = [(NWConnectionManager *)self connection];
  [v4 removeObserver:self forKeyPath:@"viable"];

  v5 = [(NWConnectionManager *)self connection];
  [v5 removeObserver:self forKeyPath:@"hasBetterPath"];

  v6 = [(NWConnectionManager *)self connection];
  [v6 removeObserver:self forKeyPath:@"error"];

  [(NWConnectionManager *)self setConnection:0];
  readDispatchQueue = self->readDispatchQueue;
  if (readDispatchQueue)
  {
    self->readDispatchQueue = 0;
  }

  [(NWConnectionManager *)self setWriteLock:0];
  v8.receiver = self;
  v8.super_class = NWConnectionManager;
  [(NWConnectionManager *)&v8 dealloc];
}

- (NSString)stateString
{
  v2 = [(NWConnectionManager *)self connection];
  v3 = [v2 connectionState];

  if ((v3 - 1) > 4)
  {
    return @"Invalid";
  }

  else
  {
    return &off_100068B88[(v3 - 1)]->isa;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(NWConnectionManager *)self connection];

  if (v10 != v9)
  {
    if (sub_1000423E0())
    {
      v11 = sub_100042E68();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v9 description];
        *buf = 136315650;
        v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
        v45 = 1024;
        v46 = 151;
        v47 = 2080;
        v48 = [v12 UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] Connection %s not recognized", buf, 0x1Cu);
      }
    }

    v13 = [v9 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 151, "-[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 5, 0, "Connection %s not recognized", [v13 UTF8String]);
LABEL_7:

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"connectionState"])
  {
    if (sub_1000423E0())
    {
      v14 = sub_100042E68();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(NWConnectionManager *)self stateString];
        v16 = [v15 UTF8String];
        v17 = [(NWConnectionManager *)self connection];
        *buf = 136316162;
        v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
        v45 = 1024;
        v46 = 157;
        v47 = 2048;
        v48 = v9;
        v49 = 2080;
        v50 = v16;
        v51 = 2048;
        v52 = [v17 connectionState];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] NWConnection State for %p: %s %ld", buf, 0x30u);
      }
    }

    v18 = [(NWConnectionManager *)self stateString];
    v19 = [v18 UTF8String];
    v20 = [(NWConnectionManager *)self connection];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 157, "-[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "NWConnection State for %p: %s %ld", v9, v19, [v20 connectionState]);

    if ([v9 connectionState] == 3)
    {
      if (sub_1000423E0())
      {
        v21 = sub_100042E68();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v9 connectedLocalEndpoint];
          v23 = [v22 description];
          v24 = [v23 UTF8String];
          *buf = 136315650;
          v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
          v45 = 1024;
          v46 = 161;
          v47 = 2080;
          v48 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] Local Endpoint: %s", buf, 0x1Cu);
        }
      }

      v25 = [v9 connectedLocalEndpoint];
      v26 = [v25 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 161, "-[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "Local Endpoint: %s", [v26 UTF8String]);

      if (sub_1000423E0())
      {
        v27 = sub_100042E68();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v9 connectedRemoteEndpoint];
          v29 = [v28 description];
          v30 = [v29 UTF8String];
          *buf = 136315650;
          v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
          v45 = 1024;
          v46 = 162;
          v47 = 2080;
          v48 = v30;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] Remote Endpoint: %s", buf, 0x1Cu);
        }
      }

      v31 = [v9 connectedRemoteEndpoint];
      v32 = [v31 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 162, "-[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "Remote Endpoint: %s", [v32 UTF8String]);

      if (sub_1000423E0())
      {
        v33 = sub_100042E68();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
          v45 = 1024;
          v46 = 163;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] signal semaphore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 163, "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "signal semaphore");
      dispatch_semaphore_signal(self->networkConnectionReadySemaphore);
    }
  }

  else if ([v8 isEqualToString:@"hasBetterPath"])
  {
    if (sub_1000423E0())
    {
      v34 = sub_100042E68();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v9 hasBetterPath];
        v36 = "No";
        v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
        *buf = 136315650;
        if (v35)
        {
          v36 = "Yes";
        }

        v45 = 1024;
        v46 = 170;
        v47 = 2080;
        v48 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] Better Path Available: %s", buf, 0x1Cu);
      }
    }

    [v9 hasBetterPath];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 170, "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "Better Path Available: %s");
  }

  else
  {
    if (![v8 isEqualToString:@"viable"])
    {
      if (![v8 isEqualToString:@"error"])
      {
        goto LABEL_8;
      }

      if (sub_1000423E0())
      {
        v39 = sub_100042E68();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v9 error];
          v41 = [v40 description];
          *buf = 136315650;
          v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
          v45 = 1024;
          v46 = 178;
          v47 = 2080;
          v48 = [v41 UTF8String];
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] Error: %s", buf, 0x1Cu);
        }
      }

      v13 = [v9 error];
      v42 = [v13 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 178, "-[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "Error: %s", [v42 UTF8String]);

      goto LABEL_7;
    }

    if (sub_1000423E0())
    {
      v37 = sub_100042E68();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v44 = "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]";
        if ([v9 isViable])
        {
          v38 = "Yes";
        }

        else
        {
          v38 = "No";
        }

        v45 = 1024;
        v46 = 174;
        v47 = 2080;
        v48 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] Viable: %s", buf, 0x1Cu);
      }
    }

    [v9 isViable];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 174, "[NWConnectionManager observeValueForKeyPath:ofObject:change:context:]", 7, 0, "Viable: %s");
  }

LABEL_8:
}

- (void)startRead:(id)a3
{
  v4 = a3;
  v5 = [(NWConnectionManager *)self connection];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000320C;
  v11 = &unk_100068B40;
  v12 = self;
  v13 = v4;
  v6 = v4;
  LOBYTE(v4) = [v5 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:&v8];

  if ((v4 & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[NWConnectionManager startRead:]";
        v16 = 1024;
        v17 = 210;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to read data", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 210, "[NWConnectionManager startRead:]", 7, 0, "unable to read data", v8, v9, v10, v11, v12, v13);
  }
}

- (void)writeData:(const void *)a3 size:(unsigned int)a4
{
  v7 = [(NWConnectionManager *)self writeLock];
  [v7 lock];

  v8 = +[NSMutableArray array];
  v9 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  [v8 addObject:v9];

  v10 = [(NWConnectionManager *)self connection];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000036C8;
  v17 = &unk_100068B68;
  v11 = v8;
  v18 = v11;
  v19 = self;
  LOBYTE(v8) = [v10 writeDatagrams:v11 completionHandler:&v14];

  dispatch_semaphore_wait(self->sendSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [(NWConnectionManager *)self writeLock:v14];
  [v12 unlock];

  if ((v8 & 1) == 0)
  {
    if (sub_1000423E0())
    {
      v13 = sub_100042E68();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[NWConnectionManager writeData:size:]";
        v22 = 1024;
        v23 = 245;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] error when writing ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 245, "[NWConnectionManager writeData:size:]", 7, 0, "error when writing ");
  }
}

@end