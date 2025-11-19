@interface CarplayNavigationController
- (CarplayNavigationController)initWithModel:(id)a3;
- (void)_dismissPresentedViewController;
- (void)_initializeAndPushListView;
- (void)_showEvent:(id)a3 animated:(BOOL)a4;
- (void)_showListScrolledToDate:(id)a3;
- (void)handleURL:(id)a3;
@end

@implementation CarplayNavigationController

- (CarplayNavigationController)initWithModel:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = CarplayNavigationController;
  v6 = [(CarplayNavigationController *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [(CUIKCalendarModel *)v7->_model undoManager];
    v9 = [v8 undoableEditor];

    v10 = [[EKUIIntegrationAlertDisplayer alloc] initWithViewController:v7 options:0];
    alertDisplayer = v7->_alertDisplayer;
    v7->_alertDisplayer = v10;

    v12 = [CUIKIPendingReminderTracker alloc];
    v13 = [(CUIKCalendarModel *)v7->_model eventStore];
    v14 = [v12 initWithEventStore:v13];

    [v5 setPendingReminderTracker:v14];
    v15 = [CUIKIReminderEditor alloc];
    v16 = [(CUIKCalendarModel *)v7->_model eventStore];
    v17 = [(CUIKCalendarModel *)v7->_model undoManager];
    v18 = [v15 initWithEventStore:v16 undoManager:v17 alertDisplayer:v7->_alertDisplayer pendingReminderTracker:v14];

    v19 = [CUIKCompositeEditor alloc];
    v25[0] = v9;
    v25[1] = v18;
    v20 = [NSArray arrayWithObjects:v25 count:2];
    v21 = [v19 initWithEditors:v20];

    v22 = [(CUIKCalendarModel *)v7->_model undoManager];
    [v22 setUndoableEditor:v21];

    [(CarplayNavigationController *)v7 _initializeAndPushListView];
  }

  return v7;
}

- (void)handleURL:(id)a3
{
  v4 = a3;
  v5 = self->_model;
  v6 = [v4 scheme];
  if ([v6 isEqualToString:_EKEventURLScheme])
  {
    v7 = [(CUIKCalendarModel *)v5 eventStore];
    v8 = [v7 _eventWithURI:v4 checkValid:1];

    if (v8)
    {
      v9 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling url as showing event:%@", &v15, 0xCu);
      }

      [(CarplayNavigationController *)self _dismissPresentedViewController];
      [(CarplayNavigationController *)self _showEvent:v8 animated:0];
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"calshow"])
  {
    v8 = [v4 resourceSpecifier];
    if ([v8 length])
    {
      v10 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v8 intValue]);
      v11 = kCalUILogCarplayHandle;
      if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "handling url as scrolling to date:%@", &v15, 0xCu);
      }

      [(CarplayNavigationController *)self _dismissPresentedViewController];
      v12 = [(CUIKCalendarModel *)v5 calendar];
      v13 = [v12 timeZone];
      v14 = [EKCalendarDate calendarDateWithDate:v10 timeZone:v13];
      [(CarplayNavigationController *)self _showListScrolledToDate:v14];
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_dismissPresentedViewController
{
  v4 = [(CarplayNavigationController *)self presentedViewController];
  if (v4)
  {
    [(CarplayNavigationController *)self dismissViewControllerAnimated:1 completion:0];
  }

  v3 = [(CarplayNavigationController *)self popToRootViewControllerAnimated:1];
}

- (void)_showEvent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Showing detail view on nav stack", v9, 2u);
  }

  v8 = [[CarplayDetailViewController alloc] initWithEvent:v6 showDayName:0];
  [(CarplayNavigationController *)self pushViewController:v8 animated:v4];
}

- (void)_showListScrolledToDate:(id)a3
{
  v4 = a3;
  v5 = [(CarplayNavigationController *)self bottomViewController];
  [v5 scrollToDate:v4];
}

- (void)_initializeAndPushListView
{
  v3 = [[CarplayListViewController alloc] initWithModel:self->_model];
  [(CarplayNavigationController *)self pushViewController:v3 animated:0];
}

@end