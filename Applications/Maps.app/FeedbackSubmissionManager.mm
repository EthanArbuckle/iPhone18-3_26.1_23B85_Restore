@interface FeedbackSubmissionManager
- (FeedbackSubmissionManager)init;
- (id)_feedbackUploaderForUploadPolicy:(int64_t)a3;
- (id)observers;
- (void)_logDiscardIfNeededForFeedback:(id)a3 userInfo:(id)a4 feedbackObjectToUpdate:(id)a5;
- (void)_recordRAPSubmissionID:(id)a3;
- (void)_sendTdmFraudNotificationWithFraudReportResponse:(id)a3 tdmRequestInfo:(id)a4;
- (void)_startFraudScoreExchangeIfNeededWithResponse:(id)a3 request:(id)a4;
- (void)_submitOrEnqueueFeedback:(id)a3 attachedImages:(id)a4 resolvedUserInfo:(id)a5 traits:(id)a6 debugSettings:(id)a7 uploadPolicy:(int64_t)a8 feedbackObjectToUpdate:(id)a9 completion:(id)a10;
- (void)_submitOrEnqueueFeedback:(id)a3 resolvedUserInfo:(id)a4 traits:(id)a5 debugSettings:(id)a6 uploadPolicy:(int64_t)a7 feedbackObjectToUpdate:(id)a8 completion:(id)a9;
- (void)_updateSpamStatusWithResponse:(id)a3 request:(id)a4;
- (void)_updateUserInfo:(id)a3 requestParameters:(id)a4 completion:(id)a5;
- (void)addObserver:(id)a3;
- (void)finishedCorrectionsUploadWithResponse:(id)a3 request:(id)a4 error:(id)a5;
- (void)finishedUploadingImagesWithImageUpdate:(id)a3 correctionsRequest:(id)a4 completion:(id)a5;
- (void)removeObserver:(id)a3;
- (void)submitOrEnqueueFeedback:(id)a3 attachedImages:(id)a4 userInfo:(id)a5 traits:(id)a6 debugSettings:(id)a7 uploadPolicy:(int64_t)a8 feedbackObjectToUpdate:(id)a9 completion:(id)a10;
- (void)submitOrEnqueueFeedback:(id)a3 userInfo:(id)a4 traits:(id)a5 debugSettings:(id)a6 uploadPolicy:(int64_t)a7 feedbackObjectToUpdate:(id)a8 completion:(id)a9;
@end

@implementation FeedbackSubmissionManager

- (FeedbackSubmissionManager)init
{
  v12.receiver = self;
  v12.super_class = FeedbackSubmissionManager;
  v2 = [(FeedbackSubmissionManager *)&v12 init];
  if (v2)
  {
    v3 = [[InteractiveFeedbackUploader alloc] initWithUploadStepObserver:v2];
    interactiveFeedbackUploader = v2->_interactiveFeedbackUploader;
    v2->_interactiveFeedbackUploader = v3;

    v5 = [[BackgroundFeedbackUploader alloc] initWithUploadStepObserver:v2];
    backgroundFeedbackUploader = v2->_backgroundFeedbackUploader;
    v2->_backgroundFeedbackUploader = v5;

    v7 = objc_alloc_init(FeedbackSubmissionPostActionManager);
    feedbackSubmissionPostActionManager = v2->_feedbackSubmissionPostActionManager;
    v2->_feedbackSubmissionPostActionManager = v7;

    v9 = sub_10002E924();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Initializing FeedbackSubmissionManager...", v11, 2u);
    }
  }

  return v2;
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___FeedbackSubmissionManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(FeedbackSubmissionManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(FeedbackSubmissionManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)_recordRAPSubmissionID:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v14 = +[NSUserDefaults standardUserDefaults];
    v4 = [v14 mutableArrayValueForKey:@"RAPPreviouslySubmittedProblemIDs"];
    [v4 insertObject:v3 atIndex:0];
    v5 = [v14 mutableArrayValueForKey:@"RAPPreviouslySubmittedProblemURLs"];
    v6 = GEOURLString();
    v7 = [NSURL URLWithString:v6];

    v8 = [v7 host];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"sundew" withString:@"bluegrass"];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"ls" withString:@"geo"];
    v11 = [NSString stringWithFormat:@"https://%@/raps/%@", v10, v3];
    [v5 insertObject:v11 atIndex:0];
    [v4 trimToLength:5];
    [v5 trimToLength:5];
    [v14 setObject:v3 forKey:@"RAPLastSubmittedProblemID"];

    v12 = [NSArray arrayWithArray:v5];
    [v14 setObject:v12 forKey:@"RAPPreviouslySubmittedProblemURLs"];

    v13 = [NSArray arrayWithArray:v4];
    [v14 setObject:v13 forKey:@"RAPPreviouslySubmittedProblemIDs"];

    [v14 synchronize];
  }
}

