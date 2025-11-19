@interface MTDownloadsCollectionView
- (MTDownloadsCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation MTDownloadsCollectionView

- (MTDownloadsCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTDownloadsCollectionView;
  v4 = [(MTDownloadsCollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[UIColor backgroundColor];
    [(MTDownloadsCollectionView *)v4 setBackgroundColor:v5];

    [(MTDownloadsCollectionView *)v4 setAlwaysBounceVertical:1];
  }

  return v4;
}

@end