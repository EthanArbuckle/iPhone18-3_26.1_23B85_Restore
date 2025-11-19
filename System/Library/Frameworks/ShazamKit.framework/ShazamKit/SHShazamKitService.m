@interface SHShazamKitService
+ (void)initializeGlobalServiceState;
- (SHAudioTapProvider)audioTapProvider;
- (SHEventSignalScheduler)eventSignaller;
- (SHHapticsFetcher)hapticsFetcher;
- (SHMatcherControllerProvider)matcherControllerProvider;
- (SHMediaItemFetcher)mediaItemFetcher;
- (SHMediaLibraryClient)libraryClient;
- (SHMediaLibraryQueryManager)libraryQueryManager;
- (SHMusicalFeaturesConfigurationProvider)musicalFeaturesProvider;
- (SHPrivacyDisclosureManager)privacyDisclosureManager;
- (SHServiceDelegate)serviceDelegate;
- (SHShazamKitClient)delegate;
- (SHShazamKitService)initWithClientCredentials:(id)a3;
- (SHShazamKitService)initWithClientCredentials:(id)a3 audioTapProvider:(id)a4 eventSignaller:(id)a5 privacyDisclosureManager:(id)a6;
- (void)_libraryInfoWithCompletionHandler:(id)a3;
- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
- (void)dealloc;
- (void)disableSpectralOutputNotification;
- (void)finishedWorker:(id)a3;
- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4;
- (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4;
- (void)prepareMatcherForRequestID:(id)a3 completionHandler:(id)a4;
- (void)registerMatcherController:(id)a3 forRequest:(id)a4 completionHandler:(id)a5;
- (void)setUpSpectralOutputNotification;
- (void)shutdownService;
- (void)startRecognitionForRequest:(id)a3;
- (void)startRecognitionForRequest:(id)a3 completionHandler:(id)a4;
- (void)startUpdatingLocationForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
- (void)synchronizeSnapshot:(id)a3 startCondition:(id)a4 completionHandler:(id)a5;
- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation SHShazamKitService

+ (void)initializeGlobalServiceState
{
  if (qword_100098288 != -1)
  {
    sub_1000160F8();
  }
}

- (void)dealloc
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deallocating the Shazam Service", buf, 2u);
  }

  [(SHShazamKitService *)self disableSpectralOutputNotification];
  v4.receiver = self;
  v4.super_class = SHShazamKitService;
  [(SHShazamKitService *)&v4 dealloc];
}

- (SHShazamKitService)initWithClientCredentials:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHShazamKitService;
  v6 = [(SHShazamKitService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientCredentials, a3);
  }

  return v7;
}

- (SHShazamKitService)initWithClientCredentials:(id)a3 audioTapProvider:(id)a4 eventSignaller:(id)a5 privacyDisclosureManager:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SHShazamKitService *)self initWithClientCredentials:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_audioTapProvider, a4);
    objc_storeStrong(&v15->_eventSignaller, a5);
    objc_storeStrong(&v15->_privacyDisclosureManager, a6);
  }

  return v15;
}

- (void)setUpSpectralOutputNotification
{
  v3 = [(SHShazamKitService *)self clientCredentials];
  v4 = [v3 canEnableSpectralOutput];

  if (v4)
  {
    v5 = sh_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Started observing spectral output notifications", buf, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = SHNotificationNameDaemonSpectralOutput;
    [v6 removeObserver:self name:SHNotificationNameDaemonSpectralOutput object:0];

    objc_initWeak(buf, self);
    v8 = +[NSNotificationCenter defaultCenter];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100013E5C;
    v10[3] = &unk_10007D378;
    objc_copyWeak(&v11, buf);
    v9 = [v8 addObserverForName:v7 object:0 queue:0 usingBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)disableSpectralOutputNotification
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopped observing spectral output notifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:SHNotificationNameDaemonSpectralOutput object:0];
}

