@interface AFMultiUserConnection
+ (id)sharedInstance;
- (AFMultiUserConnection)init;
- (AFMultiUserConnection)initWithConnectionFactory:(id)a3;
- (id)_connection;
- (id)_multiUserServiceWithErrorHandler:(id)a3;
- (void)_clearConnection;
- (void)dealloc;
- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)getConformingSharedUserIdForHomeUserId:(id)a3 completion:(id)a4;
- (void)getConformingSharedUserIds:(id)a3;
- (void)getFirstNameForSharedUserId:(id)a3 completion:(id)a4;
- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4;
- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)a3;
- (void)getLoggableIdentiferForUserWithSharedUserID:(id)a3 iCloudAltDSID:(id)a4 sessionID:(id)a5 completion:(id)a6;
- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3 completion:(id)a4;
- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)a3 completion:(id)a4;
- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)a3;
- (void)getMultiUserSettingsForSharedUserID:(id)a3 completion:(id)a4;
- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)a3;
- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)a3;
- (void)getRecognizableUsersConfromingSharedUserIds:(id)a3;
- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4;
- (void)getSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)getSharedUserInfoForSharedUserID:(id)a3 completion:(id)a4;
- (void)getSharedUserInfoForiCloudAltDSID:(id)a3 completion:(id)a4;
- (void)getSharedUserProfileLimitWithCompletion:(id)a3;
- (void)getUserAgentStringForSharedUserID:(id)a3 completion:(id)a4;
- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)a3;
- (void)homeUserIdToNames:(id)a3;
- (void)postMessageToMUXWithMultiUserInfo:(id)a3 completion:(id)a4;
- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4;
@end

@implementation AFMultiUserConnection

- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection getLoggableMultiUserSharedUserIdForSharedUserID:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getLoggableMultiUserSharedUserIdForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getLoggableMultiUserSharedUserIdForSharedUserID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getLoggableMultiUserSharedUserIdForSharedUserID: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)postMessageToMUXWithMultiUserInfo:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection postMessageToMUXWithMultiUserInfo:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 postMessageToMUXWithMultiUserInfo:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection postMessageToMUXWithMultiUserInfo:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in postMessageToMUXWithMultiUserInfo:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getLoggableIdentiferForUserWithSharedUserID:(id)a3 iCloudAltDSID:(id)a4 sessionID:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[AFMultiUserConnection getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v14, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke;
    block[3] = &unk_1E7348AF8;
    block[4] = self;
    v21 = v13;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    dispatch_async(targetQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 64);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getLoggableIdentiferForUserWithSharedUserID:*(a1 + 40) iCloudAltDSID:*(a1 + 48) sessionID:*(a1 + 56) completion:*(a1 + 64)];
}

void __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getLoggableIdentiferForUserWithSharedUserID:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getUserAgentStringForSharedUserID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getUserAgentStringForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getUserAgentStringForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getUserAgentStringForSharedUserID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getUserAgentStringForSharedUserID:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getSharedUserIdForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getSharedUserIdForiCloudAltDSID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserIdForiCloudAltDSID:*(a1 + 40) completion:*(a1 + 48)];
}

void __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getSharedUserIdForiCloudAltDSID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserIdForiCloudAltDSID:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getSharedUserInfoForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getSharedUserInfoForiCloudAltDSID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserInfoForiCloudAltDSID:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getSharedUserInfoForiCloudAltDSID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserInfoForiCloudAltDSID:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFMultiUserConnection getPrimaryUserSharedUserInfoWithCompletion:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getPrimaryUserSharedUserInfoWithCompletion:*(a1 + 40)];
}

void __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getPrimaryUserSharedUserInfoWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getPrimaryUserSharedUserInfoWithCompletion:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getSharedUserInfoForSharedUserID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getSharedUserInfoForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserInfoForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getSharedUserInfoForSharedUserID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserInfoForSharedUserID:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)homeUserIdToNames:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFMultiUserConnection homeUserIdToNames:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__AFMultiUserConnection_homeUserIdToNames___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __43__AFMultiUserConnection_homeUserIdToNames___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AFMultiUserConnection_homeUserIdToNames___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 homeUserIdToNames:*(a1 + 40)];
}

void __43__AFMultiUserConnection_homeUserIdToNames___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection homeUserIdToNames:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in homeUserIdToNames:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[AFMultiUserConnection getPreferredMediaUserHomeUserIDWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
}

void __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getPreferredMediaUserHomeUserIDWithCompletion:*(a1 + 40)];
}

void __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getPreferredMediaUserHomeUserIDWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getPreferredMediaUserHomeUserIDWithCompletion:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = v4;
    dispatch_async(targetQueue, v7);
  }
}

void __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getiCloudAltDSIDOfRecognizedUserWithCompletion:*(a1 + 40)];
}

void __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getiCloudAltDSIDOfRecognizedUserWithCompletion:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = v4;
    dispatch_async(targetQueue, v7);
  }
}

void __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getHomeUserIdOfRecognizedUserWithCompletion:*(a1 + 40)];
}

void __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getHomeUserIdOfRecognizedUserWithCompletion:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFMultiUserConnection getMultiUserSettingsForRecognizedUserWithCompletion:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserSettingsForRecognizedUserWithCompletion:*(a1 + 40)];
}

