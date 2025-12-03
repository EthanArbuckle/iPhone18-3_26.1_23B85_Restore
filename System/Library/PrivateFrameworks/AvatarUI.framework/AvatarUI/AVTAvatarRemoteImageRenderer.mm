@interface AVTAvatarRemoteImageRenderer
- (AVTAvatarRemoteImageRenderer)init;
- (AVTAvatarRemoteImageRenderer)initWithEnvironment:(id)environment;
- (id)_setupConnection;
- (void)_requestStickerAndCacheWithProxy:(id)proxy avatarRecord:(id)record stickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource reply:(id)reply;
- (void)_startRequestWithRetryCount:(unint64_t)count withReply:(id)reply connectionRequestHandler:(id)handler;
- (void)_tearDownService;
- (void)getSnapshotAndCacheForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply;
- (void)getSnapshotForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply;
- (void)getSnapshotForAvatar:(id)avatar scope:(id)scope withReply:(id)reply;
- (void)getStickerAndCacheForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply;
@end

@implementation AVTAvatarRemoteImageRenderer

- (AVTAvatarRemoteImageRenderer)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [(AVTAvatarRemoteImageRenderer *)self initWithEnvironment:v3];

  return v4;
}

- (AVTAvatarRemoteImageRenderer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = AVTAvatarRemoteImageRenderer;
  v5 = [(AVTAvatarRemoteImageRenderer *)&v9 init];
  if (v5)
  {
    logger = [environmentCopy logger];
    logger = v5->_logger;
    v5->_logger = logger;
  }

  return v5;
}

- (id)_setupConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MemojiImageRenderService"];
    connection = selfCopy->_connection;
    selfCopy->_connection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F39EDA18];
    [(NSXPCConnection *)selfCopy->_connection setRemoteObjectInterface:v5];

    objc_initWeak(&location, selfCopy);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2050000000;
    v11[3] = selfCopy->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AVTAvatarRemoteImageRenderer__setupConnection__block_invoke;
    v9[3] = &unk_1E7F3BDB8;
    objc_copyWeak(&v10, &location);
    v9[4] = v11;
    v6 = MEMORY[0x1BFB0DE80](v9);
    [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:v6];
    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:v6];
    [(NSXPCConnection *)selfCopy->_connection resume];

    objc_destroyWeak(&v10);
    _Block_object_dispose(v11, 8);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_connection;

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

- (void)_startRequestWithRetryCount:(unint64_t)count withReply:(id)reply connectionRequestHandler:(id)handler
{
  replyCopy = reply;
  handlerCopy = handler;
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
  v10 = replyCopy;
  v13[4] = self;
  v14 = v10;
  v17 = v25;
  v18 = v26;
  v19[1] = count;
  v11 = handlerCopy;
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

- (void)getSnapshotForAvatar:(id)avatar scope:(id)scope withReply:(id)reply
{
  replyCopy = reply;
  scopeCopy = scope;
  avatarCopy = avatar;
  _setupConnection = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
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
  v16 = replyCopy;
  v14 = replyCopy;
  [v13 requestImageForAvatar:avatarCopy scope:scopeCopy withReply:v15];
}

- (void)getSnapshotForAvatar:(id)avatar scope:(id)scope withModifications:(id)modifications withReply:(id)reply
{
  replyCopy = reply;
  modificationsCopy = modifications;
  scopeCopy = scope;
  avatarCopy = avatar;
  _setupConnection = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
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
  v19 = replyCopy;
  v17 = replyCopy;
  [v16 requestImageForAvatar:avatarCopy scope:scopeCopy withModifications:modificationsCopy withReply:v18];
}

- (void)getSnapshotAndCacheForAvatarRecord:(id)record scope:(id)scope withReply:(id)reply
{
  replyCopy = reply;
  scopeCopy = scope;
  recordCopy = record;
  _setupConnection = [(AVTAvatarRemoteImageRenderer *)self _setupConnection];
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
  v16 = replyCopy;
  v14 = replyCopy;
  [v13 generateAndCacheImageForAvatarRecord:recordCopy scope:scopeCopy withReply:v15];
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

- (void)_requestStickerAndCacheWithProxy:(id)proxy avatarRecord:(id)record stickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource reply:(id)reply
{
  proxyCopy = proxy;
  recordCopy = record;
  nameCopy = name;
  configurationNameCopy = configurationName;
  resourceCopy = resource;
  replyCopy = reply;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTUILogger *)self->_logger logRequestedAnimojiSticker:configurationNameCopy];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __134__AVTAvatarRemoteImageRenderer__requestStickerAndCacheWithProxy_avatarRecord_stickerPackName_stickerConfigurationName_resource_reply___block_invoke;
    v25[3] = &unk_1E7F3B9D8;
    v20 = &v26;
    v26 = replyCopy;
    v21 = replyCopy;
    [proxyCopy requestAnimojiStickerImageForAvatarRecord:recordCopy withStickerPackName:nameCopy stickerConfigurationName:configurationNameCopy resource:resourceCopy withReply:v25];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __134__AVTAvatarRemoteImageRenderer__requestStickerAndCacheWithProxy_avatarRecord_stickerPackName_stickerConfigurationName_resource_reply___block_invoke_2;
    v23[3] = &unk_1E7F3B9D8;
    v20 = &v24;
    v24 = replyCopy;
    v22 = replyCopy;
    [proxyCopy requestStickerImageForAvatarRecord:recordCopy withStickerPackName:nameCopy stickerConfigurationName:configurationNameCopy resource:resourceCopy withReply:v23];
  }
}

- (void)getStickerAndCacheForAvatarRecord:(id)record withStickerPackName:(id)name stickerConfigurationName:(id)configurationName resource:(id)resource withReply:(id)reply
{
  recordCopy = record;
  nameCopy = name;
  configurationNameCopy = configurationName;
  resourceCopy = resource;
  replyCopy = reply;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__AVTAvatarRemoteImageRenderer_getStickerAndCacheForAvatarRecord_withStickerPackName_stickerConfigurationName_resource_withReply___block_invoke;
  v22[3] = &unk_1E7F3BE80;
  v22[4] = self;
  v23 = recordCopy;
  v24 = nameCopy;
  v25 = configurationNameCopy;
  v26 = resourceCopy;
  v27 = replyCopy;
  v17 = replyCopy;
  v18 = resourceCopy;
  v19 = configurationNameCopy;
  v20 = nameCopy;
  v21 = recordCopy;
  [(AVTAvatarRemoteImageRenderer *)self _startRequestWithRetryCount:10 withReply:v17 connectionRequestHandler:v22];
}

@end