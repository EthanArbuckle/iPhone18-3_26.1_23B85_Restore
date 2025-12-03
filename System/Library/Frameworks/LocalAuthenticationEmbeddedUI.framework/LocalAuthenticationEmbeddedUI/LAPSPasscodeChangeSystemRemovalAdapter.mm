@interface LAPSPasscodeChangeSystemRemovalAdapter
- (LAPSPasscodeChangeSystemRemovalAdapter)initWithPersistence:(id)persistence;
@end

@implementation LAPSPasscodeChangeSystemRemovalAdapter

- (LAPSPasscodeChangeSystemRemovalAdapter)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v11.receiver = self;
  v11.super_class = LAPSPasscodeChangeSystemRemovalAdapter;
  v5 = [(LAPSPasscodeChangeSystemRemovalAdapter *)&v11 init];
  if (v5)
  {
    v6 = [[LAPSCurrentPasscodeService alloc] initWithPersistence:persistenceCopy];
    currentPasscodeService = v5->_currentPasscodeService;
    v5->_currentPasscodeService = v6;

    v8 = +[LAPSPasscodeChangeSystemBuilder passcodeChangeSystem];
    changeSystem = v5->_changeSystem;
    v5->_changeSystem = v8;
  }

  return v5;
}

@end