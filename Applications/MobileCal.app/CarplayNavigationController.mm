@interface CarplayNavigationController
- (CarplayNavigationController)initWithModel:(id)model;
- (void)_dismissPresentedViewController;
- (void)_initializeAndPushListView;
- (void)_showEvent:(id)event animated:(BOOL)animated;
- (void)_showListScrolledToDate:(id)date;
- (void)handleURL:(id)l;
@end

@implementation CarplayNavigationController

- (CarplayNavigationController)initWithModel:(id)model
{
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = CarplayNavigationController;
  v6 = [(CarplayNavigationController *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    undoManager = [(CUIKCalendarModel *)v7->_model undoManager];
    undoableEditor = [undoManager undoableEditor];

    v10 = [[EKUIIntegrationAlertDisplayer alloc] initWithViewController:v7 options:0];
    alertDisplayer = v7->_alertDisplayer;
    v7->_alertDisplayer = v10;

    v12 = [CUIKIPendingReminderTracker alloc];
    eventStore = [(CUIKCalendarModel *)v7->_model eventStore];
    v14 = [v12 initWithEventStore:eventStore];

    [modelCopy setPendingReminderTracker:v14];
    v15 = [CUIKIReminderEditor alloc];
    eventStore2 = [(CUIKCalendarModel *)v7->_model eventStore];
    undoManager2 = [(CUIKCalendarModel *)v7->_model undoManager];
    v18 = [v15 initWithEventStore:eventStore2 undoManager:undoManager2 alertDisplayer:v7->_alertDisplayer pendingReminderTracker:v14];

    v19 = [CUIKCompositeEditor alloc];
    v25[0] = undoableEditor;
    v25[1] = v18;
    v20 = [NSArray arrayWithObjects:v25 count:2];
    v21 = [v19 initWithEditors:v20];

    undoManager3 = [(CUIKCalendarModel *)v7->_model undoManager];
    [undoManager3 setUndoableEditor:v21];

    [(CarplayNavigationController *)v7 _initializeAndPushListView];
  }

  return v7;
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v5 = self->_model;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:_EKEventURLScheme])
  {
    eventStore = [(CUIKCalendarModel *)v5 eventStore];
    resourceSpecifier = [eventStore _eventWithURI:lCopy checkValid:1];

    if (resourceSpecifier)
    {
      v9 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = resourceSpecifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling url as showing event:%@", &v15, 0xCu);
      }

      [(CarplayNavigationController *)self _dismissPresentedViewController];
      [(CarplayNavigationController *)self _showEvent:resourceSpecifier animated:0];
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([scheme isEqualToString:@"calshow"])
  {
    resourceSpecifier = [lCopy resourceSpecifier];
    if ([resourceSpecifier length])
    {
      v10 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [resourceSpecifier intValue]);
      v11 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "handling url as scrolling to date:%@", &v15, 0xCu);
      }

      [(CarplayNavigationController *)self _dismissPresentedViewController];
      calendar = [(CUIKCalendarModel *)v5 calendar];
      timeZone = [calendar timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:v10 timeZone:timeZone];
      [(CarplayNavigationController *)self _showListScrolledToDate:v14];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_dismissPresentedViewController
{
  presentedViewController = [(CarplayNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
    [(CarplayNavigationController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v3 = [(CarplayNavigationController *)self popToRootViewControllerAnimated:1];
}

- (void)_showEvent:(id)event animated:(BOOL)animated
{
  animatedCopy = animated;
  eventCopy = event;
  v7 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Showing detail view on nav stack", v9, 2u);
  }

  v8 = [[CarplayDetailViewController alloc] initWithEvent:eventCopy showDayName:0];
  [(CarplayNavigationController *)self pushViewController:v8 animated:animatedCopy];
}

- (void)_showListScrolledToDate:(id)date
{
  dateCopy = date;
  bottomViewController = [(CarplayNavigationController *)self bottomViewController];
  [bottomViewController scrollToDate:dateCopy];
}

- (void)_initializeAndPushListView
{
  v3 = [[CarplayListViewController alloc] initWithModel:self->_model];
  [(CarplayNavigationController *)self pushViewController:v3 animated:0];
}

@end