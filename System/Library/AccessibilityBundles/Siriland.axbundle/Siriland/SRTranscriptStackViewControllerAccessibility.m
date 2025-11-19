@interface SRTranscriptStackViewControllerAccessibility
- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)a3 usingBlock:(id)a4;
@end

@implementation SRTranscriptStackViewControllerAccessibility

- (void)_enumerateSortedParentItemIndexPathsForItemIndexPaths:(id)a3 usingBlock:(id)a4
{
  v4.receiver = self;
  v4.super_class = SRTranscriptStackViewControllerAccessibility;
  [(SRTranscriptStackViewControllerAccessibility *)&v4 _enumerateSortedParentItemIndexPathsForItemIndexPaths:a3 usingBlock:a4];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end