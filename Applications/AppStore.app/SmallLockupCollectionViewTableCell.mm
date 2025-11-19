@interface SmallLockupCollectionViewTableCell
- (_TtC8AppStore34SmallLockupCollectionViewTableCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SmallLockupCollectionViewTableCell

- (_TtC8AppStore34SmallLockupCollectionViewTableCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&self->UICollectionViewTableCell_opaque[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004D0438();
}

@end