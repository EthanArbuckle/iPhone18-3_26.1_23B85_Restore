@interface PhoneShowEventDetailsWithConferenceNotesTest
- (id)_createTestEventWithStartDate:(id)date;
- (id)_testEventWithConferenceNotes;
- (void)_detailViewControllerAppeared:(id)appeared;
- (void)runTest;
@end

@implementation PhoneShowEventDetailsWithConferenceNotesTest

- (void)runTest
{
  testName = [objc_opt_class() testName];
  _delaySubTestName = [objc_opt_class() _delaySubTestName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  _testEventWithConferenceNotes = [(PhoneShowEventDetailsWithConferenceNotesTest *)self _testEventWithConferenceNotes];
  application = [(ApplicationTest *)self application];
  v8 = application;
  if (_testEventWithConferenceNotes)
  {
    rootNavigationController = [application rootNavigationController];
    resetToDayView = [rootNavigationController resetToDayView];

    v11 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000337C0;
    block[3] = &unk_10020F2B8;
    block[4] = self;
    v15 = testName;
    v16 = _delaySubTestName;
    v17 = _testEventWithConferenceNotes;
    v18 = _animationSubTestName;
    dispatch_after(v11, &_dispatch_main_q, block);
  }

  else
  {
    [application startedTest:testName];

    application2 = [(ApplicationTest *)self application];
    v13 = [NSString stringWithFormat:@"Failed to create event"];
    [application2 failedTest:testName withFailure:v13];
  }
}

- (void)_detailViewControllerAppeared:(id)appeared
{
  testName = [objc_opt_class() testName];
  _animationSubTestName = [objc_opt_class() _animationSubTestName];
  application = [(ApplicationTest *)self application];
  [application finishedSubTest:_animationSubTestName forTest:testName];

  application2 = [(ApplicationTest *)self application];
  [application2 finishedTest:testName extraResults:0];

  model = [(ApplicationTest *)self model];
  eventStore = [model eventStore];
  [eventStore removeEvent:self->_testEvent span:0 error:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:EKEventViewControllerDidAppearNotification object:0];
}

- (id)_testEventWithConferenceNotes
{
  testEvent = self->_testEvent;
  if (testEvent)
  {
    v3 = testEvent;
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:3600.0];
    v6 = [(PhoneShowEventDetailsWithConferenceNotesTest *)self _createTestEventWithStartDate:v5];
    v7 = self->_testEvent;
    self->_testEvent = v6;

    v3 = self->_testEvent;
  }

  return v3;
}

