@interface ADRequestDispatcherServiceHelper
- (BOOL)isDeviceInCarDND;
- (BOOL)isDeviceInStarkMode;
- (BOOL)isDeviceLockedWithPasscode;
- (BOOL)isTimeoutSuspended;
- (BOOL)openSensitiveURL:(id)l;
- (id)currentResponseMode;
- (id)headGestureConfiguration;
- (uint64_t)isBobbleAvailable;
- (unint64_t)callState;
- (unsigned)audioSessionID;
- (void)currentAuthorizationStyle:(id)style;
- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion;
- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion;
- (void)deactivateAudioSessionIfNoActiveAssertions;
- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)reason;
- (void)deferAudioSessionDeactivationForAnnouncementRequest;
- (void)didCompleteRecognitionWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics;
- (void)didRecognizeFinalResultCandidatePackage:(id)package sessionUUID:(id)d;
- (void)didRecognizePackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)didRecognizePackage:(id)package sessionUUID:(id)d;
- (void)didRecognizePartialPackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)didRecognizeTokens:(id)tokens nluResult:(id)result sessionUUID:(id)d;
- (void)didRecognizeTokens:(id)tokens sessionUUID:(id)d;
- (void)didRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result sessionUUID:(id)d;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)reason;
- (void)dismissLocationServiceDialogIfNeeded;
- (void)drainLocationServiceRequestsForNewRequestAndClearLocationCache:(BOOL)cache dismissDialog:(BOOL)dialog;
- (void)extendRequestTimeoutBy:(double)by forRequestID:(id)d;
- (void)fetchContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion;
- (void)fetchDeviceAndUserIdsForSharedUserId:(id)id withCallback:(id)callback;
- (void)handleCommand:(id)command completion:(id)completion;
- (void)handleCommand:(id)command withExecutionContextMatchingInfo:(id)info completion:(id)completion;
- (void)handleSpeechRecognized:(id)recognized completion:(id)completion;
- (void)handleSpeechServerEndpointIdentified:(id)identified completion:(id)completion;
- (void)isDeviceWatchAuthenticatedWithCompletion:(id)completion;
- (void)notifySpeechDetectedIsUndirected;
- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion;
- (void)prepareForAudioHandoffWithCompletion:(id)completion;
- (void)registerInternalGestureTestingHandler:(id)handler;
- (void)selectResultWithResultCandidate:(id)candidate completion:(id)completion;
- (void)submitExternalActivationRequest:(id)request completion:(id)completion;
@end

@implementation ADRequestDispatcherServiceHelper

- (uint64_t)isBobbleAvailable
{
  v0 = [ADRequestDispatcherServiceHelper headGestureConfiguration]_0();
  v1 = v0;
  if (v0)
  {
    isSupported = [v0 isSupported];
    isEnabled = [v1 isEnabled];
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "ADIsBobbleAvailable";
      v10 = 1024;
      v11 = isSupported;
      v12 = 1024;
      v13 = isEnabled;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s isBobbleSupported: %d, isBobbleEnabled: %d", &v8, 0x18u);
    }

    v5 = isSupported & isEnabled;
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "ADIsBobbleAvailable";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to extract headGestureConfiguration from deviceInfo", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)headGestureConfiguration
{
  v0 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  headGestureConfiguration = [v0 headGestureConfiguration];

  return headGestureConfiguration;
}

- (void)dismissLocationServiceDialogIfNeeded
{
  v2 = +[ADLocationService sharedService];
  [v2 dismissTCCDialogIfNeeded];
}

- (void)drainLocationServiceRequestsForNewRequestAndClearLocationCache:(BOOL)cache dismissDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  cacheCopy = cache;
  v6 = +[ADLocationService sharedService];
  [v6 drainRequestsWithErrorCode:2 clearLocationCache:cacheCopy dismissDialog:dialogCopy];
}

