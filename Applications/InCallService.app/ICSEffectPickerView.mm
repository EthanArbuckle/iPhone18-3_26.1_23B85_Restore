@interface ICSEffectPickerView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (ICSEffectPickerView)init;
- (ICSEffectPickerViewDataSource)dataSource;
- (ICSEffectPickerViewDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setDataSource:(id)source;
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

    topAnchor = [(UICollectionView *)v2->_collectionView topAnchor];
    topAnchor2 = [(ICSEffectPickerView *)v2 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(UICollectionView *)v2->_collectionView bottomAnchor];
    bottomAnchor2 = [(ICSEffectPickerView *)v2 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    leftAnchor = [(UICollectionView *)v2->_collectionView leftAnchor];
    leftAnchor2 = [(ICSEffectPickerView *)v2 leftAnchor];
    v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

    rightAnchor = [(UICollectionView *)v2->_collectionView rightAnchor];
    rightAnchor2 = [(ICSEffectPickerView *)v2 rightAnchor];
    v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

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
    layer = [(ICSEffectPickerView *)v2 layer];
    [layer setMasksToBounds:1];

    layer2 = [(ICSEffectPickerView *)v2 layer];
    [layer2 setCornerRadius:10.0];
  }

  return v2;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v4 = objc_storeWeak(&self->_dataSource, sourceCopy);
  v5 = [sourceCopy videoEffectsForEffectPickerView:self];

  effects = self->_effects;
  self->_effects = v5;

  collectionView = [(ICSEffectPickerView *)self collectionView];
  [collectionView reloadData];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[ICSEffectPickerViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  effects = [(ICSEffectPickerView *)self effects];
  v11 = [effects objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [v9 setVideoEffect:v11];

  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  [v9 setSelected:{objc_msgSend(indexPathsForSelectedItems, "containsObject:", pathCopy)}];

  if ([v9 isSelected])
  {
    [viewCopy selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(ICSEffectPickerView *)self delegate];
  effects = [(ICSEffectPickerView *)self effects];
  v10 = [effects objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [delegate effectPickerView:self didSelectVideoEffect:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [viewCopy cellForItemAtIndexPath:v16];
        [v17 setSelected:0];

        [viewCopy deselectItemAtIndexPath:v16 animated:0];
      }

      v13 = [indexPathsForSelectedItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [viewCopy selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(ICSEffectPickerView *)self delegate];
  effects = [(ICSEffectPickerView *)self effects];
  v7 = [pathCopy row];

  v8 = [effects objectAtIndexedSubscript:v7];
  [delegate effectPickerView:self didDeselectVideoEffect:v8];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(ICSEffectPickerView *)self effects:view];
  v5 = [v4 count];

  return v5;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(ICSEffectPickerView *)self bounds:view];
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