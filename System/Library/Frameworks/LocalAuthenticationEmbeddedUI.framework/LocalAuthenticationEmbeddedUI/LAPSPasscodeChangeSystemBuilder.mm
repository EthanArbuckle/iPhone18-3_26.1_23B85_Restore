@interface LAPSPasscodeChangeSystemBuilder
+ (id)_decoratedSystem:(id)a3;
+ (id)_defaultSystemOptions;
+ (id)_passcodeStubbedSystem;
+ (id)_persistence;
+ (id)passcodeChangeSystem;
+ (id)passcodeChangeSystemWithOptions:(id)a3;
+ (id)passcodeChangeSystemWithPersistence:(id)a3;
+ (id)passcodeChangeSystemWithPersistence:(id)a3 options:(id)a4;
+ (id)passcodeRecoverySystem;
+ (id)passcodeRecoverySystemWithPersistence:(id)a3;
+ (id)passcodeRemovalSystem;
+ (id)passcodeRemovalSystemWithPersistence:(id)a3;
+ (id)passcodeVerificationSystem;
+ (id)passcodeVerificationSystemWithPersistence:(id)a3;
@end

@implementation LAPSPasscodeChangeSystemBuilder

+ (id)passcodeChangeSystem
{
  v3 = [a1 _defaultSystemOptions];
  v4 = [a1 passcodeChangeSystemWithOptions:v3];

  return v4;
}

+ (id)passcodeChangeSystemWithOptions:(id)a3
{
  v4 = a3;
  if ([a1 _useStubbedAdapter])
  {
    v5 = [a1 _passcodeStubbedSystem];
  }

  else
  {
    v6 = [a1 _persistence];
    v5 = [a1 passcodeChangeSystemWithPersistence:v6 options:v4];
  }

  return v5;
}

+ (id)passcodeRecoverySystem
{
  if ([a1 _useStubbedAdapter])
  {
    v3 = [a1 _passcodeStubbedSystem];
  }

  else
  {
    v4 = [a1 _persistence];
    v3 = [a1 passcodeRecoverySystemWithPersistence:v4];
  }

  return v3;
}

+ (id)passcodeRemovalSystem
{
  if ([a1 _useStubbedAdapter])
  {
    v3 = [a1 _passcodeStubbedSystem];
  }

  else
  {
    v4 = [a1 _persistence];
    v3 = [a1 passcodeRemovalSystemWithPersistence:v4];
  }

  return v3;
}

+ (id)passcodeVerificationSystem
{
  if ([a1 _useStubbedAdapter])
  {
    v3 = [a1 _passcodeStubbedSystem];
  }

  else
  {
    v4 = [a1 _persistence];
    v3 = [a1 passcodeVerificationSystemWithPersistence:v4];
  }

  return v3;
}

+ (id)passcodeChangeSystemWithPersistence:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultSystemOptions];
  v6 = [a1 passcodeChangeSystemWithPersistence:v4 options:v5];

  return v6;
}

+ (id)passcodeChangeSystemWithPersistence:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LAPSPasscodeChangeSystemStandardAdapter alloc] initWithPersistence:v7 options:v6];

  v9 = [a1 _decoratedSystem:v8];

  return v9;
}

+ (id)passcodeRecoverySystemWithPersistence:(id)a3
{
  v4 = a3;
  v5 = [[LAPSPasscodeChangeSystemRecoveryAdapter alloc] initWithPersistence:v4];

  v6 = [a1 _decoratedSystem:v5];

  return v6;
}

+ (id)passcodeRemovalSystemWithPersistence:(id)a3
{
  v4 = a3;
  v5 = [[LAPSPasscodeChangeSystemRemovalAdapter alloc] initWithPersistence:v4];

  v6 = [a1 _decoratedSystem:v5];

  return v6;
}

+ (id)passcodeVerificationSystemWithPersistence:(id)a3
{
  v4 = a3;
  v5 = [[LAPSPasscodeChangeSystemVerificationAdapter alloc] initWithPersistence:v4];

  v6 = [a1 _decoratedSystem:v5];

  return v6;
}

+ (id)_passcodeStubbedSystem
{
  v2 = objc_alloc_init(LAPSPasscodeChangeSystemStubbedAdapter);

  return v2;
}

+ (id)_persistence
{
  v2 = objc_alloc_init(LAPSPasscodePersistenceAdapter);

  return v2;
}

+ (id)_decoratedSystem:(id)a3
{
  v3 = a3;
  v4 = [[LAPSPasscodeChangeSystemDispatchDecorator alloc] initWithSystem:v3];

  return v4;
}

+ (id)_defaultSystemOptions
{
  v2 = objc_alloc_init(LAPSPasscodeChangeSystemOptions);

  return v2;
}

@end