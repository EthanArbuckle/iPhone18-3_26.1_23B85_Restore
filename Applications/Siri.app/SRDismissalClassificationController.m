@interface SRDismissalClassificationController
- (BOOL)canPresentSurveyForContext:(id)a3;
- (BOOL)classifyRequestAsUnintendedWithContext:(id)a3;
- (BOOL)shouldMitigateBasedOnActivationHistory:(id)a3;
- (id)duetSharedQueue;
- (void)presentSurveyNotificationWithContext:(id)a3 activationHistory:(id)a4 withCompletion:(id)a5;
- (void)queryStreamForCountOfEventsWithCompletion:(id)a3;
- (void)recordDismissalEventWithContext:(id)a3 markAsUnintended:(BOOL)a4;
- (void)recordDismissalMetricWithContext:(id)a3 inputType:(int64_t)a4 previousLongPressBehavior:(int64_t)a5 longPressBehavior:(int64_t)a6;
- (void)recordMitigationEndMetricWithContext:(id)a3 activationHistory:(id)a4 numberOfDaysSinceLastChange:(int64_t)a5;
- (void)recordMitigationStartMetricWithContext:(id)a3 activationHistory:(id)a4 numberOfDaysSinceLastChange:(int64_t)a5;
- (void)requestMitigationStatusBasedOnRequestClassification:(BOOL)a3 withRequestSource:(int64_t)a4 withCompletion:(id)a5;
@end

@implementation SRDismissalClassificationController

- (void)requestMitigationStatusBasedOnRequestClassification:(BOOL)a3 withRequestSource:(int64_t)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(SRDismissalClassificationController *)self _supportsMitigationOnSource:a4];
  v10 = v9;
  if (v6 && v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000825F0;
    v12[3] = &unk_100168C00;
    v12[4] = self;
    v13 = v8;
    v14 = 1;
    [(SRDismissalClassificationController *)self queryStreamForCountOfEventsWithCompletion:v12];
  }

  else if (v8)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[SRDismissalClassificationController requestMitigationStatusBasedOnRequestClassification:withRequestSource:withCompletion:]";
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation Mitigation not needed (unintended: %d, sourceSupportsMitigation: %d)", buf, 0x18u);
    }

    (*(v8 + 2))(v8, 0, v10, 0, 0);
  }
}

- (BOOL)shouldMitigateBasedOnActivationHistory:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 countOfIntendedActivations];
    v5 = [v3 countOfUnintendedActivations];

    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 > 9;
    }

    v7 = v6;
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SRDismissalClassificationController shouldMitigateBasedOnActivationHistory:]";
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation ShouldMitigate: %d", &v10, 0x12u);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)presentSurveyNotificationWithContext:(id)a3 activationHistory:(id)a4 withCompletion:(id)a5
{
  v13 = a5;
  v7 = a4;
  v8 = a3;
  if ([v8 isDeviceUnlocked])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [v8 requestSource];
  v11 = [v8 dismissalReason];

  [SRUIDSurveyNotificationUtility postSiriInternalUIDSurveyNotification:v9 activationHistory:v7 requestSource:v10 dismissalReason:v11];
  v12 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13);
    v12 = v13;
  }
}

- (BOOL)canPresentSurveyForContext:(id)a3
{
  v3 = +[SRUIDSurveyEnablementUtility meetsThresholdForPresenting];
  v4 = +[SRUIDSurveyEnablementUtility isSurveyEnabled];
  v5 = v4;
  v6 = v3 & v4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "[SRDismissalClassificationController canPresentSurveyForContext:]";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v5 & 1;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #survey: %{BOOL}d (surveyEnabled: %{BOOL}d meetsThreshold: %{BOOL}d)", &v9, 0x1Eu);
  }

  return v6;
}

- (id)duetSharedQueue
{
  if (qword_10018F230 != -1)
  {
    sub_1000CF3C0();
  }

  v3 = qword_10018F228;

  return v3;
}

