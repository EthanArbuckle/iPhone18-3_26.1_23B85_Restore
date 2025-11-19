@interface FBAUploadProgressCell
- (FBANetworkMonitor)netMonitor;
- (FBARadialProgressView)progressView;
- (UIActivityIndicatorView)indeterminateSpinner;
- (UILabel)statusLabel;
- (void)awakeFromNib;
- (void)beginObserving:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObservedTask:(id)a3;
- (void)stopObserving:(id)a3;
- (void)updateForNetworkStateChange:(BOOL)a3;
- (void)updateProgressForTask:(id)a3;
- (void)updateUploadStage:(unint64_t)a3;
@end

@implementation FBAUploadProgressCell

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = FBAUploadProgressCell;
  [(FBAUploadProgressCell *)&v7 awakeFromNib];
  v3 = +[FBANetworkMonitor sharedInstance];
  [(FBAUploadProgressCell *)self setNetMonitor:v3];

  v4 = [(FBAUploadProgressCell *)self netMonitor];
  [v4 addObserver:self forKeyPath:@"isConnectedToCellNetwork" options:1 context:off_100108658];

  v5 = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [v5 setActivityIndicatorViewStyle:100];

  v6 = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [v6 stopAnimating];
}

- (void)setObservedTask:(id)a3
{
  v8 = a3;
  v5 = [(FBKUploadTask *)self->_observedTask taskIdentifier];
  v6 = [v8 taskIdentifier];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    if (self->_observedTask)
    {
      [(FBAUploadProgressCell *)self stopObserving:?];
    }

    objc_storeStrong(&self->_observedTask, a3);
    [(FBAUploadProgressCell *)self beginObserving:self->_observedTask];
  }

  -[FBAUploadProgressCell updateUploadStage:](self, "updateUploadStage:", [v8 localSubmissionStage]);
  [(FBAUploadProgressCell *)self updateProgressForTask:v8];
}

- (void)dealloc
{
  if (self->_observedTask)
  {
    [(FBAUploadProgressCell *)self stopObserving:?];
  }

  v3 = [(FBAUploadProgressCell *)self netMonitor];
  [v3 removeObserver:self forKeyPath:@"isConnectedToCellNetwork"];

  v4.receiver = self;
  v4.super_class = FBAUploadProgressCell;
  [(FBAUploadProgressCell *)&v4 dealloc];
}

- (void)beginObserving:(id)a3
{
  v4 = off_100108660;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"bytesUploaded" options:1 context:v4];
  [v5 addObserver:self forKeyPath:@"localSubmissionStage" options:1 context:off_100108668];
}

- (void)stopObserving:(id)a3
{
  v4 = off_100108660;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"bytesUploaded" context:v4];
  [v5 removeObserver:self forKeyPath:@"localSubmissionStage" context:off_100108668];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100108660 == a6)
  {
    v13 = [(FBAUploadProgressCell *)self observedTask];
    [(FBAUploadProgressCell *)self updateProgressForTask:v13];
LABEL_7:

    goto LABEL_8;
  }

  if (off_100108668 == a6)
  {
    v13 = [(FBAUploadProgressCell *)self observedTask];
    -[FBAUploadProgressCell updateUploadStage:](self, "updateUploadStage:", [v13 localSubmissionStage]);
    goto LABEL_7;
  }

  if (off_100108658 == a6)
  {
    v14 = [(FBAUploadProgressCell *)self netMonitor];
    v15 = [v14 shouldShowWaitingOnWifi];

    [(FBAUploadProgressCell *)self updateForNetworkStateChange:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = FBAUploadProgressCell;
    [(FBAUploadProgressCell *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_8:
}

- (void)updateForNetworkStateChange:(BOOL)a3
{
  v3 = a3;
  if ([(FBAUploadProgressCell *)self lastStage]== 4)
  {
    v8 = +[NSBundle mainBundle];
    if (v3)
    {
      v5 = LocalizableGTStringKeyForKey();
      v6 = [v8 localizedStringForKey:v5 value:&stru_1000E2210 table:0];
      v7 = [(FBAUploadProgressCell *)self statusLabel];
      [v7 setText:v6];
    }

    else
    {
      v5 = [v8 localizedStringForKey:@"FOLLOWUP_SENDING_ATTACHMENTS" value:&stru_1000E2210 table:0];
      v6 = [(FBAUploadProgressCell *)self statusLabel];
      [v6 setText:v5];
    }
  }
}

- (void)updateProgressForTask:(id)a3
{
  v4 = a3;
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

  v14 = [(FBAUploadProgressCell *)self progressView];
  *&v15 = v5;
  [v14 setProgress:v15];

  v16 = [(FBAUploadProgressCell *)self netMonitor];
  -[FBAUploadProgressCell updateForNetworkStateChange:](self, "updateForNetworkStateChange:", [v16 shouldShowWaitingOnWifi]);
}

- (void)updateUploadStage:(unint64_t)a3
{
  [(FBAUploadProgressCell *)self setLastStage:?];
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
      v9 = @"FOLLOWUP_SENDING_ATTACHMENTS";
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
      v16 = [(FBAUploadProgressCell *)self indeterminateSpinner];
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
  v10 = [(FBAUploadProgressCell *)self netMonitor];
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
    v25 = [v12 localizedStringForKey:@"FOLLOWUP_SENDING_ATTACHMENTS" value:&stru_1000E2210 table:0];
  }

  if (a3 == 8)
  {
    goto LABEL_19;
  }

  v6 = 0;
LABEL_27:
  v16 = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [v16 stopAnimating];
LABEL_28:

  v22 = [(FBAUploadProgressCell *)self statusLabel];
  [v22 setText:v25];

  v23 = [(FBAUploadProgressCell *)self statusLabel];
  [v23 setTextColor:v5];

  v24 = [(FBAUploadProgressCell *)self progressView];
  [v24 setHidden:v6];
}

- (UILabel)statusLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_statusLabel);

  return WeakRetained;
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