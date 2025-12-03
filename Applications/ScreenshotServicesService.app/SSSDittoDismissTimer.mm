@interface SSSDittoDismissTimer
- (BOOL)_timerShouldBeRunning;
- (SSSDittoDismissTimer)init;
- (SSSDittoDismissTimerDelegate)delegate;
- (id)_stateDescription;
- (void)_significantTimerEventOccured;
- (void)_timerFired;
- (void)dealloc;
- (void)setInDragAndDrop:(BOOL)drop;
- (void)setPerformingDismissAnimation:(BOOL)animation;
- (void)setShowingSharingUI:(BOOL)i;
- (void)setShowingWaitingForImageIdentifierUpdatesUI:(BOOL)i;
- (void)setUserInterfaceHidden:(BOOL)hidden;
- (void)setViewState:(unint64_t)state;
@end

@implementation SSSDittoDismissTimer

- (SSSDittoDismissTimer)init
{
  v3.receiver = self;
  v3.super_class = SSSDittoDismissTimer;
  return [(SSSDittoDismissTimer *)&v3 init];
}

- (void)dealloc
{
  [(NSTimer *)self->_currentTimer invalidate];
  currentTimer = self->_currentTimer;
  self->_currentTimer = 0;

  v4.receiver = self;
  v4.super_class = SSSDittoDismissTimer;
  [(SSSDittoDismissTimer *)&v4 dealloc];
}

- (id)_stateDescription
{
  v3 = +[NSMutableString string];
  v4 = sub_100031654([(SSSDittoDismissTimer *)self viewState]);
  v5 = [NSString stringWithFormat:@"viewState: %@", v4];
  [v3 appendString:v5];

  v6 = [NSString stringWithFormat:@" inDragAndDrop: %d", [(SSSDittoDismissTimer *)self inDragAndDrop]];
  [v3 appendString:v6];

  v7 = [NSString stringWithFormat:@" showingSharingUI: %d", [(SSSDittoDismissTimer *)self showingSharingUI]];
  [v3 appendString:v7];

  v8 = [NSString stringWithFormat:@" showingWaitingForImageIdentifierUpdatesUI: %d", [(SSSDittoDismissTimer *)self showingWaitingForImageIdentifierUpdatesUI]];
  [v3 appendString:v8];

  v9 = [NSString stringWithFormat:@" performingDismissAnimation: %d", [(SSSDittoDismissTimer *)self performingDismissAnimation]];
  [v3 appendString:v9];

  v10 = [NSString stringWithFormat:@" userInterfaceHidden: %d", [(SSSDittoDismissTimer *)self userInterfaceHidden]];
  [v3 appendString:v10];

  return v3;
}

- (BOOL)_timerShouldBeRunning
{
  if ([(SSSDittoDismissTimer *)self viewState]|| [(SSSDittoDismissTimer *)self inDragAndDrop]|| [(SSSDittoDismissTimer *)self showingSharingUI]|| [(SSSDittoDismissTimer *)self showingWaitingForImageIdentifierUpdatesUI]|| [(SSSDittoDismissTimer *)self performingDismissAnimation])
  {
    return 0;
  }

  else
  {
    return ![(SSSDittoDismissTimer *)self userInterfaceHidden];
  }
}

- (void)_significantTimerEventOccured
{
  _timerShouldBeRunning = [(SSSDittoDismissTimer *)self _timerShouldBeRunning];
  v4 = os_log_create("com.apple.screenshotservices", "DismissTimer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _stateDescription = [(SSSDittoDismissTimer *)self _stateDescription];
    v9[0] = 67109378;
    v9[1] = _timerShouldBeRunning;
    v10 = 2112;
    v11 = _stateDescription;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Moving timer to running %d with state %@", v9, 0x12u);
  }

  [(NSTimer *)self->_currentTimer invalidate];
  if (_timerShouldBeRunning)
  {
    UIAnimationDragCoefficient();
    v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timerFired" selector:0 userInfo:0 repeats:v6 * 6.0];
  }

  else
  {
    v7 = 0;
  }

  currentTimer = self->_currentTimer;
  self->_currentTimer = v7;
}

- (void)_timerFired
{
  [(NSTimer *)self->_currentTimer invalidate];
  currentTimer = self->_currentTimer;
  self->_currentTimer = 0;

  v4 = os_log_create("com.apple.screenshotservices", "DismissTimer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _stateDescription = [(SSSDittoDismissTimer *)self _stateDescription];
    v7 = 138412290;
    v8 = _stateDescription;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismiss timer fired with state %@", &v7, 0xCu);
  }

  delegate = [(SSSDittoDismissTimer *)self delegate];
  [delegate dittoDismissTimerFired:self];
}

- (void)setViewState:(unint64_t)state
{
  if (self->_viewState != state || !self->_hasSetViewState)
  {
    self->_viewState = state;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetViewState = 1;
}

- (void)setInDragAndDrop:(BOOL)drop
{
  if (self->_inDragAndDrop != drop || !self->_hasSetInDragAndDrop)
  {
    self->_inDragAndDrop = drop;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetInDragAndDrop = 1;
}

- (void)setShowingSharingUI:(BOOL)i
{
  if (self->_showingSharingUI != i || !self->_hasSetShowingSharingUI)
  {
    self->_showingSharingUI = i;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetShowingSharingUI = 1;
}

- (void)setShowingWaitingForImageIdentifierUpdatesUI:(BOOL)i
{
  if (self->_showingWaitingForImageIdentifierUpdatesUI != i || !self->_hasSetShowingWaitingForImageIdentifierUpdatesUI)
  {
    self->_showingWaitingForImageIdentifierUpdatesUI = i;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetShowingWaitingForImageIdentifierUpdatesUI = 1;
}

- (void)setPerformingDismissAnimation:(BOOL)animation
{
  if (self->_performingDismissAnimation != animation || !self->_hasSetPerformingDismissAnimation)
  {
    self->_performingDismissAnimation = animation;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetPerformingDismissAnimation = 1;
}

- (void)setUserInterfaceHidden:(BOOL)hidden
{
  if (self->_userInterfaceHidden != hidden || !self->_hasSetUserInterfaceHidden)
  {
    self->_userInterfaceHidden = hidden;
    [(SSSDittoDismissTimer *)self _significantTimerEventOccured];
  }

  self->_hasSetUserInterfaceHidden = 1;
}

- (SSSDittoDismissTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end