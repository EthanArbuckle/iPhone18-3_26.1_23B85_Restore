@interface TKTokenKeyExchangeParameters
- (TKTokenKeyExchangeParameters)initWithParameters:(id)parameters;
@end

@implementation TKTokenKeyExchangeParameters

- (TKTokenKeyExchangeParameters)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = TKTokenKeyExchangeParameters;
  v5 = [(TKTokenKeyExchangeParameters *)&v11 init];
  v6 = v5;
  if (parametersCopy && v5)
  {
    v7 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E697B228]];
    v6->_requestedSize = [v7 integerValue];

    v8 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x1E697B230]];
    sharedInfo = v6->_sharedInfo;
    v6->_sharedInfo = v8;
  }

  return v6;
}

@end