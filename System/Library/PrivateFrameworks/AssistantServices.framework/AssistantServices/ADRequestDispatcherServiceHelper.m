@interface ADRequestDispatcherServiceHelper
- (BOOL)isDeviceInCarDND;
- (BOOL)isDeviceInStarkMode;
- (BOOL)isDeviceLockedWithPasscode;
- (BOOL)isTimeoutSuspended;
- (BOOL)openSensitiveURL:(id)a3;
- (id)currentResponseMode;
- (id)headGestureConfiguration;
- (uint64_t)isBobbleAvailable;
- (unint64_t)callState;
- (unsigned)audioSessionID;
- (void)currentAuthorizationStyle:(id)a3;
- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5;
- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4;
- (void)deactivateAudioSessionIfNoActiveAssertions;
- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)a3;
- (void)deferAudioSessionDeactivationForAnnouncementRequest;
- (void)didCompleteRecognitionWithError:(id)a3 secureOfflineOnlyRecognition:(BOOL)a4 sessionUUID:(id)a5 statistics:(id)a6;
- (void)didRecognizeFinalResultCandidatePackage:(id)a3 sessionUUID:(id)a4;
- (void)didRecognizePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)didRecognizePackage:(id)a3 sessionUUID:(id)a4;
- (void)didRecognizePartialPackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)didRecognizeTokens:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)didRecognizeTokens:(id)a3 sessionUUID:(id)a4;
- (void)didRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)a3;
- (void)dismissLocationServiceDialogIfNeeded;
- (void)drainLocationServiceRequestsForNewRequestAndClearLocationCache:(BOOL)a3 dismissDialog:(BOOL)a4;
- (void)extendRequestTimeoutBy:(double)a3 forRequestID:(id)a4;
- (void)fetchContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6;
- (void)fetchDeviceAndUserIdsForSharedUserId:(id)a3 withCallback:(id)a4;
- (void)handleCommand:(id)a3 completion:(id)a4;
- (void)handleCommand:(id)a3 withExecutionContextMatchingInfo:(id)a4 completion:(id)a5;
- (void)handleSpeechRecognized:(id)a3 completion:(id)a4;
- (void)handleSpeechServerEndpointIdentified:(id)a3 completion:(id)a4;
- (void)isDeviceWatchAuthenticatedWithCompletion:(id)a3;
- (void)notifySpeechDetectedIsUndirected;
- (void)prepareForAudioHandoffFailedWithCompletion:(id)a3;
- (void)prepareForAudioHandoffWithCompletion:(id)a3;
- (void)registerInternalGestureTestingHandler:(id)a3;
- (void)selectResultWithResultCandidate:(id)a3 completion:(id)a4;
- (void)submitExternalActivationRequest:(id)a3 completion:(id)a4;
@end

@implementation ADRequestDispatcherServiceHelper

- (uint64_t)isBobbleAvailable
{
  v0 = [ADRequestDispatcherServiceHelper headGestureConfiguration]_0();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 isSupported];
    v3 = [v1 isEnabled];
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "ADIsBobbleAvailable";
      v10 = 1024;
      v11 = v2;
      v12 = 1024;
      v13 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s isBobbleSupported: %d, isBobbleEnabled: %d", &v8, 0x18u);
    }

    v5 = v2 & v3;
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
  v1 = [v0 headGestureConfiguration];

  return v1;
}

- (void)dismissLocationServiceDialogIfNeeded
{
  v2 = +[ADLocationService sharedService];
  [v2 dismissTCCDialogIfNeeded];
}

- (void)drainLocationServiceRequestsForNewRequestAndClearLocationCache:(BOOL)a3 dismissDialog:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[ADLocationService sharedService];
  [v6 drainRequestsWithErrorCode:2 clearLocationCache:v5 dismissDialog:v4];
}

- (void)currentAuthorizationStyle:(id)a3
{
  v3 = a3;
  v4 = +[ADLocationService sharedService];
  [v4 currentAuthorizationStyle:v3];
}

- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADLocationService sharedService];
  [v7 currentLocationWithFetchRequest:v6 completion:v5];
}

- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5
{
  v7 = a5;
  v9 = objc_opt_new();
  [v9 setDesiredAccuracy:a3];
  [v9 setStyle:0];
  [v9 setTimeout:a4];
  v8 = +[ADLocationService sharedService];
  [v8 currentLocationWithFetchRequest:v9 completion:v7];
}

- (void)registerInternalGestureTestingHandler:(id)a3
{
  v3 = a3;
  v4 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  [v4 registerInternalGestureTestingHandler:v3];
}

- (void)deactivateAudioSessionIfNoActiveAssertions
{
  v2 = +[ADSpeechManager sharedManager];
  [v2 deactivateAudioSessionIfNoActiveAssertions];
}

- (void)deactivateCurrentAnnouncementRequestForReason:(int64_t)a3
{
  v4 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  [v4 deactivateCurrentAnnouncementRequestForReason:a3];
}

