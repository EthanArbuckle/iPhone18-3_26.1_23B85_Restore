@interface BuddyPasscodeFlow
+ (id)allowedFlowItems;
- (BOOL)_hasBiometricEnrollment;
- (BOOL)controllerNeedsToRun;
- (id)classList;
- (id)firstItem;
- (void)flowItemDone:(id)done;
- (void)startFlowAnimated:(BOOL)animated;
@end

@implementation BuddyPasscodeFlow

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyPasscodeFlow *)self miscState:a2];
  v3 = ![(BuddyMiscState *)v2 hasPresentedPasscodeFlow];

  return v3 & 1;
}

- (void)startFlowAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = a2;
  animatedCopy = animated;
  [(BuddyPasscodeFlow *)self setHasPreviouslyEnrolledBiometrics:[(BuddyPasscodeFlow *)self _hasBiometricEnrollment]];
  v3.receiver = selfCopy;
  v3.super_class = BuddyPasscodeFlow;
  [(BuddyPasscodeFlow *)&v3 startFlowAnimated:animatedCopy];
}

- (id)classList
{
  selfCopy = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = BuddyPasscodeFlow;
  classList = [(BuddyPasscodeFlow *)&v19 classList];

  if (classList)
  {
    v18.receiver = selfCopy;
    v18.super_class = BuddyPasscodeFlow;
    classList2 = [(BuddyPasscodeFlow *)&v18 classList];
  }

  else
  {
    capabilities = [(BuddyPasscodeFlow *)selfCopy capabilities];
    v16 = 0;
    v4 = 0;
    if (([(BYCapabilities *)capabilities supportsTouchID]& 1) != 0)
    {
      capabilities2 = [(BuddyPasscodeFlow *)selfCopy capabilities];
      v16 = 1;
      v4 = [capabilities2 isTouchIDEnrolled] ^ 1;
    }

    if (v16)
    {
    }

    if (v4)
    {
      v25 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v25 count:1];
      [(BuddyPasscodeFlow *)selfCopy setClassList:v5];
    }

    else
    {
      capabilities3 = [(BuddyPasscodeFlow *)selfCopy capabilities];
      supportsPearl = [(BYCapabilities *)capabilities3 supportsPearl];

      if (supportsPearl)
      {
        v24 = objc_opt_class();
        v8 = [NSArray arrayWithObjects:&v24 count:1];
        [(BuddyPasscodeFlow *)selfCopy setClassList:v8];
      }
    }

    v15.receiver = selfCopy;
    v15.super_class = BuddyPasscodeFlow;
    classList3 = [(BuddyPasscodeFlow *)&v15 classList];
    v10 = classList3 == 0;

    if (v10)
    {
      v23 = objc_opt_class();
      v11 = [NSArray arrayWithObjects:&v23 count:1];
      [(BuddyPasscodeFlow *)selfCopy setClassList:v11];
    }

    v14.receiver = selfCopy;
    v14.super_class = BuddyPasscodeFlow;
    classList2 = [(BuddyPasscodeFlow *)&v14 classList];
  }

  v12 = classList2;

  return v12;
}

- (id)firstItem
{
  selfCopy = self;
  location[1] = a2;
  v11.receiver = self;
  v11.super_class = BuddyPasscodeFlow;
  location[0] = [(BuddyPasscodeFlow *)&v11 firstItem];
  v9 = 0;
  v2 = 0;
  if (!location[0])
  {
    classList = [(BuddyPasscodeFlow *)selfCopy classList];
    v9 = 1;
    firstObject = [classList firstObject];
    v2 = firstObject != objc_opt_class();
  }

  if (v9)
  {
  }

  if (v2)
  {
    if (![(BuddyPasscodeFlow *)selfCopy hasPreviouslyEnrolledBiometrics]|| (BYSetupAssistantHasCompletedInitialRun() & 1) != 0)
    {
      v15 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v15 count:1];
      [(BuddyPasscodeFlow *)selfCopy setClassList:v5];
    }

    else
    {
      v16 = objc_opt_class();
      v4 = [NSArray arrayWithObjects:&v16 count:1];
      [(BuddyPasscodeFlow *)selfCopy setClassList:v4];
    }

    v8.receiver = selfCopy;
    v8.super_class = BuddyPasscodeFlow;
    firstItem = [(BuddyPasscodeFlow *)&v8 firstItem];
  }

  else
  {
    firstItem = location[0];
  }

  objc_storeStrong(location, 0);
  v6 = firstItem;

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

- (void)flowItemDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
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
    hasPreviouslyEnrolledBiometrics = [(BuddyPasscodeFlow *)selfCopy hasPreviouslyEnrolledBiometrics];
    _hasBiometricEnrollment = 0;
    if ((hasPreviouslyEnrolledBiometrics & 1) == 0)
    {
      _hasBiometricEnrollment = [(BuddyPasscodeFlow *)selfCopy _hasBiometricEnrollment];
    }

    v14 = _hasBiometricEnrollment & 1;
    _hasBiometricEnrollment2 = [(BuddyPasscodeFlow *)selfCopy _hasBiometricEnrollment];
    v8 = 0;
    if (_hasBiometricEnrollment2)
    {
      v8 = BYSetupAssistantHasCompletedInitialRun() ^ 1;
    }

    v13 = v8 & 1;
    classList = [(BuddyPasscodeFlow *)selfCopy classList];
    v12 = [classList mutableCopy];

    [v12 removeObject:objc_opt_class()];
    [v12 removeObject:objc_opt_class()];
    [v12 addObject:objc_opt_class()];
    v10 = [v12 copy];
    [(BuddyPasscodeFlow *)selfCopy setClassList:v10];

    objc_storeStrong(&v12, 0);
  }

  v11.receiver = selfCopy;
  v11.super_class = BuddyPasscodeFlow;
  [(BuddyPasscodeFlow *)&v11 flowItemDone:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)_hasBiometricEnrollment
{
  capabilities = [(BuddyPasscodeFlow *)self capabilities];
  isTouchIDEnrolled = [(BYCapabilities *)capabilities isTouchIDEnrolled];
  v6 = 0;
  isPearlEnrolled = 1;
  if ((isTouchIDEnrolled & 1) == 0)
  {
    capabilities2 = [(BuddyPasscodeFlow *)self capabilities];
    v6 = 1;
    isPearlEnrolled = [(BYCapabilities *)capabilities2 isPearlEnrolled];
  }

  v9 = isPearlEnrolled & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end