- (void)_updateSpamStatusWithResponse:(id)a3 request:(id)a4
{
  v14 = a4;
  v5 = [a3 feedbackResult];
  v6 = [v5 submissionResult];
  v7 = [v6 tdmFraudRequestInfo];

  if ([v7 hasTdmUserMapsStatus] && objc_msgSend(v14, "feedbackRequestType") == 1)
  {
    v8 = [v14 isPOIEnrichment];
    v9 = +[_TtC4Maps30ServerEvaluationStatusMapsSync shared];
    v10 = [v7 tdmUserMapsStatus];
    v11 = [v10 isBlocked];
    v12 = [v7 tdmUserMapsStatus];
    v13 = [v12 isTrusted];
    if (v8)
    {
      [v9 setARPStatusWithIsBlocked:v11 isTrusted:v13 completion:0];
    }

    else
    {
      [v9 setRAPStatusWithIsBlocked:v11 isTrusted:v13 completion:0];
    }
  }
}

- (void)_sendTdmFraudNotificationWithFraudReportResponse:(id)a3 tdmRequestInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MKMapService sharedService];
  v8 = [v7 defaultTraits];

  v9 = objc_alloc_init(GEORPTdmFraudNotificationParameters);
  v10 = [v5 anonymousId];
  [v9 setAnonymousId:v10];

  v11 = [v6 nameSpace];
  [v9 setTdmNamespace:v11];

  v12 = [v6 finalizedElement];
  [v9 setToken:v12];

  v13 = [v6 reportedScore];
  v14 = [v6 newScore];

  v15 = [NSString stringWithFormat:@"rs=%ldns=%ld", v13, v14];;
  [v9 setFsrData:v15];

  v16 = [v5 transactionId];

  [v9 setTransactionId:v16];
  v17 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v17 setTdmFraudNotificationParameters:v9];
  v18 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v17 userInfo:0 traits:v8 debugSettings:0];
  v19 = sub_10002E924();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Send TDM Fraud Notification... requestParams: %@", buf, 0xCu);
  }

  v20 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v18 traits:v8];
  [v20 submitWithHandler:&stru_101636C28 networkActivity:0];
}

