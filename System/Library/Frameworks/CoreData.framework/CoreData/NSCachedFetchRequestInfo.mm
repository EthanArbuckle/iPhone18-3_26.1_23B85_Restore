@interface NSCachedFetchRequestInfo
- (void)dealloc;
@end

@implementation NSCachedFetchRequestInfo

- (void)dealloc
{
  self->_substVarBindOrdering = 0;

  self->_substIntarrayBindOrdering = 0;
  v3.receiver = self;
  v3.super_class = NSCachedFetchRequestInfo;
  [(NSCachedFetchRequestInfo *)&v3 dealloc];
}

@end