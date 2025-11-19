@interface AVTAvatarRemoteImageRenderer
- (AVTAvatarRemoteImageRenderer)init;
- (AVTAvatarRemoteImageRenderer)initWithEnvironment:(id)a3;
- (id)_setupConnection;
- (void)_requestStickerAndCacheWithProxy:(id)a3 avatarRecord:(id)a4 stickerPackName:(id)a5 stickerConfigurationName:(id)a6 resource:(id)a7 reply:(id)a8;
- (void)_startRequestWithRetryCount:(unint64_t)a3 withReply:(id)a4 connectionRequestHandler:(id)a5;
- (void)_tearDownService;
- (void)getSnapshotAndCacheForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)getSnapshotForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6;
- (void)getSnapshotForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5;
- (void)getStickerAndCacheForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7;
@end

@implementation AVTAvatarRemoteImageRenderer

- (AVTAvatarRemoteImageRenderer)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [(AVTAvatarRemoteImageRenderer *)self initWithEnvironment:v3];

  return v4;
}

- (AVTAvatarRemoteImageRenderer)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarRemoteImageRenderer;
  v5 = [(AVTAvatarRemoteImageRenderer *)&v9 init];
  if (v5)
  {
    v6 = [v4 logger];
    logger = v5->_logger;
    v5->_logger = v6;
  }

  return v5;
}

- (id)_setupConnection
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MemojiImageRenderService"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F39EDA18];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    objc_initWeak(&location, v2);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2050000000;
    v11[3] = v2->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AVTAvatarRemoteImageRenderer__setupConnection__block_invoke;
    v9[3] = &unk_1E7F3BDB8;
    objc_copyWeak(&v10, &location);
    v9[4] = v11;
    v6 = MEMORY[0x1BFB0DE80](v9);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v6];
    [(NSXPCConnection *)v2->_connection resume];

    objc_destroyWeak(&v10);
    _Block_object_dispose(v11, 8);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  v7 = v2->_connection;

  return v7;
}

void __48__AVTAvatarRemoteImageRenderer__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = v3[1];
    if (v4 == *(*(*(a1 + 32) + 8) + 24))
    {
      v3[1] = 0;
    }

    objc_sync_exit(v3);

    WeakRetained = v5;
  }
}

- (void)_tearDownService
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)_startRequestWithRetryCount:(unint64_t)a3 withReply:(id)a4 connectionRequestHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2050000000;
  v25[3] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v24 = 0;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__AVTAvatarRemoteImageRenderer__startRequestWithRetryCount_withReply_connectionRequestHandler___block_invoke;
  v13[3] = &unk_1E7F3BDE0;
  objc_copyWeak(v19, &location);
  v16 = &v21;
  v10 = v8;
  v13[4] = self;
  v14 = v10;
  v17 = v25;
  v18 = v26;
  v19[1] = a3;
  v11 = v9;
  v15 = v11;
  v12 = [v13 copy];
  v22[3] = v12;
  v12[2](v12, 0);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
}

void __95__AVTAvatarRemoteImageRenderer__startRequestWithRetryCount_withReply_connectionRequestHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v4 = MEMORY[0x1BFB0DE80](*(*(*(a1 + 56) + 8) + 24));
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = *(WeakRetained + 1);
  if (v6 == *(*(*(a1 + 64) + 8) + 24))
  {
    *(WeakRetained + 1) = 0;
  }

  objc_sync_exit(v5);

  [*(WeakRetained + 2) logImageRenderServiceConnectionError:v8];
  if (++*(*(*(a1 + 72) + 8) + 24) <= *(a1 + 88))
  {
LABEL_7:
    *(*(*(a1 + 64) + 8) + 24) = [WeakRetained _setupConnection];
    v7 = [*(*(*(a1 + 64) + 8) + 24) remoteObjectProxyWithErrorHandler:v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_6:
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getSnapshotForAvatar:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
  connection = self->_connection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__AVTAvatarRemoteImageRenderer_getSnapshotForAvatar_scope_withReply___block_invoke;
  v17[3] = &unk_1E7F3BE08;
  v17[4] = self;
  v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__AVTAvatarRemoteImageRenderer_getSnapshotForAvatar_scope_withReply___block_invoke_2;
  v15[3] = &unk_1E7F3BE30;
  v16 = v8;
  v14 = v8;
  [v13 requestImageForAvatar:v10 scope:v9 withReply:v15];
}

- (void)getSnapshotForAvatar:(id)a3 scope:(id)a4 withModifications:(id)a5 withReply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__AVTAvatarRemoteImageRenderer_getSnapshotForAvatar_scope_withModifications_withReply___block_invoke;
  v20[3] = &unk_1E7F3BE08;
  v20[4] = self;
  v16 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__AVTAvatarRemoteImageRenderer_getSnapshotForAvatar_scope_withModifications_withReply___block_invoke_2;
  v18[3] = &unk_1E7F3BE30;
  v19 = v10;
  v17 = v10;
  [v16 requestImageForAvatar:v13 scope:v12 withModifications:v11 withReply:v18];
}

- (void)getSnapshotAndCacheForAvatarRecord:(id)a3 scope:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
  connection = self->_connection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__AVTAvatarRemoteImageRenderer_getSnapshotAndCacheForAvatarRecord_scope_withReply___block_invoke;
  v17[3] = &unk_1E7F3BE08;
  v17[4] = self;
  v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__AVTAvatarRemoteImageRenderer_getSnapshotAndCacheForAvatarRecord_scope_withReply___block_invoke_2;
  v15[3] = &unk_1E7F3BE58;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v13 generateAndCacheImageForAvatarRecord:v10 scope:v9 withReply:v15];
}

void __83__AVTAvatarRemoteImageRenderer_getSnapshotAndCacheForAvatarRecord_scope_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 logger];
    v6 = [v4 path];
    [v5 logRetrievingSnapshotInServiceForPath:v6];

    v7 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];

    v9 = [v7 initWithData:v8];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_requestStickerAndCacheWithProxy:(id)a3 avatarRecord:(id)a4 stickerPackName:(id)a5 stickerConfigurationName:(id)a6 resource:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTUILogger *)self->_logger logRequestedAnimojiSticker:v17];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __134__AVTAvatarRemoteImageRenderer__requestStickerAndCacheWithProxy_avatarRecord_stickerPackName_stickerConfigurationName_resource_reply___block_invoke;
    v25[3] = &unk_1E7F3B9D8;
    v20 = &v26;
    v26 = v19;
    v21 = v19;
    [v14 requestAnimojiStickerImageForAvatarRecord:v15 withStickerPackName:v16 stickerConfigurationName:v17 resource:v18 withReply:v25];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __134__AVTAvatarRemoteImageRenderer__requestStickerAndCacheWithProxy_avatarRecord_stickerPackName_stickerConfigurationName_resource_reply___block_invoke_2;
    v23[3] = &unk_1E7F3B9D8;
    v20 = &v24;
    v24 = v19;
    v22 = v19;
    [v14 requestStickerImageForAvatarRecord:v15 withStickerPackName:v16 stickerConfigurationName:v17 resource:v18 withReply:v23];
  }
}

- (void)getStickerAndCacheForAvatarRecord:(id)a3 withStickerPackName:(id)a4 stickerConfigurationName:(id)a5 resource:(id)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__AVTAvatarRemoteImageRenderer_getStickerAndCacheForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v22[3] = &unk_1E7F3BE80;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  [(AVTAvatarRemoteImageRenderer *)self _startRequestWithRetryCount:10 withReply:v17 connectionRequestHandler:v22];
}

@end