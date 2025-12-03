@interface SmallLockupCollectionViewTableCell
- (_TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SmallLockupCollectionViewTableCell

- (_TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&self->UICollectionViewTableCell_opaque[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_43AF2C();
}

@end