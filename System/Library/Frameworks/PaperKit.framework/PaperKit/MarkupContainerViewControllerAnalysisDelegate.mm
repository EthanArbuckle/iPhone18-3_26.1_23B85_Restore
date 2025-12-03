@interface MarkupContainerViewControllerAnalysisDelegate
- (id)presentingViewControllerForContext:(id)context;
- (void)contextDidCompleteSubjectAnalysis:(id)analysis;
@end

@implementation MarkupContainerViewControllerAnalysisDelegate

- (id)presentingViewControllerForContext:(id)context
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)contextDidCompleteSubjectAnalysis:(id)analysis
{
  swift_unknownObjectRetain();

  MarkupContainerViewControllerAnalysisDelegate.contextDidCompleteSubjectAnalysis(_:)(analysis);
  swift_unknownObjectRelease();
}

@end