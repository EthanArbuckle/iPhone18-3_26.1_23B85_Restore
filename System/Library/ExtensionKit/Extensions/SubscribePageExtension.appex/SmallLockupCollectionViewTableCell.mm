@interface SmallLockupCollectionViewTableCell
- (_TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SmallLockupCollectionViewTableCell

- (_TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&self->UICollectionViewTableCell_opaque[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004CBDBC();
}

@end