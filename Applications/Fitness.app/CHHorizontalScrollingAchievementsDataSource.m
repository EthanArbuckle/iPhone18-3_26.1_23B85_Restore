@interface CHHorizontalScrollingAchievementsDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CHHorizontalScrollingAchievementsDataSource)initWithCollectionView:(id)a3 achievements:(id)a4 imageFactory:(id)a5 locProvider:(id)a6;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIEdgeInsets)edgeInsets;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation CHHorizontalScrollingAchievementsDataSource

- (CHHorizontalScrollingAchievementsDataSource)initWithCollectionView:(id)a3 achievements:(id)a4 imageFactory:(id)a5 locProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CHHorizontalScrollingAchievementsDataSource;
  v15 = [(CHHorizontalScrollingAchievementsDataSource *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_achievements, a4);
    objc_storeStrong(&v16->_locProvider, a6);
    objc_storeStrong(&v16->_imageFactory, a5);
    v17 = *&UIEdgeInsetsZero.bottom;
    *&v16->_edgeInsets.top = *&UIEdgeInsetsZero.top;
    *&v16->_edgeInsets.bottom = v17;
    objc_storeStrong(&v16->_collectionView, a3);
    [(UICollectionView *)v16->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CHAchievementCollectionViewCellReuseIdentifier"];
    [(UICollectionView *)v16->_collectionView setDataSource:v16];
    [(UICollectionView *)v16->_collectionView setDelegate:v16];
  }

  return v16;
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  self->_edgeInsets = a3;
  v4 = [(CHHorizontalScrollingAchievementsDataSource *)self collectionView];
  v3 = [v4 collectionViewLayout];
  [v3 invalidateLayout];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CHHorizontalScrollingAchievementsDataSource *)self achievements:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"CHAchievementCollectionViewCellReuseIdentifier" forIndexPath:v6];
  [v7 frame];
  v10 = v9;

  [v8 setImageDimension:v10];
  v11 = [(CHHorizontalScrollingAchievementsDataSource *)self imageFactory];
  [v8 setImageFactory:v11];

  v12 = [(CHHorizontalScrollingAchievementsDataSource *)self achievements];
  v13 = [v6 item];

  v14 = [v12 objectAtIndexedSubscript:v13];
  [v8 setAchievement:v14];

  return v8;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [a3 frame];
  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(CHHorizontalScrollingAchievementsDataSource *)self edgeInsets:a3];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CHHorizontalScrollingAchievementsDataSource *)self achievementSelectedBlock];

  if (v7)
  {
    v8 = [v11 cellForItemAtIndexPath:v6];
    v9 = [(CHHorizontalScrollingAchievementsDataSource *)self achievementSelectedBlock];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_achievements, "objectAtIndexedSubscript:", [v6 item]);
    (v9)[2](v9, v10, v8);
  }

  [v11 deselectItemAtIndexPath:v6 animated:1];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end