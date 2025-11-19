@interface SHAudioTapProvider
- (SHAudioTapProvider)initWithAudioRecordingManager:(id)a3 clientCredentials:(id)a4;
- (SHAudioTapProvider)initWithAudioRecordingManager:(id)a3 clientCredentials:(id)a4 recorderConfiguration:(id)a5;
- (id)tapForSource:(int64_t)a3;
- (id)tapsForAvailableSources;
@end

@implementation SHAudioTapProvider

- (SHAudioTapProvider)initWithAudioRecordingManager:(id)a3 clientCredentials:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SHRemoteConfiguration sharedInstance];
  v9 = [v8 recorderConfigurationWithPromise];

  v10 = [(SHAudioTapProvider *)self initWithAudioRecordingManager:v7 clientCredentials:v6 recorderConfiguration:v9];
  return v10;
}

- (SHAudioTapProvider)initWithAudioRecordingManager:(id)a3 clientCredentials:(id)a4 recorderConfiguration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHAudioTapProvider;
  v12 = [(SHAudioTapProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioRecordingManager, a3);
    objc_storeStrong(&v13->_clientCredentials, a4);
    objc_storeStrong(&v13->_recorderConfiguration, a5);
  }

  return v13;
}

- (id)tapsForAvailableSources
{
  v3 = [(SHAudioTapProvider *)self audioRecordingManager];
  v4 = [v3 recorders];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[SHAudioTapProvider tapForSource:](self, "tapForSource:", [*(*(&v14 + 1) + 8 * i) recordingSource]);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)tapForSource:(int64_t)a3
{
  v5 = [(SHAudioTapProvider *)self recorderConfiguration];
  v6 = [(SHAudioTapProvider *)self clientCredentials];
  v7 = [v6 attribution];
  v8 = [v7 containingAppBundleIdentifier];
  v9 = [v5 availableRecordersForClientIdentifier:v8];

  v10 = [(SHAudioTapProvider *)self recorderConfiguration];
  if (!v10 || ((v9 & 5) != 0 ? (v11 = a3 == 1) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (v10, (v9 & 0xA) != 0) ? (v13 = a3 == 2) : (v13 = 0), v13 || v12))
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SHAudioTapProvider *)self clientCredentials];
      v17 = [v16 attribution];
      v18 = [v17 bundleIdentifier];
      v28 = 134218242;
      v29 = a3;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Returning audio tap for source %li bundle identifier %@", &v28, 0x16u);
    }

    v19 = [(SHAudioTapProvider *)self clientCredentials];
    if ([v19 isEntitledForSource:a3])
    {
      v20 = [SHAudioTap alloc];
      v21 = [(SHAudioTapProvider *)self clientCredentials];
      v22 = [v21 audioTapClient];
      v23 = [(SHAudioTapProvider *)self clientCredentials];
      v24 = [v23 attribution];
      v25 = [v24 bundleIdentifier];
      v26 = [(SHAudioTapProvider *)self clientCredentials];
      v14 = -[SHAudioTap initWithRecordingSource:client:bundleIdentifier:canEnableSpectralOutput:](v20, "initWithRecordingSource:client:bundleIdentifier:canEnableSpectralOutput:", a3, v22, v25, [v26 canEnableSpectralOutput]);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end