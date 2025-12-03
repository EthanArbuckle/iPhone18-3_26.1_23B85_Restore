@interface TUCallCenter
- (BOOL)ics_hasTooManyCallsForCallWaitingBanner;
- (BOOL)shouldActivateProviderInBackgroundForCall:(id)call;
- (TUCall)emergencyCall;
- (int64_t)bottomBarCallState;
@end

@implementation TUCallCenter

- (BOOL)ics_hasTooManyCallsForCallWaitingBanner
{
  selfCopy = self;
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
  incomingCall = [(TUCallCenter *)self incomingCall];
  v8 = incomingCall;
  if (incomingCall)
  {
    v9 = incomingCall;
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
    provider = [v10 provider];
    isSystemProvider = [provider isSystemProvider];

    provider2 = [v12 provider];
    isSystemProvider2 = [provider2 isSystemProvider];

    if (isSystemProvider)
    {
      if (isSystemProvider2)
      {
        v17 = 2;
      }

      else
      {
        v17 = 4;
      }
    }

    else if (isSystemProvider2)
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

      mostRecentlyDisconnectedAudioCall = v18;
    }

    else
    {
      v20 = +[UIApplication sharedApplication];
      delegate = [v20 delegate];
      mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];
    }

    provider3 = [mostRecentlyDisconnectedAudioCall provider];
    if ([provider3 isSystemProvider])
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
  selfCopy = self;
  v3 = sub_10002B42C();

  return v3;
}

- (BOOL)shouldActivateProviderInBackgroundForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  if ([provider isSuperboxProvider])
  {
    provider2 = [callCopy provider];
    if ([provider2 isSystemProvider])
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