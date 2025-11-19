@interface HMWidgetManagerFetchStateResponse
- (HMWidgetManagerFetchStateResponse)initWithValueByCharacteristicUniqueIdentifier:(id)a3;
@end

@implementation HMWidgetManagerFetchStateResponse

- (HMWidgetManagerFetchStateResponse)initWithValueByCharacteristicUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMWidgetManagerFetchStateResponse;
  v5 = [(HMWidgetManagerFetchStateResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    valueByCharacteristicUniqueIdentifier = v5->_valueByCharacteristicUniqueIdentifier;
    v5->_valueByCharacteristicUniqueIdentifier = v6;
  }

  return v5;
}

@end