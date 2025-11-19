@interface ClimateCollectionView
- (_TtC7Climate21ClimateCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation ClimateCollectionView

- (_TtC7Climate21ClimateCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ClimateCollectionView();
  return [(ClimateCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

@end