- (void)prepareMatcherForRequestID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SHPreRecordingWorker alloc];
  v9 = [(SHShazamKitService *)self audioTapProvider];
  v10 = [(SHPreRecordingWorker *)v8 initWithRequestID:v6 audioTapProvider:v9];

  if (v10)
  {
    v11 = [(SHShazamKitService *)self serviceDelegate];
    v16 = 0;
    v12 = [v11 service:self registerWorker:v10 watchdogTimeout:&v16 error:120.0];
    v13 = v16;

    if (v12)
    {
      [(SHPreRecordingWorker *)v10 setWorkerDelegate:self];
      [(SHPreRecordingWorker *)v10 startRecordingWithCompletionHandler:v7];
    }

    else
    {
      v15 = sh_log_object();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v10;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to start prerecording for worker %@ - the pre recording is already running with the same worker id %@ running - %@", buf, 0x20u);
      }

      if (v7)
      {
        v7[2](v7);
      }
    }
  }

  else
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to start pre recording - it is likely some required entitlements are missing", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)startRecognitionForRequest:(id)a3
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is not supported by shazamd, please use startRecognitionForRequest:completionHandler", v3];
}

- (void)startRecognitionForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHShazamKitService *)self serviceDelegate];
  v9 = [(SHShazamKitService *)self matcherControllerProvider];
  [v9 setDelegate:v8];

  if ([v6 type] == 3 && (-[SHShazamKitService privacyDisclosureManager](self, "privacyDisclosureManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "privacyDisclosureAcknowledgementRequired"), v10, v11))
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@ as privacy disclosure acknowledgement is required", &v30, 0xCu);
    }

    v13 = [SHError privateErrorWithCode:204 underlyingError:0];
    v14 = [(SHShazamKitService *)self delegate];
    v15 = [v6 signature];
    v16 = v15;
    if (!v15)
    {
      v16 = objc_opt_new();
    }

    v17 = [SHMatcherResponse errorResponseForSignature:v16 error:v13];
    [v14 matcher:self didProduceResponse:v17];

    if (!v15)
    {
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v18 = [(SHShazamKitService *)self matcherControllerProvider];
    v13 = [v18 matcherControllerForRequest:v6];

    if ([v6 type] == 2 || objc_msgSend(v6, "type") == 3)
    {
      v19 = sh_log_object();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v30 = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Enabling spectral output for matcher request %@", &v30, 0xCu);
      }

      [(SHShazamKitService *)self setUpSpectralOutputNotification];
    }

    if (v13)
    {
      if ([v6 type] == 2)
      {
        v20 = sh_log_object();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Request type is record, starting location updates", &v30, 2u);
        }

        [(SHShazamKitService *)self startUpdatingLocationForRequest:v6];
      }

      v21 = [(SHShazamKitService *)self clientCredentials];
      v22 = [v21 attribution];
      v23 = [v22 bundleIdentifier];

      if (([v23 isEqualToString:@"com.apple.springboard"] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"com.apple.musicrecognition.MusicRecognitionControls"))
      {
        v24 = [(SHShazamKitService *)self eventSignaller];
        [v24 sendEventSignal:@"com.apple.musicrecognition.recognition-activated"];
      }

      [(SHShazamKitService *)self registerMatcherController:v13 forRequest:v6 completionHandler:v7];
    }

    else
    {
      v25 = sh_log_object();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to fetch matcher controller - it is likely some required entitlements are missing", &v30, 2u);
      }

      v23 = [SHCoreError errorWithCode:102 underlyingError:0];
      v26 = [(SHShazamKitService *)self delegate];
      v27 = [v6 signature];
      v28 = v27;
      if (!v27)
      {
        v28 = objc_opt_new();
      }

      v29 = [SHMatcherResponse errorResponseForSignature:v28 error:v23];
      [v26 matcher:self didProduceResponse:v29];

      if (!v27)
      {
      }

      if (v7)
      {
        v7[2](v7);
      }
    }
  }
}

