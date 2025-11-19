@interface MOSuggestionWorkoutIconGlyphView
- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithFrame:(CGRect)a3;
- (void)handleTraitChange;
- (void)layoutSubviews;
@end

@implementation MOSuggestionWorkoutIconGlyphView

- (void)layoutSubviews
{
  v4 = self;
  [(MOSuggestionWorkoutIconGlyphView *)v4 bounds];
  [(MOSuggestionWorkoutIconGlyphView *)v4 _setCornerRadius:v2 * 0.5];
  v3 = (*((swift_isaMask & v4->super.super.super.isa) + 0x68))();
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v3 setFrame:?];
}

- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)handleTraitChange
{
  v6 = self;
  v2 = [(MOSuggestionWorkoutIconGlyphView *)v6 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = (*((swift_isaMask & v6->super.super.super.isa) + 0x98))();
  }

  else
  {
    v4 = (*((swift_isaMask & v6->super.super.super.isa) + 0x80))();
  }

  v5 = v4;
  [(MOSuggestionWorkoutIconGlyphView *)v6 setBackgroundColor:v4];
}

- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end