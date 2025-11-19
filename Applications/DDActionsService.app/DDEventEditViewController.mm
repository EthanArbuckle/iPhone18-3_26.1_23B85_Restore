@interface DDEventEditViewController
- (void)dealloc;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)prepareForAction:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

- (void)prepareForAction:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A1A8;
  v6[3] = &unk_100018968;
  v7 = a3;
  v8 = objc_alloc_init(EKEventStore);
  v9 = self;
  v4 = v8;
  v5 = v7;
  [v4 requestFullAccessToEventsWithCompletion:v6];
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 2;
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  v10 = a4 == 1;
  if (a4 == 1)
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

  v13 = [v6 event];
  v14 = [v13 timeZone];
  if (v14)
  {
    v15 = v14;
    v16 = [(EKEvent *)self->_proposedEvent timeZone];

    if (v16)
    {
      goto LABEL_14;
    }

    v13 = +[NSTimeZone defaultTimeZone];
    [(EKEvent *)self->_proposedEvent setTimeZone:v13];
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
    v21 = [v7 event];
    [SGNLEventSuggestionsMetrics recordUserInteraction:v11 withLinkInApplication:v17 eventPrefillMode:prefillMode eventTypeClassification:eventTypeClassification proposedEvent:proposedEvent confirmedEvent:v21];
  }

  [(DDEventEditViewController *)self setCancellable:1];
  [v7 setEditViewDelegate:0];
  [(EKEventEditViewController *)self->_eventEditViewController dismissViewControllerAnimated:0 completion:0];
  eventEditViewController = self->_eventEditViewController;
  self->_eventEditViewController = 0;

  v23 = [(DDEventEditViewController *)self _remoteViewControllerProxy];
  [v23 actionDidFinishShouldDismiss:1];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDEventEditViewController;
  [(DDEventEditViewController *)&v14 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [v6 verticalSizeClass];
  v9 = [(DDEventEditViewController *)self traitCollection];
  v10 = [v9 verticalSizeClass];

  if (v8 != v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AC74;
    v11[3] = &unk_100018990;
    v12 = v6;
    v13 = v7;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

@end