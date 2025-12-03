@interface EKEventCreationGestureController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (EKEventCreationGestureController)initWithView:(id)view delegate:(id)delegate;
- (id)_snapDateTo15MinuteInterval:(id)interval;
- (void)_adjustPreviewFrame;
- (void)_cleanUp;
- (void)_gestureBegan;
- (void)_gestureCanceled;
- (void)_gestureChangedEnoughToCreateEvent;
- (void)_gestureCompleted;
- (void)_gestureUpdated;
- (void)dealloc;
- (void)handleGesture:(id)gesture;
- (void)invalidate;
@end

@implementation EKEventCreationGestureController

- (EKEventCreationGestureController)initWithView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = EKEventCreationGestureController;
  v8 = [(EKEventCreationGestureController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_gestureDelegate, delegateCopy);
    objc_storeWeak(&v9->_targetView, viewCopy);
    v10 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v9 action:sel_handleGesture_];
    gestureRecognizer = v9->_gestureRecognizer;
    v9->_gestureRecognizer = v10;

    [(UILongPressGestureRecognizer *)v9->_gestureRecognizer setDelegate:v9];
    [(UILongPressGestureRecognizer *)v9->_gestureRecognizer setMinimumPressDuration:0.16];
    [(UILongPressGestureRecognizer *)v9->_gestureRecognizer setAllowableMovement:1000.0];
    v12 = MEMORY[0x1E695DEC8];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:3];
    v14 = [v12 arrayWithObject:v13];
    [(UILongPressGestureRecognizer *)v9->_gestureRecognizer setAllowedTouchTypes:v14];

    WeakRetained = objc_loadWeakRetained(&v9->_targetView);
    [WeakRetained addGestureRecognizer:v9->_gestureRecognizer];

    v9->_state = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(EKEventCreationGestureController *)self invalidate];
  v3.receiver = self;
  v3.super_class = EKEventCreationGestureController;
  [(EKEventCreationGestureController *)&v3 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  [WeakRetained removeGestureRecognizer:self->_gestureRecognizer];

  gestureRecognizer = self->_gestureRecognizer;
  self->_gestureRecognizer = 0;

  objc_storeWeak(&self->_gestureDelegate, 0);

  objc_storeWeak(&self->_targetView, 0);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  v5 = [WeakRetained creationGestureControllerRequestedContainerView:selfCopy];

  [(UILongPressGestureRecognizer *)selfCopy->_gestureRecognizer locationInView:v5];
  v7 = v6;
  v9 = v8;
  v10 = objc_loadWeakRetained(&selfCopy->_gestureDelegate);
  LOBYTE(selfCopy) = [v10 creationGestureController:selfCopy canActivateAtPoint:{v7, v9}];

  return selfCopy;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  v7 = [WeakRetained creationGestureControllerRequestedContainerView:self];

  [touchCopy locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_gestureDelegate);
  LOBYTE(self) = [v12 creationGestureController:self canActivateAtPoint:{v9, v11}];

  return self;
}

- (void)handleGesture:(id)gesture
{
  state = [gesture state];
  if (state > 3)
  {
    if ((state - 4) < 2)
    {

      [(EKEventCreationGestureController *)self _gestureCanceled];
    }
  }

  else
  {
    switch(state)
    {
      case 1:

        [(EKEventCreationGestureController *)self _gestureBegan];
        break;
      case 2:

        [(EKEventCreationGestureController *)self _gestureUpdated];
        break;
      case 3:

        [(EKEventCreationGestureController *)self _gestureCompleted];
        break;
    }
  }
}

- (id)_snapDateTo15MinuteInterval:(id)interval
{
  [interval timeIntervalSinceReferenceDate];
  v4 = round(v3 / 900.0) * 900.0;
  v5 = MEMORY[0x1E695DF00];

  return [v5 dateWithTimeIntervalSinceReferenceDate:v4];
}

- (void)_adjustPreviewFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  [WeakRetained creationGestureController:self requestedWidthForEventPreview:self->_eventPreview atPoint:{self->_originPoint.x, self->_originPoint.y}];
  v5 = v4;

  [(UILongPressGestureRecognizer *)self->_gestureRecognizer locationInView:self->_containerView];
  v7 = v6;
  v8 = self->_originPoint.y - v6;
  if (v8 >= 0.0)
  {
    v9 = self->_originPoint.y - v6;
  }

  else
  {
    v9 = -v8;
  }

  v10 = objc_loadWeakRetained(&self->_gestureDelegate);
  [v10 creationGestureController:self requestedXCoordinateForEventPreviewAtPoint:{self->_originPoint.x, self->_originPoint.y}];
  v12 = v11;

  if (self->_originPoint.y >= v7)
  {
    y = v7;
  }

  else
  {
    y = self->_originPoint.y;
  }

  [(EKDayOccurrenceView *)self->_eventPreview setFrame:v12, y, v5, v9];
  eventPreview = self->_eventPreview;

  [(EKDayOccurrenceView *)eventPreview requestContentIfNeeded:16 completion:0];
}

