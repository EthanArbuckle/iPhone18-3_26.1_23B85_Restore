@interface AFContextRequest
- (id)createResponseWithContext:(id)a3;
@end

@implementation AFContextRequest

- (id)createResponseWithContext:(id)a3
{
  v4 = a3;
  v5 = [[AFContextResponse alloc] _initWithRequest:self context:v4];

  return v5;
}

@end