@interface HMWidgetManagerMonitorCharacteristicsResponse
- (HMWidgetManagerMonitorCharacteristicsResponse)initWithValueByCharacteristicUniqueIdentifier:(id)identifier reachabilityByAccessoryUniqueIdentifier:(id)uniqueIdentifier;
@end

@implementation HMWidgetManagerMonitorCharacteristicsResponse

- (HMWidgetManagerMonitorCharacteristicsResponse)initWithValueByCharacteristicUniqueIdentifier:(id)identifier reachabilityByAccessoryUniqueIdentifier:(id)uniqueIdentifier
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v14.receiver = self;
  v14.super_class = HMWidgetManagerMonitorCharacteristicsResponse;
  v8 = [(HMWidgetManagerMonitorCharacteristicsResponse *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    valueByCharacteristicUniqueIdentifier = v8->_valueByCharacteristicUniqueIdentifier;
    v8->_valueByCharacteristicUniqueIdentifier = v9;

    v11 = [uniqueIdentifierCopy copy];
    reachabilityByAccessoryUniqueIdentifier = v8->_reachabilityByAccessoryUniqueIdentifier;
    v8->_reachabilityByAccessoryUniqueIdentifier = v11;
  }

  return v8;
}

@end