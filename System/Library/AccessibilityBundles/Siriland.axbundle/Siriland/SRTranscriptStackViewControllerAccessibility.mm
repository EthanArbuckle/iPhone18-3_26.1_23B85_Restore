@interface SRTranscriptStackViewControllerAccessibility
- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)paths usingBlock:(id)block;
@end

@implementation SRTranscriptStackViewControllerAccessibility

- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)paths usingBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = SRTranscriptStackViewControllerAccessibility;
  [(SRTranscriptStackViewControllerAccessibility *)&v4 _enumerateSortedParentItemIndexPathsForItemIndexPaths:paths usingBlock:block];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end