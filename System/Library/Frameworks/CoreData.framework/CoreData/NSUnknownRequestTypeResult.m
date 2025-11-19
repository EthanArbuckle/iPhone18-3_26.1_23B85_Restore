@interface NSUnknownRequestTypeResult
- (NSUnknownRequestTypeResult)initWithSubresults:(id)a3;
- (void)dealloc;
@end

@implementation NSUnknownRequestTypeResult

- (NSUnknownRequestTypeResult)initWithSubresults:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSUnknownRequestTypeResult;
  v4 = [(NSUnknownRequestTypeResult *)&v6 init];
  if (v4)
  {
    v4->_subresults = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_subresults = 0;
  v3.receiver = self;
  v3.super_class = NSUnknownRequestTypeResult;
  [(NSUnknownRequestTypeResult *)&v3 dealloc];
}

@end