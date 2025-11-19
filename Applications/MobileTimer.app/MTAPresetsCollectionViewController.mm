@interface MTAPresetsCollectionViewController
+ (id)presetFlowLayout;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MTAPresetsCollectionViewController)initWithItems:(id)a3 presetsDelegate:(id)a4;
- (TimerPresetsDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MTAPresetsCollectionViewController

- (MTAPresetsCollectionViewController)initWithItems:(id)a3 presetsDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() presetFlowLayout];
  v11.receiver = self;
  v11.super_class = MTAPresetsCollectionViewController;
  v9 = [(MTAPresetsCollectionViewController *)&v11 initWithCollectionViewLayout:v8];

  if (v9)
  {
    [(MTAPresetsCollectionViewController *)v9 setItems:v6];
    [(MTAPresetsCollectionViewController *)v9 setDelegate:v7];
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
  v3 = [(MTAPresetsCollectionViewController *)self collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PresetCell"];

  v4 = [(MTAPresetsCollectionViewController *)self collectionView];
  [v4 setShowsHorizontalScrollIndicator:0];

  v5 = +[UIColor clearColor];
  v6 = [(MTAPresetsCollectionViewController *)self collectionView];
  [v6 setBackgroundColor:v5];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(MTAPresetsCollectionViewController *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"PresetCell" forIndexPath:v6];
  v8 = [(MTAPresetsCollectionViewController *)self items];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  [v7 setPresetItem:v10];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 80.0;
  v6 = 80.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 setHighlighted:1];
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 setHighlighted:0];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(MTAPresetsCollectionViewController *)self delegate];
  v6 = [(MTAPresetsCollectionViewController *)self items];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v8 duration];
  [v9 didSelectPresetWithDuration:?];
}

- (TimerPresetsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end