- (void)_startFraudScoreExchangeIfNeededWithResponse:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0 || MapsFeature_IsEnabled_ARPCommunityID())
  {
    v8 = [v6 feedbackResult];
    v9 = [v8 submissionResult];
    v10 = [v9 tdmFraudRequestInfo];

    v11 = sub_10002E924();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "tdmFraudRequestInfo in FeedbackResponse: %@", buf, 0xCu);
    }

    if (v10)
    {
      v12 = sub_10002E924();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Start Fraud Score Exchange Flow...", buf, 2u);
      }

      [(FeedbackSubmissionManager *)self _updateSpamStatusWithResponse:v6 request:v7];
      v13 = +[GEOUserAccountInfo primaryICloudAccount];
      v14 = [AMSFraudReportOptions alloc];
      v15 = [v10 transactionId];
      v16 = [v10 tdmNamespace];
      v17 = [v10 fsrData];
      v18 = [v14 initWithTransactionIdentifier:v15 nameSpace:v16 fsrData:v17];

      [v18 setAccount:v13];
      v19 = [v10 keyId];
      [v18 setKeyIdentifier:v19];

      v20 = [AMSFraudReportTask performFraudReportRefreshWithOptions:v18];
      v21 = sub_10002E924();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Send a request to get Fraud Report...", buf, 2u);
      }

      objc_initWeak(buf, self);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100AA988C;
      v22[3] = &unk_101636BE8;
      objc_copyWeak(&v24, buf);
      v23 = v10;
      [v20 resultWithCompletion:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)finishedCorrectionsUploadWithResponse:(id)a3 request:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [v8 feedbackResult];
    v12 = [v11 submissionResult];
    v13 = [v12 feedbackId];

    v14 = sub_10002E924();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received a GEORPFeedbackResponse object feedback id %@", &v27, 0xCu);
    }

    v15 = [v8 feedbackResult];
    v16 = [v15 submissionResult];
    v17 = [v16 feedbackId];
    [(FeedbackSubmissionManager *)self _recordRAPSubmissionID:v17];

    [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager performActionWithFeedbackResponse:v8 feedbackRequest:v9];
    v18 = [v9 feedbackRequestParameters];
    v19 = [v18 submissionParameters];
    v20 = [v19 details];
    v21 = [v20 poiEnrichmentUpdate];

    v22 = [v21 placeContext];
    if (v22)
    {
      v23 = v22;
      v24 = [v21 placeContext];
      v25 = [v24 muid];

      if (v25)
      {
        [(GEOObserverHashTable *)self->_observers feedbackSubmissionManagerCompletedSubmissionWithMUID:v25 withError:0];
      }
    }

    [(FeedbackSubmissionManager *)self _startFraudScoreExchangeIfNeededWithResponse:v8 request:v9];
  }

  if ([v8 attestationNotFound])
  {
    v26 = sub_10002171C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Received a GEORPFeedbackResponse with attestationNotFound", &v27, 2u);
    }

    [(GEOObserverHashTable *)self->_observers submissionDidFailAttestation];
  }
}

- (void)finishedUploadingImagesWithImageUpdate:(id)a3 correctionsRequest:(id)a4 completion:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 feedbackRequestParameters];
  v10 = [v9 submissionParameters];
  v11 = [v10 isPOIEnrichment];

  if (v11)
  {
    v12 = [v7 feedbackRequestParameters];
    v13 = [v12 submissionParameters];
    [v13 updatePOIEnrichmentWithCloudKitReceipts:v14];
  }

  v8[2](v8, v7);
}

- (id)_feedbackUploaderForUploadPolicy:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)_logDiscardIfNeededForFeedback:(id)a3 userInfo:(id)a4 feedbackObjectToUpdate:(id)a5
{
  v18 = a3;
  v7 = a5;
  if ([a4 hasUserCredentials] && objc_msgSend(v18, "hasSubmissionParameters"))
  {
    v8 = [v18 submissionParameters];
    [v8 logDiscardTriggerType];

    v9 = sub_10002E924();
    v10 = [v18 submissionParameters];
    v11 = [v10 clientSubmissionUuid];
    if ([v11 length])
    {
      v12 = [v18 submissionParameters];
      [v12 clientSubmissionUuid];
    }

    else
    {
      v12 = +[NSUUID UUID];
      [v12 UUIDString];
    }
    v13 = ;

    MSPUGCPerformLogDiscardForCurrentSessionWithCompletion();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      if ([v14 hasDirections])
      {
        v15 = [v14 directions];
        v16 = [v15 hasNavigationSessionID];

        if (v16)
        {
          v17 = [v14 directions];
          [v17 navigationSessionID];

          MSPUGCPerformLogDiscardForSessionWithCompletion();
        }
      }
    }
  }
}

