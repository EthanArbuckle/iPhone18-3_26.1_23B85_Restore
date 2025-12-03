@interface MTAPresetsCollectionViewController
+ (id)presetFlowLayout;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MTAPresetsCollectionViewController)initWithItems:(id)items presetsDelegate:(id)delegate;
- (TimerPresetsDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MTAPresetsCollectionViewController

- (MTAPresetsCollectionViewController)initWithItems:(id)items presetsDelegate:(id)delegate
{
  itemsCopy = items;
  delegateCopy = delegate;
  presetFlowLayout = [objc_opt_class() presetFlowLayout];
  v11.receiver = self;
  v11.super_class = MTAPresetsCollectionViewController;
  v9 = [(MTAPresetsCollectionViewController *)&v11 initWithCollectionViewLayout:presetFlowLayout];

  if (v9)
  {
    [(MTAPresetsCollectionViewController *)v9 setItems:itemsCopy];
    [(MTAPresetsCollectionViewController *)v9 setDelegate:delegateCopy];
  }

  return v9;
}

+ (id)presetFlowLayout
{
  v2 = objc_alloc_init(UICollectionViewFlowLayout);
  [v2 setScrollDirection:1];
  [v2 setMinimumInteritemSpacing:16.0];
  [v2 setMinimumLineSpacing:16.0];

  return v2;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MTAPresetsCollectionViewController;
  [(MTAPresetsCollectionViewController *)&v7 viewDidLoad];
  collectionView = [(MTAPresetsCollectionViewController *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PresetCell"];

  collectionView2 = [(MTAPresetsCollectionViewController *)self collectionView];
  [collectionView2 setShowsHorizontalScrollIndicator:0];

  v5 = +[UIColor clearColor];
  collectionView3 = [(MTAPresetsCollectionViewController *)self collectionView];
  [collectionView3 setBackgroundColor:v5];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(MTAPresetsCollectionViewController *)self items:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"PresetCell" forIndexPath:pathCopy];
  items = [(MTAPresetsCollectionViewController *)self items];
  v9 = [pathCopy row];

  v10 = [items objectAtIndexedSubscript:v9];
  [v7 setPresetItem:v10];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 80.0;
  v6 = 80.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 setHighlighted:1];
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 setHighlighted:0];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(MTAPresetsCollectionViewController *)self delegate];
  items = [(MTAPresetsCollectionViewController *)self items];
  v7 = [pathCopy row];

  v8 = [items objectAtIndexedSubscript:v7];
  [v8 duration];
  [delegate didSelectPresetWithDuration:?];
}

- (TimerPresetsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end