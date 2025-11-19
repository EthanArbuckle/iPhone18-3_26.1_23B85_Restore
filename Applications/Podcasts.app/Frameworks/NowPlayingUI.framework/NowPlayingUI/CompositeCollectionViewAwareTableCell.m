@interface CompositeCollectionViewAwareTableCell
- (UIColor)backgroundColor;
- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithFrame:(CGRect)a3;
- (id)_collectionView;
- (void)_setCollectionView:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation CompositeCollectionViewAwareTableCell

- (id)_collectionView
{
  v2 = self;
  v3 = sub_CBB24();

  return v3;
}

- (void)_setCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  [(CompositeCollectionViewAwareTableCell *)&v4 _setCollectionView:a3];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_CC268(v4);
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  v2 = [(CompositeCollectionViewAwareTableCell *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  v4 = v9.receiver;
  v5 = a3;
  [(CompositeCollectionViewAwareTableCell *)&v9 setBackgroundColor:v5];
  v6 = [v4 tableViewCell];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 backgroundColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
  v9 = sub_140C2C();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  return [(CompositeCollectionViewAwareTableCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
  v6 = sub_140C2C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  v7 = a3;
  v8 = [(CompositeCollectionViewAwareTableCell *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end