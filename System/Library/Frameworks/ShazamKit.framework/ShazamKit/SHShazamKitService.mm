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
- (SHShazamKitService)initWithClientCredentials:(id)credentials;
- (SHShazamKitService)initWithClientCredentials:(id)credentials audioTapProvider:(id)provider eventSignaller:(id)signaller privacyDisclosureManager:(id)manager;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)dealloc;
- (void)disableSpectralOutputNotification;
- (void)finishedWorker:(id)worker;
- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler;
- (void)isHapticTrackAvailableForMediaItem:(id)item completionHandler:(id)handler;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler;
- (void)prepareMatcherForRequestID:(id)d completionHandler:(id)handler;
- (void)registerMatcherController:(id)controller forRequest:(id)request completionHandler:(id)handler;
- (void)setUpSpectralOutputNotification;
- (void)shutdownService;
- (void)startRecognitionForRequest:(id)request;
- (void)startRecognitionForRequest:(id)request completionHandler:(id)handler;
- (void)startUpdatingLocationForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
- (void)synchronizeSnapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler;
- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)identifier completionHandler:(id)handler;
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

- (SHShazamKitService)initWithClientCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v9.receiver = self;
  v9.super_class = SHShazamKitService;
  v6 = [(SHShazamKitService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientCredentials, credentials);
  }

  return v7;
}

- (SHShazamKitService)initWithClientCredentials:(id)credentials audioTapProvider:(id)provider eventSignaller:(id)signaller privacyDisclosureManager:(id)manager
{
  providerCopy = provider;
  signallerCopy = signaller;
  managerCopy = manager;
  v14 = [(SHShazamKitService *)self initWithClientCredentials:credentials];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_audioTapProvider, provider);
    objc_storeStrong(&v15->_eventSignaller, signaller);
    objc_storeStrong(&v15->_privacyDisclosureManager, manager);
  }

  return v15;
}

