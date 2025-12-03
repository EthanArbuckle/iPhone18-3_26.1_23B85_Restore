@interface wumZ2SSA5KbWdu7E
- (wumZ2SSA5KbWdu7E)initWithServerEndpointIdentifier:(id)identifier;
@end

@implementation wumZ2SSA5KbWdu7E

- (wumZ2SSA5KbWdu7E)initWithServerEndpointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = wumZ2SSA5KbWdu7E;
  v6 = [(wumZ2SSA5KbWdu7E *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverEndpointIdentifier, identifier);
  }

  return v7;
}

@end