- (void)_cleanUp
{
  [(EKDayOccurrenceView *)self->_eventPreview removeFromSuperview];
  newEvent = self->_newEvent;
  self->_newEvent = 0;

  containerView = self->_containerView;
  self->_containerView = 0;

  eventPreview = self->_eventPreview;
  self->_eventPreview = 0;

  self->_originPoint = *MEMORY[0x1E695EFF8];
  self->_state = 0;
}

- (void)_gestureBegan
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  v4 = [WeakRetained creationGestureControllerRequestedContainerView:self];
  containerView = self->_containerView;
  self->_containerView = v4;

  [(UILongPressGestureRecognizer *)self->_gestureRecognizer locationInView:self->_containerView];
  v7 = v6;
  v9 = v8;
  v10 = objc_loadWeakRetained(&self->_gestureDelegate);
  v17 = [v10 creationGestureController:self dateForPoint:{v7, v9}];

  v11 = [(EKEventCreationGestureController *)self _snapDateTo15MinuteInterval:v17];
  v12 = objc_loadWeakRetained(&self->_gestureDelegate);
  [v12 creationGestureController:self requestsPointForDate:v11];
  v14 = v13;
  v16 = v15;

  self->_originPoint.x = v14;
  self->_originPoint.y = v16;
  self->_state = 1;
}

- (void)_gestureChangedEnoughToCreateEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  v4 = [WeakRetained creationGestureControllerRequestsNewEvent:self];
  newEvent = self->_newEvent;
  self->_newEvent = v4;

  v6 = objc_loadWeakRetained(&self->_gestureDelegate);
  v7 = [v6 creationGestureController:self requestedPreviewForEvent:self->_newEvent];
  eventPreview = self->_eventPreview;
  self->_eventPreview = v7;

  [(EKEventCreationGestureController *)self _adjustPreviewFrame];
  [(UIView *)self->_containerView addSubview:self->_eventPreview];
  self->_state = 2;
}

- (void)_gestureUpdated
{
  state = self->_state;
  if (state == 1)
  {
    [(UILongPressGestureRecognizer *)self->_gestureRecognizer locationInView:self->_containerView];
    v5 = v4 - self->_originPoint.y;
    if (v5 < 0.0)
    {
      v5 = -v5;
    }

    if (v5 > 10.0)
    {
      [(EKEventCreationGestureController *)self _gestureChangedEnoughToCreateEvent];
    }

    state = self->_state;
  }

  if (state == 2)
  {
    [(EKEventCreationGestureController *)self _adjustPreviewFrame];
    [(UILongPressGestureRecognizer *)self->_gestureRecognizer locationInView:self->_containerView];
    v7 = v6;
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
    v11 = [WeakRetained creationGestureController:self dateForPoint:{v7, v9}];

    v13 = [(EKEventCreationGestureController *)self _snapDateTo15MinuteInterval:v11];

    v12 = objc_loadWeakRetained(&self->_gestureDelegate);
    [v12 creationGestureController:self didResizeToDate:v13];
  }
}

- (void)_gestureCompleted
{
  v21 = self->_newEvent;
  if (self->_state == 2)
  {
    [(EKDayOccurrenceView *)self->_eventPreview frame];
    v4 = v3;
    v6 = v5;
    [(EKDayOccurrenceView *)self->_eventPreview frame];
    v7 = CGRectGetMaxX(v23) + -2.0;
    [(EKDayOccurrenceView *)self->_eventPreview frame];
    MaxY = CGRectGetMaxY(v24);
    WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
    v10 = [WeakRetained creationGestureController:self dateForPoint:{v4, v6}];

    v11 = objc_loadWeakRetained(&self->_gestureDelegate);
    v12 = [v11 creationGestureController:self dateForPoint:{v7, MaxY}];

    v13 = [(EKEventCreationGestureController *)self _snapDateTo15MinuteInterval:v10];

    v14 = [(EKEventCreationGestureController *)self _snapDateTo15MinuteInterval:v12];

    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;
    [v13 timeIntervalSinceReferenceDate];
    newEvent = self->_newEvent;
    if (v16 - v17 > 15.0)
    {
      [(EKEvent *)newEvent setStartDate:v13];
      [(EKEvent *)self->_newEvent setEndDateUnadjustedForLegacyClients:v14];

      [(EKEventCreationGestureController *)self _cleanUp];
      v19 = objc_loadWeakRetained(&self->_gestureDelegate);
      [v19 creationGestureController:self didCreateNewEvent:v21];
      goto LABEL_6;
    }

    eventStore = [(EKEvent *)newEvent eventStore];
    [eventStore removeEvent:self->_newEvent span:0 error:0];
  }

  [(EKEventCreationGestureController *)self _cleanUp];
  v19 = objc_loadWeakRetained(&self->_gestureDelegate);
  [v19 creationGestureControllerDidCancel:self];
LABEL_6:
}

- (void)_gestureCanceled
{
  [(EKEventCreationGestureController *)self _cleanUp];
  WeakRetained = objc_loadWeakRetained(&self->_gestureDelegate);
  [WeakRetained creationGestureControllerDidCancel:self];
}

@end