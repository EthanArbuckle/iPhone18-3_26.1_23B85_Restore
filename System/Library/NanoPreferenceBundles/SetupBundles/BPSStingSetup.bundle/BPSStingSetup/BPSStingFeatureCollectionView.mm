@interface BPSStingFeatureCollectionView
- (BPSStingFeatureCollectionDelegate)selectionChangeDelegate;
- (BPSStingFeatureCollectionView)initWithFrame:(CGRect)frame;
- (CGSize)_findLargestCell:(id)cell withCell:(id)withCell;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation BPSStingFeatureCollectionView

- (BPSStingFeatureCollectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_new();
  [v8 setScrollDirection:1];
  [v8 setMinimumLineSpacing:0.0];
  [v8 setMinimumInteritemSpacing:0.0];
  [v8 setEstimatedItemSize:{127.0, 106.0}];
  v17.receiver = self;
  v17.super_class = BPSStingFeatureCollectionView;
  height = [(BPSStingFeatureCollectionView *)&v17 initWithFrame:v8 collectionViewLayout:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(BPSStingFeatureCollectionView *)height setDelegate:height];
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
    defaultSetupActionItems = [v14 defaultSetupActionItems];
    [(BPSStingFeatureCollectionView *)v10 setProActivities:defaultSetupActionItems];
  }

  return v10;
}

- (CGSize)_findLargestCell:(id)cell withCell:(id)withCell
{
  withCellCopy = withCell;
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
        actionType = [v12 actionType];
        integerValue = [actionType integerValue];

        v15 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:integerValue];
        v16 = [UIImage _systemImageNamed:v15];
        title = [v12 title];
        v18 = [BPSStingSetupModel subtitleForActionType:integerValue];
        [withCellCopy setImage:v16 title:title subtitle:v18];

        [withCellCopy getPreferredCellSize];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_selectedIndexPath, path);
  selectionChangeDelegate = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
  if (selectionChangeDelegate)
  {
    v7 = selectionChangeDelegate;
    selectionChangeDelegate2 = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      selectionChangeDelegate3 = [(BPSStingFeatureCollectionView *)self selectionChangeDelegate];
      v11 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [pathCopy row]);
      [selectionChangeDelegate3 selectionChanged:v11];
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[BPSStingFeatureCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [pathCopy row]);
  actionType = [v10 actionType];
  integerValue = [actionType integerValue];

  v13 = [CSLPRFStingSettingsModel sfSymbolAssetNameForActionType:integerValue];
  if (!self->_calculatedCellHeights)
  {
    [(BPSStingFeatureCollectionView *)self _findLargestCell:pathCopy withCell:v9];
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
  v17 = -[NSArray objectAtIndexedSubscript:](self->_proActivities, "objectAtIndexedSubscript:", [pathCopy row]);
  title = [v17 title];
  v19 = [BPSStingSetupModel subtitleForActionType:integerValue];
  [v9 setImage:v16 title:title subtitle:v19];

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (![pathCopy row] && !self->_selectedIndexPath)
  {
    [cellCopy setSelected:1];
    [(BPSStingFeatureCollectionView *)self selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
    [(BPSStingFeatureCollectionView *)self collectionView:self didSelectItemAtIndexPath:pathCopy];
  }

  if (([cellCopy isSelected] & 1) == 0 && -[NSIndexPath isEqual:](self->_selectedIndexPath, "isEqual:", pathCopy))
  {
    [cellCopy setSelected:1];
  }
}

- (BPSStingFeatureCollectionDelegate)selectionChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionChangeDelegate);

  return WeakRetained;
}

@end