@interface MKTransitSystemFilterView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MKTransitSystemFilterView)initWithFrame:(CGRect)a3;
- (MKTransitSystemFilterViewDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (void)_contentSizeDidChange;
- (void)_setupCollectionView;
- (void)_setupConstraints;
- (void)_updateAppearance;
- (void)_updateSegmentPosition;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)setTransitSystems:(id)a3;
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
  v4 = [v3 sectionHeaderFont];
  [v4 _mapkit_scaledValueForValue:32.0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  dataSource = self->_dataSource;
  v6 = [(UICollectionViewDiffableDataSource *)dataSource snapshot];
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v6];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(MKTransitSystemFilterView *)self traitCollection:a3];
  v7 = 16.0;
  if ([v6 userInterfaceIdiom] == 5)
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 16.0;
  }

  v9 = [(MKTransitSystemFilterView *)self traitCollection];
  if ([v9 userInterfaceIdiom] == 5)
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = *MEMORY[0x1E69DB648];
  v6 = a5;
  v7 = +[MKFontManager sharedManager];
  v8 = [v7 sectionHeaderFont];
  v23[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  transitSystems = self->_transitSystems;
  v11 = [v6 row];

  v12 = [(NSArray *)transitSystems objectAtIndexedSubscript:v11];
  v13 = [v12 name];
  [v13 sizeWithAttributes:v9];
  v15 = v14;

  v16 = +[MKFontManager sharedManager];
  v17 = [v16 sectionHeaderFont];
  [v17 _mapkit_scaledValueForValue:32.0];
  v19 = v18;

  v20 = v15 + 12.0 + 12.0;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = a4;
  if ([v8 row] != self->_selectedIndex)
  {
    self->_selectedIndex = [v8 row];
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
    v5 = [(MKTransitSystemFilterView *)self transitSystems];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

    v7 = [(MKTransitSystemFilterView *)self delegate];
    [v7 filterView:self didChangeSystemSelection:v6];
  }
}

- (void)_updateAppearance
{
  v4 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v4 appendSectionsWithIdentifiers:&unk_1F16122A0];
  v3 = [(MKTransitSystemFilterView *)self transitSystems];
  [v4 appendItemsWithIdentifiers:v3];

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

- (void)setSelectedIndex:(unint64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
  }
}

- (void)setTransitSystems:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_transitSystems isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    transitSystems = self->_transitSystems;
    self->_transitSystems = v4;

    [(MKTransitSystemFilterView *)self _updateAppearance];
    [(MKTransitSystemFilterView *)self _updateSegmentPosition];
  }
}

- (void)_setupConstraints
{
  v21[5] = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionView *)self->_collectionView heightAnchor];
  v4 = [v3 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v4;

  v16 = MEMORY[0x1E696ACD8];
  v20 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v19 = [(MKTransitSystemFilterView *)self leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v17 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v6 = [(MKTransitSystemFilterView *)self trailingAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v21[1] = v7;
  v8 = [(UICollectionView *)self->_collectionView topAnchor];
  v9 = [(MKTransitSystemFilterView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v21[2] = v10;
  v11 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v12 = [(MKTransitSystemFilterView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
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
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v6];

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"filterCell"];
  [(MKTransitSystemFilterView *)self addSubview:self->_collectionView];
  v7 = [objc_alloc(MEMORY[0x1E69DC820]) initWithCollectionView:self->_collectionView cellProvider:&__block_literal_global_28386];
  dataSource = self->_dataSource;
  self->_dataSource = v7;

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
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

- (MKTransitSystemFilterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKTransitSystemFilterView;
  v3 = [(MKTransitSystemFilterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitSystemFilterView *)v3 _setupCollectionView];
    [(MKTransitSystemFilterView *)v4 _setupConstraints];
  }

  return v4;
}

@end