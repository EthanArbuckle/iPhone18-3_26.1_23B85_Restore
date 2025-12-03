@interface VKMapDebugView
- (CGPoint)currentPoint;
- (CGPoint)frontierPoint;
- (VKMapDebugView)initWithFrame:(CGRect)frame;
- (void)_addValidPaths:(id)paths array:(id)array;
- (void)addBuildingPaths:(id)paths;
- (void)addIntersectionPoints:(id)points;
- (void)addPOIPaths:(id)paths;
- (void)addRoadPaths:(id)paths;
- (void)addRoadPoints:(id)points;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)removeExplorationPointsAndPaths;
- (void)removePointsAndPaths;
- (void)setCurrentExplorationVertex:(id)vertex;
- (void)setCurrentPoint:(CGPoint)point frontierPoint:(CGPoint)frontierPoint;
- (void)setDebugMessage:(id)message;
@end

@implementation VKMapDebugView

- (void)setDebugMessage:(id)message
{
  messageCopy = message;
  if (self->_debugMessage != messageCopy)
  {
    v4 = [(NSString *)messageCopy copy];
    debugMessage = self->_debugMessage;
    self->_debugMessage = v4;

    [(VKMapDebugView *)self setNeedsDisplay];
  }
}

uint64_t __40__VKMapDebugView__orientationDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC7C40] mainScreen];
  [v2 bounds];
  [*(a1 + 32) setFrame:?];

  v3 = *(a1 + 32);

  return [v3 setNeedsDisplay];
}

- (void)addBuildingPaths:(id)paths
{
  pathsCopy = paths;
  buildingPaths = [(VKMapDebugView *)self buildingPaths];
  [(VKMapDebugView *)self _addValidPaths:pathsCopy array:buildingPaths];
}

