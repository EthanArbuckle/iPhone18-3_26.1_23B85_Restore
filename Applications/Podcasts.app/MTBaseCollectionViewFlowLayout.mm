@interface MTBaseCollectionViewFlowLayout
- (void)setExpandedIndexPath:(id)path;
- (void)setNumberOfColumns:(unint64_t)columns;
@end

@implementation MTBaseCollectionViewFlowLayout

- (void)setNumberOfColumns:(unint64_t)columns
{
  if (self->_numberOfColumns != columns)
  {
    self->_numberOfColumns = columns;
  }
}

- (void)setExpandedIndexPath:(id)path
{
  pathCopy = path;
  if (([(NSIndexPath *)self->_expandedIndexPath isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_expandedIndexPath, path);
  }
}

@end