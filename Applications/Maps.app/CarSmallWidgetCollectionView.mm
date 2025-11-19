@interface CarSmallWidgetCollectionView
- (CGSize)_cellSize;
- (CarSmallWidgetCollectionView)initWithCoder:(id)a3;
- (CarSmallWidgetCollectionView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_commonInit;
- (void)_updateHeightConstraint;
- (void)didSelectFocusableCollectionCell:(id)a3;
- (void)layoutSubviews;
- (void)refreshData;
@end

@implementation CarSmallWidgetCollectionView

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(CarShortcutCollectionViewCell *)CarSmallWidgetCollectionViewCell focusRingTopOverhang:a3];
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100799D40();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = [v6 row];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView cellForItemAtIndexPath %ld", &v13, 0xCu);
  }

  v9 = +[(ShortcutsRowCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  [v10 setDelegate:self];
  v11 = [(CarSmallWidgetCollectionView *)self modelForItemAtIndexPath:v6];
  [v10 setModel:v11];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = [(CarSmallWidgetCollectionView *)self data];
  v7 = [v6 count];

  [v5 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  Width = CGRectGetWidth(v28);
  [(CarSmallWidgetCollectionView *)self _cellSize];
  v18 = Width / v17;
  if (v7 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v7;
  }

  v20 = sub_100799D40();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v24 = 134218240;
    v25 = v19;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView Showing first %ld of %ld", &v24, 0x16u);
  }

  v21 = sub_100799D40();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(CarSmallWidgetCollectionView *)self data];
    v24 = 138412290;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView Data: %@", &v24, 0xCu);
  }

  return v19;
}

- (void)didSelectFocusableCollectionCell:(id)a3
{
  v4 = [(CarReloadWithCompletionCollectionView *)self->_collectionView indexPathForCell:a3];
  [(CarSmallWidgetCollectionView *)self didSelectItemAtIndexPath:v4];
}

- (void)refreshData
{
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView refreshData", buf, 2u);
  }

  collectionView = self->_collectionView;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FC2B48;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [(CarReloadWithCompletionCollectionView *)collectionView reloadDataWithCompletion:v5];
}

- (CGSize)_cellSize
{
  v3 = [(CarSmallWidgetCollectionView *)self traitCollection];
  [(ShortcutsRowCollectionViewCell *)CarSmallWidgetCollectionViewCell cellSizeWithTraitCollection:v3];
  v5 = v4;
  v7 = v6;

  [(CarReloadWithCompletionCollectionView *)self->_collectionView bounds];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v12 = 0.0;
  if (CGRectGetWidth(v37) + -20.0 >= 0.0)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v12 = CGRectGetWidth(v38) + -20.0;
  }

  v13 = (v12 / v5);
  v14 = [(CarSmallWidgetCollectionView *)self data];
  if ([v14 count] < v13)
  {
    v15 = [(CarSmallWidgetCollectionView *)self data];
    v13 = [v15 count];
  }

  v16 = (v13 - 1);
  v17 = v5 * v13 + (v13 - 1) * 10.0;
  if (v17 <= v12)
  {
    v18 = v13;
  }

  else
  {
    v18 = v13 - 1;
  }

  if (v17 > v12)
  {
    v16 = (v13 - 2);
  }

  if (v16 >= 1)
  {
    v12 = fmax(v12 + v16 * -10.0, 0.0);
  }

  UIFloorToViewScale();
  v20 = v19;
  v21 = sub_100799D40();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v34.width = v5;
    v34.height = v7;
    v22 = NSStringFromCGSize(v34);
    v35.width = v20;
    v35.height = v7;
    v23 = NSStringFromCGSize(v35);
    v26 = 138413058;
    v27 = v22;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v18;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView preferredCellSize: %@, availableWidth: %f, cellsCount: %ld, cellSize: %@", &v26, 0x2Au);
  }

  v24 = v20;
  v25 = v7;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionView;
  [(CarSmallWidgetCollectionView *)&v6 layoutSubviews];
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView layoutSubviews", v5, 2u);
  }

  [(CarSmallWidgetCollectionView *)self _updateHeightConstraint];
  [(CarSmallWidgetCollectionView *)self _cellSize];
  if (self->_cellWidth != v4)
  {
    self->_cellWidth = v4;
    [(CarSmallWidgetCollectionView *)self refreshData];
  }
}

