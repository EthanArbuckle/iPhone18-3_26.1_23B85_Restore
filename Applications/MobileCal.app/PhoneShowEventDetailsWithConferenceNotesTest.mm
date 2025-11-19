@interface PhoneShowEventDetailsWithConferenceNotesTest
- (id)_createTestEventWithStartDate:(id)a3;
- (id)_testEventWithConferenceNotes;
- (void)_detailViewControllerAppeared:(id)a3;
- (void)runTest;
@end

@implementation PhoneShowEventDetailsWithConferenceNotesTest

- (void)runTest
{
  v3 = [objc_opt_class() testName];
  v4 = [objc_opt_class() _delaySubTestName];
  v5 = [objc_opt_class() _animationSubTestName];
  v6 = [(PhoneShowEventDetailsWithConferenceNotesTest *)self _testEventWithConferenceNotes];
  v7 = [(ApplicationTest *)self application];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 rootNavigationController];
    v10 = [v9 resetToDayView];

    v11 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000337C0;
    block[3] = &unk_10020F2B8;
    block[4] = self;
    v15 = v3;
    v16 = v4;
    v17 = v6;
    v18 = v5;
    dispatch_after(v11, &_dispatch_main_q, block);
  }

  else
  {
    [v7 startedTest:v3];

    v12 = [(ApplicationTest *)self application];
    v13 = [NSString stringWithFormat:@"Failed to create event"];
    [v12 failedTest:v3 withFailure:v13];
  }
}

- (void)_detailViewControllerAppeared:(id)a3
{
  v10 = [objc_opt_class() testName];
  v4 = [objc_opt_class() _animationSubTestName];
  v5 = [(ApplicationTest *)self application];
  [v5 finishedSubTest:v4 forTest:v10];

  v6 = [(ApplicationTest *)self application];
  [v6 finishedTest:v10 extraResults:0];

  v7 = [(ApplicationTest *)self model];
  v8 = [v7 eventStore];
  [v8 removeEvent:self->_testEvent span:0 error:0];

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

- (id)_createTestEventWithStartDate:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationTest *)self model];
  v6 = [v5 eventStore];
  v7 = [EKEvent eventWithEventStore:v6];

  [v7 setStartDate:v4];
  v8 = [v7 startDate];
  v9 = [v8 dateByAddingTimeInterval:3600.0];
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