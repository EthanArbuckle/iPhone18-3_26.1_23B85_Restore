@interface SUUIPreviewProgressIndicatorAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUIPreviewProgressIndicatorAccessibility

- (id)accessibilityLabel
{
  if ([(SUUIPreviewProgressIndicatorAccessibility *)self safeBoolForKey:@"isIndeterminate"])
  {
    v2 = @"preview.loading.button";
  }

  else
  {
    v2 = @"preview.stop.button";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

@end