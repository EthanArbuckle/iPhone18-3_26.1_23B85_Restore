@interface ICSEffectPickerView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (ICSEffectPickerView)init;
- (ICSEffectPickerViewDataSource)dataSource;
- (ICSEffectPickerViewDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setDataSource:(id)a3;
@end

@implementation ICSEffectPickerView

- (ICSEffectPickerView)init
{
  v28.receiver = self;
  v28.super_class = ICSEffectPickerView;
  v2 = [(ICSEffectPickerView *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc_init(UICollectionViewFlowLayout);
    [v3 setMinimumInteritemSpacing:2.0];
    [v3 setMinimumLineSpacing:2.0];
    v4 = [[UICollectionView alloc] initWithFrame:v3 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    collectionView = v2->_collectionView;
    v2->_collectionView = v4;

    [(ICSEffectPickerView *)v2 addSubview:v2->_collectionView];
    [(UICollectionView *)v2->_collectionView setContentInset:5.0, 5.0, 5.0, 5.0];
    [(UICollectionView *)v2->_collectionView setDelegate:v2];
    [(UICollectionView *)v2->_collectionView setDataSource:v2];
    [(UICollectionView *)v2->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v2->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = v2->_collectionView;
    v7 = objc_opt_class();
    v8 = +[ICSEffectPickerViewCell reuseIdentifier];
    [(UICollectionView *)v6 registerClass:v7 forCellWithReuseIdentifier:v8];

    v9 = [(UICollectionView *)v2->_collectionView topAnchor];
    v10 = [(ICSEffectPickerView *)v2 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    v12 = [(UICollectionView *)v2->_collectionView bottomAnchor];
    v13 = [(ICSEffectPickerView *)v2 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    v15 = [(UICollectionView *)v2->_collectionView leftAnchor];
    v16 = [(ICSEffectPickerView *)v2 leftAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    v18 = [(UICollectionView *)v2->_collectionView rightAnchor];
    v19 = [(ICSEffectPickerView *)v2 rightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    v29[0] = v11;
    v29[1] = v14;
    v29[2] = v17;
    v29[3] = v20;
    v21 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    v22 = objc_alloc_init(UIView);
    v23 = +[UIColor whiteColor];
    [v22 setBackgroundColor:v23];

    [v22 setAlpha:0.5];
    [(UICollectionView *)v2->_collectionView setBackgroundView:v22];
    v24 = +[UIColor clearColor];
    [(UICollectionView *)v2->_collectionView setBackgroundColor:v24];

    [(UICollectionView *)v2->_collectionView setAllowsMultipleSelection:1];
    v25 = [(ICSEffectPickerView *)v2 layer];
    [v25 setMasksToBounds:1];

    v26 = [(ICSEffectPickerView *)v2 layer];
    [v26 setCornerRadius:10.0];
  }

  return v2;
}

- (void)setDataSource:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_dataSource, v8);
  v5 = [v8 videoEffectsForEffectPickerView:self];

  effects = self->_effects;
  self->_effects = v5;

  v7 = [(ICSEffectPickerView *)self collectionView];
  [v7 reloadData];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICSEffectPickerViewCell reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v7];

  v10 = [(ICSEffectPickerView *)self effects];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  [v9 setVideoEffect:v11];

  v12 = [v6 indexPathsForSelectedItems];
  [v9 setSelected:{objc_msgSend(v12, "containsObject:", v7)}];

  if ([v9 isSelected])
  {
    [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
  }

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICSEffectPickerView *)self delegate];
  v9 = [(ICSEffectPickerView *)self effects];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  [v8 effectPickerView:self didSelectVideoEffect:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v6 indexPathsForSelectedItems];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [v6 cellForItemAtIndexPath:v16];
        [v17 setSelected:0];

        [v6 deselectItemAtIndexPath:v16 animated:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(ICSEffectPickerView *)self delegate];
  v6 = [(ICSEffectPickerView *)self effects];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v9 effectPickerView:self didDeselectVideoEffect:v8];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(ICSEffectPickerView *)self effects:a3];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(ICSEffectPickerView *)self bounds:a3];
  v6 = (v5 + -10.0);
  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (ICSEffectPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSEffectPickerViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end