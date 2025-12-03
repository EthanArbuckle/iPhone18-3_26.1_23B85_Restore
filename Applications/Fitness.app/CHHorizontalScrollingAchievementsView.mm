@interface CHHorizontalScrollingAchievementsView
- (BOOL)hasVisibleAchievements;
- (CHHorizontalScrollingAchievementsView)initWithFrame:(CGRect)frame badgeImageFactory:(id)factory locProvider:(id)provider;
- (CHHorizontalScrollingAchievementsViewDelegate)delegate;
- (UIEdgeInsets)scrollViewContentInset;
- (id)_createLayout;
- (void)layoutSubviews;
- (void)setAchievements:(id)achievements;
- (void)setScrollViewContentInset:(UIEdgeInsets)inset;
@end

@implementation CHHorizontalScrollingAchievementsView

- (CHHorizontalScrollingAchievementsView)initWithFrame:(CGRect)frame badgeImageFactory:(id)factory locProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  factoryCopy = factory;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = CHHorizontalScrollingAchievementsView;
  height = [(CHHorizontalScrollingAchievementsView *)&v21 initWithFrame:x, y, width, height];
  if (height)
  {
    v15 = [UICollectionView alloc];
    _createLayout = [(CHHorizontalScrollingAchievementsView *)height _createLayout];
    v17 = [v15 initWithFrame:_createLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    collectionView = height->_collectionView;
    height->_collectionView = v17;

    v19 = +[UIColor clearColor];
    [(UICollectionView *)height->_collectionView setBackgroundColor:v19];

    [(UICollectionView *)height->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)height->_collectionView setShowsVerticalScrollIndicator:0];
    [(CHHorizontalScrollingAchievementsView *)height addSubview:height->_collectionView];
    objc_storeStrong(&height->_locProvider, provider);
    objc_storeStrong(&height->_imageFactory, factory);
  }

  return height;
}

- (id)_createLayout
{
  v2 = objc_alloc_init(UICollectionViewFlowLayout);
  [v2 setMinimumInteritemSpacing:9.0];
  [v2 setMinimumLineSpacing:9.0];
  [v2 setScrollDirection:1];

  return v2;
}

- (void)setAchievements:(id)achievements
{
  achievementsCopy = achievements;
  if (self->_achievements != achievementsCopy)
  {
    objc_storeStrong(&self->_achievements, achievements);
    v6 = [CHHorizontalScrollingAchievementsDataSource alloc];
    collectionView = [(CHHorizontalScrollingAchievementsView *)self collectionView];
    achievements = self->_achievements;
    imageFactory = [(CHHorizontalScrollingAchievementsView *)self imageFactory];
    locProvider = [(CHHorizontalScrollingAchievementsView *)self locProvider];
    v11 = [(CHHorizontalScrollingAchievementsDataSource *)v6 initWithCollectionView:collectionView achievements:achievements imageFactory:imageFactory locProvider:locProvider];
    dataSource = self->_dataSource;
    self->_dataSource = v11;

    [(CHHorizontalScrollingAchievementsView *)self scrollViewContentInset];
    [(CHHorizontalScrollingAchievementsDataSource *)self->_dataSource setEdgeInsets:?];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E9A14;
    v13[3] = &unk_10083BD90;
    objc_copyWeak(&v14, &location);
    [(CHHorizontalScrollingAchievementsDataSource *)self->_dataSource setAchievementSelectedBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)setScrollViewContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_scrollViewContentInset.top), vceqq_f64(v4, *&self->_scrollViewContentInset.bottom)))) & 1) == 0)
  {
    self->_scrollViewContentInset = inset;
    right = inset.right;
    left = inset.left;
    bottom = inset.bottom;
    top = inset.top;
    dataSource = [(CHHorizontalScrollingAchievementsView *)self dataSource];
    [dataSource setEdgeInsets:{top, left, bottom, right}];
  }
}

- (BOOL)hasVisibleAchievements
{
  dataSource = [(CHHorizontalScrollingAchievementsView *)self dataSource];
  if ([dataSource numberOfSectionsInCollectionView:self->_collectionView] < 1)
  {
    v5 = 0;
  }

  else
  {
    dataSource2 = [(CHHorizontalScrollingAchievementsView *)self dataSource];
    v5 = [dataSource2 collectionView:self->_collectionView numberOfItemsInSection:0] > 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CHHorizontalScrollingAchievementsView;
  [(CHHorizontalScrollingAchievementsView *)&v14 layoutSubviews];
  [(CHHorizontalScrollingAchievementsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  collectionView = [(CHHorizontalScrollingAchievementsView *)self collectionView];
  [collectionView setFrame:{v4, v6, v8, v10}];

  collectionView2 = [(CHHorizontalScrollingAchievementsView *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (UIEdgeInsets)scrollViewContentInset
{
  top = self->_scrollViewContentInset.top;
  left = self->_scrollViewContentInset.left;
  bottom = self->_scrollViewContentInset.bottom;
  right = self->_scrollViewContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CHHorizontalScrollingAchievementsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end