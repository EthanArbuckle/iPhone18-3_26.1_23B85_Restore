@interface THNotesNoSearchResultContainerView
- (CGSize)intrinsicContentSize;
@end

@implementation THNotesNoSearchResultContainerView

- (CGSize)intrinsicContentSize
{
  sizeProvider = [(THNotesNoSearchResultContainerView *)self sizeProvider];

  [(THNotesNoSearchResultsContainerSizeProvider *)sizeProvider sizeForContainerView:self];
  result.height = v5;
  result.width = v4;
  return result;
}

@end