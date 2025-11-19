@interface FBAOutboxItemCell
- (FBANetworkMonitor)netMonitor;
- (FBARadialProgressView)progressView;
- (UIActivityIndicatorView)indeterminateSpinner;
- (void)awakeFromNib;
- (void)beginObservingResponse:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedResponse:(id)a3;
- (void)stopObservingResponse:(id)a3;
- (void)updateForNetworkStateChange:(BOOL)a3;
- (void)updateProgressWithFormResponse:(id)a3;
- (void)updateUploadStage:(unint64_t)a3;
@end

@implementation FBAOutboxItemCell

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = FBAOutboxItemCell;
  [(FBAInboxItemCell *)&v7 awakeFromNib];
  v3 = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [v3 setActivityIndicatorViewStyle:100];

  v4 = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [v4 stopAnimating];

  v5 = +[FBANetworkMonitor sharedInstance];
  [(FBAOutboxItemCell *)self setNetMonitor:v5];

  v6 = [(FBAOutboxItemCell *)self netMonitor];
  [v6 addObserver:self forKeyPath:@"isConnectedToCellNetwork" options:1 context:off_1001088B0];
}

- (void)setObservedResponse:(id)a3
{
  v9 = a3;
  v5 = [(FBKFormResponse *)self->_observedResponse ID];
  v6 = [v9 ID];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    if (self->_observedResponse)
    {
      [(FBAOutboxItemCell *)self stopObservingResponse:?];
    }

    objc_storeStrong(&self->_observedResponse, a3);
    [(FBAOutboxItemCell *)self beginObservingResponse:self->_observedResponse];
  }

  v8 = [v9 uploadTask];
  -[FBAOutboxItemCell updateUploadStage:](self, "updateUploadStage:", [v8 localSubmissionStage]);

  [(FBAOutboxItemCell *)self updateProgressWithFormResponse:v9];
}

- (void)dealloc
{
  if (self->_observedResponse)
  {
    [(FBAOutboxItemCell *)self stopObservingResponse:?];
  }

  v3 = [(FBAOutboxItemCell *)self netMonitor];
  [v3 removeObserver:self forKeyPath:@"isConnectedToCellNetwork"];

  v4.receiver = self;
  v4.super_class = FBAOutboxItemCell;
  [(FBAOutboxItemCell *)&v4 dealloc];
}

- (void)beginObservingResponse:(id)a3
{
  v4 = off_1001088B8;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"uploadTask.bytesToUpload" options:1 context:v4];
  [v5 addObserver:self forKeyPath:@"uploadTask.localSubmissionStage" options:1 context:off_1001088C0];
}

- (void)stopObservingResponse:(id)a3
{
  v4 = off_1001088B8;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"uploadTask.bytesToUpload" context:v4];
  [v5 removeObserver:self forKeyPath:@"uploadTask.localSubmissionStage" context:off_1001088C0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_1001088B8 == a6)
  {
    [(FBAOutboxItemCell *)self updateProgressWithFormResponse:self->_observedResponse];
  }

  else if (off_1001088C0 == a6)
  {
    v13 = [(FBKFormResponse *)self->_observedResponse uploadTask];
    -[FBAOutboxItemCell updateUploadStage:](self, "updateUploadStage:", [v13 localSubmissionStage]);
  }

  else if (off_1001088B0 == a6)
  {
    v14 = [(FBAOutboxItemCell *)self netMonitor];
    v15 = [v14 shouldShowWaitingOnWifi];

    [(FBAOutboxItemCell *)self updateForNetworkStateChange:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = FBAOutboxItemCell;
    [(FBAOutboxItemCell *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)updateForNetworkStateChange:(BOOL)a3
{
  v3 = a3;
  if ([(FBAOutboxItemCell *)self lastStage]== 4)
  {
    v8 = +[NSBundle mainBundle];
    if (v3)
    {
      v5 = LocalizableGTStringKeyForKey();
      v6 = [v8 localizedStringForKey:v5 value:&stru_1000E2210 table:0];
      v7 = [(FBAInboxItemCell *)self subtitleLabel];
      [v7 setText:v6];
    }

    else
    {
      v5 = [v8 localizedStringForKey:@"OUTBOX_UPLOADING" value:&stru_1000E2210 table:0];
      v6 = [(FBAInboxItemCell *)self subtitleLabel];
      [v6 setText:v5];
    }
  }
}

- (void)updateProgressWithFormResponse:(id)a3
{
  v4 = [a3 uploadTask];
  v5 = 0.0;
  v17 = v4;
  if (v4)
  {
    v6 = [v4 bytesToUpload];
    [v6 floatValue];
    v8 = v7;

    if (v8 != 0.0)
    {
      v9 = [v17 bytesUploaded];
      [v9 floatValue];
      v11 = v10;
      v12 = [v17 bytesToUpload];
      [v12 floatValue];
      v5 = v11 / v13;
    }
  }

  v14 = [(FBAOutboxItemCell *)self progressView];
  *&v15 = v5;
  [v14 setProgress:v15];

  v16 = [(FBAOutboxItemCell *)self netMonitor];
  -[FBAOutboxItemCell updateForNetworkStateChange:](self, "updateForNetworkStateChange:", [v16 shouldShowWaitingOnWifi]);
}

- (void)updateUploadStage:(unint64_t)a3
{
  [(FBAOutboxItemCell *)self setLastStage:?];
  v5 = +[UIColor labelColor];
  v6 = 0;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
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

    if (a3 != 7)
    {
      if (a3 != 8)
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

  if (a3 <= 2)
  {
    if (a3 < 2)
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

    if (a3 == 2)
    {
      v15 = +[NSBundle mainBundle];
      v25 = [v15 localizedStringForKey:@"OUTBOX_COLLECTING" value:&stru_1000E2210 table:0];

LABEL_19:
      v16 = [(FBAOutboxItemCell *)self indeterminateSpinner];
      [v16 startAnimating];
      v6 = 1;
      goto LABEL_28;
    }

LABEL_31:
    v25 = 0;
    goto LABEL_27;
  }

  if (a3 == 3)
  {
    v19 = +[NSBundle mainBundle];
    v20 = v19;
    v21 = @"OUTBOX_SUBMISSION_TOO_LARGE";
    goto LABEL_24;
  }

LABEL_13:
  v10 = [(FBAOutboxItemCell *)self netMonitor];
  v11 = [v10 shouldShowWaitingOnWifi];

  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (v11)
  {
    v14 = LocalizableGTStringKeyForKey();
    v25 = [v13 localizedStringForKey:v14 value:&stru_1000E2210 table:0];
  }

  else
  {
    v25 = [v12 localizedStringForKey:@"OUTBOX_UPLOADING" value:&stru_1000E2210 table:0];
  }

  if (a3 == 8)
  {
    goto LABEL_19;
  }

  v6 = 0;
LABEL_27:
  v16 = [(FBAOutboxItemCell *)self indeterminateSpinner];
  [v16 stopAnimating];
LABEL_28:

  v22 = [(FBAInboxItemCell *)self subtitleLabel];
  [v22 setText:v25];

  v23 = [(FBAInboxItemCell *)self subtitleLabel];
  [v23 setTextColor:v5];

  v24 = [(FBAOutboxItemCell *)self progressView];
  [v24 setHidden:v6];
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