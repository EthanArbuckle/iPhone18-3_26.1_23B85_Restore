@interface ProfileIconCollectionViewController
- (ProfileIconCollectionViewController)initWithIcons:(id)icons;
- (ProfileIconCollectionViewControllerDelegate)delegate;
- (id)_indexPathForSelectedSymbolName;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation ProfileIconCollectionViewController

- (ProfileIconCollectionViewController)initWithIcons:(id)icons
{
  iconsCopy = icons;
  v10.receiver = self;
  v10.super_class = ProfileIconCollectionViewController;
  v5 = [(ProfileIconCollectionViewController *)&v10 init];
  if (v5)
  {
    v6 = [iconsCopy copy];
    iconNames = v5->_iconNames;
    v5->_iconNames = v6;

    v8 = v5;
  }

  return v5;
}

- (void)loadView
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __47__ProfileIconCollectionViewController_loadView__block_invoke;
  v23[3] = &unk_8B188;
  v23[4] = self;
  v3 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:v23];
  v4 = objc_alloc_init(UICollectionViewFlowLayout);
  flowLayout = self->_flowLayout;
  self->_flowLayout = v4;

  [(UICollectionViewFlowLayout *)self->_flowLayout setEstimatedItemSize:UICollectionViewFlowLayoutAutomaticSize.width, UICollectionViewFlowLayoutAutomaticSize.height];
  [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setSectionInset:10.0, 10.0, 10.0, 10.0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:0.0];
  v6 = [[UICollectionView alloc] initWithFrame:self->_flowLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  profileIconCollectionView = self->_profileIconCollectionView;
  self->_profileIconCollectionView = v6;

  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(UICollectionView *)self->_profileIconCollectionView setBackgroundColor:v8];

  [(UICollectionView *)self->_profileIconCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_profileIconCollectionView setDelegate:self];
  [(UICollectionView *)self->_profileIconCollectionView setShowsHorizontalScrollIndicator:0];
  layer = [(UICollectionView *)self->_profileIconCollectionView layer];
  [layer setCornerRadius:10.0];

  layer2 = [(UICollectionView *)self->_profileIconCollectionView layer];
  [layer2 setMasksToBounds:1];

  v11 = [UICollectionViewDiffableDataSource alloc];
  v12 = self->_profileIconCollectionView;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = __47__ProfileIconCollectionViewController_loadView__block_invoke_2;
  v21 = &unk_8A878;
  v22 = v3;
  v13 = v3;
  v14 = [v11 initWithCollectionView:v12 cellProvider:&v18];
  profileIconCollectionViewDataSource = self->_profileIconCollectionViewDataSource;
  self->_profileIconCollectionViewDataSource = v14;

  v16 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v24 = @"symbols";
  v17 = [NSArray arrayWithObjects:&v24 count:1, v18, v19, v20, v21];
  [v16 appendSectionsWithIdentifiers:v17];

  [v16 appendItemsWithIdentifiers:self->_iconNames intoSectionWithIdentifier:@"symbols"];
  [(UICollectionViewDiffableDataSource *)self->_profileIconCollectionViewDataSource applySnapshot:v16 animatingDifferences:0];
  [(ProfileIconCollectionViewController *)self setView:self->_profileIconCollectionView];
}

void __47__ProfileIconCollectionViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  [v8 setSymbolName:a4];
  v10 = [*(a1 + 32) _indexPathForSelectedSymbolName];
  v9 = [v7 isEqual:v10];

  [v8 setShowsSelection:v9];
}

- (void)setSelectedIndex:(unint64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    [(UICollectionView *)self->_profileIconCollectionView reloadData];
  }
}

- (id)_indexPathForSelectedSymbolName
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [NSIndexPath indexPathForItem:selectedIndex inSection:0, v2];
  }

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  -[ProfileIconCollectionViewController setSelectedIndex:](self, "setSelectedIndex:", [pathCopy item]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  item = [pathCopy item];

  [WeakRetained profileIconCollectionViewController:self didSelectIconAtIndex:item];
}

- (ProfileIconCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end