- (void)setUpSpectralOutputNotification
{
  clientCredentials = [(SHShazamKitService *)self clientCredentials];
  canEnableSpectralOutput = [clientCredentials canEnableSpectralOutput];

  if (canEnableSpectralOutput)
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

- (void)prepareMatcherForRequestID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [SHPreRecordingWorker alloc];
  audioTapProvider = [(SHShazamKitService *)self audioTapProvider];
  v10 = [(SHPreRecordingWorker *)v8 initWithRequestID:dCopy audioTapProvider:audioTapProvider];

  if (v10)
  {
    serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
    v16 = 0;
    v12 = [serviceDelegate service:self registerWorker:v10 watchdogTimeout:&v16 error:120.0];
    v13 = v16;

    if (v12)
    {
      [(SHPreRecordingWorker *)v10 setWorkerDelegate:self];
      [(SHPreRecordingWorker *)v10 startRecordingWithCompletionHandler:handlerCopy];
    }

    else
    {
      v15 = sh_log_object();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v10;
        v19 = 2112;
        v20 = dCopy;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to start prerecording for worker %@ - the pre recording is already running with the same worker id %@ running - %@", buf, 0x20u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
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

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)startRecognitionForRequest:(id)request
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is not supported by shazamd, please use startRecognitionForRequest:completionHandler", v3];
}

- (void)startRecognitionForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  matcherControllerProvider = [(SHShazamKitService *)self matcherControllerProvider];
  [matcherControllerProvider setDelegate:serviceDelegate];

  if ([requestCopy type] == 3 && (-[SHShazamKitService privacyDisclosureManager](self, "privacyDisclosureManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "privacyDisclosureAcknowledgementRequired"), v10, v11))
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412290;
      v31 = requestCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to create matcher for request %@ as privacy disclosure acknowledgement is required", &v30, 0xCu);
    }

    v13 = [SHError privateErrorWithCode:204 underlyingError:0];
    delegate = [(SHShazamKitService *)self delegate];
    signature = [requestCopy signature];
    v16 = signature;
    if (!signature)
    {
      v16 = objc_opt_new();
    }

    v17 = [SHMatcherResponse errorResponseForSignature:v16 error:v13];
    [delegate matcher:self didProduceResponse:v17];

    if (!signature)
    {
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    matcherControllerProvider2 = [(SHShazamKitService *)self matcherControllerProvider];
    v13 = [matcherControllerProvider2 matcherControllerForRequest:requestCopy];

    if ([requestCopy type] == 2 || objc_msgSend(requestCopy, "type") == 3)
    {
      v19 = sh_log_object();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v30 = 138412290;
        v31 = requestCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Enabling spectral output for matcher request %@", &v30, 0xCu);
      }

      [(SHShazamKitService *)self setUpSpectralOutputNotification];
    }

    if (v13)
    {
      if ([requestCopy type] == 2)
      {
        v20 = sh_log_object();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Request type is record, starting location updates", &v30, 2u);
        }

        [(SHShazamKitService *)self startUpdatingLocationForRequest:requestCopy];
      }

      clientCredentials = [(SHShazamKitService *)self clientCredentials];
      attribution = [clientCredentials attribution];
      bundleIdentifier = [attribution bundleIdentifier];

      if (([bundleIdentifier isEqualToString:@"com.apple.springboard"] & 1) != 0 || objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.musicrecognition.MusicRecognitionControls"))
      {
        eventSignaller = [(SHShazamKitService *)self eventSignaller];
        [eventSignaller sendEventSignal:@"com.apple.musicrecognition.recognition-activated"];
      }

      [(SHShazamKitService *)self registerMatcherController:v13 forRequest:requestCopy completionHandler:handlerCopy];
    }

    else
    {
      v25 = sh_log_object();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to fetch matcher controller - it is likely some required entitlements are missing", &v30, 2u);
      }

      bundleIdentifier = [SHCoreError errorWithCode:102 underlyingError:0];
      delegate2 = [(SHShazamKitService *)self delegate];
      signature2 = [requestCopy signature];
      v28 = signature2;
      if (!signature2)
      {
        v28 = objc_opt_new();
      }

      v29 = [SHMatcherResponse errorResponseForSignature:v28 error:bundleIdentifier];
      [delegate2 matcher:self didProduceResponse:v29];

      if (!signature2)
      {
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }
    }
  }
}

