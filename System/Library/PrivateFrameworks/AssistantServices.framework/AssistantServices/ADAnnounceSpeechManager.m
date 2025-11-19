@interface ADAnnounceSpeechManager
+ (double)_bargeInTimeThresholdForType:(int64_t)a3;
- (ADAnnounceSpeechManager)init;
- (ADAnnounceSpeechManagerDelegate)delegate;
- (BOOL)isAttending;
- (id)_attendingServiceClient;
- (id)_osmedDetector;
- (void)_attendingStoppedWithReason:(int64_t)a3;
- (void)_resetDetector;
- (void)_startAttendingForSpeechPauseWithType:(int64_t)a3 completion:(id)a4;
- (void)_startAttendingForSpeechWithType:(int64_t)a3 forAnnouncementType:(int64_t)a4 completion:(id)a5;
- (void)attendingStoppedWithReason:(int64_t)a3;
- (void)didTransitionToTriggerlessListening;
- (void)startAttendingForPauseInSpeechWithType:(int64_t)a3 completion:(id)a4;
- (void)startAttendingForSpeechWithType:(int64_t)a3 forAnnouncementType:(int64_t)a4 completion:(id)a5;
- (void)stopAttending;
@end

@implementation ADAnnounceSpeechManager

- (ADAnnounceSpeechManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_resetDetector
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADAnnounceSpeechManager _resetDetector]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
  }

  v4 = [(ADAnnounceSpeechManager *)self _osmedDetector];
  v5 = [v4 isListening];

  if (v5)
  {
    v6 = [(ADAnnounceSpeechManager *)self _osmedDetector];
    [v6 stopListening];
  }

  if (self->_isAttendingWithAttendingService)
  {
    v7 = [(ADAnnounceSpeechManager *)self _attendingServiceClient];
    [v7 stopAttendingWithReason:4];
  }

  deviceID = self->_deviceID;
  self->_deviceID = 0;

  self->_speechType = 0;
  osmedDetector = self->_osmedDetector;
  self->_osmedDetector = 0;

  attendingServiceClient = self->_attendingServiceClient;
  self->_attendingServiceClient = 0;

  *&self->_isAttendingWithCSOSL = 0;
}

- (BOOL)isAttending
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100072E2C;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopAttending
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADAnnounceSpeechManager stopAttending]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072F58;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)didTransitionToTriggerlessListening
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADAnnounceSpeechManager didTransitionToTriggerlessListening]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073060;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_osmedDetector
{
  osmedDetector = self->_osmedDetector;
  if (!osmedDetector)
  {
    v4 = +[ADOpportuneSpeakingModule sharedModule];
    v5 = [v4 stateManager];

    v6 = [[ADOpportuneSpeakingModuleEdgeDetector alloc] initWithQueue:self->_queue stateManager:v5];
    v7 = self->_osmedDetector;
    self->_osmedDetector = v6;

    osmedDetector = self->_osmedDetector;
  }

  return osmedDetector;
}

- (id)_attendingServiceClient
{
  attendingServiceClient = self->_attendingServiceClient;
  if (!attendingServiceClient)
  {
    v4 = objc_alloc_init(CSAttendingServiceClient);
    v5 = self->_attendingServiceClient;
    self->_attendingServiceClient = v4;

    [(CSAttendingServiceClient *)self->_attendingServiceClient setDelegate:self];
    attendingServiceClient = self->_attendingServiceClient;
  }

  return attendingServiceClient;
}

- (void)_attendingStoppedWithReason:(int64_t)a3
{
  if (a3 != 4)
  {
    p_delegate = &self->_delegate;
    if (a3 == 1)
    {
      WeakRetained = objc_loadWeakRetained(p_delegate);
      [WeakRetained speechManager:self detectedSpeechForListeningType:1 atHostTime:0 shouldHandleActivation:0.0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(p_delegate);
      [WeakRetained speechManager:self didStopUnexpectlyWithError:0];
    }
  }

  self->_isAttendingWithAttendingService = 0;
}

- (void)attendingStoppedWithReason:(int64_t)a3
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADAnnounceSpeechManager attendingStoppedWithReason:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s attendingStoppedWithReason: %lu", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073360;
  v7[3] = &unk_10051D770;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(queue, v7);
}

