@interface MOSuggestionCollectionViewCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionCollectionViewCell_gridContainerView);
  v5 = self;
  v3 = [(MOSuggestionCollectionViewCell *)v5 traitCollection];
  v4 = [v3 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v2, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  MOSuggestionCollectionViewCell.prepareForReuse()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = MOSuggestionCollectionViewCell.hitTest(_:with:)(a4, x, y);

  return v10;
}

@end