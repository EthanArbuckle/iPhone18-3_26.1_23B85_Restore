@interface ATLegacyMessageLink
- (ATLegacyMessageLink)initWithSocket:(id)a3;
- (BOOL)_sendData:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6;
- (BOOL)idleTimeoutEnabled;
- (BOOL)open;
- (NSString)description;
- (double)_idleTimeoutInterval;
- (void)_checkMessageTimeouts;
- (void)_handlePingMessage:(id)a3 fromLink:(id)a4;
- (void)_sendPingMessage;
- (void)close;
- (void)removeHandlerForMessage:(id)a3;
- (void)sendMessage:(id)a3 withCompletion:(id)a4;
- (void)setHandlerForMessage:(id)a3 handler:(id)a4;
- (void)socket:(id)a3 hasDataAvailable:(const char *)a4 length:(int64_t)a5;
@end

@implementation ATLegacyMessageLink

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, wifi=%d>", v5, self, -[ATLockdownMessageLink isWifiConnection](self, "isWifiConnection")];

  return v6;
}

- (void)_handlePingMessage:(id)a3 fromLink:(id)a4
{
  v5 = [MEMORY[0x277CEA448] messageWithName:@"Pong" parameters:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ATLegacyMessageLink__handlePingMessage_fromLink___block_invoke;
  v6[3] = &unk_2784E58E8;
  v6[4] = self;
  [(ATLegacyMessageLink *)self sendMessage:v5 withCompletion:v6];
}

void __51__ATLegacyMessageLink__handlePingMessage_fromLink___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "failed to send pong response. err=%{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) close];
  }
}

- (void)_sendPingMessage
{
  v3 = [MEMORY[0x277CEA448] messageWithName:@"Ping" parameters:0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ATLegacyMessageLink__sendPingMessage__block_invoke;
  v4[3] = &unk_2784E58E8;
  v4[4] = self;
  [(ATLegacyMessageLink *)self sendMessage:v3 withCompletion:v4];
}

void __39__ATLegacyMessageLink__sendPingMessage__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "failed to send ping message. err=%{public}@", &v5, 0xCu);
    }

    [*(a1 + 32) close];
  }
}

- (void)_checkMessageTimeouts
{
  v12 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  if ([(ATLegacyMessageLink *)self idleTimeoutEnabled]&& ([(ATConcreteMessageLink *)self lastActivityTime], v5 = Current - v4, [(ATLegacyMessageLink *)self _idleTimeoutInterval], v5 > v6))
  {
    v7 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "%{public}@ inactivity timeout fired - sending idle exit message and closing link", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CEA448] messageWithName:@"IdleExit" parameters:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__ATLegacyMessageLink__checkMessageTimeouts__block_invoke;
    v9[3] = &unk_2784E58E8;
    v9[4] = self;
    [(ATLegacyMessageLink *)self sendMessage:v8 withCompletion:v9];
  }

  else
  {

    [(ATLegacyMessageLink *)self _sendPingMessage];
  }
}

void __44__ATLegacyMessageLink__checkMessageTimeouts__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "failed to send idleExit message. err=%{public}@", &v5, 0xCu);
    }
  }

  [*(a1 + 32) close];
}

- (double)_idleTimeoutInterval
{
  v2 = [(ATLegacyMessageLink *)self hostSupportsLocalCloudDownloads];
  result = 45.0;
  if (v2)
  {
    return 180.0;
  }

  return result;
}

- (BOOL)_sendData:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v10 = [(ATConcreteMessageLink *)self socket];
  LOBYTE(a6) = [v10 send:a3 offset:v8 len:v7 error:a6] == v7;

  return a6;
}

- (BOOL)idleTimeoutEnabled
{
  if (![(ATLegacyMessageLink *)self hostSupportsLocalCloudDownloads]|| (v3 = [(ATLockdownMessageLink *)self isWifiConnection]))
  {
    v5.receiver = self;
    v5.super_class = ATLegacyMessageLink;
    LOBYTE(v3) = [(ATConcreteMessageLink *)&v5 idleTimeoutEnabled];
  }

  return v3;
}

- (void)socket:(id)a3 hasDataAvailable:(const char *)a4 length:(int64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v8 = _ATLogCategoryiTunesSync_Oversize();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 1024;
    LODWORD(v28) = a5;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received %d bytes of data", buf, 0x12u);
  }

  [(NSMutableData *)self->_incomingData appendBytes:a4 length:a5];
  if ([(NSMutableData *)self->_incomingData length]>= 4)
  {
    while (1)
    {
      v9 = *[(NSMutableData *)self->_incomingData bytes];
      v10 = v9 + 4;
      if ([(NSMutableData *)self->_incomingData length]< v9 + 4)
      {
        goto LABEL_17;
      }

      v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData bytes](self->_incomingData length:"bytes") + 4 freeWhenDone:{v9, 0}];
      v12 = [MEMORY[0x277CEA448] messageFromData:v11];
      v13 = [v12 name];
      v14 = [v13 isEqualToString:@"AssetManifest"];

      if (v14)
      {
        break;
      }

      v16 = [v12 name];
      v17 = [v16 isEqualToString:@"LocalCloudDownloadResponse"];

      if ((v17 & 1) == 0)
      {
        v15 = _ATLogCategoryiTunesSync();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

LABEL_12:
      v18 = self->_requestHandlerTable;
      objc_sync_enter(v18);
      requestHandlerTable = self->_requestHandlerTable;
      v20 = [v12 name];
      v21 = [(NSMutableDictionary *)requestHandlerTable objectForKey:v20];

      if (v21)
      {
        (v21)[2](v21, self, v12);
      }

      objc_sync_exit(v18);
      v22 = [v12 name];
      v23 = [v22 isEqualToString:@"Pong"];

      if ((v23 & 1) == 0)
      {
        [(ATConcreteMessageLink *)self setLastActivityTime:CFAbsoluteTimeGetCurrent()];
      }

      [(NSMutableData *)self->_incomingData replaceBytesInRange:0 withBytes:v10 length:0, 0];

      if ([(NSMutableData *)self->_incomingData length]<= 3)
      {
        goto LABEL_17;
      }
    }

    v15 = _ATLogCategoryiTunesSync_Oversize();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ <--- %{public}@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_17:
}

