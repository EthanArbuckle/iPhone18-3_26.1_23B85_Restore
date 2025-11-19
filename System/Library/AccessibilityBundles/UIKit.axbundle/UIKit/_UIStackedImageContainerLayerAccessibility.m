@interface _UIStackedImageContainerLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_accessibilityLayerHostingView;
@end

@implementation _UIStackedImageContainerLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UIStackedImageContainerLayer" hasInstanceVariable:@"_scale" withType:"d"];
  [location[0] validateClass:@"_UIStackedImageContainerLayer" hasInstanceVariable:@"_imageLayersContainer" withType:"CALayer"];
  objc_storeStrong(location, 0);
}

- (CGRect)accessibilityFrame
{
  v45 = self;
  v44[1] = a2;
  v44[0] = [(_UIStackedImageContainerLayerAccessibility *)self _accessibilityLayerHostingView];
  v46 = 0u;
  v47 = 0u;
  if (v44[0])
  {
    [v44[0] accessibilityFrame];
    v40 = v2;
    v41 = v3;
    v42 = v4;
    v43 = v5;
    v24 = [(_UIStackedImageContainerLayerAccessibility *)v45 safeValueForKey:@"_scale"];
    [v24 floatValue];
    v25 = v6;
    MEMORY[0x29EDC9740](v24);
    v39 = v25;
    if (v25 < 1.0)
    {
      v39 = 1.0;
    }

    v38 = [v44[0] _accessibilityFindAncestor:&__block_literal_global_61 startWithSelf:1];
    if (v38)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v39;
    }

    location[1] = *&v23;
    *&v47 = v42 * v23;
    *(&v47 + 1) = v43 * v39;
    *&v46 = v40 - (v42 * v23 - v42) / 2.0;
    *(&v46 + 1) = v41 - (v43 * v39 - v43) / 2.0;
    location[0] = [(_UIStackedImageContainerLayerAccessibility *)v45 valueForKey:@"_imageLayersContainer"];
    if (location[0])
    {
      [location[0] frame];
      v33 = v7;
      v34 = v8;
      v35 = v9;
      v36 = v10;
      *&v46 = *&v46 + v7;
      [location[0] frame];
      v29 = v11;
      v30 = v12;
      v31 = v13;
      v32 = v14;
      *(&v46 + 1) = *(&v46 + 1) + v12;
    }

    objc_storeStrong(location, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v26.receiver = v45;
    v26.super_class = _UIStackedImageContainerLayerAccessibility;
    [(_UIStackedImageContainerLayerAccessibility *)&v26 accessibilityFrame];
    *&v27 = v15;
    *(&v27 + 1) = v16;
    *&v28 = v17;
    *(&v28 + 1) = v18;
    v46 = v27;
    v47 = v28;
  }

  objc_storeStrong(v44, 0);
  v20 = *(&v46 + 1);
  v19 = *&v46;
  v22 = *(&v47 + 1);
  v21 = *&v47;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)_accessibilityLayerHostingView
{
  v11[1] = a1;
  if (a1)
  {
    v11[0] = 0;
    v9 = 0;
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    do
    {
      if (!v10)
      {
        break;
      }

      obj = [v10 delegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(v11, obj);
        v5 = 3;
      }

      else
      {
        v1 = [v10 superlayer];
        v2 = v10;
        v10 = v1;
        MEMORY[0x29EDC9740](v2);
        v5 = 0;
      }

      objc_storeStrong(&obj, 0);
    }

    while (!v5);
    v12 = MEMORY[0x29EDC9748](v11[0]);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(v11, 0);
  }

  else
  {
    v12 = 0;
  }

  v3 = v12;

  return v3;
}

@end