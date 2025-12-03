@interface AVTGroupListCollectionView
- (AVTGroupListCollectionView)initWithGroupItems:(id)items environment:(id)environment;
- (AVTGroupPickerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setSelectedGroupIndex:(int64_t)index animated:(BOOL)animated;
- (void)setupBorder;
- (void)setupView;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCollectionLayoutItemSize:(id)size;
@end

@implementation AVTGroupListCollectionView

- (AVTGroupListCollectionView)initWithGroupItems:(id)items environment:(id)environment
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = AVTGroupListCollectionView;
  v7 = [(AVTGroupListCollectionView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_groupItems, items);
    [(AVTGroupListCollectionView *)v8 setupView];
    [(AVTGroupListCollectionView *)v8 setupBorder];
  }

  return v8;
}

- (void)setupBorder
{
  layer = [MEMORY[0x1E6979398] layer];
  border = self->_border;
  self->_border = layer;

  v5 = +[AVTUIColorRepository separatorColor];
  -[CALayer setBackgroundColor:](self->_border, "setBackgroundColor:", [v5 CGColor]);

  layer2 = [(AVTGroupListCollectionView *)self layer];
  [layer2 addSublayer:self->_border];
}

- (void)setupView
{
  v10 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v10 setSectionInset:{10.0, 10.0, 10.0, 10.0}];
  [v10 setMinimumInteritemSpacing:0.0];
  [v10 setMinimumLineSpacing:0.0];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [(AVTGroupListCollectionView *)self bounds];
  v4 = [v3 initWithFrame:v10 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v4;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  v7 = self->_collectionView;
  v8 = objc_opt_class();
  v9 = +[AVTGroupListCollectionViewCell cellIdentifier];
  [(UICollectionView *)v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  [(AVTGroupListCollectionView *)self addSubview:self->_collectionView];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AVTGroupListCollectionView;
  [(AVTGroupListCollectionView *)&v23 layoutSubviews];
  collectionView = [(AVTGroupListCollectionView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [(AVTGroupListCollectionView *)self updateCollectionLayoutItemSize:collectionViewLayout];

  [(AVTGroupListCollectionView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  collectionView2 = [(AVTGroupListCollectionView *)self collectionView];
  [collectionView2 setFrame:{v6, v8, v10, v12}];

  traitCollection = [(AVTGroupListCollectionView *)self traitCollection];
  v15 = 0.0;
  if ([traitCollection layoutDirection] != 1)
  {
    [(AVTGroupListCollectionView *)self bounds];
    v17 = v16;
    [(AVTGroupListCollectionView *)self borderWidth];
    v15 = v17 - v18;
  }

  [(AVTGroupListCollectionView *)self borderWidth];
  v20 = v19;
  [(AVTGroupListCollectionView *)self bounds];
  Height = CGRectGetHeight(v24);
  border = [(AVTGroupListCollectionView *)self border];
  [border setFrame:{v15, 0.0, v20, Height}];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = AVTGroupListCollectionView;
  changeCopy = change;
  [(AVTGroupListCollectionView *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [AVTUIColorRepository separatorColor:v10.receiver];
  -[CALayer setBackgroundColor:](self->_border, "setBackgroundColor:", [v5 CGColor]);

  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [(AVTGroupListCollectionView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    collectionView = [(AVTGroupListCollectionView *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)updateCollectionLayoutItemSize:(id)size
{
  sizeCopy = size;
  [(AVTGroupListCollectionView *)self bounds];
  v5 = v4;
  [sizeCopy sectionInset];
  v7 = v6;
  [sizeCopy sectionInset];
  [sizeCopy setEstimatedItemSize:{v5 - (v7 + v8), 10.0}];
  [sizeCopy invalidateLayout];
}

- (void)reloadData
{
  collectionView = [(AVTGroupListCollectionView *)self collectionView];
  [collectionView reloadData];
}

- (void)setSelectedGroupIndex:(int64_t)index animated:(BOOL)animated
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:0];
  collectionView = [(AVTGroupListCollectionView *)self collectionView];
  [collectionView selectItemAtIndexPath:v6 animated:1 scrollPosition:2];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTGroupListCollectionView *)self groupItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[AVTGroupListCollectionViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  groupItems = [(AVTGroupListCollectionView *)self groupItems];
  item = [pathCopy item];

  v12 = [groupItems objectAtIndexedSubscript:item];

  localizedName = [v12 localizedName];
  [v9 setTitle:localizedName];

  symbolNameProvider = [v12 symbolNameProvider];
  traitCollection = [(AVTGroupListCollectionView *)self traitCollection];
  v16 = symbolNameProvider[2](symbolNameProvider, [traitCollection userInterfaceStyle]);
  [v9 setSymbolName:v16];

  return v9;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(AVTGroupListCollectionView *)self delegate];
  item = [pathCopy item];

  [delegate groupPicker:self didDeselectGroupAtIndex:item];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(AVTGroupListCollectionView *)self delegate];
  item = [pathCopy item];

  [delegate groupPicker:self didSelectGroupAtIndex:item tapped:1];
}

- (AVTGroupPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end