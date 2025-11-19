@interface AVTGroupListCollectionView
- (AVTGroupListCollectionView)initWithGroupItems:(id)a3 environment:(id)a4;
- (AVTGroupPickerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
- (void)reloadData;
- (void)setSelectedGroupIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setupBorder;
- (void)setupView;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCollectionLayoutItemSize:(id)a3;
@end

@implementation AVTGroupListCollectionView

- (AVTGroupListCollectionView)initWithGroupItems:(id)a3 environment:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = AVTGroupListCollectionView;
  v7 = [(AVTGroupListCollectionView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_groupItems, a3);
    [(AVTGroupListCollectionView *)v8 setupView];
    [(AVTGroupListCollectionView *)v8 setupBorder];
  }

  return v8;
}

- (void)setupBorder
{
  v3 = [MEMORY[0x1E6979398] layer];
  border = self->_border;
  self->_border = v3;

  v5 = +[AVTUIColorRepository separatorColor];
  -[CALayer setBackgroundColor:](self->_border, "setBackgroundColor:", [v5 CGColor]);

  v6 = [(AVTGroupListCollectionView *)self layer];
  [v6 addSublayer:self->_border];
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

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v6];

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
  v3 = [(AVTGroupListCollectionView *)self collectionView];
  v4 = [v3 collectionViewLayout];
  [(AVTGroupListCollectionView *)self updateCollectionLayoutItemSize:v4];

  [(AVTGroupListCollectionView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(AVTGroupListCollectionView *)self collectionView];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(AVTGroupListCollectionView *)self traitCollection];
  v15 = 0.0;
  if ([v14 layoutDirection] != 1)
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
  v22 = [(AVTGroupListCollectionView *)self border];
  [v22 setFrame:{v15, 0.0, v20, Height}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVTGroupListCollectionView;
  v4 = a3;
  [(AVTGroupListCollectionView *)&v10 traitCollectionDidChange:v4];
  v5 = [AVTUIColorRepository separatorColor:v10.receiver];
  -[CALayer setBackgroundColor:](self->_border, "setBackgroundColor:", [v5 CGColor]);

  v6 = [v4 userInterfaceStyle];
  v7 = [(AVTGroupListCollectionView *)self traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v6 != v8)
  {
    v9 = [(AVTGroupListCollectionView *)self collectionView];
    [v9 reloadData];
  }
}

- (void)updateCollectionLayoutItemSize:(id)a3
{
  v9 = a3;
  [(AVTGroupListCollectionView *)self bounds];
  v5 = v4;
  [v9 sectionInset];
  v7 = v6;
  [v9 sectionInset];
  [v9 setEstimatedItemSize:{v5 - (v7 + v8), 10.0}];
  [v9 invalidateLayout];
}

- (void)reloadData
{
  v2 = [(AVTGroupListCollectionView *)self collectionView];
  [v2 reloadData];
}

- (void)setSelectedGroupIndex:(int64_t)a3 animated:(BOOL)a4
{
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v5 = [(AVTGroupListCollectionView *)self collectionView];
  [v5 selectItemAtIndexPath:v6 animated:1 scrollPosition:2];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTGroupListCollectionView *)self groupItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTGroupListCollectionViewCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(AVTGroupListCollectionView *)self groupItems];
  v11 = [v6 item];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [v12 localizedName];
  [v9 setTitle:v13];

  v14 = [v12 symbolNameProvider];
  v15 = [(AVTGroupListCollectionView *)self traitCollection];
  v16 = v14[2](v14, [v15 userInterfaceStyle]);
  [v9 setSymbolName:v16];

  return v9;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(AVTGroupListCollectionView *)self delegate];
  v6 = [v5 item];

  [v7 groupPicker:self didDeselectGroupAtIndex:v6];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(AVTGroupListCollectionView *)self delegate];
  v6 = [v5 item];

  [v7 groupPicker:self didSelectGroupAtIndex:v6 tapped:1];
}

- (AVTGroupPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end