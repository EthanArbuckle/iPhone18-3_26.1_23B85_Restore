@interface MosaicCell
- (_TtC21JournalShareExtension10MosaicCell)initWithCoder:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation MosaicCell

- (_TtC21JournalShareExtension10MosaicCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_hasOnlyOneImage) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_journalAsset) = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100072D9C(v4);
}

@end