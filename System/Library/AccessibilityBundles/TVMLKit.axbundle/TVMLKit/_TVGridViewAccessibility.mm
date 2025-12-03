@interface _TVGridViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_visibleBounds;
@end

@implementation _TVGridViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVGridView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"_TVGridView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"_visibleBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (CGRect)_visibleBounds
{
  v27.receiver = self;
  v27.super_class = _TVGridViewAccessibility;
  [(_TVGridViewAccessibility *)&v27 _visibleBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (UIAccessibilityIsVoiceOverRunning() && [(_TVGridViewAccessibility *)self isAccessibilityOpaqueElementProvider])
  {
    objc_opt_class();
    v11 = __UIAccessibilityCastAsClass();
    v12 = v11;
    if (v11)
    {
      [v11 contentSize];
      if (v13 > 0.0)
      {
        v15 = v14;
        if (v14 > 0.0)
        {
          v16 = v13;
          [v12 contentInset];
          v26 = v17;
          v19 = v18;
          v21 = v20;
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          v32 = CGRectInset(v28, -width, -height);
          v29.origin.x = -v19;
          v29.origin.y = -v26;
          v29.size.width = v16 - v21;
          v29.size.height = v15 - v19;
          v30 = CGRectIntersection(v29, v32);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
        }
      }
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end