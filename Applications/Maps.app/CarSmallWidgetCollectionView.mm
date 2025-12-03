@interface CarSmallWidgetCollectionView
- (CGSize)_cellSize;
- (CarSmallWidgetCollectionView)initWithCoder:(id)coder;
- (CarSmallWidgetCollectionView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_commonInit;
- (void)_updateHeightConstraint;
- (void)didSelectFocusableCollectionCell:(id)cell;
- (void)layoutSubviews;
- (void)refreshData;
@end

@implementation CarSmallWidgetCollectionView

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(CarShortcutCollectionViewCell *)CarSmallWidgetCollectionViewCell focusRingTopOverhang:view];
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = sub_100799D40();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = [pathCopy row];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView cellForItemAtIndexPath %ld", &v13, 0xCu);
  }

  v9 = +[(ShortcutsRowCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  [v10 setDelegate:self];
  v11 = [(CarSmallWidgetCollectionView *)self modelForItemAtIndexPath:pathCopy];
  [v10 setModel:v11];

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  data = [(CarSmallWidgetCollectionView *)self data];
  v7 = [data count];

  [viewCopy bounds];
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
    data2 = [(CarSmallWidgetCollectionView *)self data];
    v24 = 138412290;
    v25 = data2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "CarSmallWidgetCollectionView Data: %@", &v24, 0xCu);
  }

  return v19;
}

- (void)didSelectFocusableCollectionCell:(id)cell
{
  v4 = [(CarReloadWithCompletionCollectionView *)self->_collectionView indexPathForCell:cell];
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
  traitCollection = [(CarSmallWidgetCollectionView *)self traitCollection];
  [(ShortcutsRowCollectionViewCell *)CarSmallWidgetCollectionViewCell cellSizeWithTraitCollection:traitCollection];
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
  data = [(CarSmallWidgetCollectionView *)self data];
  if ([data count] < v13)
  {
    data2 = [(CarSmallWidgetCollectionView *)self data];
    v13 = [data2 count];
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
  heightAnchor = [(CarReloadWithCompletionCollectionView *)v5 heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v10;

  leadingAnchor = [(CarReloadWithCompletionCollectionView *)v5 leadingAnchor];
  leadingAnchor2 = [(CarSmallWidgetCollectionView *)self leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v27;
  trailingAnchor = [(CarSmallWidgetCollectionView *)self trailingAnchor];
  trailingAnchor2 = [(CarReloadWithCompletionCollectionView *)v5 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v24;
  topAnchor = [(CarReloadWithCompletionCollectionView *)v5 topAnchor];
  topAnchor2 = [(CarSmallWidgetCollectionView *)self topAnchor];
  +[(CarShortcutCollectionViewCell *)CarSmallWidgetCollectionViewCell];
  v12 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  v32[2] = v12;
  bottomAnchor = [(CarSmallWidgetCollectionView *)self bottomAnchor];
  bottomAnchor2 = [(CarReloadWithCompletionCollectionView *)v5 bottomAnchor];
  v15 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v16 = self->_heightConstraint;
  v32[3] = v15;
  v32[4] = v16;
  centerYAnchor = [(CarReloadWithCompletionCollectionView *)v5 centerYAnchor];
  centerYAnchor2 = [(CarSmallWidgetCollectionView *)self centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[5] = v19;
  v20 = [NSArray arrayWithObjects:v32 count:6];
  [NSLayoutConstraint activateConstraints:v20];

  [(CarSmallWidgetCollectionView *)self _updateHeightConstraint];
  [(CarReloadWithCompletionCollectionView *)v5 setDataSource:self];
  [(CarReloadWithCompletionCollectionView *)v5 setDelegate:self];
  collectionView = self->_collectionView;
  self->_collectionView = v5;
}

- (CarSmallWidgetCollectionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionView;
  v3 = [(CarSmallWidgetCollectionView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetCollectionView *)v3 _commonInit];
  }

  return v4;
}

- (CarSmallWidgetCollectionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionView;
  v3 = [(CarSmallWidgetCollectionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetCollectionView *)v3 _commonInit];
  }

  return v4;
}

@end