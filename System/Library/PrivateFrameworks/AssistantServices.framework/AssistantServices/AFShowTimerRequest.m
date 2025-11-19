@interface AFShowTimerRequest
- (id)createResponse;
@end

@implementation AFShowTimerRequest

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

@end