- (void)_submitOrEnqueueFeedback:(id)a3 resolvedUserInfo:(id)a4 traits:(id)a5 debugSettings:(id)a6 uploadPolicy:(int64_t)a7 feedbackObjectToUpdate:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v38 = a9;
  v19 = a6;
  v20 = [(FeedbackSubmissionManager *)self _feedbackUploaderForUploadPolicy:a7];
  v21 = [GEORPFeedbackRequest defaultDebugSettingsMergedWithSettings:v19];

  v39 = v21;
  v22 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v15 userInfo:v16 traits:v17 debugSettings:v21];
  v23 = v22;
  if (v18)
  {
    v37 = v20;
    v24 = [v22 feedbackRequestParameters];
    v25 = [v24 submissionParameters];
    v26 = [v25 clientSubmissionUuid];

    v27 = [v23 feedbackRequestParameters];
    v28 = [v27 submissionParameters];
    v29 = [v28 hasClientSubmissionUuid];

    if (v29 && v26)
    {
      [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager saveFeedbackObject:v18 forSubmissionIdentifier:v26];
    }

    else
    {
      v30 = sub_10002E924();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil", buf, 2u);
      }
    }

    v20 = v37;
  }

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v31 = [v15 submissionParameters];
    v32 = [v31 type];

    if (v32 == 11)
    {
      [v23 addFeedbackClientCapabilities:2];
    }
  }

  v33 = [NSProgress discreteProgressWithTotalUnitCount:1];
  currentProgress = self->_currentProgress;
  self->_currentProgress = v33;
  v35 = v33;

  [(FeedbackSubmissionManager *)self _logDiscardIfNeededForFeedback:v15 userInfo:v16 feedbackObjectToUpdate:v18];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100AAA208;
  v40[3] = &unk_101636B20;
  v41 = v38;
  v36 = v38;
  [v20 submitCorrectionsRequest:v23 traits:v17 parentProgress:v35 completion:v40];
}

- (void)submitOrEnqueueFeedback:(id)a3 userInfo:(id)a4 traits:(id)a5 debugSettings:(id)a6 uploadPolicy:(int64_t)a7 feedbackObjectToUpdate:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100AAA3CC;
  v26[3] = &unk_101636BC0;
  objc_copyWeak(v32, &location);
  v21 = v20;
  v31 = v21;
  v22 = v15;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  v24 = v18;
  v29 = v24;
  v32[1] = a7;
  v25 = v19;
  v30 = v25;
  [(FeedbackSubmissionManager *)self _updateUserInfo:v16 requestParameters:v22 completion:v26];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

- (void)_updateUserInfo:(id)a3 requestParameters:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (GEOConfigGetBOOL())
  {
    v10 = [v7 tdmUserInfo];
    v11 = [v10 anonymousUserId];

    if ([v11 length])
    {
      v12 = [v7 tdmUserInfo];
      v13 = [v12 baaCertificates];
      v14 = [v13 count];

      if (v14)
      {
        v15 = sub_10002E924();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v16 = "Already fetched BAA certificates so early exit.";
LABEL_11:
          v18 = v15;
          v19 = 2;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v16, buf, v19);
        }
      }

      else
      {
        if ([v8 hasSubmissionParameters] & 1) != 0 || (objc_msgSend(v8, "hasImageUploadParameters") & 1) != 0 || (objc_msgSend(v8, "hasLogEventParameters"))
        {
          v20 = [v11 dataUsingEncoding:4];
          GEOConfigGetBOOL();
          GEOConfigGetDouble();
          v21 = v7;
          v22 = v9;
          MSPUGCFetchClientCertificate();

          goto LABEL_18;
        }

        v15 = sub_10002E924();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v8;
          v16 = "Request parameters are not not writable so early exit.\n %@";
          v18 = v15;
          v19 = 12;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v15 = sub_10002E924();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "No anonymous id so not fetching BAA certificates.";
        goto LABEL_11;
      }
    }

    (*(v9 + 2))(v9, v7, 0);
LABEL_18:

    goto LABEL_19;
  }

  v17 = sub_10002E924();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "GeoConfig is disabled so not fetching BAA certificates.", buf, 2u);
  }

  (*(v9 + 2))(v9, v7, 0);
LABEL_19:
}

