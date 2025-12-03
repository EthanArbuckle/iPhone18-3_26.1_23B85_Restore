@interface AFContextRequest
- (id)createResponseWithContext:(id)context;
@end

@implementation AFContextRequest

- (id)createResponseWithContext:(id)context
{
  contextCopy = context;
  v5 = [[AFContextResponse alloc] _initWithRequest:self context:contextCopy];

  return v5;
}

@end