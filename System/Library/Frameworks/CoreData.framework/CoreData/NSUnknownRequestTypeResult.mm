@interface NSUnknownRequestTypeResult
- (NSUnknownRequestTypeResult)initWithSubresults:(id)subresults;
- (void)dealloc;
@end

@implementation NSUnknownRequestTypeResult

- (NSUnknownRequestTypeResult)initWithSubresults:(id)subresults
{
  v6.receiver = self;
  v6.super_class = NSUnknownRequestTypeResult;
  v4 = [(NSUnknownRequestTypeResult *)&v6 init];
  if (v4)
  {
    v4->_subresults = subresults;
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