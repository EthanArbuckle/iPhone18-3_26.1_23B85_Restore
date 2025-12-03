@interface FBAOutboxItemCell
- (FBANetworkMonitor)netMonitor;
- (FBARadialProgressView)progressView;
- (UIActivityIndicatorView)indeterminateSpinner;
- (void)awakeFromNib;
- (void)beginObservingResponse:(id)response;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedResponse:(id)response;
- (void)stopObservingResponse:(id)response;
- (void)updateForNetworkStateChange:(BOOL)change;
- (void)updateProgressWithFormResponse:(id)response;
- (void)updateUploadStage:(unint64_t)stage;
@end

@implementation FBAOutboxItemCell

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = FBAOutboxItemCell;
  [(FBAInboxItemCell *)&v7 awakeFromNib];
  indeterminateSpinner = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [indeterminateSpinner setActivityIndicatorViewStyle:100];

  indeterminateSpinner2 = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [indeterminateSpinner2 stopAnimating];

  v5 = +[FBANetworkMonitor sharedInstance];
  [(FBAOutboxItemCell *)self setNetMonitor:v5];

  netMonitor = [(FBAOutboxItemCell *)self netMonitor];
  [netMonitor addObserver:self forKeyPath:@"isConnectedToCellNetwork" options:1 context:off_1001088B0];
}

- (void)setObservedResponse:(id)response
{
  responseCopy = response;
  v5 = [(FBKFormResponse *)self->_observedResponse ID];
  v6 = [responseCopy ID];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    if (self->_observedResponse)
    {
      [(FBAOutboxItemCell *)self stopObservingResponse:?];
    }

    objc_storeStrong(&self->_observedResponse, response);
    [(FBAOutboxItemCell *)self beginObservingResponse:self->_observedResponse];
  }

  uploadTask = [responseCopy uploadTask];
  -[FBAOutboxItemCell updateUploadStage:](self, "updateUploadStage:", [uploadTask localSubmissionStage]);

  [(FBAOutboxItemCell *)self updateProgressWithFormResponse:responseCopy];
}

- (void)dealloc
{
  if (self->_observedResponse)
  {
    [(FBAOutboxItemCell *)self stopObservingResponse:?];
  }

  netMonitor = [(FBAOutboxItemCell *)self netMonitor];
  [netMonitor removeObserver:self forKeyPath:@"isConnectedToCellNetwork"];

  v4.receiver = self;
  v4.super_class = FBAOutboxItemCell;
  [(FBAOutboxItemCell *)&v4 dealloc];
}

- (void)beginObservingResponse:(id)response
{
  v4 = off_1001088B8;
  responseCopy = response;
  [responseCopy addObserver:self forKeyPath:@"uploadTask.bytesToUpload" options:1 context:v4];
  [responseCopy addObserver:self forKeyPath:@"uploadTask.localSubmissionStage" options:1 context:off_1001088C0];
}

