@interface ClimateCollectionView
- (_TtC7Climate21ClimateCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation ClimateCollectionView

- (_TtC7Climate21ClimateCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ClimateCollectionView();
  return [(ClimateCollectionView *)&v10 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

@end