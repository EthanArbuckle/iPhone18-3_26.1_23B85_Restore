@interface APSettingsManager
+ (id)sharedManager;
- (APSettingsManager)init;
- (BOOL)canChangeHiddenStatusOfSubject:(id)subject;
- (BOOL)canChangeLockedStatusOfSubject:(id)subject;
- (BOOL)isAppHidingAvailable;
- (void)setSubject:(id)subject shownInSearchAndSiri:(BOOL)siri completion:(id)completion;
- (void)waitForManagedProtectability:(id)protectability;
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
  selfCopy = self;
  if ([(APSettingsManager *)selfCopy isAppLockingAvailable])
  {
    sharedConnection = [objc_opt_self() sharedConnection];
    if (!sharedConnection)
    {
      __break(1u);
      return sharedConnection;
    }

    v4 = sharedConnection;
    isHidingAppsAllowed = [sharedConnection isHidingAppsAllowed];
  }

  else
  {
    isHidingAppsAllowed = 0;
  }

  LOBYTE(sharedConnection) = isHidingAppsAllowed;
  return sharedConnection;
}

- (BOOL)canChangeHiddenStatusOfSubject:(id)subject
{
  subjectCopy = subject;
  selfCopy = self;
  v6 = sub_185B49F34(subjectCopy);

  return v6 & 1;
}

- (BOOL)canChangeLockedStatusOfSubject:(id)subject
{
  subjectCopy = subject;
  selfCopy = self;
  v6 = sub_185B49E58(subjectCopy);

  return v6 & 1;
}

- (APSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = APSettingsManager;
  return [(APSettingsManager *)&v3 init];
}

- (void)setSubject:(id)subject shownInSearchAndSiri:(BOOL)siri completion:(id)completion
{
  v7 = _Block_copy(completion);
  subjectCopy = subject;
  selfCopy = self;
  v10 = sub_185B49FEC();
  v11 = sub_185B6791C();
  v7[2](v7, 0, v11);

  _Block_release(v7);
}

- (void)waitForManagedProtectability:(id)protectability
{
  v3 = _Block_copy(protectability);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_1EA8CB968 != -1)
  {
    swift_once();
  }

  sub_185B47D80(sub_185B040F8, v4);
}

@end