@interface PadShowEventWithAttendeesTest
- (id)_getEvent;
- (void)_attendeesDidFinishLoading:(id)loading;
- (void)_detailsDidAppear:(id)appear;
- (void)_setupViewToDate:(id)date;
- (void)runTest;
@end

@implementation PadShowEventWithAttendeesTest

- (void)_setupViewToDate:(id)date
{
  dateCopy = date;
  model = [(ApplicationTest *)self model];
  [model setSelectedDate:dateCopy];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToMonthView = [rootNavigationController resetToMonthView];

  date = [dateCopy date];

  [(MonthViewController *)resetToMonthView showDate:date animated:0];
  [(PadShowEventTest *)self setController:resetToMonthView];
  monthViewController = self->_monthViewController;
  self->_monthViewController = resetToMonthView;
}

- (id)_getEvent
{
  numAttendees = [(PadShowEventWithAttendeesTest *)self numAttendees];

  return [(ShowEventDetailsTest *)self createTestEvent:@"Test Event with Attendees" numAttendees:numAttendees];
}

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  [(PadShowEventWithAttendeesTest *)self _setupViewToDate:extractInitialDateOption];
  v5 = dispatch_time(0, 4000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010DFB0;
  v7[3] = &unk_10020EC68;
  v7[4] = self;
  v8 = application;
  v6 = application;
  dispatch_after(v5, &_dispatch_main_q, v7);
}

- (void)_detailsDidAppear:(id)appear
{
  self->_eventDetailsDidAppear = 1;
  shouldWaitForAttendeeLoad = [(PadShowEventWithAttendeesTest *)self shouldWaitForAttendeeLoad];
  application = [(ApplicationTest *)self application];
  if (shouldWaitForAttendeeLoad)
  {
    eventDetailsDidShowSubtestName = [(PadShowEventWithAttendeesTest *)self eventDetailsDidShowSubtestName];
    testName = [objc_opt_class() testName];
    [application finishedSubTest:eventDetailsDidShowSubtestName forTest:testName];
  }

  else
  {
    testName2 = [objc_opt_class() testName];
    [application finishedTest:testName2 extraResults:0];

    [(ShowEventDetailsTest *)self cleanUp];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

- (void)_attendeesDidFinishLoading:(id)loading
{
  if (!self->_eventDetailsDidAppear)
  {
    [(PadShowEventWithAttendeesTest *)self _detailsDidAppear:0];
  }

  application = [(ApplicationTest *)self application];
  testName = [objc_opt_class() testName];
  [application finishedTest:testName extraResults:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:EKEventDetailsDidFinishLoadingAttendeesNotification object:0];

  [(ShowEventDetailsTest *)self cleanUp];
}

@end