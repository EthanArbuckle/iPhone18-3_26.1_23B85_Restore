@interface CHHorizontalScrollingAchievementsView
- (BOOL)hasVisibleAchievements;
- (CHHorizontalScrollingAchievementsView)initWithFrame:(CGRect)a3 badgeImageFactory:(id)a4 locProvider:(id)a5;
- (CHHorizontalScrollingAchievementsViewDelegate)delegate;
- (UIEdgeInsets)scrollViewContentInset;
- (id)_createLayout;
- (void)layoutSubviews;
- (void)setAchievements:(id)a3;
- (void)setScrollViewContentInset:(UIEdgeInsets)a3;
@end

@implementation CHHorizontalScrollingAchievementsView

- (CHHorizontalScrollingAchievementsView)initWithFrame:(CGRect)a3 badgeImageFactory:(id)a4 locProvider:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = CHHorizontalScrollingAchievementsView;
  v14 = [(CHHorizontalScrollingAchievementsView *)&v21 initWithFrame:x, y, width, height];
  if (v14)
  {
    v15 = [UICollectionView alloc];
    v16 = [(CHHorizontalScrollingAchievementsView *)v14 _createLayout];
    v17 = [v15 initWithFrame:v16 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    collectionView = v14->_collectionView;
    v14->_collectionView = v17;

    v19 = +[UIColor clearColor];
    [(UICollectionView *)v14->_collectionView setBackgroundColor:v19];

    [(UICollectionView *)v14->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v14->_collectionView setShowsVerticalScrollIndicator:0];
    [(CHHorizontalScrollingAchievementsView *)v14 addSubview:v14->_collectionView];
    objc_storeStrong(&v14->_locProvider, a5);
    objc_storeStrong(&v14->_imageFactory, a4);
  }

  return v14;
}

- (id)_createLayout
{
  v2 = objc_alloc_init(UICollectionViewFlowLayout);
  [v2 setMinimumInteritemSpacing:9.0];
  [v2 setMinimumLineSpacing:9.0];
  [v2 setScrollDirection:1];

  return v2;
}

- (void)setAchievements:(id)a3
{
  v5 = a3;
  if (self->_achievements != v5)
  {
    objc_storeStrong(&self->_achievements, a3);
    v6 = [CHHorizontalScrollingAchievementsDataSource alloc];
    v7 = [(CHHorizontalScrollingAchievementsView *)self collectionView];
    achievements = self->_achievements;
    v9 = [(CHHorizontalScrollingAchievementsView *)self imageFactory];
    v10 = [(CHHorizontalScrollingAchievementsView *)self locProvider];
    v11 = [(CHHorizontalScrollingAchievementsDataSource *)v6 initWithCollectionView:v7 achievements:achievements imageFactory:v9 locProvider:v10];
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

- (void)setScrollViewContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_scrollViewContentInset.top), vceqq_f64(v4, *&self->_scrollViewContentInset.bottom)))) & 1) == 0)
  {
    self->_scrollViewContentInset = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v8 = [(CHHorizontalScrollingAchievementsView *)self dataSource];
    [v8 setEdgeInsets:{top, left, bottom, right}];
  }
}

- (BOOL)hasVisibleAchievements
{
  v3 = [(CHHorizontalScrollingAchievementsView *)self dataSource];
  if ([v3 numberOfSectionsInCollectionView:self->_collectionView] < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(CHHorizontalScrollingAchievementsView *)self dataSource];
    v5 = [v4 collectionView:self->_collectionView numberOfItemsInSection:0] > 0;
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
  v11 = [(CHHorizontalScrollingAchievementsView *)self collectionView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CHHorizontalScrollingAchievementsView *)self collectionView];
  v13 = [v12 collectionViewLayout];
  [v13 invalidateLayout];
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