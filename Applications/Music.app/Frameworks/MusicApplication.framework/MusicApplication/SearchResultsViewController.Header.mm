@interface SearchResultsViewController.Header
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchResultsViewController.Header

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_359524(change);
}

@end