- (void)_startAttendingForSpeechPauseWithType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[AFPreferences sharedPreferences];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  [v7 opportuneSpeakingPauseInterval];
  v18[3] = v8;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  [v7 opportuneSpeakingTimeoutInterval];
  v17[3] = v9;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000734B0;
  block[3] = &unk_10050F578;
  block[4] = self;
  v13 = v6;
  v15 = v17;
  v16 = a3;
  v14 = v18;
  v11 = v6;
  dispatch_async(queue, block);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

- (void)_startAttendingForSpeechWithType:(int64_t)a3 forAnnouncementType:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ((a3 - 3) >= 2 && a3)
  {
    if (a3 == 2)
    {
      v9 = +[AFFeatureFlags isRingtoneOverA2DPEnabled];
      v10 = AFSiriLogContextDaemon;
      v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          *buf = 136315138;
          v26 = "[ADAnnounceSpeechManager _startAttendingForSpeechWithType:forAnnouncementType:completion:]";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Ringtone over A2DP enabled, using DOAP for OPPSPK", buf, 0xCu);
        }

        v12 = 0;
        v13 = 1;
      }

      else
      {
        if (v11)
        {
          *buf = 136315138;
          v26 = "[ADAnnounceSpeechManager _startAttendingForSpeechWithType:forAnnouncementType:completion:]";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Ringtone over HFP enabled, using HFP for OPPSPK", buf, 0xCu);
        }

        v13 = 2;
        v12 = 1;
      }

      v22[3] = v12;
      self->_speechType = v13;
    }

    v15 = +[(AFHeadphonesAnnouncementRequestCapabilityProvider *)ADHeadphonesAnnouncementRequestCapabilityProvider];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100073FA4;
    v16[3] = &unk_10050F4B0;
    v16[4] = self;
    v18 = &v21;
    v17 = v8;
    v19 = a3;
    v20 = a4;
    [v15 fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:v16];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[ADAnnounceSpeechManager _startAttendingForSpeechWithType:forAnnouncementType:completion:]";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s No triggerless listening for speech observing type", buf, 0xCu);
    }

    v15 = [AFError errorWithCode:7200 description:0];
    (*(v8 + 2))(v8, v15);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)startAttendingForPauseInSpeechWithType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 2)
  {
    if ((a3 == 3 || a3 == 4) && v6)
    {
      (*(v6 + 2))(v6, 1, 0);
    }
  }

  else if ((a3 - 1) >= 2)
  {
    if (!a3 && v6)
    {
      v9 = [AFError errorWithCode:7200];
      (v7)[2](v7, 0, v9);
    }
  }

  else
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100074ABC;
    block[3] = &unk_10051BFA8;
    block[4] = self;
    v12 = a3;
    v11 = v6;
    dispatch_async(queue, block);
  }
}

- (void)startAttendingForSpeechWithType:(int64_t)a3 forAnnouncementType:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if ((a3 - 1) < 2)
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100074C94;
    v12[3] = &unk_100517610;
    v12[4] = self;
    v14 = a3;
    v15 = a4;
    v13 = v8;
    dispatch_async(queue, v12);
  }

  else if ((a3 - 3) >= 2)
  {
    if (!a3 && v8)
    {
      v11 = [AFError errorWithCode:7200 description:0 underlyingError:0];
      (v9)[2](v9, v11);
    }
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (ADAnnounceSpeechManager)init
{
  v9.receiver = self;
  v9.super_class = ADAnnounceSpeechManager;
  v2 = [(ADAnnounceSpeechManager *)&v9 init];
  if (v2)
  {
    v3 = qword_100590558;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UNSPECIFIED, 0);

    v6 = dispatch_queue_create_with_target_V2("ADAnnounceSpeechManagerQueue", v5, v3);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (double)_bargeInTimeThresholdForType:(int64_t)a3
{
  if (a3 == 2)
  {

    __AFPreferencesAnnounceCallsBargeInTime(a1, a2);
  }

  else if (a3 == 1)
  {

    __AFPreferencesSpokenNotificationQuickIgnoreTime(a1, a2);
  }

  else
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "+[ADAnnounceSpeechManager _bargeInTimeThresholdForType:]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Invalid request delay type, unable to compute voice threshold", &v5, 0xCu);
    }

    return 0.0;
  }

  return result;
}

@end