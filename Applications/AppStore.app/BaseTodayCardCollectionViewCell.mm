@interface BaseTodayCardCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BaseTodayCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004EC9FC();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 prepareForReuse];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  (*((swift_isaMask & *v2) + 0x1D8))(v3);
  sub_1004EAB3C(7);
  swift_beginAccess();
  swift_weakAssign();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1004ECFAC(event, x, y);

  return v10;
}

@end