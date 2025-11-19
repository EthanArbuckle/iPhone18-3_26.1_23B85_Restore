@interface MTBaseCollectionViewFlowLayout
- (void)setExpandedIndexPath:(id)a3;
- (void)setNumberOfColumns:(unint64_t)a3;
@end

@implementation MTBaseCollectionViewFlowLayout

- (void)setNumberOfColumns:(unint64_t)a3
{
  if (self->_numberOfColumns != a3)
  {
    self->_numberOfColumns = a3;
  }
}

- (void)setExpandedIndexPath:(id)a3
{
  v5 = a3;
  if (([(NSIndexPath *)self->_expandedIndexPath isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_expandedIndexPath, a3);
  }
}

@end