- (void)_submitOrEnqueueFeedback:(id)a3 attachedImages:(id)a4 resolvedUserInfo:(id)a5 traits:(id)a6 debugSettings:(id)a7 uploadPolicy:(int64_t)a8 feedbackObjectToUpdate:(id)a9 completion:(id)a10
{
  v65 = a3;
  v15 = a4;
  v66 = a5;
  v16 = a6;
  v17 = a7;
  v63 = a9;
  v59 = a10;
  v60 = a8;
  if (qword_10195E488 != -1)
  {
    dispatch_once(&qword_10195E488, &stru_1016373C0);
  }

  v18 = qword_10195E470;
  v19 = +[NSDate now];
  v57 = qword_10195E478;
  v58 = qword_10195E480;
  sub_100ACAD38(v18, 0, @"%@ <%@>[Maps][%@] : Transmitting photos or videos");

  v20 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v21 = objc_alloc_init(GEORPFeedbackImageUploadParameters);
  [v20 setImageUploadParameters:{v21, v19, v57, v58}];

  v22 = [v65 submissionParameters];
  v23 = [v22 isPOIEnrichment];
  v24 = [v20 imageUploadParameters];
  [v24 setIsEnrichment:v23];

  v77 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v26)
  {
    v27 = *v75;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v74 + 1) + 8 * i);
        v30 = [v20 imageUploadParameters];
        v31 = [v29 photoMetadata];
        [v30 addImage:v31];
      }

      v26 = [v25 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v26);
  }

  if ((sub_100742958() & 1) == 0)
  {
    v32 = +[MKMapService sharedService];
    v33 = [v32 defaultTraitsWithTraits:v16];

    v16 = v33;
  }

  v62 = [GEORPFeedbackRequest defaultDebugSettingsMergedWithSettings:v17];

  v61 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v20 userInfo:v66 traits:v16 debugSettings:v62];
  v34 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v65 userInfo:v66 traits:v16 debugSettings:v62];
  v35 = v34;
  if (v63)
  {
    v36 = [v34 feedbackRequestParameters];
    v37 = [v36 submissionParameters];
    v38 = [v37 clientSubmissionUuid];

    v39 = [v35 feedbackRequestParameters];
    v40 = [v39 submissionParameters];
    v41 = [v40 hasClientSubmissionUuid];
    if (v38)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    if (v42)
    {
      [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager saveFeedbackObject:v63 forSubmissionIdentifier:v38];
    }

    else
    {
      v43 = sub_10002E924();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil", buf, 2u);
      }
    }
  }

  v44 = +[NSProgress discreteProgressWithTotalUnitCount:](NSProgress, "discreteProgressWithTotalUnitCount:", ([v25 count] + 2));
  objc_storeStrong(&self->_currentProgress, v44);
  v45 = sub_10002E924();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = [v66 userCredentials];
    v47 = [v46 icloudUserPersonId];
    v48 = [v66 userCredentials];
    v49 = [v48 icloudUserMapsAuthToken];
    *buf = 138412546;
    v79 = v47;
    v80 = 2112;
    v81 = v49;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Submitting with icloud person id %@ and auth token %@", buf, 0x16u);
  }

  v50 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v61 traits:v16];
  v51 = [v50 fakeProgress];
  [v44 addChild:v51 withPendingUnitCount:1];

  [(FeedbackSubmissionManager *)self _logDiscardIfNeededForFeedback:v65 userInfo:v66 feedbackObjectToUpdate:v63];
  objc_initWeak(buf, self);
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100AAB014;
  v67[3] = &unk_101636B48;
  objc_copyWeak(v73, buf);
  v52 = v59;
  v72 = v52;
  v53 = v25;
  v68 = v53;
  v54 = v35;
  v69 = v54;
  v73[1] = v60;
  v55 = v16;
  v70 = v55;
  v56 = v44;
  v71 = v56;
  [v50 submitWithHandler:v67 networkActivity:0];

  objc_destroyWeak(v73);
  objc_destroyWeak(buf);
}

- (void)submitOrEnqueueFeedback:(id)a3 attachedImages:(id)a4 userInfo:(id)a5 traits:(id)a6 debugSettings:(id)a7 uploadPolicy:(int64_t)a8 feedbackObjectToUpdate:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  if ([v17 count])
  {
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100AAB560;
    v23[3] = &unk_101636AD0;
    objc_copyWeak(v30, &location);
    v29 = v22;
    v24 = v16;
    v25 = v17;
    v26 = v19;
    v27 = v20;
    v30[1] = a8;
    v28 = v21;
    [(FeedbackSubmissionManager *)self _updateUserInfo:v18 requestParameters:v24 completion:v23];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    [(FeedbackSubmissionManager *)self submitOrEnqueueFeedback:v16 userInfo:v18 traits:v19 debugSettings:v20 uploadPolicy:a8 feedbackObjectToUpdate:v21 completion:v22];
  }
}

@end