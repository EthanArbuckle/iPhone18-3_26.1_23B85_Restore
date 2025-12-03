@interface MOSuggestionInterstitialExpandableListViewCell
- (void)didTapCheckmark;
- (void)handleTraitChange;
- (void)prepareForReuse;
@end

@implementation MOSuggestionInterstitialExpandableListViewCell

- (void)didTapCheckmark
{
  selfCopy = self;
  MOSuggestionInterstitialExpandableListViewCell.didTapCheckmark()();
}

- (void)handleTraitChange
{
  selfCopy = self;
  MOSuggestionInterstitialExpandableListViewCell.handleTraitChange()();
}

- (void)prepareForReuse
{
  selfCopy = self;
  MOSuggestionInterstitialExpandableListViewCell.prepareForReuse()();
}

@end