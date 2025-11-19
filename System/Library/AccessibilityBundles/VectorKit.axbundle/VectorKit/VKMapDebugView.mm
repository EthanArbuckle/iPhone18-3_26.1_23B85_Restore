@interface VKMapDebugView
- (CGPoint)currentPoint;
- (CGPoint)frontierPoint;
- (VKMapDebugView)initWithFrame:(CGRect)a3;
- (void)_addValidPaths:(id)a3 array:(id)a4;
- (void)addBuildingPaths:(id)a3;
- (void)addIntersectionPoints:(id)a3;
- (void)addPOIPaths:(id)a3;
- (void)addRoadPaths:(id)a3;
- (void)addRoadPoints:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)removeExplorationPointsAndPaths;
- (void)removePointsAndPaths;
- (void)setCurrentExplorationVertex:(id)a3;
- (void)setCurrentPoint:(CGPoint)a3 frontierPoint:(CGPoint)a4;
- (void)setDebugMessage:(id)a3;
@end

@implementation VKMapDebugView

- (void)setDebugMessage:(id)a3
{
  v6 = a3;
  if (self->_debugMessage != v6)
  {
    v4 = [(NSString *)v6 copy];
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

- (void)addBuildingPaths:(id)a3
{
  v5 = a3;
  v4 = [(VKMapDebugView *)self buildingPaths];
  [(VKMapDebugView *)self _addValidPaths:v5 array:v4];
}

- (void)setCurrentPoint:(CGPoint)a3 frontierPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(VKMapDebugView *)self setCurrentPoint:a3.x, a3.y];
  [(VKMapDebugView *)self setFrontierPoint:x, y];

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)addIntersectionPoints:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(VKMapDebugView *)self intersectionPoints];
        [v9 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)addPOIPaths:(id)a3
{
  v5 = a3;
  v4 = [(VKMapDebugView *)self poiPaths];
  [(VKMapDebugView *)self _addValidPaths:v5 array:v4];
}

- (void)addRoadPoints:(id)a3
{
  v5 = a3;
  v4 = [(VKMapDebugView *)self roadPoints];
  [v4 addObjectsFromArray:v5];
}

- (void)addRoadPaths:(id)a3
{
  v5 = a3;
  v4 = [(VKMapDebugView *)self roadPaths];
  [(VKMapDebugView *)self _addValidPaths:v5 array:v4];
}

- (void)setCurrentExplorationVertex:(id)a3
{
  objc_storeStrong(&self->_currentExplorationElement, a3);

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)removePointsAndPaths
{
  v3 = [(VKMapDebugView *)self buildingPaths];
  [v3 removeAllObjects];

  v4 = MEMORY[0x29EDB90B8];
  [(VKMapDebugView *)self setCurrentPoint:*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)];
  [(VKMapDebugView *)self setFrontierPoint:*v4, v4[1]];
  v5 = [(VKMapDebugView *)self poiPaths];
  [v5 removeAllObjects];

  v6 = [(VKMapDebugView *)self roadPaths];
  [v6 removeAllObjects];

  v7 = [(VKMapDebugView *)self roadPoints];
  [v7 removeAllObjects];

  [(VKMapDebugView *)self setDebugMessage:0];

  [(VKMapDebugView *)self setNeedsDisplay];
}

- (void)removeExplorationPointsAndPaths
{
  [(VKMapDebugView *)self setCurrentExplorationElement:0];
  v3 = [(VKMapDebugView *)self intersectionPoints];
  [v3 removeAllObjects];
}

- (void)_addValidPaths:(id)a3 array:(id)a4
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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
              [v7 addObject:{v12, v17}];
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
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC80C0] object:0];

  v4.receiver = self;
  v4.super_class = VKMapDebugView;
  [(VKMapDebugView *)&v4 dealloc];
}

