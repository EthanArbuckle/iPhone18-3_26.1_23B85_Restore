@interface MOSuggestionCollectionViewListCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)handleTraitChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewListCell

- (void)handleTraitChange
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0xD0);
  selfCopy = self;
  v3 = v2();
  traitCollection = [(MOSuggestionCollectionViewListCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, userInterfaceStyle);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MOSuggestionCollectionViewListCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for MOSuggestionCollectionViewListCell();
  v2 = v15.receiver;
  layoutSubviews = [(MOSuggestionCollectionViewListCell *)&v15 layoutSubviews];
  v4 = (*((swift_isaMask & *v2) + 0x138))(layoutSubviews);
  v6 = (*((swift_isaMask & *v2) + 0xD0))(v4, v5);
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = MOSuggestionCollectionViewListCell.hitTest(_:with:)(event, x, y);

  return v10;
}

- (void)prepareForReuse
{
  selfCopy = self;
  MOSuggestionCollectionViewListCell.prepareForReuse()();
}

@end