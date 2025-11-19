@interface MPAVRouteConnection
- (BOOL)isInvalidated;
- (MPAVRouteConnection)initWithExternalDeviceObject:(id)a3;
- (id)description;
- (void)_connectionStateDidChange:(unsigned int)a3 error:(id)a4;
- (void)_externalDeviceConnectionStateDidChangeNotification:(id)a3;
- (void)connectWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)connectWithOptions:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)reset;
- (void)sendMediaRemoteCommand:(unsigned int)a3 withOptions:(id)a4 completionHandler:(id)a5;
@end

@implementation MPAVRouteConnection

- (void)_externalDeviceConnectionStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69B0BB0]];
  v7 = [v6 unsignedIntValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:*MEMORY[0x1E696AA08]];

  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MPAVRouteConnection__externalDeviceConnectionStateDidChangeNotification___block_invoke;
  block[3] = &unk_1E7676BC0;
  v14 = v7;
  block[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(calloutQueue, block);
}

- (void)_connectionStateDidChange:(unsigned int)a3 error:(id)a4
{
  v6 = a4;
  v7 = v6;
  switch(a3)
  {
    case 1u:
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = v11;
      v13 = @"_MPAVRouteConnectionDidAttemptConnectionNotification";
      goto LABEL_7;
    case 2u:
      accessQueue = self->_accessQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__MPAVRouteConnection__connectionStateDidChange_error___block_invoke_2;
      v14[3] = &unk_1E7682518;
      v14[4] = self;
      dispatch_sync(accessQueue, v14);
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = v11;
      v13 = @"_MPAVRouteConnectionDidConnectNotification";
LABEL_7:
      [v11 postNotificationName:v13 object:self];

      break;
    case 3u:
      v8 = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__MPAVRouteConnection__connectionStateDidChange_error___block_invoke;
      block[3] = &unk_1E76823C0;
      block[4] = self;
      v16 = v6;
      dispatch_sync(v8, block);
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"_MPAVRouteConnectionDidInvalidateNotification" object:self];

      break;
  }
}

uint64_t __55__MPAVRouteConnection__connectionStateDidChange_error___block_invoke(uint64_t result)
{
  *(*(result + 32) + 24) = 1;
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    return (*(v1 + 16))(*(*(result + 32) + 40), *(result + 40));
  }

  return result;
}

- (void)sendMediaRemoteCommand:(unsigned int)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MRExternalDevice *)self->_externalDevice customOrigin];
  if (v9)
  {
    v10 = v8;
    MRMediaRemoteSendCommandToApp();
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __76__MPAVRouteConnection_sendMediaRemoteCommand_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)reset
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MPAVRouteConnection_reset__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (BOOL)isInvalidated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MPAVRouteConnection_isInvalidated__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)connectWithOptions:(unint64_t)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7680CA8;
  aBlock[4] = self;
  v20 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke_3;
  v15[3] = &unk_1E7681E88;
  v15[4] = self;
  v16 = v8;
  v17 = v11;
  v18 = a3;
  v13 = v8;
  v14 = v11;
  dispatch_async(accessQueue, v15);
}

void __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke_2;
    v6[3] = &unk_1E76824C8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke_3(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = *(a1 + 48);
    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPAVRouteConnectionErrorDomain" code:2 userInfo:0];
    (*(v3 + 16))(v3);
  }

  else if ([v2 isConnected])
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%p", objc_opt_class(), *(a1 + 32)];
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"MPAVRouteConnectionReasonUserInfoKey"];
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"MPAVRouteConnectionCorrelationIDUserInfoKey"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v11 UUIDString];
    }

    v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"MPAVRouteConnection"];
    v13 = v12;
    if (v7)
    {
      [v12 appendFormat:@"-%@", v7];
    }

    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"MPRouteConnection.connectWithOptions", v10];
    v15 = v14;
    if (v6)
    {
      [v14 appendFormat:@" for %@", v6];
    }

    if (v7)
    {
      [v15 appendFormat:@" because %@", v7];
    }

    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v17 = *(*(a1 + 32) + 32);
    v18 = *(a1 + 56);
    v19 = *MEMORY[0x1E69B0920];
    v30[0] = *MEMORY[0x1E69B0928];
    v30[1] = v19;
    v31[0] = v13;
    v31[1] = v10;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke_85;
    v25[3] = &unk_1E767BBA8;
    v26 = v6;
    v27 = v10;
    v28 = v5;
    v29 = *(a1 + 48);
    v21 = v5;
    v22 = v10;
    v23 = v6;
    [v17 connectWithOptions:v18 & 1 userInfo:v20 completion:v25];

    *(*(a1 + 32) + 24) = 0;
  }
}

