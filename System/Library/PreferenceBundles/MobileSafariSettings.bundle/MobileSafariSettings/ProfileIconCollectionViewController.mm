@interface ProfileIconCollectionViewController
- (ProfileIconCollectionViewController)initWithIcons:(id)a3;
- (ProfileIconCollectionViewControllerDelegate)delegate;
- (id)_indexPathForSelectedSymbolName;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation ProfileIconCollectionViewController

- (ProfileIconCollectionViewController)initWithIcons:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ProfileIconCollectionViewController;
  v5 = [(ProfileIconCollectionViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v9 = [(UICollectionView *)self->_profileIconCollectionView layer];
  [v9 setCornerRadius:10.0];

  v10 = [(UICollectionView *)self->_profileIconCollectionView layer];
  [v10 setMasksToBounds:1];

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

- (void)setSelectedIndex:(unint64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  -[ProfileIconCollectionViewController setSelectedIndex:](self, "setSelectedIndex:", [v5 item]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 item];

  [WeakRetained profileIconCollectionViewController:self didSelectIconAtIndex:v6];
}

- (ProfileIconCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end