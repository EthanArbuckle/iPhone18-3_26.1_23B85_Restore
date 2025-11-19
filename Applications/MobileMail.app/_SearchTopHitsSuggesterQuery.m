@interface _SearchTopHitsSuggesterQuery
- (void)cancel;
@end

@implementation _SearchTopHitsSuggesterQuery

- (void)cancel
{
  if (self)
  {
    self = self->_topHitsQuery;
  }

  [(_SearchTopHitsSuggesterQuery *)self cancel];
}

@end