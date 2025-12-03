@interface InteractiveFeedbackUploader
- (FeedbackUploaderStepObserver)uploadStepObserver;
- (InteractiveFeedbackUploader)initWithUploadStepObserver:(id)observer;
- (void)_submitCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion;
- (void)submitPhotosWithMetadata:(id)metadata withImageUploadResult:(id)result withCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion;
@end

@implementation InteractiveFeedbackUploader

- (FeedbackUploaderStepObserver)uploadStepObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_uploadStepObserver);

  return WeakRetained;
}

- (void)_submitCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion
{
  requestCopy = request;
  traitsCopy = traits;
  progressCopy = progress;
  completionCopy = completion;
  v14 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:requestCopy traits:traitsCopy];
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  clientSubmissionUuid = [submissionParameters clientSubmissionUuid];

  v18 = sub_10002E924();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = clientSubmissionUuid;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Submitting corrections request with client submission identifier %@", buf, 0xCu);
  }

  fakeProgress = [v14 fakeProgress];
  [progressCopy addChild:fakeProgress withPendingUnitCount:1];

  objc_initWeak(buf, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DB1B70;
  v23[3] = &unk_1016543F8;
  objc_copyWeak(&v27, buf);
  v20 = clientSubmissionUuid;
  v24 = v20;
  v21 = requestCopy;
  v25 = v21;
  v22 = completionCopy;
  v26 = v22;
  [v14 submitWithHandler:v23 networkActivity:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)submitPhotosWithMetadata:(id)metadata withImageUploadResult:(id)result withCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion
{
  metadataCopy = metadata;
  resultCopy = result;
  requestCopy = request;
  traitsCopy = traits;
  progressCopy = progress;
  completionCopy = completion;
  v19 = sub_10002E924();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [metadataCopy count];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Beginning submission with %lu images", &buf, 0xCu);
  }

  v20 = objc_alloc_init(NSMutableArray);
  v21 = objc_alloc_init(NSMutableArray);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x2020000000;
  v54 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100DB2090;
  v45[3] = &unk_101654380;
  v22 = dispatch_group_create();
  v46 = v22;
  selfCopy = self;
  v23 = v20;
  v48 = v23;
  v24 = v21;
  v49 = v24;
  p_buf = &buf;
  v25 = progressCopy;
  v50 = v25;
  [resultCopy enumerateAndMatchPhotosWithMetadata:metadataCopy withBlock:v45];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DB23BC;
  block[3] = &unk_1016543D0;
  v41 = completionCopy;
  v42 = &buf;
  v35 = resultCopy;
  v36 = v23;
  v26 = v23;
  v27 = completionCopy;
  v28 = resultCopy;
  objc_copyWeak(&v43, &location);
  v37 = v24;
  v38 = requestCopy;
  v39 = traitsCopy;
  v40 = v25;
  v29 = v25;
  v30 = traitsCopy;
  v31 = requestCopy;
  v32 = v24;
  dispatch_group_notify(v22, &_dispatch_main_q, block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
}

- (InteractiveFeedbackUploader)initWithUploadStepObserver:(id)observer
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = InteractiveFeedbackUploader;
  v5 = [(InteractiveFeedbackUploader *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_uploadStepObserver, observerCopy);
    v7 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v8 = [NSURLSession sessionWithConfiguration:v7];
    session = v6->_session;
    v6->_session = v8;
  }

  return v6;
}

@end