- (VKMapDebugView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = VKMapDebugView;
  v3 = [(VKMapDebugView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v15 = [MEMORY[0x29EDBA068] defaultCenter];
    [v15 addObserver:v3 selector:sel__orientationDidChange_ name:*MEMORY[0x29EDC80C0] object:0];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  v148 = *MEMORY[0x29EDCA608];
  v3 = [(VKMapDebugView *)self currentExplorationElement:a3.origin.x];

  if (v3)
  {
    v4 = [(VKMapDebugView *)self currentExplorationElement];
    [v4 getScreenPoint];
    v6 = v5;
    v8 = v7;

    v109 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:v6 startAngle:v8 endAngle:26.0 clockwise:{0.0, 6.28318531}];
    v9 = [MEMORY[0x29EDC7A00] redColor];
    v10 = [v9 colorWithAlphaComponent:0.5];
    [v10 setStroke];

    [v109 setLineWidth:2.0];
    [v109 stroke];
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v11 = [(VKMapDebugView *)self currentExplorationElement];
    v12 = [v11 edges];

    v13 = [v12 countByEnumeratingWithState:&v135 objects:v147 count:16];
    if (v13)
    {
      v14 = *v136;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v136 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v135 + 1) + 8 * i);
          v17 = [MEMORY[0x29EDC7948] bezierPath];
          v18 = [v16 vertices];
          if ([v18 count] >= 2)
          {
            v19 = [v18 firstObject];
            [v19 getScreenPoint];
            [v17 moveToPoint:?];

            v20 = [v18 objectAtIndex:1];
            [v20 getScreenPoint];
            [v17 addLineToPoint:?];

            v21 = [MEMORY[0x29EDC7A00] redColor];
            v22 = [v21 colorWithAlphaComponent:0.5];
            [v22 setStroke];

            [v17 setLineWidth:2.0];
            [v17 stroke];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v135 objects:v147 count:16];
      }

      while (v13);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v23 = [(VKMapDebugView *)self currentExplorationElement];
    v24 = [v23 neighbors];

    v25 = [v24 countByEnumeratingWithState:&v131 objects:v146 count:16];
    if (v25)
    {
      v26 = *v132;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v132 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v131 + 1) + 8 * j);
          [v28 getScreenPoint];
          v29 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
          if ([v28 isComputed])
          {
            v30 = [MEMORY[0x29EDC7A00] redColor];
            [v30 colorWithAlphaComponent:0.5];
          }

          else
          {
            v30 = [MEMORY[0x29EDC7A00] redColor];
            [v30 colorWithAlphaComponent:0.0];
          }
          v31 = ;
          [v31 setFill];

          [v29 fill];
          v32 = [MEMORY[0x29EDC7A00] redColor];
          v33 = [v32 colorWithAlphaComponent:0.5];
          [v33 setStroke];

          [v29 setLineWidth:2.0];
          [v29 stroke];
        }

        v25 = [v24 countByEnumeratingWithState:&v131 objects:v146 count:16];
      }

      while (v25);
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v34 = [(VKMapDebugView *)self roadPaths];
  v35 = [v34 countByEnumeratingWithState:&v127 objects:v145 count:16];
  if (v35)
  {
    v36 = *v128;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v128 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v127 + 1) + 8 * k);
        if (!CGPathIsEmpty(v38))
        {
          v39 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v38];
          [v39 setLineWidth:1.0];
          v40 = [MEMORY[0x29EDC7A00] blueColor];
          v41 = [v40 colorWithAlphaComponent:0.125];
          [v41 setFill];

          v42 = [MEMORY[0x29EDC7A00] blueColor];
          [v42 setStroke];

          [v39 fill];
          [v39 stroke];
          v43 = [MEMORY[0x29EDC7A00] blueColor];
          v44 = [v43 colorWithAlphaComponent:0.800000012];
          [v44 setStroke];

          [v39 stroke];
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v127 objects:v145 count:16];
    }

    while (v35);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v45 = [(VKMapDebugView *)self poiPaths];
  v46 = [v45 countByEnumeratingWithState:&v123 objects:v144 count:16];
  if (v46)
  {
    v47 = *v124;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v124 != v47)
        {
          objc_enumerationMutation(v45);
        }

        v49 = *(*(&v123 + 1) + 8 * m);
        if (!CGPathIsEmpty(v49))
        {
          v50 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v49];
          [v50 setLineWidth:1.0];
          v51 = [MEMORY[0x29EDC7A00] greenColor];
          v52 = [v51 colorWithAlphaComponent:0.125];
          [v52 setFill];

          v53 = [MEMORY[0x29EDC7A00] greenColor];
          [v53 setStroke];

          [v50 fill];
          [v50 stroke];
          v54 = [MEMORY[0x29EDC7A00] greenColor];
          v55 = [v54 colorWithAlphaComponent:0.800000012];
          [v55 setStroke];

          [v50 stroke];
        }
      }

      v46 = [v45 countByEnumeratingWithState:&v123 objects:v144 count:16];
    }

    while (v46);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v56 = [(VKMapDebugView *)self intersectionPoints];
  v57 = [v56 countByEnumeratingWithState:&v119 objects:v143 count:16];
  if (v57)
  {
    v58 = *v120;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v120 != v58)
        {
          objc_enumerationMutation(v56);
        }

        [*(*(&v119 + 1) + 8 * n) CGPointValue];
        v62 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v60 + -6.0 cornerRadius:{v61 + -6.0, 12.0, 12.0, 3.0}];
        [v62 setLineWidth:2.0];
        v63 = [MEMORY[0x29EDC7A00] redColor];
        v64 = [v63 colorWithAlphaComponent:0.125];
        [v64 setFill];

        v65 = [MEMORY[0x29EDC7A00] redColor];
        [v65 setStroke];

        [v62 fill];
        [v62 stroke];
      }

      v57 = [v56 countByEnumeratingWithState:&v119 objects:v143 count:16];
    }

    while (v57);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v66 = [(VKMapDebugView *)self roadPoints];
  v67 = [v66 countByEnumeratingWithState:&v115 objects:v142 count:16];
  if (v67)
  {
    v68 = *v116;
    do
    {
      for (ii = 0; ii != v67; ++ii)
      {
        if (*v116 != v68)
        {
          objc_enumerationMutation(v66);
        }

        [*(*(&v115 + 1) + 8 * ii) CGPointValue];
        v72 = [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:v70 + -2.0 cornerRadius:{v71 + -2.0, 4.0, 4.0, 3.0}];
        [v72 setLineWidth:1.0];
        v73 = [MEMORY[0x29EDC7A00] blueColor];
        v74 = [v73 colorWithAlphaComponent:0.875];
        [v74 setFill];

        v75 = [MEMORY[0x29EDC7A00] blueColor];
        [v75 setStroke];

        [v72 fill];
        [v72 stroke];
      }

      v67 = [v66 countByEnumeratingWithState:&v115 objects:v142 count:16];
    }

    while (v67);
  }

  [(VKMapDebugView *)self frontierPoint];
  v77 = MEMORY[0x29EDB90B8];
  if (v78 != *MEMORY[0x29EDB90B8] || v76 != *(MEMORY[0x29EDB90B8] + 8))
  {
    v79 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
    [v79 setLineWidth:2.0];
    v80 = [MEMORY[0x29EDC7A00] orangeColor];
    v81 = [v80 colorWithAlphaComponent:0.125];
    [v81 setFill];

    v82 = [MEMORY[0x29EDC7A00] orangeColor];
    [v82 setStroke];

    [v79 fill];
    [v79 stroke];
  }

  [(VKMapDebugView *)self currentPoint];
  if (v84 != *v77 || v83 != v77[1])
  {
    v85 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
    [v85 setLineWidth:2.0];
    v86 = [MEMORY[0x29EDC7A00] orangeColor];
    v87 = [v86 colorWithAlphaComponent:0.125];
    [v87 setFill];

    v88 = [MEMORY[0x29EDC7A00] orangeColor];
    [v88 setStroke];

    [v85 fill];
    [v85 stroke];
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v89 = [(VKMapDebugView *)self buildingPaths];
  v90 = [v89 countByEnumeratingWithState:&v111 objects:v141 count:16];
  if (v90)
  {
    v91 = *v112;
    do
    {
      for (jj = 0; jj != v90; ++jj)
      {
        if (*v112 != v91)
        {
          objc_enumerationMutation(v89);
        }

        v93 = *(*(&v111 + 1) + 8 * jj);
        if (!CGPathIsEmpty(v93))
        {
          v94 = [MEMORY[0x29EDC7948] bezierPathWithCGPath:v93];
          [v94 setLineWidth:1.0];
          v95 = [MEMORY[0x29EDC7A00] purpleColor];
          v96 = [v95 colorWithAlphaComponent:0.125];
          [v96 setFill];

          v97 = [MEMORY[0x29EDC7A00] purpleColor];
          [v97 setStroke];

          [v94 fill];
          [v94 stroke];
        }
      }

      v90 = [v89 countByEnumeratingWithState:&v111 objects:v141 count:16];
    }

    while (v90);
  }

  v98 = [(VKMapDebugView *)self debugMessage];
  [(VKMapDebugView *)self bounds];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v139 = *MEMORY[0x29EDC7638];
  v107 = [MEMORY[0x29EDC76B0] boldSystemFontOfSize:24.0];
  v140 = v107;
  v108 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
  [v98 drawInRect:v108 withAttributes:{v100, v102, v104, v106}];
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