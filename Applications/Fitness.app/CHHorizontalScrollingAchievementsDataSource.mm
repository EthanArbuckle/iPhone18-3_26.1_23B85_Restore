@interface CHHorizontalScrollingAchievementsDataSource
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CHHorizontalScrollingAchievementsDataSource)initWithCollectionView:(id)view achievements:(id)achievements imageFactory:(id)factory locProvider:(id)provider;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)edgeInsets;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation CHHorizontalScrollingAchievementsDataSource

- (CHHorizontalScrollingAchievementsDataSource)initWithCollectionView:(id)view achievements:(id)achievements imageFactory:(id)factory locProvider:(id)provider
{
  viewCopy = view;
  achievementsCopy = achievements;
  factoryCopy = factory;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = CHHorizontalScrollingAchievementsDataSource;
  v15 = [(CHHorizontalScrollingAchievementsDataSource *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_achievements, achievements);
    objc_storeStrong(&v16->_locProvider, provider);
    objc_storeStrong(&v16->_imageFactory, factory);
    v17 = *&UIEdgeInsetsZero.bottom;
    *&v16->_edgeInsets.top = *&UIEdgeInsetsZero.top;
    *&v16->_edgeInsets.bottom = v17;
    objc_storeStrong(&v16->_collectionView, view);
    [(UICollectionView *)v16->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CHAchievementCollectionViewCellReuseIdentifier"];
    [(UICollectionView *)v16->_collectionView setDataSource:v16];
    [(UICollectionView *)v16->_collectionView setDelegate:v16];
  }

  return v16;
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  self->_edgeInsets = insets;
  collectionView = [(CHHorizontalScrollingAchievementsDataSource *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CHHorizontalScrollingAchievementsDataSource *)self achievements:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CHAchievementCollectionViewCellReuseIdentifier" forIndexPath:pathCopy];
  [viewCopy frame];
  v10 = v9;

  [v8 setImageDimension:v10];
  imageFactory = [(CHHorizontalScrollingAchievementsDataSource *)self imageFactory];
  [v8 setImageFactory:imageFactory];

  achievements = [(CHHorizontalScrollingAchievementsDataSource *)self achievements];
  item = [pathCopy item];

  v14 = [achievements objectAtIndexedSubscript:item];
  [v8 setAchievement:v14];

  return v8;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view frame];
  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(CHHorizontalScrollingAchievementsDataSource *)self edgeInsets:view];
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  achievementSelectedBlock = [(CHHorizontalScrollingAchievementsDataSource *)self achievementSelectedBlock];

  if (achievementSelectedBlock)
  {
    v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
    achievementSelectedBlock2 = [(CHHorizontalScrollingAchievementsDataSource *)self achievementSelectedBlock];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_achievements, "objectAtIndexedSubscript:", [pathCopy item]);
    (achievementSelectedBlock2)[2](achievementSelectedBlock2, v10, v8);
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
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