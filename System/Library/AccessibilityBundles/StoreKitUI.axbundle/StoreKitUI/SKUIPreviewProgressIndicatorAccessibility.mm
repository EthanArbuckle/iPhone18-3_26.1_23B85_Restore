@interface SKUIPreviewProgressIndicatorAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIPreviewProgressIndicatorAccessibility

- (id)accessibilityLabel
{
  if ([(SKUIPreviewProgressIndicatorAccessibility *)self safeBoolForKey:@"isIndeterminate"])
  {
    v2 = @"preview.loading.button";
  }

  else
  {
    v2 = @"preview.stop.button";
  }

  v3 = accessibilitySKUILocalizedString(v2);

  return v3;
}

@end