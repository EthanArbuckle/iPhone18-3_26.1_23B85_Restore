@interface FBAUploadProgressCell
- (FBANetworkMonitor)netMonitor;
- (FBARadialProgressView)progressView;
- (UIActivityIndicatorView)indeterminateSpinner;
- (UILabel)statusLabel;
- (void)awakeFromNib;
- (void)beginObserving:(id)observing;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObservedTask:(id)task;
- (void)stopObserving:(id)observing;
- (void)updateForNetworkStateChange:(BOOL)change;
- (void)updateProgressForTask:(id)task;
- (void)updateUploadStage:(unint64_t)stage;
@end

@implementation FBAUploadProgressCell

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = FBAUploadProgressCell;
  [(FBAUploadProgressCell *)&v7 awakeFromNib];
  v3 = +[FBANetworkMonitor sharedInstance];
  [(FBAUploadProgressCell *)self setNetMonitor:v3];

  netMonitor = [(FBAUploadProgressCell *)self netMonitor];
  [netMonitor addObserver:self forKeyPath:@"isConnectedToCellNetwork" options:1 context:off_100108658];

  indeterminateSpinner = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [indeterminateSpinner setActivityIndicatorViewStyle:100];

  indeterminateSpinner2 = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [indeterminateSpinner2 stopAnimating];
}

- (void)setObservedTask:(id)task
{
  taskCopy = task;
  taskIdentifier = [(FBKUploadTask *)self->_observedTask taskIdentifier];
  taskIdentifier2 = [taskCopy taskIdentifier];
  v7 = [taskIdentifier isEqual:taskIdentifier2];

  if ((v7 & 1) == 0)
  {
    if (self->_observedTask)
    {
      [(FBAUploadProgressCell *)self stopObserving:?];
    }

    objc_storeStrong(&self->_observedTask, task);
    [(FBAUploadProgressCell *)self beginObserving:self->_observedTask];
  }

  -[FBAUploadProgressCell updateUploadStage:](self, "updateUploadStage:", [taskCopy localSubmissionStage]);
  [(FBAUploadProgressCell *)self updateProgressForTask:taskCopy];
}

- (void)dealloc
{
  if (self->_observedTask)
  {
    [(FBAUploadProgressCell *)self stopObserving:?];
  }

  netMonitor = [(FBAUploadProgressCell *)self netMonitor];
  [netMonitor removeObserver:self forKeyPath:@"isConnectedToCellNetwork"];

  v4.receiver = self;
  v4.super_class = FBAUploadProgressCell;
  [(FBAUploadProgressCell *)&v4 dealloc];
}

- (void)beginObserving:(id)observing
{
  v4 = off_100108660;
  observingCopy = observing;
  [observingCopy addObserver:self forKeyPath:@"bytesUploaded" options:1 context:v4];
  [observingCopy addObserver:self forKeyPath:@"localSubmissionStage" options:1 context:off_100108668];
}

- (void)stopObserving:(id)observing
{
  v4 = off_100108660;
  observingCopy = observing;
  [observingCopy removeObserver:self forKeyPath:@"bytesUploaded" context:v4];
  [observingCopy removeObserver:self forKeyPath:@"localSubmissionStage" context:off_100108668];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100108660 == context)
  {
    observedTask = [(FBAUploadProgressCell *)self observedTask];
    [(FBAUploadProgressCell *)self updateProgressForTask:observedTask];
LABEL_7:

    goto LABEL_8;
  }

  if (off_100108668 == context)
  {
    observedTask = [(FBAUploadProgressCell *)self observedTask];
    -[FBAUploadProgressCell updateUploadStage:](self, "updateUploadStage:", [observedTask localSubmissionStage]);
    goto LABEL_7;
  }

  if (off_100108658 == context)
  {
    netMonitor = [(FBAUploadProgressCell *)self netMonitor];
    shouldShowWaitingOnWifi = [netMonitor shouldShowWaitingOnWifi];

    [(FBAUploadProgressCell *)self updateForNetworkStateChange:shouldShowWaitingOnWifi];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = FBAUploadProgressCell;
    [(FBAUploadProgressCell *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_8:
}

- (void)updateForNetworkStateChange:(BOOL)change
{
  changeCopy = change;
  if ([(FBAUploadProgressCell *)self lastStage]== 4)
  {
    v8 = +[NSBundle mainBundle];
    if (changeCopy)
    {
      v5 = LocalizableGTStringKeyForKey();
      statusLabel2 = [v8 localizedStringForKey:v5 value:&stru_1000E2210 table:0];
      statusLabel = [(FBAUploadProgressCell *)self statusLabel];
      [statusLabel setText:statusLabel2];
    }

    else
    {
      v5 = [v8 localizedStringForKey:@"FOLLOWUP_SENDING_ATTACHMENTS" value:&stru_1000E2210 table:0];
      statusLabel2 = [(FBAUploadProgressCell *)self statusLabel];
      [statusLabel2 setText:v5];
    }
  }
}

- (void)updateProgressForTask:(id)task
{
  taskCopy = task;
  v5 = 0.0;
  v17 = taskCopy;
  if (taskCopy)
  {
    bytesToUpload = [taskCopy bytesToUpload];
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

  progressView = [(FBAUploadProgressCell *)self progressView];
  *&v15 = v5;
  [progressView setProgress:v15];

  netMonitor = [(FBAUploadProgressCell *)self netMonitor];
  -[FBAUploadProgressCell updateForNetworkStateChange:](self, "updateForNetworkStateChange:", [netMonitor shouldShowWaitingOnWifi]);
}

- (void)updateUploadStage:(unint64_t)stage
{
  [(FBAUploadProgressCell *)self setLastStage:?];
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
      v9 = @"FOLLOWUP_SENDING_ATTACHMENTS";
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
      indeterminateSpinner = [(FBAUploadProgressCell *)self indeterminateSpinner];
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
  netMonitor = [(FBAUploadProgressCell *)self netMonitor];
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
    v25 = [v12 localizedStringForKey:@"FOLLOWUP_SENDING_ATTACHMENTS" value:&stru_1000E2210 table:0];
  }

  if (stage == 8)
  {
    goto LABEL_19;
  }

  v6 = 0;
LABEL_27:
  indeterminateSpinner = [(FBAUploadProgressCell *)self indeterminateSpinner];
  [indeterminateSpinner stopAnimating];
LABEL_28:

  statusLabel = [(FBAUploadProgressCell *)self statusLabel];
  [statusLabel setText:v25];

  statusLabel2 = [(FBAUploadProgressCell *)self statusLabel];
  [statusLabel2 setTextColor:v5];

  progressView = [(FBAUploadProgressCell *)self progressView];
  [progressView setHidden:v6];
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