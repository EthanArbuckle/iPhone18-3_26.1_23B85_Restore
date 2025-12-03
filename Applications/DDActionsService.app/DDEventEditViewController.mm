@interface DDEventEditViewController
- (void)dealloc;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)prepareForAction:(id)action;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation DDEventEditViewController

- (void)dealloc
{
  eventEditViewController = self->_eventEditViewController;
  if (eventEditViewController)
  {
    [(EKEventEditViewController *)eventEditViewController dismissViewControllerAnimated:0 completion:0];
    v4 = self->_eventEditViewController;
    self->_eventEditViewController = 0;
  }

  v5.receiver = self;
  v5.super_class = DDEventEditViewController;
  [(DDEventEditViewController *)&v5 dealloc];
}

- (void)prepareForAction:(id)action
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A1A8;
  v6[3] = &unk_100018968;
  actionCopy = action;
  v8 = objc_alloc_init(EKEventStore);
  selfCopy = self;
  v4 = v8;
  v5 = actionCopy;
  [v4 requestFullAccessToEventsWithCompletion:v6];
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  v7 = controllerCopy;
  v8 = 2;
  if (action)
  {
    v9 = 0;
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  v10 = action == 1;
  if (action == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  event = [controllerCopy event];
  timeZone = [event timeZone];
  if (timeZone)
  {
    v15 = timeZone;
    timeZone2 = [(EKEvent *)self->_proposedEvent timeZone];

    if (timeZone2)
    {
      goto LABEL_14;
    }

    event = +[NSTimeZone defaultTimeZone];
    [(EKEvent *)self->_proposedEvent setTimeZone:event];
  }

LABEL_14:
  if ((v12 & self->_shouldTrackEventCreation) == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000BBFC(self, v7, v11);
    }

    if ([(DDAction *)self->_action hostApplication]== 1)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    prefillMode = self->_prefillMode;
    eventTypeClassification = self->_eventTypeClassification;
    proposedEvent = self->_proposedEvent;
    event2 = [v7 event];
    [SGNLEventSuggestionsMetrics recordUserInteraction:v11 withLinkInApplication:v17 eventPrefillMode:prefillMode eventTypeClassification:eventTypeClassification proposedEvent:proposedEvent confirmedEvent:event2];
  }

  [(DDEventEditViewController *)self setCancellable:1];
  [v7 setEditViewDelegate:0];
  [(EKEventEditViewController *)self->_eventEditViewController dismissViewControllerAnimated:0 completion:0];
  eventEditViewController = self->_eventEditViewController;
  self->_eventEditViewController = 0;

  _remoteViewControllerProxy = [(DDEventEditViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy actionDidFinishShouldDismiss:1];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = DDEventEditViewController;
  [(DDEventEditViewController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection = [(DDEventEditViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AC74;
    v11[3] = &unk_100018990;
    v12 = collectionCopy;
    v13 = coordinatorCopy;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

@end