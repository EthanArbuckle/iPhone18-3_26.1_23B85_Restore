@interface MOSuggestionEvergreenCollectionViewCell
- (_TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)prepareForReuse;
@end

@implementation MOSuggestionEvergreenCollectionViewCell

- (_TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MomentsUIService39MOSuggestionEvergreenCollectionViewCell_assetView;
  type metadata accessor for MOSuggestionSheetAssetView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = MOSuggestionEvergreenCollectionViewCell.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MOSuggestionEvergreenCollectionViewCell();
  v2 = v5.receiver;
  [(MOSuggestionEvergreenCollectionViewCell *)&v5 prepareForReuse];
  v3 = (*((swift_isaMask & *v2) + 0xA0))(0);
  v4 = (*((swift_isaMask & *v2) + 0x68))(v3);
  (*((swift_isaMask & *v4) + 0xA0))(0);
}

@end