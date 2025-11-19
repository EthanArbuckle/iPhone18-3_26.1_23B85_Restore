@interface TUIEmbeddedCollectionViewState
- (CGPoint)contentOffset;
@end

@implementation TUIEmbeddedCollectionViewState

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end