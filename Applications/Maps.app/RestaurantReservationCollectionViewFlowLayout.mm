@interface RestaurantReservationCollectionViewFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
@end

@implementation RestaurantReservationCollectionViewFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = RestaurantReservationCollectionViewFlowLayout;
  v4 = [(RestaurantReservationCollectionViewFlowLayout *)&v25 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v20 = self;
  v5 = [(RestaurantReservationCollectionViewFlowLayout *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

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
        v13 = [v12 indexPath];
        if (([v6 containsObject:v13] & 1) != 0 || objc_msgSend(v12, "representedElementCategory") == 1)
        {

          v14 = 1.0;
        }

        else
        {
          v15 = [(RestaurantReservationCollectionViewFlowLayout *)v20 dimmableIndexPaths];
          v16 = [v12 indexPath];
          v17 = [v15 containsObject:v16];

          v14 = 1.0;
          if (v17)
          {
            if ([(RestaurantReservationCollectionViewFlowLayout *)v20 dimUnselected])
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