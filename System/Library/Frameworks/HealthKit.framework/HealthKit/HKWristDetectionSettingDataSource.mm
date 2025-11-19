@interface HKWristDetectionSettingDataSource
- (HKWristDetectionSettingDataSource)initWithWristDetectionSettingManager:(id)a3;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
@end

@implementation HKWristDetectionSettingDataSource

- (HKWristDetectionSettingDataSource)initWithWristDetectionSettingManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKWristDetectionSettingDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wristDetectionSettingManager, a3);
  }

  return v7;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v5 = a4;
  v6 = [[_HKWristDetectionSettingManagerObserverBridge alloc] initWithHandle:v5];

  [(HKWristDetectionSettingManager *)self->_wristDetectionSettingManager registerObserver:v6];

  return v6;
}

@end