- (void)stopObservingResponse:(id)response
{
  v4 = off_1001088B8;
  responseCopy = response;
  [responseCopy removeObserver:self forKeyPath:@"uploadTask.bytesToUpload" context:v4];
  [responseCopy removeObserver:self forKeyPath:@"uploadTask.localSubmissionStage" context:off_1001088C0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_1001088B8 == context)
  {
    [(FBAOutboxItemCell *)self updateProgressWithFormResponse:self->_observedResponse];
  }

  else if (off_1001088C0 == context)
  {
    uploadTask = [(FBKFormResponse *)self->_observedResponse uploadTask];
    -[FBAOutboxItemCell updateUploadStage:](self, "updateUploadStage:", [uploadTask localSubmissionStage]);
  }

  else if (off_1001088B0 == context)
  {
    netMonitor = [(FBAOutboxItemCell *)self netMonitor];
    shouldShowWaitingOnWifi = [netMonitor shouldShowWaitingOnWifi];

    [(FBAOutboxItemCell *)self updateForNetworkStateChange:shouldShowWaitingOnWifi];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = FBAOutboxItemCell;
    [(FBAOutboxItemCell *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)updateForNetworkStateChange:(BOOL)change
{
  changeCopy = change;
  if ([(FBAOutboxItemCell *)self lastStage]== 4)
  {
    v8 = +[NSBundle mainBundle];
    if (changeCopy)
    {
      v5 = LocalizableGTStringKeyForKey();
      subtitleLabel2 = [v8 localizedStringForKey:v5 value:&stru_1000E2210 table:0];
      subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
      [subtitleLabel setText:subtitleLabel2];
    }

    else
    {
      v5 = [v8 localizedStringForKey:@"OUTBOX_UPLOADING" value:&stru_1000E2210 table:0];
      subtitleLabel2 = [(FBAInboxItemCell *)self subtitleLabel];
      [subtitleLabel2 setText:v5];
    }
  }
}

- (void)updateProgressWithFormResponse:(id)response
{
  uploadTask = [response uploadTask];
  v5 = 0.0;
  v17 = uploadTask;
  if (uploadTask)
  {
    bytesToUpload = [uploadTask bytesToUpload];
    [bytesToUpload floatValue];
    v8 = v7;

    if (v8 != 0.0)
    {
      bytesUploaded = [v17 bytesUploaded];
      [bytesUploaded floatValue];
      v11 = v10;
      bytesToUpload2 = [v17 bytesToUpload];
      [bytesToUpload2 floatValue];
      v5 = v11 / v13;
    }
  }

  progressView = [(FBAOutboxItemCell *)self progressView];
  *&v15 = v5;
  [progressView setProgress:v15];

  netMonitor = [(FBAOutboxItemCell *)self netMonitor];
  -[FBAOutboxItemCell updateForNetworkStateChange:](self, "updateForNetworkStateChange:", [netMonitor shouldShowWaitingOnWifi]);
}

- (void)updateUploadStage:(unint64_t)stage
{
  [(FBAOutboxItemCell *)self setLastStage:?];
  v5 = +[UIColor labelColor];
  v6 = 0;
  if (stage > 4)
  {
    if (stage <= 6)
    {
      if (stage != 5)
      {
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"OUTBOX_READY_FOR_COMPLETE";
        goto LABEL_8;
      }

      v17 = +[NSBundle mainBundle];
      v25 = [v17 localizedStringForKey:@"OUTBOX_FAILED" value:&stru_1000E2210 table:0];

      v18 = +[UIColor redColor];
      v6 = 0;
      v8 = v5;
LABEL_25:
      v5 = v18;
      goto LABEL_26;
    }

    if (stage != 7)
    {
      if (stage != 8)
      {
        goto LABEL_31;
      }

      goto LABEL_13;
    }

    v19 = +[NSBundle mainBundle];
    v20 = v19;
    v21 = @"OUTBOX_SUBMISSION_FAILED";
LABEL_24:
    v25 = [v19 localizedStringForKey:v21 value:&stru_1000E2210 table:0];

    v18 = +[UIColor redColor];
    v8 = v5;
    v6 = 1;
    goto LABEL_25;
  }

  if (stage <= 2)
  {
    if (stage < 2)
    {
      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"OUTBOX_READY_TO_UPLOAD";
LABEL_8:
      v25 = [v7 localizedStringForKey:v9 value:&stru_1000E2210 table:0];
      v6 = 1;
LABEL_26:

      goto LABEL_27;
    }

    if (stage == 2)
    {
      v15 = +[NSBundle mainBundle];
      v25 = [v15 localizedStringForKey:@"OUTBOX_COLLECTING" value:&stru_1000E2210 table:0];

LABEL_19:
      indeterminateSpinner = [(FBAOutboxItemCell *)self indeterminateSpinner];
      [indeterminateSpinner startAnimating];
      v6 = 1;
      goto LABEL_28;
    }

LABEL_31:
    v25 = 0;
    goto LABEL_27;
  }

  if (stage == 3)
  {
    v19 = +[NSBundle mainBundle];
    v20 = v19;
    v21 = @"OUTBOX_SUBMISSION_TOO_LARGE";
    goto LABEL_24;
  }

LABEL_13:
  netMonitor = [(FBAOutboxItemCell *)self netMonitor];
  shouldShowWaitingOnWifi = [netMonitor shouldShowWaitingOnWifi];

  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (shouldShowWaitingOnWifi)
  {
    v14 = LocalizableGTStringKeyForKey();
    v25 = [v13 localizedStringForKey:v14 value:&stru_1000E2210 table:0];
  }

  else
  {
    v25 = [v12 localizedStringForKey:@"OUTBOX_UPLOADING" value:&stru_1000E2210 table:0];
  }

  if (stage == 8)
  {
    goto LABEL_19;
  }

  v6 = 0;
LABEL_27:
  indeterminateSpinner = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [indeterminateSpinner stopAnimating];
LABEL_28:

  subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel setText:v25];

  subtitleLabel2 = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:v5];

  progressView = [(FBAOutboxItemCell *)self progressView];
  [progressView setHidden:v6];
}

- (FBARadialProgressView)progressView
{
  WeakRetained = objc_loadWeakRetained(&self->_progressView);

  return WeakRetained;
}

- (UIActivityIndicatorView)indeterminateSpinner
{
  WeakRetained = objc_loadWeakRetained(&self->_indeterminateSpinner);

  return WeakRetained;
}

- (FBANetworkMonitor)netMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_netMonitor);

  return WeakRetained;
}

@end