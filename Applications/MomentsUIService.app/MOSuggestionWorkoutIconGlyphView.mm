@interface MOSuggestionWorkoutIconGlyphView
- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithFrame:(CGRect)frame;
- (void)handleTraitChange;
- (void)layoutSubviews;
@end

@implementation MOSuggestionWorkoutIconGlyphView

- (void)layoutSubviews
{
  selfCopy = self;
  [(MOSuggestionWorkoutIconGlyphView *)selfCopy bounds];
  [(MOSuggestionWorkoutIconGlyphView *)selfCopy _setCornerRadius:v2 * 0.5];
  v3 = (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x68))();
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v3 setFrame:?];
}

- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithCoder:(id)coder
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
  selfCopy = self;
  traitCollection = [(MOSuggestionWorkoutIconGlyphView *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v4 = (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x98))();
  }

  else
  {
    v4 = (*((swift_isaMask & selfCopy->super.super.super.isa) + 0x80))();
  }

  v5 = v4;
  [(MOSuggestionWorkoutIconGlyphView *)selfCopy setBackgroundColor:v4];
}

- (_TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end