@interface COSInternalPairingDashboardModel
- (COSInternalPairingDashboardModel)init;
- (id)_classicPairingEventList;
- (id)_tinkerPairingEventList;
- (id)changedIndicesForGenericPairingEvent:(id)event andValue:(id)value;
- (id)changedIndicesForPairingBegins:(id)begins andValue:(id)value;
- (id)changedIndicesForPushedController:(id)controller andValue:(id)value;
- (id)eventSummaryForKey:(id)key;
- (id)pairingEvents;
- (id)updateEvent:(id)event;
- (void)_checkIfTinker;
- (void)populateEventGuide;
@end

@implementation COSInternalPairingDashboardModel

- (COSInternalPairingDashboardModel)init
{
  v5.receiver = self;
  v5.super_class = COSInternalPairingDashboardModel;
  v2 = [(COSInternalPairingDashboardModel *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(COSInternalPairingDashboardModel *)v2 setEventGuide:v3];

    [(COSInternalPairingDashboardModel *)v2 populateEventGuide];
  }

  return v2;
}

- (void)populateEventGuide
{
  if ([(COSInternalPairingDashboardModel *)self tinker])
  {
    [(COSInternalPairingDashboardModel *)self _tinkerPairingEventList];
  }

  else
  {
    [(COSInternalPairingDashboardModel *)self _classicPairingEventList];
  }
  v3 = ;
  [(COSInternalPairingDashboardModel *)self setEventNames:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  eventNames = [(COSInternalPairingDashboardModel *)self eventNames];
  v5 = [eventNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(eventNames);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        eventGuide = [(COSInternalPairingDashboardModel *)self eventGuide];
        v11 = [eventGuide objectForKey:v9];

        if (!v11)
        {
          v12 = objc_alloc_init(COSDashboardPairingEventSummary);
          [(COSDashboardPairingEventSummary *)v12 setDashboardKey:v9];
          eventGuide2 = [(COSInternalPairingDashboardModel *)self eventGuide];
          [eventGuide2 setObject:v12 forKey:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [eventNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_classicPairingEventList
{
  v4[0] = @"Pairing Mode";
  v4[1] = @"Pairing Began";
  v4[2] = @"Locked-On";
  v4[3] = @"IPE";
  v4[4] = @"Terms Presented";
  v4[5] = @"Activated";
  v4[6] = @"Signed-in";
  v4[7] = @"Pushed Controller";
  v4[8] = @"Initial Sync began";
  v4[9] = @"Pairing Successful";
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

- (id)_tinkerPairingEventList
{
  v4[0] = @"Pairing Mode";
  v4[1] = @"Pairing Began";
  v4[2] = @"Locked-On";
  v4[3] = @"IPE";
  v4[4] = @"Terms Presented";
  v4[5] = @"Activated";
  v4[6] = @"StartedCDPEnrollment";
  v4[7] = @"CDPEnrollmentSuccessful";
  v4[8] = @"Signed-in";
  v4[9] = @"Pushed Controller";
  v4[10] = @"Initial Sync began";
  v4[11] = @"Pairing Successful";
  v2 = [NSArray arrayWithObjects:v4 count:12];

  return v2;
}

- (id)pairingEvents
{
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  eventNames = [(COSInternalPairingDashboardModel *)self eventNames];
  v5 = [eventNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(eventNames);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        eventGuide = [(COSInternalPairingDashboardModel *)self eventGuide];
        v11 = [eventGuide objectForKey:v9];
        [v3 addObject:v11];
      }

      v6 = [eventNames countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)updateEvent:(id)event
{
  eventCopy = event;
  if (![(COSInternalPairingDashboardModel *)self tinker])
  {
    [(COSInternalPairingDashboardModel *)self _checkIfTinker];
  }

  v5 = BRGetAllMetricKeysAndValues();
  v6 = [v5 objectForKey:eventCopy];
  if (!v6)
  {
    v7 = &__NSArray0__struct;
    goto LABEL_19;
  }

  v7 = objc_opt_new();
  if ([eventCopy containsString:@"Pushed"])
  {
    v8 = [(COSInternalPairingDashboardModel *)self changedIndicesForPushedController:eventCopy andValue:v6];
  }

  else
  {
    if ([eventCopy isEqualToString:kPairingBeginsKey])
    {
      [(COSInternalPairingDashboardModel *)self changedIndicesForPairingBegins:eventCopy andValue:v6];
    }

    else
    {
      [(COSInternalPairingDashboardModel *)self changedIndicesForGenericPairingEvent:eventCopy andValue:v6];
    }
    v8 = ;
  }

  v9 = v8;
  [v7 addObjectsFromArray:v8];

  v10 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Locked-On"];
  eventValue = [v10 eventValue];
  if (eventValue)
  {
    v12 = eventValue;
    v13 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Pairing Mode"];
    eventValue2 = [v13 eventValue];

    if (eventValue2)
    {
      goto LABEL_19;
    }

    v15 = kPairingBeginsKey;
    v10 = [v5 objectForKey:kPairingBeginsKey];
    if (v10)
    {
      v16 = [(COSInternalPairingDashboardModel *)self changedIndicesForPairingBegins:v15 andValue:v10];
      [v7 addObjectsFromArray:v16];
    }

    v17 = kPairingBeginsTime;
    v18 = [v5 objectForKey:kPairingBeginsTime];
    if (v18)
    {
      v19 = [(COSInternalPairingDashboardModel *)self changedIndicesForGenericPairingEvent:v17 andValue:v18];
      [v7 addObjectsFromArray:v19];
    }
  }

LABEL_19:

  return v7;
}

- (void)_checkIfTinker
{
  v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v4 valueForProperty:NRDevicePropertyIsAltAccount];

  if (v3 && ![(COSInternalPairingDashboardModel *)self tinker])
  {
    [(COSInternalPairingDashboardModel *)self setTinker:1];
    [(COSInternalPairingDashboardModel *)self populateEventGuide];
  }
}

- (id)changedIndicesForPushedController:(id)controller andValue:(id)value
{
  valueCopy = value;
  v6 = objc_opt_new();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [valueCopy containsString:@"Terms"])
  {
    v7 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Terms Presented"];
    [v7 setEventValue:&off_100281D38];

    v8 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Activated"];
    [v8 setEventValue:&off_100281D38];

    eventNames = [(COSInternalPairingDashboardModel *)self eventNames];
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [eventNames indexOfObject:@"Terms Presented"], 0);

    eventNames2 = [(COSInternalPairingDashboardModel *)self eventNames];
    v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [eventNames2 indexOfObject:@"Activated"], 0);

    v18[0] = v10;
    v18[1] = v12;
    v13 = [NSArray arrayWithObjects:v18 count:2];

    v6 = v12;
  }

  else
  {
    v14 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Pushed Controller"];
    [v14 setEventValue:valueCopy];

    eventNames3 = [(COSInternalPairingDashboardModel *)self eventNames];
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [eventNames3 indexOfObject:@"Pushed Controller"], 0);

    v17 = v10;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
  }

  return v13;
}

- (id)changedIndicesForPairingBegins:(id)begins andValue:(id)value
{
  valueCopy = value;
  v6 = objc_opt_new();
  v7 = [valueCopy isEqual:&off_100281D50];

  v8 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Pairing Mode"];
  v9 = v8;
  if (v7)
  {
    v10 = @"Happy Path Pairing";
  }

  else
  {
    v10 = @"Pin Pairing";
  }

  [v8 setEventValue:v10];

  eventNames = [(COSInternalPairingDashboardModel *)self eventNames];
  v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [eventNames indexOfObject:@"Pairing Mode"], 0);

  v15 = v12;
  v13 = [NSArray arrayWithObjects:&v15 count:1];

  return v13;
}

- (id)changedIndicesForGenericPairingEvent:(id)event andValue:(id)value
{
  valueCopy = value;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = sub_1000D28B4(eventCopy);

  if (v9)
  {
    v10 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:v9];
    [v10 setEventValue:valueCopy];

    eventNames = [(COSInternalPairingDashboardModel *)self eventNames];
    v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [eventNames indexOfObject:v9], 0);

    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];

    v8 = v13;
  }

  return v8;
}

- (id)eventSummaryForKey:(id)key
{
  keyCopy = key;
  eventGuide = [(COSInternalPairingDashboardModel *)self eventGuide];
  v6 = [eventGuide objectForKey:keyCopy];

  return v6;
}

@end