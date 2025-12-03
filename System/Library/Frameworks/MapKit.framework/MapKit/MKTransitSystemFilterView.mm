@interface MKTransitSystemFilterView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MKTransitSystemFilterView)initWithFrame:(CGRect)frame;
- (MKTransitSystemFilterViewDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (void)_contentSizeDidChange;
- (void)_setupCollectionView;
- (void)_setupConstraints;
- (void)_updateAppearance;
- (void)_updateSegmentPosition;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setSelectedIndex:(unint64_t)index;
- (void)setTransitSystems:(id)systems;
@end

@implementation MKTransitSystemFilterView

- (MKTransitSystemFilterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v3 sectionHeaderFont];
  [sectionHeaderFont _mapkit_scaledValueForValue:32.0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  dataSource = self->_dataSource;
  snapshot = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:snapshot];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(MKTransitSystemFilterView *)self traitCollection:view];
  v7 = 16.0;
  if ([v6 userInterfaceIdiom] == 5)
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 16.0;
  }

  traitCollection = [(MKTransitSystemFilterView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v7 = 24.0;
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v8;
  v13 = v7;
  result.right = v13;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = *MEMORY[0x1E69DB648];
  pathCopy = path;
  v7 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v7 sectionHeaderFont];
  v23[0] = sectionHeaderFont;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  transitSystems = self->_transitSystems;
  v11 = [pathCopy row];

  v12 = [(NSArray *)transitSystems objectAtIndexedSubscript:v11];
  name = [v12 name];
  [name sizeWithAttributes:v9];
  v15 = v14;

  v16 = +[MKFontManager sharedManager];
  sectionHeaderFont2 = [v16 sectionHeaderFont];
  [sectionHeaderFont2 _mapkit_scaledValueForValue:32.0];
  v19 = v18;

  v20 = v15 + 12.0 + 12.0;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] != self->_selectedIndex)
  {
    self->_selectedIndex = [pathCopy row];
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
    transitSystems = [(MKTransitSystemFilterView *)self transitSystems];
    v6 = [transitSystems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    delegate = [(MKTransitSystemFilterView *)self delegate];
    [delegate filterView:self didChangeSystemSelection:v6];
  }
}

- (void)_updateAppearance
{
  v4 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v4 appendSectionsWithIdentifiers:&unk_1F16122A0];
  transitSystems = [(MKTransitSystemFilterView *)self transitSystems];
  [v4 appendItemsWithIdentifiers:transitSystems];

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v4 animatingDifferences:0];
}

- (void)_updateSegmentPosition
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex < [(NSArray *)self->_transitSystems count])
  {
    collectionView = self->_collectionView;
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:self->_selectedIndex inSection:0];
    [(UICollectionView *)collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }
}

- (void)setSelectedIndex:(unint64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
  }
}

- (void)setTransitSystems:(id)systems
{
  systemsCopy = systems;
  if (([(NSArray *)self->_transitSystems isEqual:?]& 1) == 0)
  {
    v4 = [systemsCopy copy];
    transitSystems = self->_transitSystems;
    self->_transitSystems = v4;

    [(MKTransitSystemFilterView *)self _updateAppearance];
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
  }
}

- (void)_setupConstraints
{
  v21[5] = *MEMORY[0x1E69E9840];
  heightAnchor = [(UICollectionView *)self->_collectionView heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v4;

  v16 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
  leadingAnchor2 = [(MKTransitSystemFilterView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
  trailingAnchor2 = [(MKTransitSystemFilterView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v7;
  topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
  topAnchor2 = [(MKTransitSystemFilterView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v10;
  bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
  bottomAnchor2 = [(MKTransitSystemFilterView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v14 = self->_heightConstraint;
  v21[3] = v13;
  v21[4] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
  [v16 activateConstraints:v15];

  [(MKTransitSystemFilterView *)self _contentSizeDidChange];
}

- (void)_setupCollectionView
{
  v10 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v10 setMinimumInteritemSpacing:8.0];
  [v10 setScrollDirection:1];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [v3 initWithFrame:v10 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v4;

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"filterCell"];
  [(MKTransitSystemFilterView *)self addSubview:self->_collectionView];
  v7 = [objc_alloc(MEMORY[0x1E69DC820]) initWithCollectionView:self->_collectionView cellProvider:&__block_literal_global_28386];
  dataSource = self->_dataSource;
  self->_dataSource = v7;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

id __49__MKTransitSystemFilterView__setupCollectionView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 conformsToProtocol:&unk_1F16E5350])
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"filterCell" forIndexPath:v7];
    v10 = [v8 name];
    [v9 setTitleText:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MKTransitSystemFilterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKTransitSystemFilterView;
  v3 = [(MKTransitSystemFilterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitSystemFilterView *)v3 _setupCollectionView];
    [(MKTransitSystemFilterView *)v4 _setupConstraints];
  }

  return v4;
}

@end