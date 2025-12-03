@interface SRDismissalClassificationController
- (BOOL)canPresentSurveyForContext:(id)context;
- (BOOL)classifyRequestAsUnintendedWithContext:(id)context;
- (BOOL)shouldMitigateBasedOnActivationHistory:(id)history;
- (id)duetSharedQueue;
- (void)presentSurveyNotificationWithContext:(id)context activationHistory:(id)history withCompletion:(id)completion;
- (void)queryStreamForCountOfEventsWithCompletion:(id)completion;
- (void)recordDismissalEventWithContext:(id)context markAsUnintended:(BOOL)unintended;
- (void)recordDismissalMetricWithContext:(id)context inputType:(int64_t)type previousLongPressBehavior:(int64_t)behavior longPressBehavior:(int64_t)pressBehavior;
- (void)recordMitigationEndMetricWithContext:(id)context activationHistory:(id)history numberOfDaysSinceLastChange:(int64_t)change;
- (void)recordMitigationStartMetricWithContext:(id)context activationHistory:(id)history numberOfDaysSinceLastChange:(int64_t)change;
- (void)requestMitigationStatusBasedOnRequestClassification:(BOOL)classification withRequestSource:(int64_t)source withCompletion:(id)completion;
@end

@implementation SRDismissalClassificationController

- (void)requestMitigationStatusBasedOnRequestClassification:(BOOL)classification withRequestSource:(int64_t)source withCompletion:(id)completion
{
  classificationCopy = classification;
  completionCopy = completion;
  v9 = [(SRDismissalClassificationController *)self _supportsMitigationOnSource:source];
  v10 = v9;
  if (classificationCopy && v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000825F0;
    v12[3] = &unk_100168C00;
    v12[4] = self;
    v13 = completionCopy;
    v14 = 1;
    [(SRDismissalClassificationController *)self queryStreamForCountOfEventsWithCompletion:v12];
  }

  else if (completionCopy)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "[SRDismissalClassificationController requestMitigationStatusBasedOnRequestClassification:withRequestSource:withCompletion:]";
      v17 = 1024;
      v18 = classificationCopy;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation Mitigation not needed (unintended: %d, sourceSupportsMitigation: %d)", buf, 0x18u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v10, 0, 0);
  }
}

- (BOOL)shouldMitigateBasedOnActivationHistory:(id)history
{
  if (history)
  {
    historyCopy = history;
    countOfIntendedActivations = [historyCopy countOfIntendedActivations];
    countOfUnintendedActivations = [historyCopy countOfUnintendedActivations];

    if (countOfIntendedActivations)
    {
      v6 = 0;
    }

    else
    {
      v6 = countOfUnintendedActivations > 9;
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

- (void)presentSurveyNotificationWithContext:(id)context activationHistory:(id)history withCompletion:(id)completion
{
  completionCopy = completion;
  historyCopy = history;
  contextCopy = context;
  if ([contextCopy isDeviceUnlocked])
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  requestSource = [contextCopy requestSource];
  dismissalReason = [contextCopy dismissalReason];

  [SRUIDSurveyNotificationUtility postSiriInternalUIDSurveyNotification:v9 activationHistory:historyCopy requestSource:requestSource dismissalReason:dismissalReason];
  v12 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v12 = completionCopy;
  }
}

- (BOOL)canPresentSurveyForContext:(id)context
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

- (void)recordDismissalEventWithContext:(id)context markAsUnintended:(BOOL)unintended
{
  unintendedCopy = unintended;
  contextCopy = context;
  v25[0] = @"requestSource";
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy requestSource]);
  v26[0] = v7;
  v25[1] = @"dismissalReason";
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [contextCopy dismissalReason]);
  v26[1] = v8;
  v25[2] = @"unintended";
  v9 = [NSNumber numberWithBool:unintendedCopy];
  v26[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

  v11 = +[_DKSystemEventStreams siriServiceStream];
  name = [v11 name];

  duetSharedQueue = [(SRDismissalClassificationController *)self duetSharedQueue];
  AFRecordCoreDuetEventWithStream();

  v14 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316162;
    v16 = "[SRDismissalClassificationController recordDismissalEventWithContext:markAsUnintended:]";
    v17 = 2112;
    v18 = @"com.apple.siri.ui.dismissal.duet";
    v19 = 2112;
    v20 = name;
    v21 = 2112;
    v22 = contextCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #survey Sending event %@ to stream %@ with context: %@, metadata: %@", &v15, 0x34u);
  }
}

- (void)queryStreamForCountOfEventsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v20 = completionCopy;
  v24 = v20;
  [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v5 responseQueue:0 withCompletion:v21];

  _Block_object_dispose(buf, 8);
}

- (void)recordDismissalMetricWithContext:(id)context inputType:(int64_t)type previousLongPressBehavior:(int64_t)behavior longPressBehavior:(int64_t)pressBehavior
{
  contextCopy = context;
  v6 = contextCopy;
  AnalyticsSendEventLazy();
}

- (void)recordMitigationStartMetricWithContext:(id)context activationHistory:(id)history numberOfDaysSinceLastChange:(int64_t)change
{
  contextCopy = context;
  historyCopy = history;
  v7 = contextCopy;
  v8 = historyCopy;
  AnalyticsSendEventLazy();
}

- (void)recordMitigationEndMetricWithContext:(id)context activationHistory:(id)history numberOfDaysSinceLastChange:(int64_t)change
{
  contextCopy = context;
  historyCopy = history;
  v7 = contextCopy;
  v8 = historyCopy;
  AnalyticsSendEventLazy();
}

- (BOOL)classifyRequestAsUnintendedWithContext:(id)context
{
  contextCopy = context;
  v5 = -[SRDismissalClassificationController isDismissalReasonEligibleForSurvey:](self, "isDismissalReasonEligibleForSurvey:", [contextCopy dismissalReason]);
  v6 = [contextCopy contentPresentationState] != 2 && (objc_msgSend(contextCopy, "siriState") != 2 || objc_msgSend(contextCopy, "dismissalReason") == 32) || objc_msgSend(contextCopy, "dismissalReason") == 53;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    [contextCopy dismissalReason];
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
    siriState = [contextCopy siriState];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s isDismissalReasonEligible: %d (%@), isEligibleBasedOnContentState: %d (%ld)", &v11, 0x2Cu);
  }

  return v6 & v5;
}

@end