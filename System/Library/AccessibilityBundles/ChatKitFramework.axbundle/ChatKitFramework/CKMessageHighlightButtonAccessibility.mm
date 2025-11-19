@interface CKMessageHighlightButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CKMessageHighlightButtonAccessibility

- (id)accessibilityLabel
{
  if ([(CKMessageHighlightButtonAccessibility *)self safeBoolForKey:@"isHighlighted"])
  {
    v2 = @"highlight.remove.button";
  }

  else
  {
    v2 = @"highlight.button";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

@end