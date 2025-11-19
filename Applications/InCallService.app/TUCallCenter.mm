@interface TUCallCenter
- (BOOL)ics_hasTooManyCallsForCallWaitingBanner;
- (BOOL)shouldActivateProviderInBackgroundForCall:(id)a3;
- (TUCall)emergencyCall;
- (int64_t)bottomBarCallState;
@end

@implementation TUCallCenter

- (BOOL)ics_hasTooManyCallsForCallWaitingBanner
{
  v2 = self;
  v3 = sub_10000CB48();

  return v3 & 1;
}

- (int64_t)bottomBarCallState
{
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001A290;
  v30[3] = &unk_100358E48;
  v31 = &stru_100358E20;
  v3 = [(TUCallCenter *)self callPassingTest:v30];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10001A338;
  v28[3] = &unk_100358E48;
  v29 = &stru_100358E20;
  v4 = [(TUCallCenter *)self callPassingTest:v28];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001A398;
  v26[3] = &unk_100358E48;
  v27 = &stru_100358E20;
  v5 = [(TUCallCenter *)self callPassingTest:v26];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001A3F8;
  v24[3] = &unk_100358E48;
  v25 = &stru_100358E20;
  v6 = [(TUCallCenter *)self callPassingTest:v24];
  v7 = [(TUCallCenter *)self incomingCall];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v4;
  }

  if (v3)
  {
    v11 = v3;
  }

  v12 = v11;

  if (v10 && v12)
  {
    v13 = [v10 provider];
    v14 = [v13 isSystemProvider];

    v15 = [v12 provider];
    v16 = [v15 isSystemProvider];

    if (v14)
    {
      if (v16)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }
    }

    else if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    if (v12 | v10)
    {
      if (v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v10;
      }

      v19 = v18;
    }

    else
    {
      v20 = +[UIApplication sharedApplication];
      v21 = [v20 delegate];
      v19 = [v21 mostRecentlyDisconnectedAudioCall];
    }

    v22 = [v19 provider];
    if ([v22 isSystemProvider])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

- (TUCall)emergencyCall
{
  v2 = self;
  v3 = sub_10002B42C();

  return v3;
}

- (BOOL)shouldActivateProviderInBackgroundForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 provider];
  if ([v5 isSuperboxProvider])
  {
    v6 = [v4 provider];
    if ([v6 isSystemProvider])
    {
      v7 = [(TUCallCenter *)self audioOrVideoCallWithStatus:4];
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end