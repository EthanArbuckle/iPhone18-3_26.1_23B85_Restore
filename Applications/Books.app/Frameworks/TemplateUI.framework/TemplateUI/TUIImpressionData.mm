@interface TUIImpressionData
+ (id)newImpressionWithUUID:(id)d identifier:(id)identifier data:(id)data;
- (TUIImpressionData)initWithUUID:(id)d identifier:(id)identifier data:(id)data;
@end

@implementation TUIImpressionData

- (TUIImpressionData)initWithUUID:(id)d identifier:(id)identifier data:(id)data
{
  dCopy = d;
  identifierCopy = identifier;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = TUIImpressionData;
  v11 = [(TUIImpressionData *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy tui_identifierByPrependingUUID:dCopy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_data, data);
  }

  return v11;
}

+ (id)newImpressionWithUUID:(id)d identifier:(id)identifier data:(id)data
{
  if (!d || !identifier || !data)
  {
    return 0;
  }

  dataCopy = data;
  identifierCopy = identifier;
  dCopy = d;
  v11 = [[self alloc] initWithUUID:dCopy identifier:identifierCopy data:dataCopy];

  return v11;
}

@end