@interface TUIRenderModelIdentifierConfiguration
- (TUIRenderModelIdentifierConfiguration)init;
- (TUIRenderModelIdentifierConfiguration)initWithOther:(id)a3;
@end

@implementation TUIRenderModelIdentifierConfiguration

- (TUIRenderModelIdentifierConfiguration)init
{
  v3.receiver = self;
  v3.super_class = TUIRenderModelIdentifierConfiguration;
  result = [(TUIRenderModelIdentifierConfiguration *)&v3 init];
  if (result)
  {
    result->_reservedViews = 0;
  }

  return result;
}

- (TUIRenderModelIdentifierConfiguration)initWithOther:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIRenderModelIdentifierConfiguration;
  v5 = [(TUIRenderModelIdentifierConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_reservedViews = v4[1];
  }

  return v6;
}

@end