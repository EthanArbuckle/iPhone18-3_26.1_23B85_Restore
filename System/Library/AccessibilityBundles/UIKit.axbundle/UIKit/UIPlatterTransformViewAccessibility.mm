@interface UIPlatterTransformViewAccessibility
@end

@implementation UIPlatterTransformViewAccessibility

BOOL __61___UIPlatterTransformViewAccessibility_accessibilityElements__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] isAccessibilityElement])
  {
    if ([location[0] _accessibilityCanAppearInContextMenuPreview])
    {
      [location[0] accessibilityFrame];
      UIAccessibilityFrameToBounds();
      v8.origin.x = v2;
      v8.origin.y = v3;
      v8.size.width = v4;
      v8.size.height = v5;
      [a1[4] bounds];
      v12 = CGRectIntersection(v11, v8);
      v10 = !CGRectIsEmpty(v12);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10;
}

@end