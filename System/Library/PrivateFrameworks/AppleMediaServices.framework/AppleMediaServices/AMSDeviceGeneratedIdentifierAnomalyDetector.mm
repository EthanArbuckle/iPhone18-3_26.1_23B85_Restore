@interface AMSDeviceGeneratedIdentifierAnomalyDetector
- (id)detectAnomalyFor:(id)a3;
@end

@implementation AMSDeviceGeneratedIdentifierAnomalyDetector

- (id)detectAnomalyFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DeviceGeneratedIdentifierAnomalyDetector.detectAnomaly(for:)(v4);

  return v6;
}

@end