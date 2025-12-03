@interface NCLocationServiceUpdate
- (NCLocationServiceUpdate)initWithAuthorizationStatus:(int)status coarsePrecision:(BOOL)precision;
@end

@implementation NCLocationServiceUpdate

- (NCLocationServiceUpdate)initWithAuthorizationStatus:(int)status coarsePrecision:(BOOL)precision
{
  v8.receiver = self;
  v8.super_class = NCLocationServiceUpdate;
  result = [(NCLocationServiceUpdate *)&v8 init];
  if (result)
  {
    result->_authorizationStatus = status;
    result->_coarsePrecision = precision;
    v7 = (status - 1) < 2 || precision;
    result->_locationServicesConsideredOff = v7;
  }

  return result;
}

@end