@interface HMWidgetManagerFetchStateResponse
- (HMWidgetManagerFetchStateResponse)initWithValueByCharacteristicUniqueIdentifier:(id)identifier;
@end

@implementation HMWidgetManagerFetchStateResponse

- (HMWidgetManagerFetchStateResponse)initWithValueByCharacteristicUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMWidgetManagerFetchStateResponse;
  v5 = [(HMWidgetManagerFetchStateResponse *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    valueByCharacteristicUniqueIdentifier = v5->_valueByCharacteristicUniqueIdentifier;
    v5->_valueByCharacteristicUniqueIdentifier = v6;
  }

  return v5;
}

@end