- (void)sendMessage:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATLegacyMessageLink_sendMessage_withCompletion___block_invoke;
  block[3] = &unk_2784E58C0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __50__ATLegacyMessageLink_sendMessage_withCompletion___block_invoke(uint64_t a1)
{
  *&v25[13] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  if (([v2 isEqualToString:@"AssetManifest"] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"AssetMetrics"))
  {
    v3 = _ATLogCategoryiTunesSync_Oversize();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = _ATLogCategoryiTunesSync();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  *buf = 138543618;
  v23 = v4;
  v24 = 2114;
  *v25 = v5;
  _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ---> %{public}@", buf, 0x16u);
LABEL_7:

  v6 = [*(a1 + 32) name];
  v7 = [v6 isEqualToString:@"Ping"];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 40) setLastActivityTime:CFAbsoluteTimeGetCurrent()];
  }

  v8 = [*(a1 + 32) data];
  v21 = [v8 length];
  v9 = *(a1 + 40);
  v20 = 0;
  v10 = [v9 _sendData:&v21 offset:0 len:4 error:&v20];
  v11 = v20;
  if (v10)
  {
    v12 = *(a1 + 40);
    v13 = [v8 bytes];
    v19 = v11;
    LOBYTE(v12) = [v12 _sendData:v13 offset:0 len:v21 error:&v19];
    v14 = v19;

    if (v12)
    {
      goto LABEL_17;
    }

    v15 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138543874;
      v23 = v16;
      v24 = 1024;
      *v25 = v21;
      v25[2] = 2114;
      *&v25[3] = v14;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed to send message. len=%u, err=%{public}@", buf, 0x1Cu);
    }

    v11 = v14;
  }

  else
  {
    v15 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138543618;
      v23 = v17;
      v24 = 2114;
      *v25 = v11;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed to send size. err=%{public}@", buf, 0x16u);
    }
  }

  v14 = v11;
LABEL_17:
  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v14);
  }
}

- (void)removeHandlerForMessage:(id)a3
{
  v5 = a3;
  v4 = self->_requestHandlerTable;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_requestHandlerTable removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)setHandlerForMessage:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self->_requestHandlerTable;
  objc_sync_enter(v7);
  requestHandlerTable = self->_requestHandlerTable;
  v9 = [v6 copy];
  [(NSMutableDictionary *)requestHandlerTable setObject:v9 forKey:v10];

  objc_sync_exit(v7);
}

- (void)close
{
  [(ATLegacyMessageLink *)self removeHandlerForMessage:@"Ping"];
  [(ATLegacyMessageLink *)self removeHandlerForMessage:@"Pong"];
  v3.receiver = self;
  v3.super_class = ATLegacyMessageLink;
  [(ATConcreteMessageLink *)&v3 close];
}

- (BOOL)open
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ATLegacyMessageLink_open__block_invoke;
  v8[3] = &unk_2784E5910;
  objc_copyWeak(&v9, &location);
  [(ATLegacyMessageLink *)self setHandlerForMessage:@"Ping" handler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__ATLegacyMessageLink_open__block_invoke_2;
  v6[3] = &unk_2784E5910;
  objc_copyWeak(&v7, &location);
  [(ATLegacyMessageLink *)self setHandlerForMessage:@"Pong" handler:v6];
  v5.receiver = self;
  v5.super_class = ATLegacyMessageLink;
  v3 = [(ATConcreteMessageLink *)&v5 open];
  if (v3)
  {
    [(ATConcreteMessageLink *)self setInitialized:1];
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v3;
}

void __27__ATLegacyMessageLink_open__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePingMessage:v5 fromLink:v6];
}

void __27__ATLegacyMessageLink_open__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePongMessage:v5 fromLink:v6];
}

- (ATLegacyMessageLink)initWithSocket:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATLegacyMessageLink;
  v5 = [(ATLockdownMessageLink *)&v16 initWithSocket:v4];
  v6 = v5;
  if (v5)
  {
    [(ATConcreteMessageLink *)v5 setEndpointType:0];
    [v4 setSocketMode:1];
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_create(Name, 0);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestHandlerTable = v6->_requestHandlerTable;
    v6->_requestHandlerTable = v11;

    v13 = objc_opt_new();
    incomingData = v6->_incomingData;
    v6->_incomingData = v13;

    v6->_idleTimeoutInterval = 45.0;
  }

  return v6;
}

@end