- (void)deferAudioSessionDeactivationForAnnouncementRequest
{
  v2 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  [v2 deferAudioSessionDeactivationForAnnouncementRequest];
}

- (id)currentResponseMode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _responseModeProvider];

  if (v3)
  {
    v4 = [v3 fetchCurrentMode];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)callState
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 callState];

  return v3;
}

- (unsigned)audioSessionID
{
  v2 = +[ADSpeechManager sharedManager];
  v3 = [v2 audioSessionController];
  v4 = [v3 getAudioSessionID];

  return v4;
}

- (void)fetchDeviceAndUserIdsForSharedUserId:(id)a3 withCallback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001601B4;
  v9[3] = &unk_1005138B8;
  v10 = v5;
  v8 = v5;
  [v7 fetchDeviceAndUserIdsForSharedUserId:v6 withCallback:v9];
}

- (void)submitExternalActivationRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleExternalActivationRequest:v6 completion:v5];
}

- (void)notifySpeechDetectedIsUndirected
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 notifySpeechDetectedIsUndirected];
}

- (void)handleSpeechRecognized:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleSpeechRecognized:v6 completion:v5];
}

- (void)handleSpeechServerEndpointIdentified:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleSpeechServerEndpointIdentified:v6 completion:v5];
}

- (void)selectResultWithResultCandidate:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 selectResultWithResultCandidate:v6 completionHandler:v5];
}

- (void)didRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizeVoiceCommandCandidatePackage:v9 nluResult:v8 sessionUUID:v7];
}

- (void)didRecognizePackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizePackage:v9 nluResult:v8 sessionUUID:v7];
}

- (void)didRecognizePartialPackage:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizePartialPackage:v9 nluResult:v8 sessionUUID:v7];
}

- (void)didRecognizeTokens:(id)a3 nluResult:(id)a4 sessionUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 dictationRequestDidRecognizeTokens:v9 nluResult:v8 sessionUUID:v7];
}

- (void)didCompleteRecognitionWithError:(id)a3 secureOfflineOnlyRecognition:(BOOL)a4 sessionUUID:(id)a5 statistics:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 dictationRequestDidCompleteRecognitionWithError:v11 secureOfflineOnlyRecognition:v7 sessionUUID:v10 statistics:v9];
}

- (void)didRecognizePackage:(id)a3 sessionUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizePackage:v6 nluResult:0 sessionUUID:v5];
}

- (void)didRecognizeFinalResultCandidatePackage:(id)a3 sessionUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizeFinalResultCandidatePackage:v6 sessionUUID:v5];
}

- (void)didRecognizeTokens:(id)a3 sessionUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 dictationRequestDidRecognizeTokens:v6 nluResult:0 sessionUUID:v5];
}

- (void)extendRequestTimeoutBy:(double)a3 forRequestID:(id)a4
{
  v5 = a4;
  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 extendRequestTimeoutBy:v5 forRequestID:a3];
}

- (void)handleCommand:(id)a3 withExecutionContextMatchingInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ADCommandCenter sharedCommandCenter];
  [v10 handleCommand:v9 withExecutionContextMatchingInfo:v8 completion:v7];
}

- (void)fetchContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
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
  v16 = v11;
  v14 = v11;
  [v13 getDeviceContextsForKeys:v9 forRequestID:v10 includesNearbyDevices:v7 completion:v15];
}

- (void)prepareForAudioHandoffWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100160BC4;
  v6[3] = &unk_10051E100;
  v7 = v3;
  v5 = v3;
  [v4 prepareForStartPlaybackWithDestination:1 intent:0 completion:v6];
}

- (void)prepareForAudioHandoffFailedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100160C84;
  v6[3] = &unk_10051CF58;
  v7 = v3;
  v5 = v3;
  [v4 handleFailedStartPlaybackWithDestination:1 completion:v6];
}

- (BOOL)openSensitiveURL:(id)a3
{
  v3 = a3;
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
  [v5 openURL:v3 completion:v9];

  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  LOBYTE(v5) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

- (BOOL)isTimeoutSuspended
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 isTimeoutSuspended];

  return v3;
}

- (void)isDeviceWatchAuthenticatedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 isWatchAuthenticatedWithCompletion:v3];
}

- (BOOL)isDeviceLockedWithPasscode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 isDeviceLocked];

  return v3;
}

- (BOOL)isDeviceInStarkMode
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 isInStarkMode];

  return v3;
}

- (BOOL)isDeviceInCarDND
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 isInCarDNDMode];

  return v3;
}

- (void)handleCommand:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 handleCommand:v6 withExecutionContextMatchingInfo:0 completion:v5];
}

- (void)dismissAssistantWithReason:(int64_t)a3
{
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 dismissAssistantWithReason:a3];
}

- (void)dismissAssistant
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 dismissAssistant];
}

@end