- (void)startUpdatingLocationForRequest:(id)request
{
  requestCopy = request;
  requestID = [requestCopy requestID];
  uUIDString = [requestID UUIDString];
  clientCredentials = [(SHShazamKitService *)self clientCredentials];
  v8 = +[SHLocationProvider locationProviderForRequestIdentifier:clientType:](SHLocationProvider, "locationProviderForRequestIdentifier:clientType:", uUIDString, [clientCredentials clientType]);

  [v8 setWorkerDelegate:self];
  if (v8)
  {
    serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
    [requestCopy watchdogTimeout];
    v14 = 0;
    v10 = [serviceDelegate service:self registerWorker:v8 watchdogTimeout:&v14 error:?];
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

- (void)registerMatcherController:(id)controller forRequest:(id)request completionHandler:(id)handler
{
  controllerCopy = controller;
  requestCopy = request;
  handlerCopy = handler;
  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  [requestCopy watchdogTimeout];
  v21 = 0;
  v12 = [serviceDelegate service:self registerWorker:controllerCopy watchdogTimeout:&v21 error:?];
  v13 = v21;

  if (v12)
  {
    [controllerCopy setWorkerDelegate:self];
    delegate = [(SHShazamKitService *)self delegate];
    [controllerCopy setDelegate:delegate];

    [controllerCopy setCompletionHandler:handlerCopy];
    [controllerCopy startRecognitionForRequest:requestCopy];
  }

  else
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      workerID = [controllerCopy workerID];
      *buf = 138412546;
      v23 = controllerCopy;
      v24 = 2112;
      v25 = workerID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to register worker %@ - the matcher is already running with the same worker id %@ running", buf, 0x16u);
    }

    delegate2 = [(SHShazamKitService *)self delegate];
    signature = [requestCopy signature];
    v19 = signature;
    if (!signature)
    {
      v19 = objc_opt_new();
    }

    v20 = [SHMatcherResponse errorResponseForSignature:v19 error:v13];
    [delegate2 matcher:self didProduceResponse:v20];

    if (!signature)
    {
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"%@ is not supported by shazamd, please use synchronizeSnapshot:startCondition:completionHandler", v4];
}

- (void)synchronizeSnapshot:(id)snapshot startCondition:(id)condition completionHandler:(id)handler
{
  handlerCopy = handler;
  conditionCopy = condition;
  snapshotCopy = snapshot;
  v11 = [SHMediaLibrarySyncManager alloc];
  libraryClient = [(SHShazamKitService *)self libraryClient];
  v15 = [(SHMediaLibrarySyncManager *)v11 initWithClient:libraryClient completionHandler:handlerCopy];

  [(SHMediaLibrarySyncManager *)v15 setWorkerDelegate:self];
  delegate = [(SHShazamKitService *)self delegate];
  [(SHMediaLibrarySyncManager *)v15 setDelegate:delegate];

  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  [serviceDelegate service:self registerWorker:v15 watchdogTimeout:0 error:500.0];

  [(SHMediaLibrarySyncManager *)v15 _synchronizeSnapshot:snapshotCopy startCondition:conditionCopy];
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  libraryQueryManager = [(SHShazamKitService *)self libraryQueryManager];
  [libraryQueryManager _libraryInfoWithCompletionHandler:handlerCopy];
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  libraryQueryManager = [(SHShazamKitService *)self libraryQueryManager];
  [libraryQueryManager _queryLibraryWithParameters:parametersCopy completionHandler:handlerCopy];
}

- (void)mediaItemsForShazamIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  mediaItemFetcher = [(SHShazamKitService *)self mediaItemFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014DBC;
  v10[3] = &unk_10007D3A0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [mediaItemFetcher mediaItemsForShazamIDs:dsCopy completionHandler:v10];
}

- (void)synchronouslyFetchRawSongResponseDataForMediaItemIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  libraryQueryManager = [(SHShazamKitService *)self libraryQueryManager];
  v9 = [libraryQueryManager rawSongResponseDataForMediaItemIdentifier:identifierCopy];

  handlerCopy[2](handlerCopy, v9);
}

- (void)hapticsForMediaItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  hapticsFetcher = [(SHShazamKitService *)self hapticsFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014FA4;
  v10[3] = &unk_10007D3A0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [hapticsFetcher hapticsForMediaItems:itemsCopy completionHandler:v10];
}

- (void)isHapticTrackAvailableForMediaItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  hapticsFetcher = [(SHShazamKitService *)self hapticsFetcher];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000150F4;
  v10[3] = &unk_10007D3C8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [hapticsFetcher hasHapticTrackForMediaItem:itemCopy completionHandler:v10];
}

- (void)finishedWorker:(id)worker
{
  workerCopy = worker;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = workerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Worker %@ stopped running", &v7, 0xCu);
  }

  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  [serviceDelegate service:self unregisterWorker:workerCopy];
}

