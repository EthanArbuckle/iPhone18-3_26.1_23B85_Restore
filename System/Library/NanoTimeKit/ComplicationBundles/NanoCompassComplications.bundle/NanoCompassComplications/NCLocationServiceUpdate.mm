@interface NCLocationServiceUpdate
- (NCLocationServiceUpdate)initWithAuthorizationStatus:(int)a3 coarsePrecision:(BOOL)a4;
@end

@implementation NCLocationServiceUpdate

- (NCLocationServiceUpdate)initWithAuthorizationStatus:(int)a3 coarsePrecision:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = NCLocationServiceUpdate;
  result = [(NCLocationServiceUpdate *)&v8 init];
  if (result)
  {
    result->_authorizationStatus = a3;
    result->_coarsePrecision = a4;
    v7 = (a3 - 1) < 2 || a4;
    result->_locationServicesConsideredOff = v7;
  }

  return result;
}

@end