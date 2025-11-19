@interface MarkupContainerViewControllerAnalysisDelegate
- (id)presentingViewControllerForContext:(id)a3;
- (void)contextDidCompleteSubjectAnalysis:(id)a3;
@end

@implementation MarkupContainerViewControllerAnalysisDelegate

- (id)presentingViewControllerForContext:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)contextDidCompleteSubjectAnalysis:(id)a3
{
  swift_unknownObjectRetain();

  MarkupContainerViewControllerAnalysisDelegate.contextDidCompleteSubjectAnalysis(_:)(a3);
  swift_unknownObjectRelease();
}

@end