- (void)startUpdatingLocationForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 requestID];
  v6 = [v5 UUIDString];
  v7 = [(SHShazamKitService *)self clientCredentials];
  v8 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", v6, [v7 clientType]);

  [v8 setWorkerDelegate:self];
  if (v8)
  {
    v9 = [(SHShazamKitService *)self serviceDelegate];
    [v4 watchdogTimeout];
    v14 = 0;
    v10 = [v9 service:self registerWorker:v8 watchdogTimeout:&v14 error:?];
    v11 = v14;

    v12 = sh_log_object();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Registering location provider %@", buf, 0xCu);
      }

      [v8 startUpdatingLocation];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to register location provider %@", buf, 0xCu);
      }
    }
  }
}

- (void)registerMatcherController:(id)a3 forRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SHShazamKitService *)self serviceDelegate];
  [v9 watchdogTimeout];
  v21 = 0;
  v12 = [v11 service:self registerWorker:v8 watchdogTimeout:&v21 error:?];
  v13 = v21;

  if (v12)
  {
    [v8 setWorkerDelegate:self];
    v14 = [(SHShazamKitService *)self delegate];
    [v8 setDelegate:v14];

    [v8 setCompletionHandler:v10];
    [v8 startRecognitionForRequest:v9];
  }

  else
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 workerID];
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to register worker %@ - the matcher is already running with the same worker id %@ running", buf, 0x16u);
    }

    v17 = [(SHShazamKitService *)self delegate];
    v18 = [v9 signature];
    v19 = v18;
    if (!v18)
    {
      v19 = objc_opt_new();
    }

    v20 = [SHMatcherResponse errorResponseForSignature:v19 error:v13];
    [v17 matcher:self didProduceResponse:v20];

    if (!v18)
    {
    }

    if (v10)
    {
      v10[2](v10);
    }
  }
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is not supported by shazamd, please use synchronizeSnapshot:startCondition:completionHandler", v4];
}

- (void)synchronizeSnapshot:(id)a3 startCondition:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SHMediaLibrarySyncManager alloc];
  v12 = [(SHShazamKitService *)self libraryClient];
  v15 = [(SHMediaLibrarySyncManager *)v11 initWithClient:v12 completionHandler:v8];

  [(SHMediaLibrarySyncManager *)v15 setWorkerDelegate:self];
  v13 = [(SHShazamKitService *)self delegate];
  [(SHMediaLibrarySyncManager *)v15 setDelegate:v13];

  v14 = [(SHShazamKitService *)self serviceDelegate];
  [v14 service:self registerWorker:v15 watchdogTimeout:0 error:500.0];

  [(SHMediaLibrarySyncManager *)v15 _synchronizeSnapshot:v10 startCondition:v9];
}

- (void)_libraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHShazamKitService *)self libraryQueryManager];
  [v5 _libraryInfoWithCompletionHandler:v4];
}

- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitService *)self libraryQueryManager];
  [v8 _queryLibraryWithParameters:v7 completionHandler:v6];
}

- (void)mediaItemsForShazamIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitService *)self mediaItemFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014DBC;
  v10[3] = &unk_10007D3A0;
  v11 = v6;
  v9 = v6;
  [v8 mediaItemsForShazamIDs:v7 completionHandler:v10];
}

- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitService *)self libraryQueryManager];
  v9 = [v8 rawSongResponseDataForMediaItemIdentifier:v7];

  v6[2](v6, v9);
}

- (void)hapticsForMediaItems:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitService *)self hapticsFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014FA4;
  v10[3] = &unk_10007D3A0;
  v11 = v6;
  v9 = v6;
  [v8 hapticsForMediaItems:v7 completionHandler:v10];
}

- (void)isHapticTrackAvailableForMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHShazamKitService *)self hapticsFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000150F4;
  v10[3] = &unk_10007D3C8;
  v11 = v6;
  v9 = v6;
  [v8 hasHapticTrackForMediaItem:v7 completionHandler:v10];
}

- (void)finishedWorker:(id)a3
{
  v4 = a3;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Worker %@ stopped running", &v7, 0xCu);
  }

  v6 = [(SHShazamKitService *)self serviceDelegate];
  [v6 service:self unregisterWorker:v4];
}