- (void)_updateHeightConstraint
{
  [(CarSmallWidgetCollectionView *)self _cellSize];
  v4 = v3;
  +[(CarShortcutCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:v5 + v4];
  v6 = sub_100799D40();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    [(NSLayoutConstraint *)self->_heightConstraint constant];
    v8 = 134217984;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView updateHeightConstraint %f", &v8, 0xCu);
  }
}

- (void)_commonInit
{
  v3 = sub_100799D40();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView commonInit", buf, 2u);
  }

  [(CarSmallWidgetCollectionView *)self setAccessibilityIdentifier:@"CarSmallWidgetCollectionView"];
  v4 = objc_alloc_init(CarSmallWidgetCollectionViewFlowLayout);
  [(CarSmallWidgetCollectionViewFlowLayout *)v4 setMinimumLineSpacing:10.0];
  v30 = v4;
  [(CarSmallWidgetCollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:10.0];
  v5 = [[CarReloadWithCompletionCollectionView alloc] initWithFrame:v4 collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarReloadWithCompletionCollectionView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor clearColor];
  [(CarReloadWithCompletionCollectionView *)v5 setBackgroundColor:v6];

  [(CarReloadWithCompletionCollectionView *)v5 setScrollEnabled:0];
  v7 = objc_opt_class();
  v8 = +[(ShortcutsRowCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  [(CarReloadWithCompletionCollectionView *)v5 registerClass:v7 forCellWithReuseIdentifier:v8];

  [(CarSmallWidgetCollectionView *)self addSubview:v5];
  v9 = [(CarReloadWithCompletionCollectionView *)v5 heightAnchor];
  v10 = [v9 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v10;

  v29 = [(CarReloadWithCompletionCollectionView *)v5 leadingAnchor];
  v28 = [(CarSmallWidgetCollectionView *)self leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v32[0] = v27;
  v26 = [(CarSmallWidgetCollectionView *)self trailingAnchor];
  v25 = [(CarReloadWithCompletionCollectionView *)v5 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v24;
  v23 = [(CarReloadWithCompletionCollectionView *)v5 topAnchor];
  v22 = [(CarSmallWidgetCollectionView *)self topAnchor];
  +[(CarShortcutCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  v12 = [v23 constraintGreaterThanOrEqualToAnchor:v22 constant:?];
  v32[2] = v12;
  v13 = [(CarSmallWidgetCollectionView *)self bottomAnchor];
  v14 = [(CarReloadWithCompletionCollectionView *)v5 bottomAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
  v16 = self->_heightConstraint;
  v32[3] = v15;
  v32[4] = v16;
  v17 = [(CarReloadWithCompletionCollectionView *)v5 centerYAnchor];
  v18 = [(CarSmallWidgetCollectionView *)self centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v32[5] = v19;
  v20 = [NSArray arrayWithObjects:v32 count:6];
  [NSLayoutConstraint activateConstraints:v20];

  [(CarSmallWidgetCollectionView *)self _updateHeightConstraint];
  [(CarReloadWithCompletionCollectionView *)v5 setDataSource:self];
  [(CarReloadWithCompletionCollectionView *)v5 setDelegate:self];
  collectionView = self->_collectionView;
  self->_collectionView = v5;
}

- (CarSmallWidgetCollectionView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionView;
  v3 = [(CarSmallWidgetCollectionView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetCollectionView *)v3 _commonInit];
  }

  return v4;
}

- (CarSmallWidgetCollectionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionView;
  v3 = [(CarSmallWidgetCollectionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetCollectionView *)v3 _commonInit];
  }

  return v4;
}

@end