@interface TUIFeedViewInvalidationContext
- (void)invalidateIndexPath:(id)a3;
- (void)invalidateIndexPaths:(id)a3;
@end

@implementation TUIFeedViewInvalidationContext

- (void)invalidateIndexPath:(id)a3
{
  v7 = a3;
  if (v7)
  {
    invalidatedIndexPaths = self->_invalidatedIndexPaths;
    if (!invalidatedIndexPaths)
    {
      v5 = objc_opt_new();
      v6 = self->_invalidatedIndexPaths;
      self->_invalidatedIndexPaths = v5;

      invalidatedIndexPaths = self->_invalidatedIndexPaths;
    }

    [(NSMutableArray *)invalidatedIndexPaths addObject:v7];
  }
}

- (void)invalidateIndexPaths:(id)a3
{
  v7 = a3;
  if (v7)
  {
    invalidatedIndexPaths = self->_invalidatedIndexPaths;
    if (!invalidatedIndexPaths)
    {
      v5 = objc_opt_new();
      v6 = self->_invalidatedIndexPaths;
      self->_invalidatedIndexPaths = v5;

      invalidatedIndexPaths = self->_invalidatedIndexPaths;
    }

    [(NSMutableArray *)invalidatedIndexPaths addObjectsFromArray:v7];
  }
}

@end