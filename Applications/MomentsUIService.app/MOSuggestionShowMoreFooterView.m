@interface MOSuggestionShowMoreFooterView
- (_TtC16MomentsUIService30MOSuggestionShowMoreFooterView)initWithCoder:(id)a3;
@end

@implementation MOSuggestionShowMoreFooterView

- (_TtC16MomentsUIService30MOSuggestionShowMoreFooterView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton;
  closure #1 in variable initialization expression of MOSuggestionShowMoreFooterView.showMoreButton();
  *(&self->super.super.super.super.isa + v4) = v5;
  v6 = (self + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction);
  *v6 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v6[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end