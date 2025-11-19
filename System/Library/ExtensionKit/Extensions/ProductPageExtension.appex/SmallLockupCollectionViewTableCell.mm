@interface SmallLockupCollectionViewTableCell
- (_TtC20ProductPageExtension34SmallLockupCollectionViewTableCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SmallLockupCollectionViewTableCell

- (_TtC20ProductPageExtension34SmallLockupCollectionViewTableCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&self->UICollectionViewTableCell_opaque[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10045CDCC();
}

@end