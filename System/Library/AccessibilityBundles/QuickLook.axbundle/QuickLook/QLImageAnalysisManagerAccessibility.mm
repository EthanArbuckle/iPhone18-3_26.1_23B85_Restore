@interface QLImageAnalysisManagerAccessibility
- (id)imageAnalysisToolbarButton;
@end

@implementation QLImageAnalysisManagerAccessibility

- (id)imageAnalysisToolbarButton
{
  v5.receiver = self;
  v5.super_class = QLImageAnalysisManagerAccessibility;
  imageAnalysisToolbarButton = [(QLImageAnalysisManagerAccessibility *)&v5 imageAnalysisToolbarButton];
  v3 = accessibilityLocalizedString(@"ql.visual.lookup.button.label");
  [imageAnalysisToolbarButton setAccessibilityLabel:v3];

  return imageAnalysisToolbarButton;
}

@end