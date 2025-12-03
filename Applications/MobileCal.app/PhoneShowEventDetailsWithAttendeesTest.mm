@interface PhoneShowEventDetailsWithAttendeesTest
- (void)_attendeesDidFinishLoading:(id)loading;
- (void)_detailViewControllerAppeared:(id)appeared;
- (void)runTest;
@end

@implementation PhoneShowEventDetailsWithAttendeesTest

- (void)runTest
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToDayView = [rootNavigationController resetToDayView];

  v7 = [(ShowEventDetailsTest *)self createTestEvent:@"Test Event with Attendees" numAttendees:[(PhoneShowEventDetailsWithAttendeesTest *)self numAttendees]];
  v8 = v7;
  if (v7)
  {
    if (![v7 isNew])
    {
      v14 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000332C0;
      block[3] = &unk_10020F2E0;
      block[4] = self;
      v16 = testName;
      v17 = v8;
      dispatch_after(v14, &_dispatch_main_q, block);

      goto LABEL_7;
    }

    application2 = [(ApplicationTest *)self application];
    [application2 startedTest:testName];

    application3 = [(ApplicationTest *)self application];
    v11 = @"Failed to save event";
  }

  else
  {
    application4 = [(ApplicationTest *)self application];
    [application4 startedTest:testName];

    application3 = [(ApplicationTest *)self application];
    v11 = @"Failed to create event";
  }

  v13 = [NSString stringWithFormat:v11];
  [application3 failedTest:testName withFailure:v13];

LABEL_7:
}

- (void)_detailViewControllerAppeared:(id)appeared
{
  self->_eventDetailsDidAppear = 1;
  testName = [objc_opt_class() testName];
  shouldWaitForAttendeeLoading = [(PhoneShowEventDetailsWithAttendeesTest *)self shouldWaitForAttendeeLoading];
  application = [(ApplicationTest *)self application];
  v6 = application;
  if (shouldWaitForAttendeeLoading)
  {
    eventDetailsDidShowSubtestName = [(PhoneShowEventDetailsWithAttendeesTest *)self eventDetailsDidShowSubtestName];
    [v6 finishedSubTest:eventDetailsDidShowSubtestName forTest:testName];
  }

  else
  {
    [application finishedTest:testName extraResults:0];

    [(ShowEventDetailsTest *)self cleanUp];
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

- (void)_attendeesDidFinishLoading:(id)loading
{
  if (!self->_eventDetailsDidAppear)
  {
    [(PhoneShowEventDetailsWithAttendeesTest *)self _detailViewControllerAppeared:0];
  }

  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  [application finishedTest:testName extraResults:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EKEventDetailsDidFinishLoadingAttendeesNotification object:0];

  [(ShowEventDetailsTest *)self cleanUp];
}

@end