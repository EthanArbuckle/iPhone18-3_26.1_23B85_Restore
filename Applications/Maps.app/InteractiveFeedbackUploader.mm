@interface InteractiveFeedbackUploader
- (FeedbackUploaderStepObserver)uploadStepObserver;
- (InteractiveFeedbackUploader)initWithUploadStepObserver:(id)a3;
- (void)_submitCorrectionsRequest:(id)a3 traits:(id)a4 parentProgress:(id)a5 completion:(id)a6;
- (void)submitPhotosWithMetadata:(id)a3 withImageUploadResult:(id)a4 withCorrectionsRequest:(id)a5 traits:(id)a6 parentProgress:(id)a7 completion:(id)a8;
@end

@implementation InteractiveFeedbackUploader

- (FeedbackUploaderStepObserver)uploadStepObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_uploadStepObserver);

  return WeakRetained;
}

- (void)_submitCorrectionsRequest:(id)a3 traits:(id)a4 parentProgress:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v10 traits:v11];
  v15 = [v10 feedbackRequestParameters];
  v16 = [v15 submissionParameters];
  v17 = [v16 clientSubmissionUuid];

  v18 = sub_10002E924();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Submitting corrections request with client submission identifier %@", buf, 0xCu);
  }

  v19 = [v14 fakeProgress];
  [v12 addChild:v19 withPendingUnitCount:1];

  objc_initWeak(buf, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100DB1B70;
  v23[3] = &unk_1016543F8;
  objc_copyWeak(&v27, buf);
  v20 = v17;
  v24 = v20;
  v21 = v10;
  v25 = v21;
  v22 = v13;
  v26 = v22;
  [v14 submitWithHandler:v23 networkActivity:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)submitPhotosWithMetadata:(id)a3 withImageUploadResult:(id)a4 withCorrectionsRequest:(id)a5 traits:(id)a6 parentProgress:(id)a7 completion:(id)a8
{
  v33 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = sub_10002E924();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v33 count];
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
  v47 = self;
  v23 = v20;
  v48 = v23;
  v24 = v21;
  v49 = v24;
  p_buf = &buf;
  v25 = v17;
  v50 = v25;
  [v14 enumerateAndMatchPhotosWithMetadata:v33 withBlock:v45];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DB23BC;
  block[3] = &unk_1016543D0;
  v41 = v18;
  v42 = &buf;
  v35 = v14;
  v36 = v23;
  v26 = v23;
  v27 = v18;
  v28 = v14;
  objc_copyWeak(&v43, &location);
  v37 = v24;
  v38 = v15;
  v39 = v16;
  v40 = v25;
  v29 = v25;
  v30 = v16;
  v31 = v15;
  v32 = v24;
  dispatch_group_notify(v22, &_dispatch_main_q, block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
}

- (InteractiveFeedbackUploader)initWithUploadStepObserver:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = InteractiveFeedbackUploader;
  v5 = [(InteractiveFeedbackUploader *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_uploadStepObserver, v4);
    v7 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v8 = [NSURLSession sessionWithConfiguration:v7];
    session = v6->_session;
    v6->_session = v8;
  }

  return v6;
}

@end