- (id)_createTestEventWithStartDate:(id)date
{
  dateCopy = date;
  model = [(ApplicationTest *)self model];
  eventStore = [model eventStore];
  v7 = [EKEvent eventWithEventStore:eventStore];

  [v7 setStartDate:dateCopy];
  startDate = [v7 startDate];
  v9 = [startDate dateByAddingTimeInterval:3600.0];
  [v7 setEndDate:v9];

  [v7 setTitle:@"Perf conference test event"];
  v10 = [[NSMutableString alloc] initWithString:@"Test conference string\n"];
  v11 = 20;
  do
  {
    [v10 appendString:@"Adding some extra text here to simulate the extra notes that are usually added. "];
    --v11;
  }

  while (v11);
  [v10 appendString:@"\n\n"];
  v12 = 0;
  do
  {
    v13 = [NSString stringWithFormat:@"https://fake.webex.com/faketestingURLfake/fakefakefaketestingURL%d\n\n", v12];
    [v10 appendString:v13];

    v12 = (v12 + 100);
  }

  while (v12 != 1000);
  [v10 appendString:@"International phone numbers\nGermany: +49 55 555 5555\nAustria: +43 55555555\nBelgium: +32 55555555\nBrazil: +55 5555555555\nCroatia: +38 555555555\nDenmark: +45 55555555\nFinland: +358 555555555\nFrance: +33 555555555\nGreece: +30 5555555555\nHungary (landline): +36 55555555\nHungary (mobile): +36 555555555\nIndia Toll (Bangalore): +91 8555555555\nIndia Toll (Delhi): +91 1555555555\nIndia Toll (Pune): +91 2555555555\nIreland: +353 555555555\nMacedonia: +389 55555555\nMexico: +52 2555555555\nMontenegro: +382 55555555\nPoland: +48 555555555\nRomania: +40 555555555\nRussia (Moscow): +7 4555555555\nRussia (St Petersburg): +7 8555555555\nRussia (Voronezh): +7 4555555555\nSingapore: +65 55555555\nSpain: +34 555555555\nSweden: +46 555555555\nSwitzerland (for customers): +41 555555555\nUK: +44 2555555555\nUSA (for customers): +1 5555555555\nUSA (for customers): +1 5555555555\n\n"];
  [v10 appendString:@"International phone numbers\nGermany: +49 55 555 5555\nAustria: +43 55555555\nBelgium: +32 55555555\nBrazil: +55 5555555555\nCroatia: +38 555555555\nDenmark: +45 55555555\nFinland: +358 555555555\nFrance: +33 555555555\nGreece: +30 5555555555\nHungary (landline): +36 55555555\nHungary (mobile): +36 555555555\nIndia Toll (Bangalore): +91 8555555555\nIndia Toll (Delhi): +91 1555555555\nIndia Toll (Pune): +91 2555555555\nIreland: +353 555555555\nMacedonia: +389 55555555\nMexico: +52 2555555555\nMontenegro: +382 55555555\nPoland: +48 555555555\nRomania: +40 555555555\nRussia (Moscow): +7 4555555555\nRussia (St Petersburg): +7 8555555555\nRussia (Voronezh): +7 4555555555\nSingapore: +65 55555555\nSpain: +34 555555555\nSweden: +46 555555555\nSwitzerland (for customers): +41 555555555\nUK: +44 2555555555\nUSA (for customers): +1 5555555555\nUSA (for customers): +1 5555555555\n\n"];
  [v10 appendString:{@"Telephone URLS\nGermany: tel:+49555555555, , , , 55555555555#\nAustria: tel:+4355555555, , , , 55555555555#\nBelgium: tel:+3255555555, , , , 55555555555#\nBrazil: tel:+555555555555, , , , 55555555555#\nCroatia: tel:+38555555555, , , , 55555555555#\nDenmark: tel:+4555555555, , , , 55555555555#\nFinland: tel:+358555555555, , , , 55555555555#\nFrance: tel:+33555555555, , , , 55555555555#\nGreece: tel:+305555555555, , , , 55555555555#\nHungary (landline): tel:+3655555555, , , , 55555555555#\nHungary (mobile): tel:+36555555555, , , , 55555555555#\nIndia Toll (Bangalore): tel:+918555555555, , , , 55555555555#\nIndia Toll (Delhi): tel:+911555555555, , , , 55555555555#\nIndia Toll (Pune): tel:+912555555555, , , , 55555555555#\nIreland: tel:+353555555555, , , , 55555555555#\nMacedonia: tel:+38955555555, , , , 55555555555#\nMexico: tel:+522555555555, , , , 55555555555#\nMontenegro: tel:+38255555555, , , , 55555555555#\nPoland: tel:+48555555555, , , , 55555555555#\nRomania: tel:+40555555555, , , , 55555555555#\nRussia (Moscow): tel:+74555555555, , , , 55555555555#\nRussia (St Petersburg): tel:+78555555555, , , , 55555555555#\nRussia (Voronezh): tel:+74555555555, , , , 55555555555#\nSingapore: tel:+6555555555, , , , 55555555555#\nSpain: tel:+34555555555, , , , 55555555555#\nSweden: tel:+46555555555, , , , 55555555555#\nSwitzerland (for customers): tel:+41555555555, , , , 55555555555#\nUK: tel:+442555555555, , , , 55555555555#\nUSA (for customers): tel:+15555555555, , , , 55555555555#\nUSA (for customers): tel:+15555555555, , , , 55555555555#\n"}];
  [v7 setNotes:v10];

  return v7;
}

@end