- (void)currentAuthorizationStyle:(id)style
{
  styleCopy = style;
  v4 = +[ADLocationService sharedService];
  [v4 currentAuthorizationStyle:styleCopy];
}

- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = +[ADLocationService sharedService];
  [v7 currentLocationWithFetchRequest:requestCopy completion:completionCopy];
}

- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_opt_new();
  [v9 setDesiredAccuracy:accuracy];
  [v9 setStyle:0];
  [v9 setTimeout:timeout];
  v8 = +[ADLocationService sharedService];
  [v8 currentLocationWithFetchRequest:v9 completion:completionCopy];
}

- (void)registerInternalGestureTestingHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  [v4 registerInternalGestureTestingHandler:handlerCopy];
}

- (void)deactivateAudioSessionIfNoActiveAssertions
{
  v2 = +[ADSpeechManager sharedManager];
  [v2 deactivateAudioSessionIfNoActiveAssertions];
}

- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)reason
{
  v4 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  [v4 deactivateCurrentAnnouncementRequestForReason:reason];
}

- (void)deferAudioSessionDeactivationForAnnouncementRequest
{
  v2 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  [v2 deferAudioSessionDeactivationForAnnouncementRequest];
}

- (id)currentResponseMode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  _responseModeProvider = [v2 _responseModeProvider];

  if (_responseModeProvider)
  {
    fetchCurrentMode = [_responseModeProvider fetchCurrentMode];
  }

  else
  {
    fetchCurrentMode = 0;
  }

  return fetchCurrentMode;
}

- (unint64_t)callState
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  callState = [v2 callState];

  return callState;
}

- (unsigned)audioSessionID
{
  v2 = +[ADSpeechManager sharedManager];
  audioSessionController = [v2 audioSessionController];
  getAudioSessionID = [audioSessionController getAudioSessionID];

  return getAudioSessionID;
}

- (void)fetchDeviceAndUserIdsForSharedUserId:(id)id withCallback:(id)callback
{
  callbackCopy = callback;
  idCopy = id;
  v7 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001601B4;
  v9[3] = &unk_1005138B8;
  v10 = callbackCopy;
  v8 = callbackCopy;
  [v7 fetchDeviceAndUserIdsForSharedUserId:idCopy withCallback:v9];
}

- (void)submitExternalActivationRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleExternalActivationRequest:requestCopy completion:completionCopy];
}

- (void)notifySpeechDetectedIsUndirected
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 notifySpeechDetectedIsUndirected];
}

- (void)handleSpeechRecognized:(id)recognized completion:(id)completion
{
  completionCopy = completion;
  recognizedCopy = recognized;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleSpeechRecognized:recognizedCopy completion:completionCopy];
}

- (void)handleSpeechServerEndpointIdentified:(id)identified completion:(id)completion
{
  completionCopy = completion;
  identifiedCopy = identified;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleSpeechServerEndpointIdentified:identifiedCopy completion:completionCopy];
}

- (void)selectResultWithResultCandidate:(id)candidate completion:(id)completion
{
  completionCopy = completion;
  candidateCopy = candidate;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 selectResultWithResultCandidate:candidateCopy completionHandler:completionCopy];
}

- (void)didRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  dCopy = d;
  resultCopy = result;
  packageCopy = package;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizeVoiceCommandCandidatePackage:packageCopy nluResult:resultCopy sessionUUID:dCopy];
}

- (void)didRecognizePackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  dCopy = d;
  resultCopy = result;
  packageCopy = package;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizePackage:packageCopy nluResult:resultCopy sessionUUID:dCopy];
}

- (void)didRecognizePartialPackage:(id)package nluResult:(id)result sessionUUID:(id)d
{
  dCopy = d;
  resultCopy = result;
  packageCopy = package;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizePartialPackage:packageCopy nluResult:resultCopy sessionUUID:dCopy];
}

- (void)didRecognizeTokens:(id)tokens nluResult:(id)result sessionUUID:(id)d
{
  dCopy = d;
  resultCopy = result;
  tokensCopy = tokens;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizeTokens:tokensCopy nluResult:resultCopy sessionUUID:dCopy];
}

