@interface MOSuggestionCollectionViewSingleAssetCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewSingleAssetCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView);
  selfCopy = self;
  v3 = v2;
  traitCollection = [(MOSuggestionCollectionViewSingleAssetCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, userInterfaceStyle);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = MOSuggestionCollectionViewSingleAssetCell.hitTest(_:with:)(event, x, y);

  return v10;
}

- (void)prepareForReuse
{
  selfCopy = self;
  MOSuggestionCollectionViewSingleAssetCell.prepareForReuse()();
}

@end