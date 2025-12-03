@interface AMSDeviceGeneratedIdentifierAnomalyDetector
- (id)detectAnomalyFor:(id)for;
@end

@implementation AMSDeviceGeneratedIdentifierAnomalyDetector

- (id)detectAnomalyFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = DeviceGeneratedIdentifierAnomalyDetector.detectAnomaly(for:)(forCopy);

  return v6;
}

@end