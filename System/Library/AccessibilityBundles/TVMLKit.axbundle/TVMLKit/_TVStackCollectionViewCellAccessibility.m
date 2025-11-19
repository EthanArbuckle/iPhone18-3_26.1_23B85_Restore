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
  v4 = [v3 contentView];
  v5 = [v4 subviews];
  v6 = [v5 firstObject];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVStackCollectionViewCellAccessibility;
    v8 = [(_TVStackCollectionViewCellAccessibility *)&v10 _accessibilityScrollingEnabled];
  }

  return v8;
}

@end