@interface SHAudioTapProvider
- (SHAudioTapProvider)initWithAudioRecordingManager:(id)manager clientCredentials:(id)credentials;
- (SHAudioTapProvider)initWithAudioRecordingManager:(id)manager clientCredentials:(id)credentials recorderConfiguration:(id)configuration;
- (id)tapForSource:(int64_t)source;
- (id)tapsForAvailableSources;
@end

@implementation SHAudioTapProvider

- (SHAudioTapProvider)initWithAudioRecordingManager:(id)manager clientCredentials:(id)credentials
{
  credentialsCopy = credentials;
  managerCopy = manager;
  v8 = +[SHRemoteConfiguration sharedInstance];
  recorderConfigurationWithPromise = [v8 recorderConfigurationWithPromise];

  v10 = [(SHAudioTapProvider *)self initWithAudioRecordingManager:managerCopy clientCredentials:credentialsCopy recorderConfiguration:recorderConfigurationWithPromise];
  return v10;
}

- (SHAudioTapProvider)initWithAudioRecordingManager:(id)manager clientCredentials:(id)credentials recorderConfiguration:(id)configuration
{
  managerCopy = manager;
  credentialsCopy = credentials;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SHAudioTapProvider;
  v12 = [(SHAudioTapProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioRecordingManager, manager);
    objc_storeStrong(&v13->_clientCredentials, credentials);
    objc_storeStrong(&v13->_recorderConfiguration, configuration);
  }

  return v13;
}

- (id)tapsForAvailableSources
{
  audioRecordingManager = [(SHAudioTapProvider *)self audioRecordingManager];
  recorders = [audioRecordingManager recorders];

  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [recorders count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = recorders;
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

- (id)tapForSource:(int64_t)source
{
  recorderConfiguration = [(SHAudioTapProvider *)self recorderConfiguration];
  clientCredentials = [(SHAudioTapProvider *)self clientCredentials];
  attribution = [clientCredentials attribution];
  containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
  v9 = [recorderConfiguration availableRecordersForClientIdentifier:containingAppBundleIdentifier];

  recorderConfiguration2 = [(SHAudioTapProvider *)self recorderConfiguration];
  if (!recorderConfiguration2 || ((v9 & 5) != 0 ? (v11 = source == 1) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), (recorderConfiguration2, (v9 & 0xA) != 0) ? (v13 = source == 2) : (v13 = 0), v13 || v12))
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      clientCredentials2 = [(SHAudioTapProvider *)self clientCredentials];
      attribution2 = [clientCredentials2 attribution];
      bundleIdentifier = [attribution2 bundleIdentifier];
      v28 = 134218242;
      sourceCopy = source;
      v30 = 2112;
      v31 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Returning audio tap for source %li bundle identifier %@", &v28, 0x16u);
    }

    clientCredentials3 = [(SHAudioTapProvider *)self clientCredentials];
    if ([clientCredentials3 isEntitledForSource:source])
    {
      v20 = [SHAudioTap alloc];
      clientCredentials4 = [(SHAudioTapProvider *)self clientCredentials];
      audioTapClient = [clientCredentials4 audioTapClient];
      clientCredentials5 = [(SHAudioTapProvider *)self clientCredentials];
      attribution3 = [clientCredentials5 attribution];
      bundleIdentifier2 = [attribution3 bundleIdentifier];
      clientCredentials6 = [(SHAudioTapProvider *)self clientCredentials];
      v14 = -[SHAudioTap initWithRecordingSource:client:bundleIdentifier:canEnableSpectralOutput:](v20, "initWithRecordingSource:client:bundleIdentifier:canEnableSpectralOutput:", source, audioTapClient, bundleIdentifier2, [clientCredentials6 canEnableSpectralOutput]);
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