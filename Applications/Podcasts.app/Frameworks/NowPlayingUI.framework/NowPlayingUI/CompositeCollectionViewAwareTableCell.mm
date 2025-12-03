@interface CompositeCollectionViewAwareTableCell
- (UIColor)backgroundColor;
- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithCoder:(id)coder;
- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithFrame:(CGRect)frame;
- (id)_collectionView;
- (void)_setCollectionView:(id)view;
- (void)applyLayoutAttributes:(id)attributes;
- (void)setBackgroundColor:(id)color;
@end

@implementation CompositeCollectionViewAwareTableCell

- (id)_collectionView
{
  selfCopy = self;
  v3 = sub_CBB24();

  return v3;
}

- (void)_setCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  [(CompositeCollectionViewAwareTableCell *)&v4 _setCollectionView:view];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_CC268(attributesCopy);
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  backgroundColor = [(CompositeCollectionViewAwareTableCell *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  v4 = v9.receiver;
  colorCopy = color;
  [(CompositeCollectionViewAwareTableCell *)&v9 setBackgroundColor:colorCopy];
  tableViewCell = [v4 tableViewCell];
  if (tableViewCell)
  {
    v7 = tableViewCell;
    backgroundColor = [v4 backgroundColor];
    [v7 setBackgroundColor:backgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
  v9 = sub_140C2C();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  return [(CompositeCollectionViewAwareTableCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC12NowPlayingUI37CompositeCollectionViewAwareTableCell_lastAppliedIndexPath;
  v6 = sub_140C2C();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for CompositeCollectionViewAwareTableCell();
  coderCopy = coder;
  v8 = [(CompositeCollectionViewAwareTableCell *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end