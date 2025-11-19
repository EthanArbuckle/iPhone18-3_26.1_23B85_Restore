@interface VKExplorationAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)isCurrent;
- (CGRect)accessibilityFrame;
- (VKExplorationAccessibilityElement)initWithAccessibilityContainer:(id)a3 andVertex:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityPaths;
@end

@implementation VKExplorationAccessibilityElement

- (BOOL)isCurrent
{
  v2 = [(VKExplorationAccessibilityElement *)self vertex];
  v3 = [v2 isCurrent];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if (![(VKExplorationAccessibilityElement *)self isCurrent])
  {
    return 1;
  }

  v3 = [(VKExplorationAccessibilityElement *)self vertex];
  if ([v3 isComputed])
  {
    v4 = [(VKExplorationAccessibilityElement *)self vertex];
    v5 = [v4 roads];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityLabel
{
  if ([(VKExplorationAccessibilityElement *)self isCurrent])
  {
    v3 = [(VKExplorationAccessibilityElement *)self vertex];
    v4 = [v3 roads];
    if ([v4 count])
    {
      v5 = [(VKExplorationAccessibilityElement *)self vertex];
      v6 = [v5 isComputed];

      if (v6)
      {
        v7 = MEMORY[0x29EDBA0F8];
        v8 = AXVectorKitLocString(@"INTERSECTION_INFO_FORMAT");
        v9 = [(VKExplorationAccessibilityElement *)self vertex];
        v10 = [v9 edges];
        v11 = [v10 count];
        v12 = [(VKExplorationAccessibilityElement *)self vertex];
        v13 = [v12 accessibilityLabel];
        v14 = [v7 localizedStringWithFormat:v8, v11, v13];

        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_21;
  }

  v15 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
  v16 = [v15 accessibilityElementManager];
  v17 = [v16 currentExplorationVertex];

  if (v17)
  {
    v18 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    [v18 accessibilityYaw];
    v20 = v19;

    v21 = v20 + 360.0;
    if (v20 >= 0.0)
    {
      v21 = v20;
    }

    if (v21 >= 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 + 360.0;
    }

    v23 = [(VKExplorationAccessibilityElement *)self vertex];
    [v23 getScreenPoint];
    v25 = v24;
    v27 = v26;

    v28 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    v29 = [v28 accessibilityElementManager];
    v30 = [v29 currentExplorationVertex];
    [v30 getScreenPoint];
    v32 = v31;
    v34 = v33;

    v51.y = -v27;
    v52.y = -v34;
    v48 = 0.0;
    v49 = 0.0;
    v51.x = v25;
    v52.x = v32;
    AXVKMathGetVectorAndDistanceForPoints(&v49, &v48, v51, v52);
    v35 = v22 + 360.0 - v49 + dbl_29C71B5B0[360.0 - v49 >= 270.0];
    if (v35 > 360.0)
    {
      v35 = v35 + -360.0;
    }

    v49 = v35;
    v8 = AXDescriptionForHeadingInDegrees();
    v36 = [(VKExplorationAccessibilityElement *)self vertex];
    v37 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    v38 = [v37 accessibilityElementManager];
    v39 = [v38 currentExplorationVertex];
    v40 = [v36 connectingRoadWith:v39];
    v41 = [v40 trueLabel];

    if (![v41 length])
    {
      v42 = AXVectorKitLocString(@"UNNAMED_ROAD");

      v41 = v42;
    }

    v43 = MEMORY[0x29EDBA0F8];
    v44 = AXVectorKitLocString(@"MOVE_ON_FORMAT");
    v14 = [v43 stringWithFormat:v44, v8, v41];

    goto LABEL_20;
  }

  v45 = MEMORY[0x29EDBA0F8];
  v8 = AXVectorKitLocString(@"MOVE_TO_FORMAT");
  v9 = [(VKExplorationAccessibilityElement *)self vertex];
  v46 = [v9 accessibilityLabel];
  v14 = [v45 stringWithFormat:v8, v46];

LABEL_19:
LABEL_20:

LABEL_21:

  return v14;
}

- (id)accessibilityPath
{
  v2 = MEMORY[0x29EDC7948];
  v3 = [(VKExplorationAccessibilityElement *)self accessibilityPaths];
  v4 = [v3 objectAtIndex:0];
  v5 = [v2 bezierPathWithCGPath:v4];

  return v5;
}

- (id)accessibilityPaths
{
  v38 = *MEMORY[0x29EDCA608];
  if ([(VKExplorationAccessibilityElement *)self isCurrent])
  {
    goto LABEL_14;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(VKExplorationAccessibilityElement *)self vertex];
  v4 = [v3 neighbors];

  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v5)
  {

LABEL_14:
    [(VKExplorationAccessibilityElement *)self accessibilityFrame];
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    v26 = MEMORY[0x29EDC7948];
    MidX = CGRectGetMidX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v28 = [v26 bezierPathWithArcCenter:1 radius:MidX startAngle:CGRectGetMidY(v41) endAngle:30.0 clockwise:{0.0, 6.28318531}];
    v29 = v28;
    v35 = [v28 CGPath];
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v35 count:1];

    goto LABEL_15;
  }

  v6 = 0;
  v7 = *v32;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      if ([(AXVKExplorationVertexElement *)v9 isCurrent])
      {
        [(AXVKExplorationVertexElement *)v9 getScreenPoint];
        v11 = v10;
        v13 = v12;
        v14 = [(VKExplorationAccessibilityElement *)self vertex];
        v15 = AXVKGetWalkingDirectionBetweenVertices(v9, v14);

        v16 = [MEMORY[0x29EDC7948] bezierPath];
        v17 = v15 * 0.0174532925 + 3.14159265;
        v18 = v17 + -0.261799388;
        v19 = v17 + 0.261799388;
        [v16 addArcWithCenter:1 radius:v11 startAngle:v13 endAngle:1000.0 clockwise:{v17 + -0.261799388, v17 + 0.261799388}];
        [v16 addArcWithCenter:0 radius:v11 startAngle:v13 endAngle:30.0 clockwise:{v19, v18}];
        [v16 closePath];
        v20 = v16;
        v36 = [v16 CGPath];
        v21 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v36 count:1];

        v6 = v21;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

- (CGRect)accessibilityFrame
{
  v3 = [(VKExplorationAccessibilityElement *)self vertex];
  [v3 getScreenPoint];

  v4 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
  v5 = [v4 accessibilityLayerHostingView];

  UIAccessibilityFrameForBounds();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (VKExplorationAccessibilityElement)initWithAccessibilityContainer:(id)a3 andVertex:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VKExplorationAccessibilityElement;
  v8 = [(VKExplorationAccessibilityElement *)&v11 initWithAccessibilityContainer:a3];
  v9 = v8;
  if (v8)
  {
    v8->_isExplorationElement = 1;
    objc_storeStrong(&v8->_vertex, a4);
  }

  return v9;
}

- (BOOL)accessibilityActivate
{
  v3 = [(VKExplorationAccessibilityElement *)self isCurrent];
  if (!v3)
  {
    v4 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    v5 = [v4 accessibilityElementManager];
    v6 = [(VKExplorationAccessibilityElement *)self vertex];
    [v5 accessibilityMapsExplorationContinueWithVertex:v6];
  }

  return !v3;
}

@end