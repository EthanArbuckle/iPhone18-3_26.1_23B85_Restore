@interface MOSuggestionStateOfMindAssetView
- (_TtC16MomentsUIService32MOSuggestionStateOfMindAssetView)initWithFrame:(CGRect)a3;
- (void)handleTraitChange;
- (void)layoutSubviews;
@end

@implementation MOSuggestionStateOfMindAssetView

- (void)handleTraitChange
{
  v2 = self;
  MOSuggestionStateOfMindAssetView.handleTraitChange()();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MOSuggestionStateOfMindAssetView();
  v2 = v5.receiver;
  [(MOSuggestionStateOfMindAssetView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient];
  if (v3)
  {
    v4 = v3;
    [v2 frame];
    [v4 setFrame:?];
  }
}

- (_TtC16MomentsUIService32MOSuggestionStateOfMindAssetView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end