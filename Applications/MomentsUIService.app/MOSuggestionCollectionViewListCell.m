@interface MOSuggestionCollectionViewListCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleTraitChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewListCell

- (void)handleTraitChange
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0xD0);
  v6 = self;
  v3 = v2();
  v4 = [(MOSuggestionCollectionViewListCell *)v6 traitCollection];
  v5 = [v4 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v5);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  MOSuggestionCollectionViewListCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  v2 = v15.receiver;
  v3 = [(MOSuggestionCollectionViewListCell *)&v15 layoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x138))(v3);
  v6 = (*((swift_isaMask & *v2) + 0xD0))(v4, v5);
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = MOSuggestionCollectionViewListCell.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (void)prepareForReuse
{
  v2 = self;
  MOSuggestionCollectionViewListCell.prepareForReuse()();
}

@end