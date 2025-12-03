@interface HKWristDetectionSettingDataSource
- (HKWristDetectionSettingDataSource)initWithWristDetectionSettingManager:(id)manager;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
@end

@implementation HKWristDetectionSettingDataSource

- (HKWristDetectionSettingDataSource)initWithWristDetectionSettingManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HKWristDetectionSettingDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wristDetectionSettingManager, manager);
  }

  return v7;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  v6 = [[_HKWristDetectionSettingManagerObserverBridge alloc] initWithHandle:handleCopy];

  [(HKWristDetectionSettingManager *)self->_wristDetectionSettingManager registerObserver:v6];

  return v6;
}

@end