@interface TKTokenKeyExchangeParameters
- (TKTokenKeyExchangeParameters)initWithParameters:(id)a3;
@end

@implementation TKTokenKeyExchangeParameters

- (TKTokenKeyExchangeParameters)initWithParameters:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TKTokenKeyExchangeParameters;
  v5 = [(TKTokenKeyExchangeParameters *)&v11 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697B228]];
    v6->_requestedSize = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697B230]];
    sharedInfo = v6->_sharedInfo;
    v6->_sharedInfo = v8;
  }

  return v6;
}

@end