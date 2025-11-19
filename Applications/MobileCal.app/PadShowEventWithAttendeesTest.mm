@interface PadShowEventWithAttendeesTest
- (id)_getEvent;
- (void)_attendeesDidFinishLoading:(id)a3;
- (void)_detailsDidAppear:(id)a3;
- (void)_setupViewToDate:(id)a3;
- (void)runTest;
@end

@implementation PadShowEventWithAttendeesTest

- (void)_setupViewToDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self model];
  [v5 setSelectedDate:v4];

  v6 = [(ApplicationTest *)self application];
  v7 = [v6 rootNavigationController];
  v8 = [v7 resetToMonthView];

  v9 = [v4 date];

  [(MonthViewController *)v8 showDate:v9 animated:0];
  [(PadShowEventTest *)self setController:v8];
  monthViewController = self->_monthViewController;
  self->_monthViewController = v8;
}

- (id)_getEvent
{
  v3 = [(PadShowEventWithAttendeesTest *)self numAttendees];

  return [(ShowEventDetailsTest *)self createTestEvent:@"Test Event with Attendees" numAttendees:v3];
}

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [(ApplicationTest *)self extractInitialDateOption];
  [(PadShowEventWithAttendeesTest *)self _setupViewToDate:v4];
  v5 = dispatch_time(0, 4000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010DFB0;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_detailsDidAppear:(id)a3
{
  self->_eventDetailsDidAppear = 1;
  v4 = [(PadShowEventWithAttendeesTest *)self shouldWaitForAttendeeLoad];
  v5 = [(ApplicationTest *)self application];
  if (v4)
  {
    v6 = [(PadShowEventWithAttendeesTest *)self eventDetailsDidShowSubtestName];
    v7 = [objc_opt_class() testName];
    [v5 finishedSubTest:v6 forTest:v7];
  }

  else
  {
    v8 = [objc_opt_class() testName];
    [v5 finishedTest:v8 extraResults:0];

    [(ShowEventDetailsTest *)self cleanUp];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

- (void)_attendeesDidFinishLoading:(id)a3
{
  if (!self->_eventDetailsDidAppear)
  {
    [(PadShowEventWithAttendeesTest *)self _detailsDidAppear:0];
  }

  v4 = [(ApplicationTest *)self application];
  v5 = [objc_opt_class() testName];
  [v4 finishedTest:v5 extraResults:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:EKEventDetailsDidFinishLoadingAttendeesNotification object:0];

  [(ShowEventDetailsTest *)self cleanUp];
}

@end