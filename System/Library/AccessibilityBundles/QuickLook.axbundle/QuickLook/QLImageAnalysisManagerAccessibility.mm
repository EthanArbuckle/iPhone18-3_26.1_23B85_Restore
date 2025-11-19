@interface QLImageAnalysisManagerAccessibility
- (id)imageAnalysisToolbarButton;
@end

@implementation QLImageAnalysisManagerAccessibility

- (id)imageAnalysisToolbarButton
{
  v5.receiver = self;
  v5.super_class = QLImageAnalysisManagerAccessibility;
  v2 = [(QLImageAnalysisManagerAccessibility *)&v5 imageAnalysisToolbarButton];
  v3 = accessibilityLocalizedString(@"ql.visual.lookup.button.label");
  [v2 setAccessibilityLabel:v3];

  return v2;
}

@end