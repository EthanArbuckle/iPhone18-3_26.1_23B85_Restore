@interface BuddyPasscodeFlow
+ (id)allowedFlowItems;
- (BOOL)_hasBiometricEnrollment;
- (BOOL)controllerNeedsToRun;
- (id)classList;
- (id)firstItem;
- (void)flowItemDone:(id)a3;
- (void)startFlowAnimated:(BOOL)a3;
@end

@implementation BuddyPasscodeFlow

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyPasscodeFlow *)self miscState:a2];
  v3 = ![(BuddyMiscState *)v2 hasPresentedPasscodeFlow];

  return v3 & 1;
}

- (void)startFlowAnimated:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  [(BuddyPasscodeFlow *)self setHasPreviouslyEnrolledBiometrics:[(BuddyPasscodeFlow *)self _hasBiometricEnrollment]];
  v3.receiver = v6;
  v3.super_class = BuddyPasscodeFlow;
  [(BuddyPasscodeFlow *)&v3 startFlowAnimated:v4];
}

- (id)classList
{
  v21 = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = BuddyPasscodeFlow;
  v2 = [(BuddyPasscodeFlow *)&v19 classList];

  if (v2)
  {
    v18.receiver = v21;
    v18.super_class = BuddyPasscodeFlow;
    v22 = [(BuddyPasscodeFlow *)&v18 classList];
  }

  else
  {
    v3 = [(BuddyPasscodeFlow *)v21 capabilities];
    v16 = 0;
    v4 = 0;
    if (([(BYCapabilities *)v3 supportsTouchID]& 1) != 0)
    {
      v17 = [(BuddyPasscodeFlow *)v21 capabilities];
      v16 = 1;
      v4 = [v17 isTouchIDEnrolled] ^ 1;
    }

    if (v16)
    {
    }

    if (v4)
    {
      v25 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v25 count:1];
      [(BuddyPasscodeFlow *)v21 setClassList:v5];
    }

    else
    {
      v6 = [(BuddyPasscodeFlow *)v21 capabilities];
      v7 = [(BYCapabilities *)v6 supportsPearl];

      if (v7)
      {
        v24 = objc_opt_class();
        v8 = [NSArray arrayWithObjects:&v24 count:1];
        [(BuddyPasscodeFlow *)v21 setClassList:v8];
      }
    }

    v15.receiver = v21;
    v15.super_class = BuddyPasscodeFlow;
    v9 = [(BuddyPasscodeFlow *)&v15 classList];
    v10 = v9 == 0;

    if (v10)
    {
      v23 = objc_opt_class();
      v11 = [NSArray arrayWithObjects:&v23 count:1];
      [(BuddyPasscodeFlow *)v21 setClassList:v11];
    }

    v14.receiver = v21;
    v14.super_class = BuddyPasscodeFlow;
    v22 = [(BuddyPasscodeFlow *)&v14 classList];
  }

  v12 = v22;

  return v12;
}

- (id)firstItem
{
  v13 = self;
  location[1] = a2;
  v11.receiver = self;
  v11.super_class = BuddyPasscodeFlow;
  location[0] = [(BuddyPasscodeFlow *)&v11 firstItem];
  v9 = 0;
  v2 = 0;
  if (!location[0])
  {
    v10 = [(BuddyPasscodeFlow *)v13 classList];
    v9 = 1;
    v3 = [v10 firstObject];
    v2 = v3 != objc_opt_class();
  }

  if (v9)
  {
  }

  if (v2)
  {
    if (![(BuddyPasscodeFlow *)v13 hasPreviouslyEnrolledBiometrics]|| (BYSetupAssistantHasCompletedInitialRun() & 1) != 0)
    {
      v15 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v15 count:1];
      [(BuddyPasscodeFlow *)v13 setClassList:v5];
    }

    else
    {
      v16 = objc_opt_class();
      v4 = [NSArray arrayWithObjects:&v16 count:1];
      [(BuddyPasscodeFlow *)v13 setClassList:v4];
    }

    v8.receiver = v13;
    v8.super_class = BuddyPasscodeFlow;
    v14 = [(BuddyPasscodeFlow *)&v8 firstItem];
  }

  else
  {
    v14 = location[0];
  }

  objc_storeStrong(location, 0);
  v6 = v14;

  return v6;
}

+ (id)allowedFlowItems
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  return [NSArray arrayWithObjects:v3 count:4];
}

- (void)flowItemDone:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 1;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass();
  }

  v15 = v4 & 1;
  if (v4)
  {
    v5 = [(BuddyPasscodeFlow *)v17 hasPreviouslyEnrolledBiometrics];
    v6 = 0;
    if ((v5 & 1) == 0)
    {
      v6 = [(BuddyPasscodeFlow *)v17 _hasBiometricEnrollment];
    }

    v14 = v6 & 1;
    v7 = [(BuddyPasscodeFlow *)v17 _hasBiometricEnrollment];
    v8 = 0;
    if (v7)
    {
      v8 = BYSetupAssistantHasCompletedInitialRun() ^ 1;
    }

    v13 = v8 & 1;
    v9 = [(BuddyPasscodeFlow *)v17 classList];
    v12 = [v9 mutableCopy];

    [v12 removeObject:objc_opt_class()];
    [v12 removeObject:objc_opt_class()];
    [v12 addObject:objc_opt_class()];
    v10 = [v12 copy];
    [(BuddyPasscodeFlow *)v17 setClassList:v10];

    objc_storeStrong(&v12, 0);
  }

  v11.receiver = v17;
  v11.super_class = BuddyPasscodeFlow;
  [(BuddyPasscodeFlow *)&v11 flowItemDone:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)_hasBiometricEnrollment
{
  v2 = [(BuddyPasscodeFlow *)self capabilities];
  v3 = [(BYCapabilities *)v2 isTouchIDEnrolled];
  v6 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v7 = [(BuddyPasscodeFlow *)self capabilities];
    v6 = 1;
    v4 = [(BYCapabilities *)v7 isPearlEnrolled];
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end