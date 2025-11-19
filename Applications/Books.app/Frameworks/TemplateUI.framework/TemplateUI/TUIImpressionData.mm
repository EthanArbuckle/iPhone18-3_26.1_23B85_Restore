@interface TUIImpressionData
+ (id)newImpressionWithUUID:(id)a3 identifier:(id)a4 data:(id)a5;
- (TUIImpressionData)initWithUUID:(id)a3 identifier:(id)a4 data:(id)a5;
@end

@implementation TUIImpressionData

- (TUIImpressionData)initWithUUID:(id)a3 identifier:(id)a4 data:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = TUIImpressionData;
  v11 = [(TUIImpressionData *)&v15 init];
  if (v11)
  {
    v12 = [v9 tui_identifierByPrependingUUID:v8];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_data, a5);
  }

  return v11;
}

+ (id)newImpressionWithUUID:(id)a3 identifier:(id)a4 data:(id)a5
{
  if (!a3 || !a4 || !a5)
  {
    return 0;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithUUID:v10 identifier:v9 data:v8];

  return v11;
}

@end