- (void)recordDismissalEventWithContext:(id)a3 markAsUnintended:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v25[0] = @"requestSource";
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 requestSource]);
  v26[0] = v7;
  v25[1] = @"dismissalReason";
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 dismissalReason]);
  v26[1] = v8;
  v25[2] = @"unintended";
  v9 = [NSNumber numberWithBool:v4];
  v26[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

  v11 = +[_DKSystemEventStreams siriServiceStream];
  v12 = [v11 name];

  v13 = [(SRDismissalClassificationController *)self duetSharedQueue];
  AFRecordCoreDuetEventWithStream();

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316162;
    v16 = "[SRDismissalClassificationController recordDismissalEventWithContext:markAsUnintended:]";
    v17 = 2112;
    v18 = @"com.apple.siri.ui.dismissal.duet";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #survey Sending event %@ to stream %@ with context: %@, metadata: %@", &v15, 0x34u);
  }
}

- (void)queryStreamForCountOfEventsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_DKEventQuery);
  v6 = +[_DKSystemEventStreams siriServiceStream];
  v29 = v6;
  v7 = [NSArray arrayWithObjects:&v29 count:1];
  [v5 setEventStreams:v7];

  v8 = [_DKQuery startDateSortDescriptorAscending:1];
  v28 = v8;
  v9 = [NSArray arrayWithObjects:&v28 count:1];
  [v5 setSortDescriptors:v9];

  v10 = [_DKQuery predicateForEventsWithStringValue:@"com.apple.siri.ui.dismissal.duet"];
  [v5 setPredicate:v10];

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SRDismissalClassificationController queryStreamForCountOfEventsWithCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #survey Starting query with query: %@", buf, 0x16u);
  }

  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v27 = 0;
  knowledgeStore = self->_knowledgeStore;
  if (!knowledgeStore)
  {
    v15 = +[_DKKnowledgeStore knowledgeStoreWithDirectReadOnlyAccess];
    v17 = self->_knowledgeStore;
    p_knowledgeStore = &self->_knowledgeStore;
    *p_knowledgeStore = v15;

    knowledgeStore = *p_knowledgeStore;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100083048;
  v21[3] = &unk_100168C48;
  v18 = v12;
  v22 = v18;
  v19 = v13;
  v23 = v19;
  v25 = buf;
  v20 = v4;
  v24 = v20;
  [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v5 responseQueue:0 withCompletion:v21];

  _Block_object_dispose(buf, 8);
}

- (void)recordDismissalMetricWithContext:(id)a3 inputType:(int64_t)a4 previousLongPressBehavior:(int64_t)a5 longPressBehavior:(int64_t)a6
{
  v7 = a3;
  v6 = v7;
  AnalyticsSendEventLazy();
}

- (void)recordMitigationStartMetricWithContext:(id)a3 activationHistory:(id)a4 numberOfDaysSinceLastChange:(int64_t)a5
{
  v6 = a3;
  v9 = a4;
  v7 = v6;
  v8 = v9;
  AnalyticsSendEventLazy();
}

- (void)recordMitigationEndMetricWithContext:(id)a3 activationHistory:(id)a4 numberOfDaysSinceLastChange:(int64_t)a5
{
  v6 = a3;
  v9 = a4;
  v7 = v6;
  v8 = v9;
  AnalyticsSendEventLazy();
}

- (BOOL)classifyRequestAsUnintendedWithContext:(id)a3
{
  v4 = a3;
  v5 = -[SRDismissalClassificationController isDismissalReasonEligibleForSurvey:](self, "isDismissalReasonEligibleForSurvey:", [v4 dismissalReason]);
  v6 = [v4 contentPresentationState] != 2 && (objc_msgSend(v4, "siriState") != 2 || objc_msgSend(v4, "dismissalReason") == 32) || objc_msgSend(v4, "dismissalReason") == 53;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [v4 dismissalReason];
    v9 = SASDismissalReasonGetName();
    v11 = 136316162;
    v12 = "[SRDismissalClassificationController classifyRequestAsUnintendedWithContext:]";
    v13 = 1024;
    v14 = v5;
    v15 = 2112;
    v16 = v9;
    v17 = 1024;
    v18 = v6;
    v19 = 2048;
    v20 = [v4 siriState];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s isDismissalReasonEligible: %d (%@), isEligibleBasedOnContentState: %d (%ld)", &v11, 0x2Cu);
  }

  return v6 & v5;
}

@end