- (SHMediaLibraryQueryManager)libraryQueryManager
{
  libraryQueryManager = self->_libraryQueryManager;
  if (!libraryQueryManager)
  {
    v4 = [SHMediaLibraryQueryManager alloc];
    libraryClient = [(SHShazamKitService *)self libraryClient];
    v6 = [(SHMediaLibraryQueryManager *)v4 initWithClient:libraryClient];
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
    clientCredentials = [(SHShazamKitService *)self clientCredentials];
    attribution = [clientCredentials attribution];
    containingAppBundleIdentifier = [attribution containingAppBundleIdentifier];
    clientCredentials2 = [(SHShazamKitService *)self clientCredentials];
    v9 = -[SHMediaItemFetcher initWithBundleIdentifier:clientType:](v4, "initWithBundleIdentifier:clientType:", containingAppBundleIdentifier, [clientCredentials2 clientType]);
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
    audioRecordingManager = [v5 audioRecordingManager];
    clientCredentials = [(SHShazamKitService *)self clientCredentials];
    v8 = [(SHAudioTapProvider *)v4 initWithAudioRecordingManager:audioRecordingManager clientCredentials:clientCredentials];
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
    clientCredentials = [(SHShazamKitService *)self clientCredentials];
    v6 = [(SHMediaLibraryClient *)v4 initWithCredentials:clientCredentials];
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
    clientCredentials = [(SHShazamKitService *)self clientCredentials];
    attribution = [clientCredentials attribution];
    bundleIdentifier = [attribution bundleIdentifier];
    v8 = [(SHMusicalFeaturesConfigurationProvider *)v4 initWithSourceBundleIdentifier:bundleIdentifier];
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
    audioTapProvider = [(SHShazamKitService *)self audioTapProvider];
    clientCredentials = [(SHShazamKitService *)self clientCredentials];
    attribution = [clientCredentials attribution];
    clientCredentials2 = [(SHShazamKitService *)self clientCredentials];
    clientType = [clientCredentials2 clientType];
    musicalFeaturesProvider = [(SHShazamKitService *)self musicalFeaturesProvider];
    musicalFeaturesConfiguration = [musicalFeaturesProvider musicalFeaturesConfiguration];
    v12 = [(SHMatcherControllerProvider *)v4 initWithAudioTapProvider:audioTapProvider attribution:attribution clientType:clientType musicalFeaturesConfiguration:musicalFeaturesConfiguration];
    v13 = self->_matcherControllerProvider;
    self->_matcherControllerProvider = v12;

    matcherControllerProvider = self->_matcherControllerProvider;
  }

  return matcherControllerProvider;
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  matcherCopy = matcher;
  responseCopy = response;
  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  v8 = [serviceDelegate allWorkersForService:self];

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
        taskID = [v14 taskID];
        runningAssociatedRequestID = [responseCopy runningAssociatedRequestID];
        if ([taskID isEqual:runningAssociatedRequestID])
        {
          v17 = [v14 conformsToProtocol:&OBJC_PROTOCOL___SHMatcherDelegate];

          if (v17)
          {
            v23 = matcherCopy;
            [v14 matcher:matcherCopy didProduceResponse:responseCopy];
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
    runningAssociatedRequestID2 = [responseCopy runningAssociatedRequestID];
    *buf = 138412290;
    v31 = runningAssociatedRequestID2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Tried to return response ID %@ but could not find a running worker", buf, 0xCu);
  }

  v24 = [SHError errorWithCode:500 underlyingError:0];
  delegate = [(SHShazamKitService *)self delegate];
  signature = [responseCopy signature];
  v22 = [SHMatcherResponse errorResponseForSignature:signature error:v24];
  [delegate matcher:self didProduceResponse:v22];

  v23 = matcherCopy;
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

  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  v5 = [serviceDelegate allWorkersForService:self];

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

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] stopRecognition called for worker with task ID %@", buf, 0x16u);
  }

  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  v7 = [serviceDelegate allWorkersForService:self];

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
        taskID = [v14 taskID];
        if ([taskID isEqual:dCopy])
        {
          v16 = [v14 conformsToProtocol:&OBJC_PROTOCOL___SHMatcher];

          if (v16)
          {
            v17 = sh_log_object();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              workerID = [v14 workerID];
              *buf = 138412546;
              selfCopy = workerID;
              v29 = 2112;
              v30 = dCopy;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Worker with worker ID %@ stopping task ID %@", buf, 0x16u);
            }

            [v14 stopRecognitionForRequestID:dCopy];
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
            workerID2 = [v14 workerID];
            *buf = v21;
            selfCopy = workerID2;
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

  serviceDelegate = [(SHShazamKitService *)self serviceDelegate];
  v5 = [serviceDelegate allWorkersForService:self];

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