@interface MOSuggestionCollectionViewBlankEntrySectionHeaderView
- (void)pressedNewEntryButton;
- (void)pressedSegmentControl;
@end

@implementation MOSuggestionCollectionViewBlankEntrySectionHeaderView

- (void)pressedSegmentControl
{
  selfCopy = self;
  MOSuggestionCollectionViewBlankEntrySectionHeaderView.pressedSegmentControl()();
}

- (void)pressedNewEntryButton
{
  selfCopy = self;
  MOSuggestionCollectionViewBlankEntrySectionHeaderView.pressedNewEntryButton()();
}

@end