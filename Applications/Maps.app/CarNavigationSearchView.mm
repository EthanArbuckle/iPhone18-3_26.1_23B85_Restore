@interface CarNavigationSearchView
- (CarNavigationSearchView)initWithFrame:(CGRect)a3;
- (double)preferredHeightForAvailableSize:(CGSize)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (unint64_t)_numberOfItems;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)setCategories:(id)a3;
@end

@implementation CarNavigationSearchView

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [(CarNavigationSearchView *)self categories];
  v9 = [v8 count];

  if (v7 == v9)
  {
    v10 = [(CarNavigationSearchView *)self siriSearchHandler];

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [(CarNavigationSearchView *)self siriSearchHandler];
    v11[2]();
  }

  else
  {
    v12 = [(CarNavigationSearchView *)self categorySearchHandler];

    if (!v12)
    {
      goto LABEL_7;
    }

    v11 = [(CarNavigationSearchView *)self categorySearchHandler];
    v13 = [(CarNavigationSearchView *)self categories];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    (v11[2])(v11, v14);
  }

LABEL_7:
  [v15 deselectItemAtIndexPath:v6 animated:1];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v6];
  v8 = [v6 row];
  v9 = [(CarNavigationSearchView *)self categories];
  v10 = [v9 count];

  if (v8 == v10)
  {
    if (qword_10195F7F8 != -1)
    {
      dispatch_once(&qword_10195F7F8, &stru_10165E4A0);
    }

    [v7 setImage:qword_10195F7F0];
  }

  else
  {
    v11 = +[NSUUID UUID];
    [v7 setUpdateIdentifier:v11];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100F662D8;
    v20[3] = &unk_10165FED0;
    v21 = v11;
    v22 = v7;
    v12 = v11;
    v13 = objc_retainBlock(v20);
    v14 = [(CarNavigationSearchView *)self categories];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F66364;
    v18[3] = &unk_10165FEF8;
    v19 = v13;
    v16 = v13;
    [v15 imageWithScale:1 isCarplay:v18 resultHandler:0.0];
  }

  return v7;
}

- (unint64_t)_numberOfItems
{
  v2 = [(CarNavigationSearchView *)self categories];
  v3 = [v2 count];

  return v3 + 1;
}

- (void)setCategories:(id)a3
{
  v7 = a3;
  if (![(NSArray *)self->_categories isEqualToArray:?])
  {
    if ([v7 count] <= 3)
    {
      v4 = [v7 count];
    }

    else
    {
      v4 = 3;
    }

    v5 = [v7 subarrayWithRange:{0, v4}];
    categories = self->_categories;
    self->_categories = v5;

    [(UICollectionView *)self->_collectionView reloadData];
  }
}

- (double)preferredHeightForAvailableSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v6 preferredHeightForItemCount:-[CarNavigationSearchView _numberOfItems](self availableSize:{"_numberOfItems"), width, height}];
  v8 = v7;

  return v8;
}

- (CarNavigationSearchView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CarNavigationSearchView;
  v3 = [(CarNavigationSearchView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CarNavigationSearchViewLayout);
    v5 = [UICollectionView alloc];
    [(CarNavigationSearchView *)v3 bounds];
    v6 = [v5 initWithFrame:v4 collectionViewLayout:?];
    collectionView = v3->_collectionView;
    v3->_collectionView = v6;

    [(UICollectionView *)v3->_collectionView setScrollEnabled:0];
    [(UICollectionView *)v3->_collectionView setAutoresizingMask:18];
    v8 = +[UIColor clearColor];
    [(UICollectionView *)v3->_collectionView setBackgroundColor:v8];

    [(UICollectionView *)v3->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];
    [(UICollectionView *)v3->_collectionView setDelegate:v3];
    [(UICollectionView *)v3->_collectionView setDataSource:v3];
    [(CarNavigationSearchView *)v3 addSubview:v3->_collectionView];
  }

  return v3;
}

- (void)dealloc
{
  [(UICollectionView *)self->_collectionView setDelegate:0];
  [(UICollectionView *)self->_collectionView setDataSource:0];
  v3.receiver = self;
  v3.super_class = CarNavigationSearchView;
  [(CarNavigationSearchView *)&v3 dealloc];
}

@end