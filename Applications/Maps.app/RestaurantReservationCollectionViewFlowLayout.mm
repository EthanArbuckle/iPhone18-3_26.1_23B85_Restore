@interface RestaurantReservationCollectionViewFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
@end

@implementation RestaurantReservationCollectionViewFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v25.receiver = self;
  v25.super_class = RestaurantReservationCollectionViewFlowLayout;
  v4 = [(RestaurantReservationCollectionViewFlowLayout *)&v25 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  selfCopy = self;
  collectionView = [(RestaurantReservationCollectionViewFlowLayout *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        indexPath = [v12 indexPath];
        if (([indexPathsForSelectedItems containsObject:indexPath] & 1) != 0 || objc_msgSend(v12, "representedElementCategory") == 1)
        {

          v14 = 1.0;
        }

        else
        {
          dimmableIndexPaths = [(RestaurantReservationCollectionViewFlowLayout *)selfCopy dimmableIndexPaths];
          indexPath2 = [v12 indexPath];
          v17 = [dimmableIndexPaths containsObject:indexPath2];

          v14 = 1.0;
          if (v17)
          {
            if ([(RestaurantReservationCollectionViewFlowLayout *)selfCopy dimUnselected])
            {
              v14 = 0.200000003;
            }

            else
            {
              v14 = 1.0;
            }
          }
        }

        [v12 setAlpha:v14];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v18 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v9 = v18;
    }

    while (v18);
  }

  return v7;
}

@end