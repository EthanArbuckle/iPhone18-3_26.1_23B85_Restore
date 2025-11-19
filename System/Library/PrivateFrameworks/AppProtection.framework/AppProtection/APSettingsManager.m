@interface APSettingsManager
+ (id)sharedManager;
- (APSettingsManager)init;
- (BOOL)canChangeHiddenStatusOfSubject:(id)a3;
- (BOOL)canChangeLockedStatusOfSubject:(id)a3;
- (BOOL)isAppHidingAvailable;
- (void)setSubject:(id)a3 shownInSearchAndSiri:(BOOL)a4 completion:(id)a5;
- (void)waitForManagedProtectability:(id)a3;
@end

@implementation APSettingsManager

+ (id)sharedManager
{
  if (qword_1EA8CB968 != -1)
  {
    swift_once();
  }

  if (qword_1EA8CB670 != -1)
  {
    swift_once();
  }

  v2 = qword_1EA8D2270;

  return v2;
}

- (BOOL)isAppHidingAvailable
{
  v2 = self;
  if ([(APSettingsManager *)v2 isAppLockingAvailable])
  {
    v3 = [objc_opt_self() sharedConnection];
    if (!v3)
    {
      __break(1u);
      return v3;
    }

    v4 = v3;
    v5 = [v3 isHidingAppsAllowed];
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v3) = v5;
  return v3;
}

- (BOOL)canChangeHiddenStatusOfSubject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_185B49F34(v4);

  return v6 & 1;
}

- (BOOL)canChangeLockedStatusOfSubject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_185B49E58(v4);

  return v6 & 1;
}

- (APSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = APSettingsManager;
  return [(APSettingsManager *)&v3 init];
}

- (void)setSubject:(id)a3 shownInSearchAndSiri:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;
  v9 = self;
  v10 = sub_185B49FEC();
  v11 = sub_185B6791C();
  v7[2](v7, 0, v11);

  _Block_release(v7);
}

- (void)waitForManagedProtectability:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_1EA8CB968 != -1)
  {
    swift_once();
  }

  sub_185B47D80(sub_185B040F8, v4);
}

@end