- (SHMediaLibraryQueryManager)libraryQueryManager
{
  libraryQueryManager = self->_libraryQueryManager;
  if (!libraryQueryManager)
  {
    v4 = [SHMediaLibraryQueryManager alloc];
    v5 = [(SHShazamKitService *)self libraryClient];
    v6 = [(SHMediaLibraryQueryManager *)v4 initWithClient:v5];
    v7 = self->_libraryQueryManager;
    self->_libraryQueryManager = v6;

    libraryQueryManager = self->_libraryQueryManager;
  }

  return libraryQueryManager;
}

- (SHMediaItemFetcher)mediaItemFetcher
{
  mediaItemFetcher = self->_mediaItemFetcher;
  if (!mediaItemFetcher)
  {
    v4 = [SHMediaItemFetcher alloc];
    v5 = [(SHShazamKitService *)self clientCredentials];
    v6 = [v5 attribution];
    v7 = [v6 containingAppBundleIdentifier];
    v8 = [(SHShazamKitService *)self clientCredentials];
    v9 = -[SHMediaItemFetcher initWithBundleIdentifier:clientType:](v4, "initWithBundleIdentifier:clientType:", v7, [v8 clientType]);
    v10 = self->_mediaItemFetcher;
    self->_mediaItemFetcher = v9;

    mediaItemFetcher = self->_mediaItemFetcher;
  }

  return mediaItemFetcher;
}

- (SHHapticsFetcher)hapticsFetcher
{
  hapticsFetcher = self->_hapticsFetcher;
  if (!hapticsFetcher)
  {
    v4 = objc_alloc_init(SHHapticsFetcher);
    v5 = self->_hapticsFetcher;
    self->_hapticsFetcher = v4;

    hapticsFetcher = self->_hapticsFetcher;
  }

  return hapticsFetcher;
}

- (SHAudioTapProvider)audioTapProvider
{
  audioTapProvider = self->_audioTapProvider;
  if (!audioTapProvider)
  {
    v4 = [SHAudioTapProvider alloc];
    v5 = +[SHAudioManager sharedInstance];
    v6 = [v5 audioRecordingManager];
    v7 = [(SHShazamKitService *)self clientCredentials];
    v8 = [(SHAudioTapProvider *)v4 initWithAudioRecordingManager:v6 clientCredentials:v7];
    v9 = self->_audioTapProvider;
    self->_audioTapProvider = v8;

    audioTapProvider = self->_audioTapProvider;
  }

  return audioTapProvider;
}

- (SHEventSignalScheduler)eventSignaller
{
  eventSignaller = self->_eventSignaller;
  if (!eventSignaller)
  {
    v4 = objc_alloc_init(SHEventSignalScheduler);
    v5 = self->_eventSignaller;
    self->_eventSignaller = v4;

    eventSignaller = self->_eventSignaller;
  }

  return eventSignaller;
}

- (SHMediaLibraryClient)libraryClient
{
  libraryClient = self->_libraryClient;
  if (!libraryClient)
  {
    v4 = [SHMediaLibraryClient alloc];
    v5 = [(SHShazamKitService *)self clientCredentials];
    v6 = [(SHMediaLibraryClient *)v4 initWithCredentials:v5];
    v7 = self->_libraryClient;
    self->_libraryClient = v6;

    libraryClient = self->_libraryClient;
  }

  return libraryClient;
}

- (SHPrivacyDisclosureManager)privacyDisclosureManager
{
  privacyDisclosureManager = self->_privacyDisclosureManager;
  if (!privacyDisclosureManager)
  {
    v4 = objc_alloc_init(SHPrivacyDisclosureManager);
    v5 = self->_privacyDisclosureManager;
    self->_privacyDisclosureManager = v4;

    privacyDisclosureManager = self->_privacyDisclosureManager;
  }

  return privacyDisclosureManager;
}

