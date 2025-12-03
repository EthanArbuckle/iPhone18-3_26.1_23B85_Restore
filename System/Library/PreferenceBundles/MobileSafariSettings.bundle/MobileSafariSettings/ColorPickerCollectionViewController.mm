@interface ColorPickerCollectionViewController
- (ColorPickerCollectionViewController)initWithColors:(id)colors;
- (ColorPickerCollectionViewControllerDelegate)delegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)setSelectedIndex:(int64_t)index;
- (void)viewDidLoad;
@end

@implementation ColorPickerCollectionViewController

- (ColorPickerCollectionViewController)initWithColors:(id)colors
{
  colorsCopy = colors;
  v10.receiver = self;
  v10.super_class = ColorPickerCollectionViewController;
  v6 = [(ColorPickerCollectionViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colors, colors);
    v8 = v7;
  }

  return v7;
}

- (void)loadView
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __47__ColorPickerCollectionViewController_loadView__block_invoke;
  v23[3] = &unk_8A850;
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
  colorCollectionView = self->_colorCollectionView;
  self->_colorCollectionView = v6;

  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(UICollectionView *)self->_colorCollectionView setBackgroundColor:v8];

  [(UICollectionView *)self->_colorCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_colorCollectionView setDelegate:self];
  [(UICollectionView *)self->_colorCollectionView setShowsVerticalScrollIndicator:0];
  layer = [(UICollectionView *)self->_colorCollectionView layer];
  [layer setMasksToBounds:1];

  v10 = [UICollectionViewDiffableDataSource alloc];
  v11 = self->_colorCollectionView;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = __47__ColorPickerCollectionViewController_loadView__block_invoke_2;
  v21 = &unk_8A878;
  v22 = v3;
  v12 = v3;
  v13 = [v10 initWithCollectionView:v11 cellProvider:&v18];
  colorCollectionViewDataSource = self->_colorCollectionViewDataSource;
  self->_colorCollectionViewDataSource = v13;

  v15 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v16 = [(NSArray *)self->_colors safari_mapObjectsUsingBlock:&__block_literal_global_12, v18, v19, v20, v21];
  v24 = @"colors";
  v17 = [NSArray arrayWithObjects:&v24 count:1];
  [v15 appendSectionsWithIdentifiers:v17];

  [v15 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:@"colors"];
  [(UICollectionViewDiffableDataSource *)self->_colorCollectionViewDataSource applySnapshot:v15 animatingDifferences:0];
  [(ColorPickerCollectionViewController *)self setView:self->_colorCollectionView];
}

void __47__ColorPickerCollectionViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v7 = [v4 objectAtIndexedSubscript:{objc_msgSend(a3, "item")}];
  v6 = [UIColor safari_colorWithWBSNamedColorOption:v7];
  [v5 setColor:v6];
}

- (void)setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    colorCollectionView = self->_colorCollectionView;
    v5 = [NSIndexPath indexPathForItem:"indexPathForItem:inSection:" inSection:?];
    [(UICollectionView *)colorCollectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ColorPickerCollectionViewController;
  [(ColorPickerCollectionViewController *)&v5 viewDidLoad];
  colorCollectionView = self->_colorCollectionView;
  v4 = [NSIndexPath indexPathForItem:self->_selectedIndex inSection:0];
  [(UICollectionView *)colorCollectionView selectItemAtIndexPath:v4 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  self->_selectedIndex = [pathCopy item];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  item = [pathCopy item];

  [WeakRetained colorPickerCollectionViewController:self didSelectColorAtIndex:item];
}

- (ColorPickerCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end