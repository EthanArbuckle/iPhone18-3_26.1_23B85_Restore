@interface COSInternalPairingDashboardModel
- (COSInternalPairingDashboardModel)init;
- (id)_classicPairingEventList;
- (id)_tinkerPairingEventList;
- (id)changedIndicesForGenericPairingEvent:(id)a3 andValue:(id)a4;
- (id)changedIndicesForPairingBegins:(id)a3 andValue:(id)a4;
- (id)changedIndicesForPushedController:(id)a3 andValue:(id)a4;
- (id)eventSummaryForKey:(id)a3;
- (id)pairingEvents;
- (id)updateEvent:(id)a3;
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
  v4 = [(COSInternalPairingDashboardModel *)self eventNames];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(COSInternalPairingDashboardModel *)self eventGuide];
        v11 = [v10 objectForKey:v9];

        if (!v11)
        {
          v12 = objc_alloc_init(COSDashboardPairingEventSummary);
          [(COSDashboardPairingEventSummary *)v12 setDashboardKey:v9];
          v13 = [(COSInternalPairingDashboardModel *)self eventGuide];
          [v13 setObject:v12 forKey:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = [(COSInternalPairingDashboardModel *)self eventNames];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(COSInternalPairingDashboardModel *)self eventGuide];
        v11 = [v10 objectForKey:v9];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)updateEvent:(id)a3
{
  v4 = a3;
  if (![(COSInternalPairingDashboardModel *)self tinker])
  {
    [(COSInternalPairingDashboardModel *)self _checkIfTinker];
  }

  v5 = BRGetAllMetricKeysAndValues();
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v7 = &__NSArray0__struct;
    goto LABEL_19;
  }

  v7 = objc_opt_new();
  if ([v4 containsString:@"Pushed"])
  {
    v8 = [(COSInternalPairingDashboardModel *)self changedIndicesForPushedController:v4 andValue:v6];
  }

  else
  {
    if ([v4 isEqualToString:kPairingBeginsKey])
    {
      [(COSInternalPairingDashboardModel *)self changedIndicesForPairingBegins:v4 andValue:v6];
    }

    else
    {
      [(COSInternalPairingDashboardModel *)self changedIndicesForGenericPairingEvent:v4 andValue:v6];
    }
    v8 = ;
  }

  v9 = v8;
  [v7 addObjectsFromArray:v8];

  v10 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Locked-On"];
  v11 = [v10 eventValue];
  if (v11)
  {
    v12 = v11;
    v13 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Pairing Mode"];
    v14 = [v13 eventValue];

    if (v14)
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

- (id)changedIndicesForPushedController:(id)a3 andValue:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 containsString:@"Terms"])
  {
    v7 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Terms Presented"];
    [v7 setEventValue:&off_100281D38];

    v8 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Activated"];
    [v8 setEventValue:&off_100281D38];

    v9 = [(COSInternalPairingDashboardModel *)self eventNames];
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v9 indexOfObject:@"Terms Presented"], 0);

    v11 = [(COSInternalPairingDashboardModel *)self eventNames];
    v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v11 indexOfObject:@"Activated"], 0);

    v18[0] = v10;
    v18[1] = v12;
    v13 = [NSArray arrayWithObjects:v18 count:2];

    v6 = v12;
  }

  else
  {
    v14 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:@"Pushed Controller"];
    [v14 setEventValue:v5];

    v15 = [(COSInternalPairingDashboardModel *)self eventNames];
    v10 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v15 indexOfObject:@"Pushed Controller"], 0);

    v17 = v10;
    v13 = [NSArray arrayWithObjects:&v17 count:1];
  }

  return v13;
}

- (id)changedIndicesForPairingBegins:(id)a3 andValue:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v7 = [v5 isEqual:&off_100281D50];

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

  v11 = [(COSInternalPairingDashboardModel *)self eventNames];
  v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v11 indexOfObject:@"Pairing Mode"], 0);

  v15 = v12;
  v13 = [NSArray arrayWithObjects:&v15 count:1];

  return v13;
}

- (id)changedIndicesForGenericPairingEvent:(id)a3 andValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = sub_1000D28B4(v7);

  if (v9)
  {
    v10 = [(COSInternalPairingDashboardModel *)self eventSummaryForKey:v9];
    [v10 setEventValue:v6];

    v11 = [(COSInternalPairingDashboardModel *)self eventNames];
    v12 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v11 indexOfObject:v9], 0);

    v15 = v12;
    v13 = [NSArray arrayWithObjects:&v15 count:1];

    v8 = v13;
  }

  return v8;
}

- (id)eventSummaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(COSInternalPairingDashboardModel *)self eventGuide];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end