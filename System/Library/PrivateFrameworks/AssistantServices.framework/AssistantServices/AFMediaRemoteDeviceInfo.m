@interface AFMediaRemoteDeviceInfo
+ (id)localDeviceInfo;
- (AFMediaRemoteDeviceInfo)init;
- (void)_activeDeviceInfoChanged:(id)a3;
- (void)_getMRDeviceInfoWithCompletion:(id)a3;
- (void)_updateWithRouteIdentifier:(id)a3 groupIdentifier:(id)a4;
- (void)getGroupIdentifierWithCompletion:(id)a3;
- (void)getRouteIdentifierWithCompletion:(id)a3;
@end

@implementation AFMediaRemoteDeviceInfo

- (void)getGroupIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke_2;
  v2[3] = &unk_1E73449A0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getMRDeviceInfoWithCompletion:v2];
}

void __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a2 groupUID];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315395;
    v7 = "[AFMediaRemoteDeviceInfo getGroupIdentifierWithCompletion:]_block_invoke_2";
    v8 = 2113;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Retrieved groupId: %{private}@", &v6, 0x16u);
  }

  [*(a1 + 32) _updateWithRouteIdentifier:*(*(a1 + 32) + 8) groupIdentifier:v3];
  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getRouteIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke_2;
  v2[3] = &unk_1E73449A0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getMRDeviceInfoWithCompletion:v2];
}

void __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [v4 deviceUID];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315395;
    v9 = "[AFMediaRemoteDeviceInfo getRouteIdentifierWithCompletion:]_block_invoke_2";
    v10 = 2113;
    v11 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Retrieved routeId: %{private}@", &v8, 0x16u);
  }

  [*(a1 + 32) _updateWithRouteIdentifier:v5 groupIdentifier:*(*(a1 + 32) + 16)];
  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_getMRDeviceInfoWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__AFMediaRemoteDeviceInfo__getMRDeviceInfoWithCompletion___block_invoke;
  v11[3] = &unk_1E7344978;
  v5 = v4;
  v12 = v5;
  v6 = MEMORY[0x193AFB7B0](v11);
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[AFMediaRemoteDeviceInfo _getMRDeviceInfoWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Retrieving MRDeviceInfo for local origin.", buf, 0xCu);
  }

  v8 = MEMORY[0x1E69B0A20];
  v9 = [MEMORY[0x1E69B0AA0] localOrigin];
  [v8 deviceInfoForOrigin:v9 queue:self->_serialQueue completion:v6];

  v10 = *MEMORY[0x1E69E9840];
}

void __58__AFMediaRemoteDeviceInfo__getMRDeviceInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[AFMediaRemoteDeviceInfo _getMRDeviceInfoWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving MRDeviceInfo: %@", &v10, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateWithRouteIdentifier:(id)a3 groupIdentifier:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  routeIdentifier = self->_routeIdentifier;
  if (routeIdentifier == v6 || [(NSString *)routeIdentifier isEqualToString:v6])
  {
    v9 = 0;
  }

  else
  {
    v19 = [(NSString *)v6 copy];
    v20 = self->_routeIdentifier;
    self->_routeIdentifier = v19;

    v21 = AFSiriLogContextConnection;
    v9 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v22 = self->_routeIdentifier;
      *buf = 136315394;
      v32 = "[AFMediaRemoteDeviceInfo _updateWithRouteIdentifier:groupIdentifier:]";
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s Local route identifier: %@", buf, 0x16u);
    }
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier == v7 || [(NSString *)groupIdentifier isEqualToString:v7])
  {
    v11 = 0;
  }

  else
  {
    v23 = [(NSString *)v7 copy];
    v24 = self->_groupIdentifier;
    self->_groupIdentifier = v23;

    v25 = AFSiriLogContextConnection;
    v11 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v26 = self->_groupIdentifier;
      *buf = 136315394;
      v32 = "[AFMediaRemoteDeviceInfo _updateWithRouteIdentifier:groupIdentifier:]";
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_1912FE000, v25, OS_LOG_TYPE_INFO, "%s Local group identifier: %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = @"identifier";
    v13 = v6;
    if (!v6)
    {
      v13 = [MEMORY[0x1E695DFB0] null];
    }

    v30 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v12 postNotificationName:@"AFMediaRemoteDeviceInfoRouteIdentifierDidChangeNotification" object:self userInfo:v14];

    if (!v6)
    {
    }
  }

  if (v11)
  {
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = @"identifier";
    v16 = v7;
    if (!v7)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
    }

    v28 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v15 postNotificationName:@"AFMediaRemoteDeviceInfoGroupIdentifierDidChangeNotification" object:self userInfo:v17];

    if (!v7)
    {
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_activeDeviceInfoChanged:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AFMediaRemoteDeviceInfo__activeDeviceInfoChanged___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(serialQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __52__AFMediaRemoteDeviceInfo__activeDeviceInfoChanged___block_invoke(uint64_t a1)
{
  MRMediaRemoteGetLocalOrigin();
  v2 = *(*(a1 + 32) + 32);
  return MRMediaRemoteGetDeviceInfo();
}

void __52__AFMediaRemoteDeviceInfo__activeDeviceInfoChanged___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]_block_invoke";
      v12 = 2112;
      v13 = a3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Unable to fetch local route identifier: %@", &v10, 0x16u);
    }
  }

  else
  {
    v6 = MRPairedDeviceCopyLocalReceiverPairingIdentity();
    v7 = MRPairedDeviceCopyGroupUID();
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Successfully fetched local route identifier: %@, group identifier: %@", &v10, 0x20u);
    }

    [*(a1 + 32) _updateWithRouteIdentifier:v6 groupIdentifier:v7];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (AFMediaRemoteDeviceInfo)init
{
  v16.receiver = self;
  v16.super_class = AFMediaRemoteDeviceInfo;
  v2 = [(AFMediaRemoteDeviceInfo *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.assistant.MediaRemoteDeviceInfo", v4);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = +[AFInstanceContext currentContext];
    instanceContext = v2->_instanceContext;
    v2->_instanceContext = v7;

    if (!v2->_instanceContext)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[AFMediaRemoteDeviceInfo init]"];
      [v12 handleFailureInFunction:v13 file:@"AFMediaRemoteDeviceInfo.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"_instanceContext != nil"}];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel__activeDeviceInfoChanged_ name:*MEMORY[0x1E69B0B68] object:0];

    MRMediaRemoteRegisterWantsSystemAppDidSkipTrackNotifications();
    v10 = v2->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AFMediaRemoteDeviceInfo_init__block_invoke;
    block[3] = &unk_1E73497C8;
    v15 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

+ (id)localDeviceInfo
{
  if (localDeviceInfo_onceToken != -1)
  {
    dispatch_once(&localDeviceInfo_onceToken, &__block_literal_global_16801);
  }

  v3 = localDeviceInfo_localDeviceInfo;

  return v3;
}

void __42__AFMediaRemoteDeviceInfo_localDeviceInfo__block_invoke()
{
  v0 = objc_alloc_init(AFMediaRemoteDeviceInfo);
  v1 = localDeviceInfo_localDeviceInfo;
  localDeviceInfo_localDeviceInfo = v0;
}

@end