@interface TUIFeedViewInvalidationContext
- (void)invalidateIndexPath:(id)path;
- (void)invalidateIndexPaths:(id)paths;
@end

@implementation TUIFeedViewInvalidationContext

- (void)invalidateIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    invalidatedIndexPaths = self->_invalidatedIndexPaths;
    if (!invalidatedIndexPaths)
    {
      v5 = objc_opt_new();
      v6 = self->_invalidatedIndexPaths;
      self->_invalidatedIndexPaths = v5;

      invalidatedIndexPaths = self->_invalidatedIndexPaths;
    }

    [(NSMutableArray *)invalidatedIndexPaths addObject:pathCopy];
  }
}

- (void)invalidateIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (pathsCopy)
  {
    invalidatedIndexPaths = self->_invalidatedIndexPaths;
    if (!invalidatedIndexPaths)
    {
      v5 = objc_opt_new();
      v6 = self->_invalidatedIndexPaths;
      self->_invalidatedIndexPaths = v5;

      invalidatedIndexPaths = self->_invalidatedIndexPaths;
    }

    [(NSMutableArray *)invalidatedIndexPaths addObjectsFromArray:pathsCopy];
  }
}

@end