void __62__MPAVRouteConnection_connectWithOptions_userInfo_completion___block_invoke_85(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory();
  v6 = v5;
  if (!v3)
  {
    v15 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v15)
      {
        goto LABEL_15;
      }

      v17 = a1[4];
      v16 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v32 = 138544130;
      v33 = @"MPRouteConnection.connectWithOptions";
      v34 = 2114;
      v35 = v16;
      v36 = 2114;
      v37 = v17;
      v38 = 2048;
      v39 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v6;
      v21 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_15;
      }

      v24 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v32 = 138543874;
      v33 = @"MPRouteConnection.connectWithOptions";
      v34 = 2114;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v6;
      v21 = 32;
    }

    _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, v19, &v32, v21);
    goto LABEL_14;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      v9 = a1[4];
      v8 = a1[5];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:a1[6]];
      v32 = 138544386;
      v33 = @"MPRouteConnection.connectWithOptions";
      v34 = 2114;
      v35 = v8;
      v36 = 2114;
      v37 = v3;
      v38 = 2114;
      v39 = v9;
      v40 = 2048;
      v41 = v11;
      v12 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v13 = v6;
      v14 = 52;
LABEL_10:
      _os_log_error_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, v12, &v32, v14);
LABEL_14:
    }
  }

  else if (v7)
  {
    v22 = a1[5];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[6]];
    v32 = 138544130;
    v33 = @"MPRouteConnection.connectWithOptions";
    v34 = 2114;
    v35 = v22;
    v36 = 2114;
    v37 = v3;
    v38 = 2048;
    v39 = v23;
    v12 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v13 = v6;
    v14 = 42;
    goto LABEL_10;
  }

LABEL_15:

  (*(a1[7] + 16))(a1[7], v3, v26, v27, v28, v29, v30, v31);
}

- (void)connectWithOptions:(unint64_t)a3 completion:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"MPAVRouteConnectionReasonUserInfoKey";
  v10[0] = @"deprecated";
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(MPAVRouteConnection *)self connectWithOptions:a3 userInfo:v8 completion:v7];
}

- (id)description
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7070;
  v8 = __Block_byref_object_dispose__7071;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __34__MPAVRouteConnection_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if (*(v4 + 24))
  {
    v5 = @"NO";
  }

  else
  {
    v5 = @"YES";
  }

  if ([*(a1 + 32) isConnected])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v2 stringWithFormat:@"<%@: %p valid: %@, connected: %@ %@>", v3, v4, v5, v6, *(*(a1 + 32) + 32)];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0BA8] object:self->_externalDevice];

  v4.receiver = self;
  v4.super_class = MPAVRouteConnection;
  [(MPAVRouteConnection *)&v4 dealloc];
}

- (MPAVRouteConnection)initWithExternalDeviceObject:(id)a3
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = MPAVRouteConnection;
  v7 = [(MPAVRouteConnection *)&v15 init];
  if (v7)
  {
    if (!v6)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v7 file:@"MPAVRouteConnection.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"externalDevice"}];
    }

    objc_storeStrong(&v7->_externalDevice, a3);
    v8 = dispatch_queue_create("com.apple.MediaPlayerFramework.MPAVRouteConnection.accessQueue", 0);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v8;

    v10 = dispatch_queue_create("com.apple.MediaPlayerFramework.MPAVRouteConnection.calloutQueue", 0);
    calloutQueue = v7->_calloutQueue;
    v7->_calloutQueue = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v7 selector:sel__externalDeviceConnectionStateDidChangeNotification_ name:*MEMORY[0x1E69B0BA8] object:v6];
  }

  return v7;
}

@end