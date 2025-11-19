@interface UIFindNavigatorViewControllerAccessibility
@end

@implementation UIFindNavigatorViewControllerAccessibility

double __77___UIFindNavigatorViewControllerAccessibility__axAnnounceCurrentSearchResult__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _rangeOfEnclosingWord:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __77___UIFindNavigatorViewControllerAccessibility__axAnnounceCurrentSearchResult__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _rangeOfSentenceEnclosingPosition:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end