- (SHMusicalFeaturesConfigurationProvider)musicalFeaturesProvider
{
  musicalFeaturesProvider = self->_musicalFeaturesProvider;
  if (!musicalFeaturesProvider)
  {
    v4 = [SHMusicalFeaturesConfigurationProvider alloc];
    v5 = [(SHShazamKitService *)self clientCredentials];
    v6 = [v5 attribution];
    v7 = [v6 bundleIdentifier];
    v8 = [(SHMusicalFeaturesConfigurationProvider *)v4 initWithSourceBundleIdentifier:v7];
    v9 = self->_musicalFeaturesProvider;
    self->_musicalFeaturesProvider = v8;

    musicalFeaturesProvider = self->_musicalFeaturesProvider;
  }

  return musicalFeaturesProvider;
}

- (SHMatcherControllerProvider)matcherControllerProvider
{
  matcherControllerProvider = self->_matcherControllerProvider;
  if (!matcherControllerProvider)
  {
    v4 = [SHMatcherControllerProvider alloc];
    v5 = [(SHShazamKitService *)self audioTapProvider];
    v6 = [(SHShazamKitService *)self clientCredentials];
    v7 = [v6 attribution];
    v8 = [(SHShazamKitService *)self clientCredentials];
    v9 = [v8 clientType];
    v10 = [(SHShazamKitService *)self musicalFeaturesProvider];
    v11 = [v10 musicalFeaturesConfiguration];
    v12 = [(SHMatcherControllerProvider *)v4 initWithAudioTapProvider:v5 attribution:v7 clientType:v9 musicalFeaturesConfiguration:v11];
    v13 = self->_matcherControllerProvider;
    self->_matcherControllerProvider = v12;

    matcherControllerProvider = self->_matcherControllerProvider;
  }

  return matcherControllerProvider;
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(SHShazamKitService *)self serviceDelegate];
  v8 = [v7 allWorkersForService:self];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 taskID];
        v16 = [v6 runningAssociatedRequestID];
        if ([v15 isEqual:v16])
        {
          v17 = [v14 conformsToProtocol:&OBJC_PROTOCOL___SHMatcherDelegate];

          if (v17)
          {
            v23 = v25;
            [v14 matcher:v25 didProduceResponse:v6];
            v24 = v9;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  v18 = sh_log_object();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [v6 runningAssociatedRequestID];
    *buf = 138412290;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Tried to return response ID %@ but could not find a running worker", buf, 0xCu);
  }

  v24 = [SHError errorWithCode:500 underlyingError:0];
  v20 = [(SHShazamKitService *)self delegate];
  v21 = [v6 signature];
  v22 = [SHMatcherResponse errorResponseForSignature:v21 error:v24];
  [v20 matcher:self didProduceResponse:v22];

  v23 = v25;
LABEL_15:
}

- (void)stopRecognition
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Shazam service stopRecognition called", buf, 2u);
  }

  v4 = [(SHShazamKitService *)self serviceDelegate];
  v5 = [v4 allWorkersForService:self];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 conformsToProtocol:{&OBJC_PROTOCOL___SHMatcher, v12}])
        {
          [v11 stopRecognition];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] stopRecognition called for worker with task ID %@", buf, 0x16u);
  }

  v6 = [(SHShazamKitService *)self serviceDelegate];
  v7 = [v6 allWorkersForService:self];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    *&v10 = 138412290;
    v21 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 taskID];
        if ([v15 isEqual:v4])
        {
          v16 = [v14 conformsToProtocol:&OBJC_PROTOCOL___SHMatcher];

          if (v16)
          {
            v17 = sh_log_object();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = [v14 workerID];
              *buf = 138412546;
              v28 = v18;
              v29 = 2112;
              v30 = v4;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Worker with worker ID %@ stopping task ID %@", buf, 0x16u);
            }

            [v14 stopRecognitionForRequestID:v4];
            continue;
          }
        }

        else
        {
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v19 = sh_log_object();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v14 workerID];
            *buf = v21;
            v28 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Worker of type SHLocationProvider shutting down with worker ID %@", buf, 0xCu);
          }
        }

        [v14 shutdownWorker];
      }

      v11 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)shutdownService
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Shazam service stop called", buf, 2u);
  }

  v4 = [(SHShazamKitService *)self serviceDelegate];
  v5 = [v4 allWorkersForService:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) shutdownWorker];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (SHServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

- (SHShazamKitClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end