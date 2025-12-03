@interface SHMatcherController
- (NSUUID)taskID;
- (NSUUID)workerID;
- (SHMatcherController)associatedMatcherController;
- (SHMatcherController)initWithMatcher:(id)matcher notificationScheduler:(id)scheduler;
- (SHMatcherDelegate)delegate;
- (SHMatcherDelegate)matcherDelegateForResponse;
- (SHWorkerDelegate)workerDelegate;
- (int64_t)executionScope;
- (void)downstreamMatcher:(id)matcher didProduceResponse:(id)response;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)shutdownWorker;
- (void)shutdownWorkerForRequestID:(id)d;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHMatcherController

- (SHMatcherController)initWithMatcher:(id)matcher notificationScheduler:(id)scheduler
{
  matcherCopy = matcher;
  schedulerCopy = scheduler;
  v13.receiver = self;
  v13.super_class = SHMatcherController;
  v9 = [(SHMatcherController *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(_SHDownstreamMatcherDelegate);
    downstreamMatcherDelegate = v9->_downstreamMatcherDelegate;
    v9->_downstreamMatcherDelegate = v10;

    [(_SHDownstreamMatcherDelegate *)v9->_downstreamMatcherDelegate setWorker:v9];
    objc_storeStrong(&v9->_matcher, matcher);
    [(SHMatcher *)v9->_matcher setDelegate:v9->_downstreamMatcherDelegate];
    objc_storeStrong(&v9->_notificationScheduler, scheduler);
  }

  return v9;
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  [(SHMatcherController *)self setMatcherRequest:requestCopy];
  matcher = [(SHMatcherController *)self matcher];
  [matcher startRecognitionForRequest:requestCopy];
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  matcherCopy = matcher;
  matcherDelegateForResponse = [(SHMatcherController *)self matcherDelegateForResponse];
  [matcherDelegateForResponse matcher:matcherCopy didProduceResponse:responseCopy];

  [(SHMatcherController *)self setMatcherDelegateForResponse:0];
}

- (void)downstreamMatcher:(id)matcher didProduceResponse:(id)response
{
  matcherCopy = matcher;
  responseCopy = response;
  associatedMatcherController = [(SHMatcherController *)self associatedMatcherController];
  matcher = [associatedMatcherController matcher];
  v10 = [matcherCopy isEqual:matcher];

  if ([matcherCopy conformsToProtocol:&OBJC_PROTOCOL___SHMatcherDelegate])
  {
    [(SHMatcherController *)self setMatcherDelegateForResponse:matcherCopy];
  }

  delegate = [(SHMatcherController *)self delegate];
  [delegate matcher:matcherCopy didProduceResponse:responseCopy];

  if ((v10 & 1) == 0)
  {
    if (([responseCopy isStillRunningAssociatedRequest] & 1) == 0)
    {
      associatedMatcherController2 = [(SHMatcherController *)self associatedMatcherController];
      [associatedMatcherController2 setAssociatedMatcherController:0];
    }

    associatedMatcherController3 = [(SHMatcherController *)self associatedMatcherController];
    delegate2 = [associatedMatcherController3 delegate];
    associatedMatcherController4 = [(SHMatcherController *)self associatedMatcherController];
    matcher2 = [associatedMatcherController4 matcher];
    [delegate2 matcher:matcher2 didProduceResponse:responseCopy];
  }

  if (([responseCopy isStillRunningAssociatedRequest] & 1) == 0)
  {
    error = [responseCopy error];
    sh_isMatchAttemptCancelledError = [error sh_isMatchAttemptCancelledError];

    matcherRequest = [(SHMatcherController *)self matcherRequest];
    sendNotifications = [matcherRequest sendNotifications];

    if (!sendNotifications || (sh_isMatchAttemptCancelledError & 1) != 0)
    {
      if (v10)
      {
        [(SHMatcherController *)self setAssociatedMatcherController:0];
      }

      [(SHMatcherController *)self stopRecognition];
    }

    else
    {
      objc_initWeak(&location, self);
      notificationScheduler = [(SHMatcherController *)self notificationScheduler];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000495F4;
      v22[3] = &unk_10007E370;
      v24 = v10;
      objc_copyWeak(&v23, &location);
      [notificationScheduler sendNotificationForResponse:responseCopy completionHandler:v22];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

- (NSUUID)workerID
{
  if (!self->_workerID)
  {
    matcher = [(SHMatcherController *)self matcher];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [NSUUID alloc];
      v6 = SHAppIntentMatcherUUID;
LABEL_9:
      v9 = [v5 initWithUUIDString:*v6];
LABEL_10:
      workerID = self->_workerID;
      self->_workerID = v9;

      goto LABEL_11;
    }

    matcher2 = [(SHMatcherController *)self matcher];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      matcher3 = [(SHMatcherController *)self matcher];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        matcher4 = [(SHMatcherController *)self matcher];
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();

        if ((v14 & 1) == 0)
        {
          v9 = +[NSUUID UUID];
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    v5 = [NSUUID alloc];
    v6 = &SHRecordingMatcherUUID;
    goto LABEL_9;
  }

LABEL_11:
  v11 = self->_workerID;

  return v11;
}

- (NSUUID)taskID
{
  matcherRequest = [(SHMatcherController *)self matcherRequest];
  requestID = [matcherRequest requestID];

  return requestID;
}

- (int64_t)executionScope
{
  matcher = [(SHMatcherController *)self matcher];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  matcher2 = [(SHMatcherController *)self matcher];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:

LABEL_6:
    return 1;
  }

  matcher3 = [(SHMatcherController *)self matcher];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_5;
  }

  matcher4 = [(SHMatcherController *)self matcher];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) != 0;
}

- (void)shutdownWorker
{
  matcherRequest = [(SHMatcherController *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHMatcherController *)self shutdownWorkerForRequestID:requestID];
}

- (void)shutdownWorkerForRequestID:(id)d
{
  dCopy = d;
  matcherRequest = [(SHMatcherController *)self matcherRequest];
  requestID = [matcherRequest requestID];
  v6 = [requestID isEqual:dCopy];

  if (v6)
  {
    [(SHMatcherController *)self setMatcherRequest:0];
    matcher = [(SHMatcherController *)self matcher];
    [matcher stopRecognitionForRequestID:dCopy];

    completionHandler = [(SHMatcherController *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(SHMatcherController *)self completionHandler];
      completionHandler2[2]();

      [(SHMatcherController *)self setCompletionHandler:0];
    }

    workerDelegate = [(SHMatcherController *)self workerDelegate];
    [workerDelegate finishedWorker:self];

    [(SHMatcherController *)self setWorkerDelegate:0];
    associatedMatcherController = [(SHMatcherController *)self associatedMatcherController];

    if (associatedMatcherController)
    {
      v12 = [SHError privateErrorWithCode:203 underlyingError:0];
      v13 = objc_opt_new();
      v14 = [SHMatcherResponse errorResponseForSignature:v13 error:v12];

      associatedMatcherController2 = [(SHMatcherController *)self associatedMatcherController];
      downstreamMatcherDelegate = [associatedMatcherController2 downstreamMatcherDelegate];
      matcher2 = [(SHMatcherController *)self matcher];
      [downstreamMatcherDelegate matcher:matcher2 didProduceResponse:v14];
    }
  }
}

- (void)stopRecognition
{
  matcherRequest = [(SHMatcherController *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHMatcherController *)self stopRecognitionForRequestID:requestID];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  matcher = [(SHMatcherController *)self matcher];
  [matcher setDelegate:0];

  [(SHMatcherController *)self shutdownWorkerForRequestID:dCopy];
}

- (SHWorkerDelegate)workerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_workerDelegate);

  return WeakRetained;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (SHMatcherController)associatedMatcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedMatcherController);

  return WeakRetained;
}

- (SHMatcherDelegate)matcherDelegateForResponse
{
  WeakRetained = objc_loadWeakRetained(&self->_matcherDelegateForResponse);

  return WeakRetained;
}

@end