- (void)didCompleteRecognitionWithError:(id)error secureOfflineOnlyRecognition:(BOOL)recognition sessionUUID:(id)d statistics:(id)statistics
{
  recognitionCopy = recognition;
  statisticsCopy = statistics;
  dCopy = d;
  errorCopy = error;
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 dictationRequestDidCompleteRecognitionWithError:errorCopy secureOfflineOnlyRecognition:recognitionCopy sessionUUID:dCopy statistics:statisticsCopy];
}

- (void)didRecognizePackage:(id)package sessionUUID:(id)d
{
  dCopy = d;
  packageCopy = package;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizePackage:packageCopy nluResult:0 sessionUUID:dCopy];
}

- (void)didRecognizeFinalResultCandidatePackage:(id)package sessionUUID:(id)d
{
  dCopy = d;
  packageCopy = package;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizeFinalResultCandidatePackage:packageCopy sessionUUID:dCopy];
}

- (void)didRecognizeTokens:(id)tokens sessionUUID:(id)d
{
  dCopy = d;
  tokensCopy = tokens;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizeTokens:tokensCopy nluResult:0 sessionUUID:dCopy];
}

- (void)extendRequestTimeoutBy:(double)by forRequestID:(id)d
{
  dCopy = d;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 extendRequestTimeoutBy:dCopy forRequestID:by];
}

- (void)handleCommand:(id)command withExecutionContextMatchingInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  commandCopy = command;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 handleCommand:commandCopy withExecutionContextMatchingInfo:infoCopy completion:completionCopy];
}

- (void)fetchContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion
{
  devicesCopy = devices;
  keysCopy = keys;
  dCopy = d;
  completionCopy = completion;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ADRequestDispatcherServiceHelper fetchContextsForKeys:forRequestID:includesNearbyDevices:completion:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s #hal fetchContextsForKeys called in AFRequestDispatcherServiceHelper.", buf, 0xCu);
  }

  v13 = +[ADCommandCenter sharedCommandCenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100160B00;
  v15[3] = &unk_10051CD10;
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 getDeviceContextsForKeys:keysCopy forRequestID:dCopy includesNearbyDevices:devicesCopy completion:v15];
}

- (void)prepareForAudioHandoffWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100160BC4;
  v6[3] = &unk_10051E100;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 prepareForStartPlaybackWithDestination:1 intent:0 completion:v6];
}

- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100160C84;
  v6[3] = &unk_10051CF58;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 handleFailedStartPlaybackWithDestination:1 completion:v6];
}

- (BOOL)openSensitiveURL:(id)l
{
  lCopy = l;
  v4 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100160DD0;
  v9[3] = &unk_100519220;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 openURL:lCopy completion:v9];

  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)isTimeoutSuspended
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  isTimeoutSuspended = [v2 isTimeoutSuspended];

  return isTimeoutSuspended;
}

- (void)isDeviceWatchAuthenticatedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 isWatchAuthenticatedWithCompletion:completionCopy];
}

- (BOOL)isDeviceLockedWithPasscode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  isDeviceLocked = [v2 isDeviceLocked];

  return isDeviceLocked;
}

- (BOOL)isDeviceInStarkMode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  isInStarkMode = [v2 isInStarkMode];

  return isInStarkMode;
}

- (BOOL)isDeviceInCarDND
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  isInCarDNDMode = [v2 isInCarDNDMode];

  return isInCarDNDMode;
}

- (void)handleCommand:(id)command completion:(id)completion
{
  completionCopy = completion;
  commandCopy = command;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleCommand:commandCopy withExecutionContextMatchingInfo:0 completion:completionCopy];
}

- (void)dismissAssistantWithReason:(int64_t)reason
{
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 dismissAssistantWithReason:reason];
}

- (void)dismissAssistant
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 dismissAssistant];
}

@end