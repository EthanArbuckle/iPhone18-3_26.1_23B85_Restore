@interface CarNavigationSearchView
- (CarNavigationSearchView)initWithFrame:(CGRect)frame;
- (double)preferredHeightForAvailableSize:(CGSize)size;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (unint64_t)_numberOfItems;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)setCategories:(id)categories;
@end

@implementation CarNavigationSearchView

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  categories = [(CarNavigationSearchView *)self categories];
  v9 = [categories count];

  if (v7 == v9)
  {
    siriSearchHandler = [(CarNavigationSearchView *)self siriSearchHandler];

    if (!siriSearchHandler)
    {
      goto LABEL_7;
    }

    siriSearchHandler2 = [(CarNavigationSearchView *)self siriSearchHandler];
    siriSearchHandler2[2]();
  }

  else
  {
    categorySearchHandler = [(CarNavigationSearchView *)self categorySearchHandler];

    if (!categorySearchHandler)
    {
      goto LABEL_7;
    }

    siriSearchHandler2 = [(CarNavigationSearchView *)self categorySearchHandler];
    categories2 = [(CarNavigationSearchView *)self categories];
    v14 = [categories2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    (siriSearchHandler2[2])(siriSearchHandler2, v14);
  }

LABEL_7:
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  v8 = [pathCopy row];
  categories = [(CarNavigationSearchView *)self categories];
  v10 = [categories count];

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
    categories2 = [(CarNavigationSearchView *)self categories];
    v15 = [categories2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

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
  categories = [(CarNavigationSearchView *)self categories];
  v3 = [categories count];

  return v3 + 1;
}

- (void)setCategories:(id)categories
{
  categoriesCopy = categories;
  if (![(NSArray *)self->_categories isEqualToArray:?])
  {
    if ([categoriesCopy count] <= 3)
    {
      v4 = [categoriesCopy count];
    }

    else
    {
      v4 = 3;
    }

    v5 = [categoriesCopy subarrayWithRange:{0, v4}];
    categories = self->_categories;
    self->_categories = v5;

    [(UICollectionView *)self->_collectionView reloadData];
  }
}

- (double)preferredHeightForAvailableSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout preferredHeightForItemCount:-[CarNavigationSearchView _numberOfItems](self availableSize:{"_numberOfItems"), width, height}];
  v8 = v7;

  return v8;
}

- (CarNavigationSearchView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CarNavigationSearchView;
  v3 = [(CarNavigationSearchView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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