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
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKImageAnalysisButtonAccessibility;
    v5 = [(VKImageAnalysisButtonAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end