- (void)setCurrentPoint:(CGPoint)point frontierPoint:(CGPoint)frontierPoint
{
  y = frontierPoint.y;
  x = frontierPoint.x;
  [(VKMapDebugView *)self setCurrentPoint:point.x, point.y];
  [(VKMapDebugView *)self setFrontierPoint:x, y];

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)addIntersectionPoints:(id)points
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  pointsCopy = points;
  v5 = [pointsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(pointsCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        intersectionPoints = [(VKMapDebugView *)self intersectionPoints];
        [intersectionPoints addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [pointsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)addPOIPaths:(id)paths
{
  pathsCopy = paths;
  poiPaths = [(VKMapDebugView *)self poiPaths];
  [(VKMapDebugView *)self _addValidPaths:pathsCopy array:poiPaths];
}

- (void)addRoadPoints:(id)points
{
  pointsCopy = points;
  roadPoints = [(VKMapDebugView *)self roadPoints];
  [roadPoints addObjectsFromArray:pointsCopy];
}

- (void)addRoadPaths:(id)paths
{
  pathsCopy = paths;
  roadPaths = [(VKMapDebugView *)self roadPaths];
  [(VKMapDebugView *)self _addValidPaths:pathsCopy array:roadPaths];
}

- (void)setCurrentExplorationVertex:(id)vertex
{
  objc_storeStrong(&self->_currentExplorationElement, vertex);

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)removePointsAndPaths
{
  buildingPaths = [(VKMapDebugView *)self buildingPaths];
  [buildingPaths removeAllObjects];

  v4 = MEMORY[0x29EDB90B8];
  [(VKMapDebugView *)self setCurrentPoint:*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)];
  [(VKMapDebugView *)self setFrontierPoint:*v4, v4[1]];
  poiPaths = [(VKMapDebugView *)self poiPaths];
  [poiPaths removeAllObjects];

  roadPaths = [(VKMapDebugView *)self roadPaths];
  [roadPaths removeAllObjects];

  roadPoints = [(VKMapDebugView *)self roadPoints];
  [roadPoints removeAllObjects];

  [(VKMapDebugView *)self setDebugMessage:0];

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)removeExplorationPointsAndPaths
{
  [(VKMapDebugView *)self setCurrentExplorationElement:0];
  intersectionPoints = [(VKMapDebugView *)self intersectionPoints];
  [intersectionPoints removeAllObjects];
}

- (void)_addValidPaths:(id)paths array:(id)array
{
  v22 = *MEMORY[0x29EDCA608];
  pathsCopy = paths;
  arrayCopy = array;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = pathsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        BoundingBox = CGPathGetBoundingBox(v12);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
        if (!CGRectIsEmpty(BoundingBox))
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          if (!CGRectIsInfinite(v24))
          {
            v25.origin.x = x;
            v25.origin.y = y;
            v25.size.width = width;
            v25.size.height = height;
            if (!CGRectIsNull(v25))
            {
              [arrayCopy addObject:{v12, v17}];
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC80C0] object:0];

  v4.receiver = self;
  v4.super_class = VKMapDebugView;
  [(VKMapDebugView *)&v4 dealloc];
}

- (VKMapDebugView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = VKMapDebugView;
  v3 = [(VKMapDebugView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    buildingPaths = v3->_buildingPaths;
    v3->_buildingPaths = v4;

    v6 = MEMORY[0x29EDB90B8];
    v3->_currentPoint = *MEMORY[0x29EDB90B8];
    v3->_frontierPoint = *v6;
    v7 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    intersectionPoints = v3->_intersectionPoints;
    v3->_intersectionPoints = v7;

    v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    poiPaths = v3->_poiPaths;
    v3->_poiPaths = v9;

    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    roadPaths = v3->_roadPaths;
    v3->_roadPaths = v11;

    v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    roadPoints = v3->_roadPoints;
    v3->_roadPoints = v13;

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__orientationDidChange_ name:*MEMORY[0x29EDC80C0] object:0];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  v148 = *MEMORY[0x29EDCA608];
  v3 = [(VKMapDebugView *)self currentExplorationElement:rect.origin.x];

  if (v3)
  {
    currentExplorationElement = [(VKMapDebugView *)self currentExplorationElement];
    [currentExplorationElement getScreenPoint];
    v6 = v5;
    v8 = v7;

    v109 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:v6 startAngle:v8 endAngle:26.0 clockwise:{0.0, 6.28318531}];
    redColor = [MEMORY[0x29EDC7A00] redColor];
    v10 = [redColor colorWithAlphaComponent:0.5];
    [v10 setStroke];

    [v109 setLineWidth:2.0];
    [v109 stroke];
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    currentExplorationElement2 = [(VKMapDebugView *)self currentExplorationElement];
    edges = [currentExplorationElement2 edges];

    v13 = [edges countByEnumeratingWithState:&v135 objects:v147 count:16];
    if (v13)
    {
      v14 = *v136;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v136 != v14)
          {
            objc_enumerationMutation(edges);
          }

          v16 = *(*(&v135 + 1) + 8 * i);
          bezierPath = [MEMORY[0x29EDC7948] bezierPath];
          vertices = [v16 vertices];
          if ([vertices count] >= 2)
          {
            firstObject = [vertices firstObject];
            [firstObject getScreenPoint];
            [bezierPath moveToPoint:?];

            v20 = [vertices objectAtIndex:1];
            [v20 getScreenPoint];
            [bezierPath addLineToPoint:?];

            redColor2 = [MEMORY[0x29EDC7A00] redColor];
            v22 = [redColor2 colorWithAlphaComponent:0.5];
            [v22 setStroke];

            [bezierPath setLineWidth:2.0];
            [bezierPath stroke];
          }
        }

        v13 = [edges countByEnumeratingWithState:&v135 objects:v147 count:16];
      }

      while (v13);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    currentExplorationElement3 = [(VKMapDebugView *)self currentExplorationElement];
    neighbors = [currentExplorationElement3 neighbors];

    v25 = [neighbors countByEnumeratingWithState:&v131 objects:v146 count:16];
    if (v25)
    {
      v26 = *v132;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v132 != v26)
          {
            objc_enumerationMutation(neighbors);
          }

          v28 = *(*(&v131 + 1) + 8 * j);
          [v28 getScreenPoint];
          v29 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
          if ([v28 isComputed])
          {
            redColor3 = [MEMORY[0x29EDC7A00] redColor];
            [redColor3 colorWithAlphaComponent:0.5];
          }

          else
          {
            redColor3 = [MEMORY[0x29EDC7A00] redColor];
            [redColor3 colorWithAlphaComponent:0.0];
          }
          v31 = ;
          [v31 setFill];

          [v29 fill];
          redColor4 = [MEMORY[0x29EDC7A00] redColor];
          v33 = [redColor4 colorWithAlphaComponent:0.5];
          [v33 setStroke];

          [v29 setLineWidth:2.0];
          [v29 stroke];
        }

        v25 = [neighbors countByEnumeratingWithState:&v131 objects:v146 count:16];
      }

      while (v25);
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  roadPaths = [(VKMapDebugView *)self roadPaths];
  v35 = [roadPaths countByEnumeratingWithState:&v127 objects:v145 count:16];
  if (v35)
  {
    v36 = *v128;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v128 != v36)
        {
          objc_enumerationMutation(roadPaths);
        }

        v38 = *(*(&v127 + 1) + 8 * k);
        if (!CGPathIsEmpty(v38))
        {
          v39 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v38];
          [v39 setLineWidth:1.0];
          blueColor = [MEMORY[0x29EDC7A00] blueColor];
          v41 = [blueColor colorWithAlphaComponent:0.125];
          [v41 setFill];

          blueColor2 = [MEMORY[0x29EDC7A00] blueColor];
          [blueColor2 setStroke];

          [v39 fill];
          [v39 stroke];
          blueColor3 = [MEMORY[0x29EDC7A00] blueColor];
          v44 = [blueColor3 colorWithAlphaComponent:0.800000012];
          [v44 setStroke];

          [v39 stroke];
        }
      }

      v35 = [roadPaths countByEnumeratingWithState:&v127 objects:v145 count:16];
    }

    while (v35);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  poiPaths = [(VKMapDebugView *)self poiPaths];
  v46 = [poiPaths countByEnumeratingWithState:&v123 objects:v144 count:16];
  if (v46)
  {
    v47 = *v124;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v124 != v47)
        {
          objc_enumerationMutation(poiPaths);
        }

        v49 = *(*(&v123 + 1) + 8 * m);
        if (!CGPathIsEmpty(v49))
        {
          v50 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v49];
          [v50 setLineWidth:1.0];
          greenColor = [MEMORY[0x29EDC7A00] greenColor];
          v52 = [greenColor colorWithAlphaComponent:0.125];
          [v52 setFill];

          greenColor2 = [MEMORY[0x29EDC7A00] greenColor];
          [greenColor2 setStroke];

          [v50 fill];
          [v50 stroke];
          greenColor3 = [MEMORY[0x29EDC7A00] greenColor];
          v55 = [greenColor3 colorWithAlphaComponent:0.800000012];
          [v55 setStroke];

          [v50 stroke];
        }
      }

      v46 = [poiPaths countByEnumeratingWithState:&v123 objects:v144 count:16];
    }

    while (v46);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  intersectionPoints = [(VKMapDebugView *)self intersectionPoints];
  v57 = [intersectionPoints countByEnumeratingWithState:&v119 objects:v143 count:16];
  if (v57)
  {
    v58 = *v120;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v120 != v58)
        {
          objc_enumerationMutation(intersectionPoints);
        }

        [*(*(&v119 + 1) + 8 * n) CGPointValue];
        v62 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v60 + -6.0 cornerRadius:{v61 + -6.0, 12.0, 12.0, 3.0}];
        [v62 setLineWidth:2.0];
        redColor5 = [MEMORY[0x29EDC7A00] redColor];
        v64 = [redColor5 colorWithAlphaComponent:0.125];
        [v64 setFill];

        redColor6 = [MEMORY[0x29EDC7A00] redColor];
        [redColor6 setStroke];

        [v62 fill];
        [v62 stroke];
      }

      v57 = [intersectionPoints countByEnumeratingWithState:&v119 objects:v143 count:16];
    }

    while (v57);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  roadPoints = [(VKMapDebugView *)self roadPoints];
  v67 = [roadPoints countByEnumeratingWithState:&v115 objects:v142 count:16];
  if (v67)
  {
    v68 = *v116;
    do
    {
      for (ii = 0; ii != v67; ++ii)
      {
        if (*v116 != v68)
        {
          objc_enumerationMutation(roadPoints);
        }

        [*(*(&v115 + 1) + 8 * ii) CGPointValue];
        v72 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v70 + -2.0 cornerRadius:{v71 + -2.0, 4.0, 4.0, 3.0}];
        [v72 setLineWidth:1.0];
        blueColor4 = [MEMORY[0x29EDC7A00] blueColor];
        v74 = [blueColor4 colorWithAlphaComponent:0.875];
        [v74 setFill];

        blueColor5 = [MEMORY[0x29EDC7A00] blueColor];
        [blueColor5 setStroke];

        [v72 fill];
        [v72 stroke];
      }

      v67 = [roadPoints countByEnumeratingWithState:&v115 objects:v142 count:16];
    }

    while (v67);
  }

  [(VKMapDebugView *)self frontierPoint];
  v77 = MEMORY[0x29EDB90B8];
  if (v78 != *MEMORY[0x29EDB90B8] || v76 != *(MEMORY[0x29EDB90B8] + 8))
  {
    v79 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
    [v79 setLineWidth:2.0];
    orangeColor = [MEMORY[0x29EDC7A00] orangeColor];
    v81 = [orangeColor colorWithAlphaComponent:0.125];
    [v81 setFill];

    orangeColor2 = [MEMORY[0x29EDC7A00] orangeColor];
    [orangeColor2 setStroke];

    [v79 fill];
    [v79 stroke];
  }

  [(VKMapDebugView *)self currentPoint];
  if (v84 != *v77 || v83 != v77[1])
  {
    v85 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
    [v85 setLineWidth:2.0];
    orangeColor3 = [MEMORY[0x29EDC7A00] orangeColor];
    v87 = [orangeColor3 colorWithAlphaComponent:0.125];
    [v87 setFill];

    orangeColor4 = [MEMORY[0x29EDC7A00] orangeColor];
    [orangeColor4 setStroke];

    [v85 fill];
    [v85 stroke];
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  buildingPaths = [(VKMapDebugView *)self buildingPaths];
  v90 = [buildingPaths countByEnumeratingWithState:&v111 objects:v141 count:16];
  if (v90)
  {
    v91 = *v112;
    do
    {
      for (jj = 0; jj != v90; ++jj)
      {
        if (*v112 != v91)
        {
          objc_enumerationMutation(buildingPaths);
        }

        v93 = *(*(&v111 + 1) + 8 * jj);
        if (!CGPathIsEmpty(v93))
        {
          v94 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v93];
          [v94 setLineWidth:1.0];
          purpleColor = [MEMORY[0x29EDC7A00] purpleColor];
          v96 = [purpleColor colorWithAlphaComponent:0.125];
          [v96 setFill];

          purpleColor2 = [MEMORY[0x29EDC7A00] purpleColor];
          [purpleColor2 setStroke];

          [v94 fill];
          [v94 stroke];
        }
      }

      v90 = [buildingPaths countByEnumeratingWithState:&v111 objects:v141 count:16];
    }

    while (v90);
  }

  debugMessage = [(VKMapDebugView *)self debugMessage];
  [(VKMapDebugView *)self bounds];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v139 = *MEMORY[0x29EDC7638];
  v107 = [MEMORY[0x29EDC76B0] boldSystemFontOfSize:24.0];
  v140 = v107;
  v108 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
  [debugMessage drawInRect:v108 withAttributes:{v100, v102, v104, v106}];
}

- (CGPoint)currentPoint
{
  x = self->_currentPoint.x;
  y = self->_currentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)frontierPoint
{
  x = self->_frontierPoint.x;
  y = self->_frontierPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end