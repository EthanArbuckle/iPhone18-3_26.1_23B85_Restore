@interface _TVStackCollectionViewCellAccessibility
- (BOOL)_accessibilityScrollingEnabled;
@end

@implementation _TVStackCollectionViewCellAccessibility

- (BOOL)_accessibilityScrollingEnabled
{
  NSClassFromString(&cfstr_Tvcarouselview_2.isa);
  v11 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  contentView = [v3 contentView];
  subviews = [contentView subviews];
  firstObject = [subviews firstObject];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _accessibilityScrollingEnabled = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVStackCollectionViewCellAccessibility;
    _accessibilityScrollingEnabled = [(_TVStackCollectionViewCellAccessibility *)&v10 _accessibilityScrollingEnabled];
  }

  return _accessibilityScrollingEnabled;
}

@end