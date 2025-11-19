@interface BPSStingFeatureCollectionView
- (BPSStingFeatureCollectionDelegate)selectionChangeDelegate;
- (BPSStingFeatureCollectionView)initWithFrame:(CGRect)a3;
- (CGSize)_findLargestCell:(id)a3 withCell:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
@end

@implementation BPSStingFeatureCollectionView

- (BPSStingFeatureCollectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_new();
  [v8 setScrollDirection:1];
  [v8 setMinimumLineSpacing:0.0];
  [v8 setMinimumInteritemSpacing:0.0];
  [v8 setEstimatedItemSize:{127.0, 106.0}];
  v17.receiver = self;
  v17.super_class = BPSStingFeatureCollectionView;
  v9 = [(BPSStingFeatureCollectionView *)&v17 initWithFrame:v8 collectionViewLayout:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(BPSStingFeatureCollectionView *)v9 setDelegate:v9];
    [(BPSStingFeatureCollectionView *)v10 setDataSource:v10];
    [(BPSStingFeatureCollectionView *)v10 setShowsHorizontalScrollIndicator:0];
    v11 = +[UIColor blackColor];
    [(BPSStingFeatureCollectionView *)v10 setBackgroundColor:v11];

    [(BPSStingFeatureCollectionView *)v10 setPreferredCellWidth:127.0];
    [(BPSStingFeatureCollectionView *)v10 setPreferredCellHeight:106.0];
    v12 = objc_opt_class();
    v13 = +[BPSStingFeatureCell reuseIdentifier];
    [(BPSStingFeatureCollectionView *)v10 registerClass:v12 forCellWithReuseIdentifier:v13];

    v14 = objc_opt_new();
    v15 = [v14 defaultSetupActionItems];
    [(BPSStingFeatureCollectionView *)v10 setProActivities:v15];
  }

  return v10;
}

- (CGSize)_findLargestCell:(id)a3 withCell:(id)a4
{
  v5 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(BPSStingFeatureCollectionView *)self proActivities];
  v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 actionType];
        v14 = [v13 integerValue];

        v15 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:v14];
        v16 = [UIImage _systemImageNamed:v15];
        v17 = [v12 title];
        v18 = [BPSStingSetupModel subtitleForActionType:v14];
        [v5 setImage:v16 title:v17 subtitle:v18];

        [v5 getPreferredCellSize];
        if (v20 > v10)
        {
          v10 = v20;
        }

        if (v19 > v9)
        {
          v9 = v19;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  v21 = +[UIScreen mainScreen];
  [v21 bounds];
  v23 = v22;
  [(BPSStingFeatureCollectionView *)self frame];
  v25 = v23 + v24 * -2.0;

  if (fmod(v25, v9) < 12.0)
  {
    v26 = bps_setup_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "width too close to removing peek, make it a bit wider", buf, 2u);
    }

    v9 = v9 + 12.0;
  }

  v27 = bps_setup_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v39.width = v9;
    v39.height = v10;
    v28 = NSStringFromCGSize(v39);
    *buf = 138412290;
    v37 = v28;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "preferred cell size is: %@", buf, 0xCu);
  }

  v29 = v9;
  v30 = v10;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a4;
  objc_storeStrong(&self->_selectedIndexPath, a4);
  v6 = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
      v11 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [v12 row]);
      [v10 selectionChanged:v11];
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[BPSStingFeatureCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [v6 row]);
  v11 = [v10 actionType];
  v12 = [v11 integerValue];

  v13 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:v12];
  if (!self->_calculatedCellHeights)
  {
    [(BPSStingFeatureCollectionView *)self _findLargestCell:v6 withCell:v9];
    v15 = v14;
    [(BPSStingFeatureCollectionView *)self setPreferredCellWidth:?];
    [(BPSStingFeatureCollectionView *)self setPreferredCellHeight:v15];
    self->_calculatedCellHeights = 1;
  }

  [(BPSStingFeatureCollectionView *)self preferredCellWidth];
  [v9 setPreferredCellWidth:?];
  [(BPSStingFeatureCollectionView *)self preferredCellHeight];
  [v9 setPreferredCellHeight:?];
  v16 = [UIImage _systemImageNamed:v13];
  v17 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [v6 row]);
  v18 = [v17 title];
  v19 = [BPSStingSetupModel subtitleForActionType:v12];
  [v9 setImage:v16 title:v18 subtitle:v19];

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v7 = a5;
  if (![v7 row] && !self->_selectedIndexPath)
  {
    [v8 setSelected:1];
    [(BPSStingFeatureCollectionView *)self selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
    [(BPSStingFeatureCollectionView *)self collectionView:self didSelectItemAtIndexPath:v7];
  }

  if (([v8 isSelected] & 1) == 0 && -[NSIndexPath isEqual:](self->_selectedIndexPath, "isEqual:", v7))
  {
    [v8 setSelected:1];
  }
}

- (BPSStingFeatureCollectionDelegate)selectionChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionChangeDelegate);

  return WeakRetained;
}

@end