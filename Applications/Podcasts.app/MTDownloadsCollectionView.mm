@interface MTDownloadsCollectionView
- (MTDownloadsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation MTDownloadsCollectionView

- (MTDownloadsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = MTDownloadsCollectionView;
  v4 = [(MTDownloadsCollectionView *)&v7 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = +[UIColor backgroundColor];
    [(MTDownloadsCollectionView *)v4 setBackgroundColor:v5];

    [(MTDownloadsCollectionView *)v4 setAlwaysBounceVertical:1];
  }

  return v4;
}

@end