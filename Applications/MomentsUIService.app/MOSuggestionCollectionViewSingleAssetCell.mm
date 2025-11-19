@interface MOSuggestionCollectionViewSingleAssetCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation MOSuggestionCollectionViewSingleAssetCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView);
  v6 = self;
  v3 = v2;
  v4 = [(MOSuggestionCollectionViewSingleAssetCell *)v6 traitCollection];
  v5 = [v4 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v5);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = MOSuggestionCollectionViewSingleAssetCell.hitTest(_:with:)(a4, x, y);

  return v10;
}

- (void)prepareForReuse
{
  v2 = self;
  MOSuggestionCollectionViewSingleAssetCell.prepareForReuse()();
}

@end