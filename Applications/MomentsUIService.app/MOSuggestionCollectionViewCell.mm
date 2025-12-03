@interface MOSuggestionCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView);
  selfCopy = self;
  traitCollection = [(MOSuggestionCollectionViewCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v2, userInterfaceStyle);
}

- (void)prepareForReuse
{
  selfCopy = self;
  MOSuggestionCollectionViewCell.prepareForReuse()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = MOSuggestionCollectionViewCell.hitTest(_:with:)(event, x, y);

  return v10;
}

@end