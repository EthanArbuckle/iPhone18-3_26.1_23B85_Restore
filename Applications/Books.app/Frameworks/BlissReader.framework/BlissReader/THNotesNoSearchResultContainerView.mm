@interface THNotesNoSearchResultContainerView
- (CGSize)intrinsicContentSize;
@end

@implementation THNotesNoSearchResultContainerView

- (CGSize)intrinsicContentSize
{
  v3 = [(THNotesNoSearchResultContainerView *)self sizeProvider];

  [(THNotesNoSearchResultsContainerSizeProvider *)v3 sizeForContainerView:self];
  result.height = v5;
  result.width = v4;
  return result;
}

@end