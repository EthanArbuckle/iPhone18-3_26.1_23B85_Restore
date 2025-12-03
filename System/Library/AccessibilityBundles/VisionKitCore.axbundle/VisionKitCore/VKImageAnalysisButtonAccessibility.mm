@interface VKImageAnalysisButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation VKImageAnalysisButtonAccessibility

- (id)accessibilityLabel
{
  v3 = AXImageAnalysisLabel([(VKImageAnalysisButtonAccessibility *)self safeUnsignedIntegerForKey:@"mode"]);
  v4 = v3;
  if (v3)
  {
    accessibilityLabel = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKImageAnalysisButtonAccessibility;
    accessibilityLabel = [(VKImageAnalysisButtonAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel;

  return v6;
}

@end