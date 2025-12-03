@interface VKExplorationAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)isCurrent;
- (CGRect)accessibilityFrame;
- (VKExplorationAccessibilityElement)initWithAccessibilityContainer:(id)container andVertex:(id)vertex;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityPaths;
@end

@implementation VKExplorationAccessibilityElement

- (BOOL)isCurrent
{
  vertex = [(VKExplorationAccessibilityElement *)self vertex];
  isCurrent = [vertex isCurrent];

  return isCurrent;
}

- (BOOL)isAccessibilityElement
{
  if (![(VKExplorationAccessibilityElement *)self isCurrent])
  {
    return 1;
  }

  vertex = [(VKExplorationAccessibilityElement *)self vertex];
  if ([vertex isComputed])
  {
    vertex2 = [(VKExplorationAccessibilityElement *)self vertex];
    roads = [vertex2 roads];
    v6 = [roads count] != 0;
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
    vertex = [(VKExplorationAccessibilityElement *)self vertex];
    roads = [vertex roads];
    if ([roads count])
    {
      vertex2 = [(VKExplorationAccessibilityElement *)self vertex];
      isComputed = [vertex2 isComputed];

      if (isComputed)
      {
        v7 = MEMORY[0x29EDBA0F8];
        v8 = AXVectorKitLocString(@"INTERSECTION_INFO_FORMAT");
        vertex3 = [(VKExplorationAccessibilityElement *)self vertex];
        edges = [vertex3 edges];
        v11 = [edges count];
        vertex4 = [(VKExplorationAccessibilityElement *)self vertex];
        accessibilityLabel = [vertex4 accessibilityLabel];
        v14 = [v7 localizedStringWithFormat:v8, v11, accessibilityLabel];

        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_21;
  }

  accessibilityContainer = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
  accessibilityElementManager = [accessibilityContainer accessibilityElementManager];
  currentExplorationVertex = [accessibilityElementManager currentExplorationVertex];

  if (currentExplorationVertex)
  {
    accessibilityContainer2 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    [accessibilityContainer2 accessibilityYaw];
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

    vertex5 = [(VKExplorationAccessibilityElement *)self vertex];
    [vertex5 getScreenPoint];
    v25 = v24;
    v27 = v26;

    accessibilityContainer3 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    accessibilityElementManager2 = [accessibilityContainer3 accessibilityElementManager];
    currentExplorationVertex2 = [accessibilityElementManager2 currentExplorationVertex];
    [currentExplorationVertex2 getScreenPoint];
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
    vertex6 = [(VKExplorationAccessibilityElement *)self vertex];
    accessibilityContainer4 = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    accessibilityElementManager3 = [accessibilityContainer4 accessibilityElementManager];
    currentExplorationVertex3 = [accessibilityElementManager3 currentExplorationVertex];
    v40 = [vertex6 connectingRoadWith:currentExplorationVertex3];
    trueLabel = [v40 trueLabel];

    if (![trueLabel length])
    {
      v42 = AXVectorKitLocString(@"UNNAMED_ROAD");

      trueLabel = v42;
    }

    v43 = MEMORY[0x29EDBA0F8];
    v44 = AXVectorKitLocString(@"MOVE_ON_FORMAT");
    v14 = [v43 stringWithFormat:v44, v8, trueLabel];

    goto LABEL_20;
  }

  v45 = MEMORY[0x29EDBA0F8];
  v8 = AXVectorKitLocString(@"MOVE_TO_FORMAT");
  vertex3 = [(VKExplorationAccessibilityElement *)self vertex];
  accessibilityLabel2 = [vertex3 accessibilityLabel];
  v14 = [v45 stringWithFormat:v8, accessibilityLabel2];

LABEL_19:
LABEL_20:

LABEL_21:

  return v14;
}

- (id)accessibilityPath
{
  v2 = MEMORY[0x29EDC7948];
  accessibilityPaths = [(VKExplorationAccessibilityElement *)self accessibilityPaths];
  v4 = [accessibilityPaths objectAtIndex:0];
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
  vertex = [(VKExplorationAccessibilityElement *)self vertex];
  neighbors = [vertex neighbors];

  v5 = [neighbors countByEnumeratingWithState:&v31 objects:v37 count:16];
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
    cGPath = [v28 CGPath];
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:&cGPath count:1];

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
        objc_enumerationMutation(neighbors);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      if ([(AXVKExplorationVertexElement *)v9 isCurrent])
      {
        [(AXVKExplorationVertexElement *)v9 getScreenPoint];
        v11 = v10;
        v13 = v12;
        vertex2 = [(VKExplorationAccessibilityElement *)self vertex];
        v15 = AXVKGetWalkingDirectionBetweenVertices(v9, vertex2);

        bezierPath = [MEMORY[0x29EDC7948] bezierPath];
        v17 = v15 * 0.0174532925 + 3.14159265;
        v18 = v17 + -0.261799388;
        v19 = v17 + 0.261799388;
        [bezierPath addArcWithCenter:1 radius:v11 startAngle:v13 endAngle:1000.0 clockwise:{v17 + -0.261799388, v17 + 0.261799388}];
        [bezierPath addArcWithCenter:0 radius:v11 startAngle:v13 endAngle:30.0 clockwise:{v19, v18}];
        [bezierPath closePath];
        v20 = bezierPath;
        cGPath2 = [bezierPath CGPath];
        v21 = [MEMORY[0x29EDB8D80] arrayWithObjects:&cGPath2 count:1];

        v6 = v21;
      }
    }

    v5 = [neighbors countByEnumeratingWithState:&v31 objects:v37 count:16];
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
  vertex = [(VKExplorationAccessibilityElement *)self vertex];
  [vertex getScreenPoint];

  accessibilityContainer = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
  accessibilityLayerHostingView = [accessibilityContainer accessibilityLayerHostingView];

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

- (VKExplorationAccessibilityElement)initWithAccessibilityContainer:(id)container andVertex:(id)vertex
{
  vertexCopy = vertex;
  v11.receiver = self;
  v11.super_class = VKExplorationAccessibilityElement;
  v8 = [(VKExplorationAccessibilityElement *)&v11 initWithAccessibilityContainer:container];
  v9 = v8;
  if (v8)
  {
    v8->_isExplorationElement = 1;
    objc_storeStrong(&v8->_vertex, vertex);
  }

  return v9;
}

- (BOOL)accessibilityActivate
{
  isCurrent = [(VKExplorationAccessibilityElement *)self isCurrent];
  if (!isCurrent)
  {
    accessibilityContainer = [(VKExplorationAccessibilityElement *)self accessibilityContainer];
    accessibilityElementManager = [accessibilityContainer accessibilityElementManager];
    vertex = [(VKExplorationAccessibilityElement *)self vertex];
    [accessibilityElementManager accessibilityMapsExplorationContinueWithVertex:vertex];
  }

  return !isCurrent;
}

@end