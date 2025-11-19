@interface HMWidgetManagerMonitorCharacteristicsResponse
- (HMWidgetManagerMonitorCharacteristicsResponse)initWithValueByCharacteristicUniqueIdentifier:(id)a3 reachabilityByAccessoryUniqueIdentifier:(id)a4;
@end

@implementation HMWidgetManagerMonitorCharacteristicsResponse

- (HMWidgetManagerMonitorCharacteristicsResponse)initWithValueByCharacteristicUniqueIdentifier:(id)a3 reachabilityByAccessoryUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMWidgetManagerMonitorCharacteristicsResponse;
  v8 = [(HMWidgetManagerMonitorCharacteristicsResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    valueByCharacteristicUniqueIdentifier = v8->_valueByCharacteristicUniqueIdentifier;
    v8->_valueByCharacteristicUniqueIdentifier = v9;

    v11 = [v7 copy];
    reachabilityByAccessoryUniqueIdentifier = v8->_reachabilityByAccessoryUniqueIdentifier;
    v8->_reachabilityByAccessoryUniqueIdentifier = v11;
  }

  return v8;
}

@end