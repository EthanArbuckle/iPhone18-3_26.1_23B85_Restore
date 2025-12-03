@interface LAPSPasscodeChangeSystemBuilder
+ (id)_decoratedSystem:(id)system;
+ (id)_defaultSystemOptions;
+ (id)_passcodeStubbedSystem;
+ (id)_persistence;
+ (id)passcodeChangeSystem;
+ (id)passcodeChangeSystemWithOptions:(id)options;
+ (id)passcodeChangeSystemWithPersistence:(id)persistence;
+ (id)passcodeChangeSystemWithPersistence:(id)persistence options:(id)options;
+ (id)passcodeRecoverySystem;
+ (id)passcodeRecoverySystemWithPersistence:(id)persistence;
+ (id)passcodeRemovalSystem;
+ (id)passcodeRemovalSystemWithPersistence:(id)persistence;
+ (id)passcodeVerificationSystem;
+ (id)passcodeVerificationSystemWithPersistence:(id)persistence;
@end

@implementation LAPSPasscodeChangeSystemBuilder

+ (id)passcodeChangeSystem
{
  _defaultSystemOptions = [self _defaultSystemOptions];
  v4 = [self passcodeChangeSystemWithOptions:_defaultSystemOptions];

  return v4;
}

+ (id)passcodeChangeSystemWithOptions:(id)options
{
  optionsCopy = options;
  if ([self _useStubbedAdapter])
  {
    _passcodeStubbedSystem = [self _passcodeStubbedSystem];
  }

  else
  {
    _persistence = [self _persistence];
    _passcodeStubbedSystem = [self passcodeChangeSystemWithPersistence:_persistence options:optionsCopy];
  }

  return _passcodeStubbedSystem;
}

+ (id)passcodeRecoverySystem
{
  if ([self _useStubbedAdapter])
  {
    _passcodeStubbedSystem = [self _passcodeStubbedSystem];
  }

  else
  {
    _persistence = [self _persistence];
    _passcodeStubbedSystem = [self passcodeRecoverySystemWithPersistence:_persistence];
  }

  return _passcodeStubbedSystem;
}

+ (id)passcodeRemovalSystem
{
  if ([self _useStubbedAdapter])
  {
    _passcodeStubbedSystem = [self _passcodeStubbedSystem];
  }

  else
  {
    _persistence = [self _persistence];
    _passcodeStubbedSystem = [self passcodeRemovalSystemWithPersistence:_persistence];
  }

  return _passcodeStubbedSystem;
}

+ (id)passcodeVerificationSystem
{
  if ([self _useStubbedAdapter])
  {
    _passcodeStubbedSystem = [self _passcodeStubbedSystem];
  }

  else
  {
    _persistence = [self _persistence];
    _passcodeStubbedSystem = [self passcodeVerificationSystemWithPersistence:_persistence];
  }

  return _passcodeStubbedSystem;
}

+ (id)passcodeChangeSystemWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  _defaultSystemOptions = [self _defaultSystemOptions];
  v6 = [self passcodeChangeSystemWithPersistence:persistenceCopy options:_defaultSystemOptions];

  return v6;
}

+ (id)passcodeChangeSystemWithPersistence:(id)persistence options:(id)options
{
  optionsCopy = options;
  persistenceCopy = persistence;
  v8 = [[LAPSPasscodeChangeSystemStandardAdapter alloc] initWithPersistence:persistenceCopy options:optionsCopy];

  v9 = [self _decoratedSystem:v8];

  return v9;
}

+ (id)passcodeRecoverySystemWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = [[LAPSPasscodeChangeSystemRecoveryAdapter alloc] initWithPersistence:persistenceCopy];

  v6 = [self _decoratedSystem:v5];

  return v6;
}

+ (id)passcodeRemovalSystemWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = [[LAPSPasscodeChangeSystemRemovalAdapter alloc] initWithPersistence:persistenceCopy];

  v6 = [self _decoratedSystem:v5];

  return v6;
}

+ (id)passcodeVerificationSystemWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = [[LAPSPasscodeChangeSystemVerificationAdapter alloc] initWithPersistence:persistenceCopy];

  v6 = [self _decoratedSystem:v5];

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

+ (id)_decoratedSystem:(id)system
{
  systemCopy = system;
  v4 = [[LAPSPasscodeChangeSystemDispatchDecorator alloc] initWithSystem:systemCopy];

  return v4;
}

+ (id)_defaultSystemOptions
{
  v2 = objc_alloc_init(LAPSPasscodeChangeSystemOptions);

  return v2;
}

@end