void __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getMultiUserSettingsForRecognizedUserWithCompletion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getMultiUserSettingsForRecognizedUserWithCompletion:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getMultiUserSettingsForSharedUserID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getMultiUserSettingsForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserSettingsForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection getMultiUserSettingsForSharedUserID:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ErrorABCD:%@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)getRecognizableUsersConfromingSharedUserIds:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFMultiUserConnection getRecognizableUsersConfromingSharedUserIds:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getRecognizableUsersConfromingSharedUserIds:*(a1 + 40)];
}

- (void)getConformingSharedUserIds:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v11 = "[AFMultiUserConnection getConformingSharedUserIds:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke;
    v8[3] = &unk_1E7349838;
    v8[4] = self;
    v9 = v4;
    dispatch_async(targetQueue, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getConformingSharedUserIds:*(a1 + 40)];
}

- (void)getConformingSharedUserIdForHomeUserId:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[AFMultiUserConnection getConformingSharedUserIdForHomeUserId:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v13 = v7;
    v12 = v6;
    dispatch_async(targetQueue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getConformingSharedUserIdForHomeUserId:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)getSharedUserProfileLimitWithCompletion:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[AFMultiUserConnection getSharedUserProfileLimitWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ", &v6, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v3[2](v3, 6, 0);
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)triggerVoiceProfileUploadWithCompletion:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[AFMultiUserConnection triggerVoiceProfileUploadWithCompletion:completion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s sharedUserID: %@", buf, 0x16u);
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __76__AFMultiUserConnection_triggerVoiceProfileUploadWithCompletion_completion___block_invoke;
  v18 = &unk_1E7348AD0;
  v19 = v6;
  v20 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [(AFMultiUserConnection *)self _multiUserServiceWithErrorHandler:&v15];
  v12 = v11;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &__block_literal_global_15_44605;
  }

  [v11 triggerVoiceProfileUploadWithCompletion:v10 completion:{v13, v15, v16, v17, v18}];

  v14 = *MEMORY[0x1E69E9840];
}

void __76__AFMultiUserConnection_triggerVoiceProfileUploadWithCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[AFMultiUserConnection triggerVoiceProfileUploadWithCompletion:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Complete with error: %@ for sharedUserId: %@", &v8, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)downloadVoiceProfileForiCloudAltDSID:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection downloadVoiceProfileForiCloudAltDSID:completion:]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__AFMultiUserConnection_downloadVoiceProfileForiCloudAltDSID_completion___block_invoke;
  v14[3] = &unk_1E7348AA8;
  v15 = v7;
  v9 = v7;
  v10 = [(AFMultiUserConnection *)self _multiUserServiceWithErrorHandler:v14];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &__block_literal_global_44609;
  }

  [v10 downloadVoiceProfileForiCloudAltDSID:v6 completion:v12];

  v13 = *MEMORY[0x1E69E9840];
}

void __73__AFMultiUserConnection_downloadVoiceProfileForiCloudAltDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFMultiUserConnection downloadVoiceProfileForiCloudAltDSID:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Complete with error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getSharedUserIdForHomeUserId:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection getSharedUserIdForHomeUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserIdForHomeUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getFirstNameForSharedUserId:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection getFirstNameForSharedUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getFirstNameForSharedUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[AFMultiUserConnection getMultiUserAudioAppSignalsForSharedUserID:completion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Getting music preference data for shared user id %@", buf, 0x16u);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserAudioAppSignalsForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getHomeUserIdForSharedUserId:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMultiUserConnection getHomeUserIdForSharedUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(targetQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getHomeUserIdForSharedUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)_multiUserServiceWithErrorHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_connection)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "[AFMultiUserConnection _multiUserServiceWithErrorHandler:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s No connection.", &v10, 0xCu);
    }
  }

  v6 = [(AFMultiUserConnection *)self _connection];
  v7 = [v6 remoteObjectProxyWithErrorHandler:v4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFMultiUserConnection dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(AFMultiUserConnection *)self _clearConnection];
  v5.receiver = self;
  v5.super_class = AFMultiUserConnection;
  [(AFMultiUserConnection *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.multiuser.service" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_targetQueue];
    objc_initWeak(&location, self);
    v6 = self->_connection;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __36__AFMultiUserConnection__connection__block_invoke;
    v13 = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v10];
    v7 = self->_connection;
    v8 = AFMultiUserServiceXPCInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8, v10, v11, v12, v13];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __36__AFMultiUserConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection _clearConnection]";
    v8 = 2048;
    v9 = self;
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s %p", &v6, 0x16u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (AFMultiUserConnection)init
{
  v3 = +[AFInstanceContext defaultContext];
  v4 = [(AFMultiUserConnection *)self initWithConnectionFactory:v3];

  return v4;
}

- (AFMultiUserConnection)initWithConnectionFactory:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFMultiUserConnection;
  v5 = [(AFMultiUserConnection *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.assistant.multiuser.connection", v6);

    targetQueue = v5->_targetQueue;
    v5->_targetQueue = v7;

    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v9;
  }

  return v5;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AFMultiUserConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_44627 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_44627, block);
  }

  v2 = sharedInstance_singleton_44628;

  return v2;
}

void __39__AFMultiUserConnection_sharedInstance__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[AFMultiUserConnection sharedInstance]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance_singleton_44628;
  sharedInstance_singleton_44628 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

@end