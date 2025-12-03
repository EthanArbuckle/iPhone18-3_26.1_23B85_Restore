@interface BaseTodayCardCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BaseTodayCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005F5760();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  v2 = v4.receiver;
  [(BaseTodayCardCollectionViewCell *)&v4 prepareForReuse];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  (*((swift_isaMask & *v2) + 0x1D8))(v3);
  sub_1005F3E54(7);
  swift_beginAccess();
  swift_weakAssign();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1005F5D10(event, x, y);

  return v10;
}

@end