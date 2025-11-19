@interface CKForceLayoutAnimator
- (CKForceLayoutAnimator)initWithReferenceView:(id)a3;
- (UIColor)lineColor;
- (void)addNode:(id)a3;
- (void)fixNode:(id)a3 atPosition:(CGPoint)a4;
- (void)linkNode:(id)a3 toNode:(id)a4;
- (void)removeAllNodes;
- (void)removeNode:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setLineColor:(id)a3;
- (void)start;
- (void)stop;
- (void)tick;
- (void)unlinkNode:(id)a3 fromNode:(id)a4;
@end

@implementation CKForceLayoutAnimator

- (void)tick
{
  v3 = self->_alpha * 0.99000001;
  self->_alpha = v3;
  if (v3 >= 0.00499999989)
  {
    links = self->_links;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __29__CKForceLayoutAnimator_tick__block_invoke;
    v33[3] = &unk_278C363A0;
    v33[4] = self;
    [(NSMutableSet *)links enumerateObjectsUsingBlock:v33];
    v6 = self->_alpha * self->_gravity;
    if (v6 != 0.0)
    {
      [(UIView *)self->_referenceView bounds];
      MidX = CGRectGetMidX(v35);
      [(UIView *)self->_referenceView bounds];
      MidY = CGRectGetMidY(v36);
      nodes = self->_nodes;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __29__CKForceLayoutAnimator_tick__block_invoke_2;
      v32[3] = &__block_descriptor_56_e20_v24__0__UIView_8_B16l;
      *&v32[4] = MidX;
      *&v32[5] = MidY;
      *&v32[6] = v6;
      [(NSMutableSet *)nodes enumerateObjectsUsingBlock:v32];
    }

    v10 = [CKQuadTree alloc];
    v11 = [(NSMutableSet *)self->_nodes allObjects];
    v12 = [v11 valueForKey:@"center"];
    v13 = [(CKQuadTree *)v10 initWithPoints:v12];

    v26 = 0;
    v27 = &v26;
    v28 = 0x3042000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __29__CKForceLayoutAnimator_tick__block_invoke_47;
    v25[3] = &unk_278C36410;
    v25[4] = self;
    v25[5] = &v26;
    v14 = [v25 copy];
    objc_storeWeak(v27 + 5, v14);
    v15 = [(CKQuadTree *)v13 rootNode];
    (v14)[2](v14, v15);

    v16 = self->_nodes;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __29__CKForceLayoutAnimator_tick__block_invoke_2_49;
    v23[3] = &unk_278C36460;
    v23[4] = self;
    v17 = v13;
    v24 = v17;
    [(NSMutableSet *)v16 enumerateObjectsUsingBlock:v23];
    v18 = self->_nodes;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __29__CKForceLayoutAnimator_tick__block_invoke_4;
    v22[3] = &unk_278C363C8;
    v22[4] = self;
    [(NSMutableSet *)v18 enumerateObjectsUsingBlock:v22];
    Mutable = CGPathCreateMutable();
    v20 = self->_links;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__CKForceLayoutAnimator_tick__block_invoke_5;
    v21[3] = &__block_descriptor_40_e19_v24__0__NSSet_8_B16l;
    v21[4] = Mutable;
    [(NSMutableSet *)v20 enumerateObjectsUsingBlock:v21];
    [(CAShapeLayer *)self->_linesLayer setPath:Mutable];
    CGPathRelease(Mutable);

    _Block_object_dispose(&v26, 8);
    objc_destroyWeak(&v31);
  }

  else
  {
    self->_alpha = 0.0;
    displayLink = self->_displayLink;

    [(CADisplayLink *)displayLink setPaused:1];
  }
}

void __29__CKForceLayoutAnimator_tick__block_invoke(uint64_t a1, void *a2)
{
  v31 = [a2 allObjects];
  v3 = [v31 firstObject];
  v4 = [v31 lastObject];
  [v4 center];
  v6 = v5;
  [v3 center];
  v8 = v6 - v7;
  [v4 center];
  v10 = v9;
  [v3 center];
  v12 = v10 - v11;
  v13 = sqrt(v12 * v12 + v8 * v8);
  if (v13 != 0.0)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 128) * *(v14 + 80) * (v13 - *(v14 + 72)) / v13;
    v16 = v8 * v15;
    v17 = v12 * v15;
    v18 = [*(v14 + 32) objectForKey:v4];
    [v18 doubleValue];
    v20 = v19;

    v21 = [*(*(a1 + 32) + 32) objectForKey:v3];
    [v21 doubleValue];
    v23 = v22;

    v24 = v23 / (v20 + v23);
    [v4 center];
    v26 = v25 - v16 * v24;
    [v4 center];
    [v4 setCenter:{v26, v27 - v17 * v24}];
    [v3 center];
    v29 = v28 + v16 * (1.0 - v24);
    [v3 center];
    [v3 setCenter:{v29, v30 + v17 * (1.0 - v24)}];
  }
}

void __29__CKForceLayoutAnimator_tick__block_invoke_2(double *a1, void *a2)
{
  v12 = a2;
  [v12 center];
  v4 = v3;
  v5 = a1[4];
  [v12 center];
  v7 = v4 + (v5 - v6) * a1[6];
  [v12 center];
  v9 = v8;
  v10 = a1[5];
  [v12 center];
  [v12 setCenter:{v7, v9 + (v10 - v11) * a1[6]}];
}

void __29__CKForceLayoutAnimator_tick__block_invoke_47(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = a2;
  v3 = [v31 nodes];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
        WeakRetained[2](WeakRetained, v11);

        v13 = [v11 objectForKey:@"charge"];
        [v13 doubleValue];
        v15 = v14;

        v9 = v9 + v15;
        v16 = [v11 objectForKey:@"chargeX"];
        [v16 doubleValue];
        v8 = v8 + v15 * v17;

        v18 = [v11 objectForKey:@"chargeY"];
        [v18 doubleValue];
        v7 = v7 + v15 * v19;
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v20 = [v31 point];

  if (v20)
  {
    v21 = [v31 point];
    [v21 CGPointValue];
    v23 = v22;
    v25 = v24;

    v26 = *(*(a1 + 32) + 128) * *(*(a1 + 32) + 96);
    v9 = v9 + v26;
    v8 = v8 + v26 * v23;
    v7 = v7 + v26 * v25;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [v31 setObject:v27 forKey:@"charge"];

  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v8 / v9];
  [v31 setObject:v28 forKey:@"chargeX"];

  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v9];
  [v31 setObject:v29 forKey:@"chargeY"];

  v30 = *MEMORY[0x277D85DE8];
}

void __29__CKForceLayoutAnimator_tick__block_invoke_2_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 48) objectForKey:v3];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__CKForceLayoutAnimator_tick__block_invoke_3;
    v9[3] = &unk_278C36438;
    v7 = v3;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    [v6 visit:v9];
  }
}

void __29__CKForceLayoutAnimator_tick__block_invoke_4(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(*(a1 + 32) + 40) objectForKey:v17];
  [v3 CGPointValue];
  v5 = v4;
  v7 = v6;

  [v17 center];
  v9 = v8;
  v11 = v10;
  v12 = [*(*(a1 + 32) + 48) objectForKey:v17];
  v13 = [v12 BOOLValue];

  if ((v13 & 1) == 0)
  {
    v14 = *(*(a1 + 32) + 88);
    v5 = v9 - (v5 - v9) * v14;
    v7 = v11 - (v7 - v11) * v14;
  }

  [v17 setCenter:{v5, v7}];
  v15 = *(*(a1 + 32) + 40);
  v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v5, v7}];
  [v15 setObject:v16 forKey:v17];
}

void __29__CKForceLayoutAnimator_tick__block_invoke_5(uint64_t a1, void *a2)
{
  v13 = [a2 allObjects];
  v3 = [v13 firstObject];
  v4 = [v13 lastObject];
  v5 = *(a1 + 32);
  [v3 center];
  v7 = v6;
  [v3 center];
  CGPathMoveToPoint(v5, 0, v7, v8);
  v9 = *(a1 + 32);
  [v4 center];
  v11 = v10;
  [v4 center];
  CGPathAddLineToPoint(v9, 0, v11, v12);
}

BOOL __29__CKForceLayoutAnimator_tick__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"charge"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKey:@"chargeX"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 objectForKey:@"chargeY"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 point];
  if (v13)
  {
    v14 = v13;
    [*(a1 + 32) center];
    v16 = v15;
    v18 = v17;
    v19 = [v3 point];
    [v19 CGPointValue];
    v21 = v20;
    v23 = v22;

    if (v16 == v21 && v18 == v23)
    {
      goto LABEL_12;
    }
  }

  [*(a1 + 32) center];
  v25 = v9 - v24;
  [*(a1 + 32) center];
  v27 = v12 - v26;
  [v3 bounds];
  Width = CGRectGetWidth(v52);
  v29 = *(a1 + 40);
  v30 = *(v29 + 104) * *(v29 + 104);
  v31 = v27 * v27 + v25 * v25;
  if (Width * Width / (*(v29 + 112) * *(v29 + 112)) >= v31)
  {
    v32 = [v3 point];
    v33 = v32;
    if (v31 != 0.0 && v32 != 0)
    {

      if (v31 >= v30)
      {
LABEL_12:
        v43 = v6 == 0.0;
        goto LABEL_16;
      }

      v35 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 32)];
      [v35 CGPointValue];
      v37 = v36;
      v39 = v38;

      v40 = *(a1 + 40);
      v41 = *(v40 + 128) * *(v40 + 96) / v31;
      v42 = *(v40 + 40);
      v33 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v37 - v25 * v41, v39 - v27 * v41}];
      [v42 setObject:v33 forKey:*(a1 + 32)];
    }

    goto LABEL_12;
  }

  if (v31 < v30)
  {
    v44 = [*(v29 + 40) objectForKey:*(a1 + 32)];
    [v44 CGPointValue];
    v46 = v45;
    v48 = v47;

    v49 = *(*(a1 + 40) + 40);
    v50 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v46 - v25 * (v6 / v31), v48 - v27 * (v6 / v31)}];
    [v49 setObject:v50 forKey:*(a1 + 32)];
  }

  v43 = 1;
LABEL_16:

  return v43;
}

- (void)stop
{
  self->_alpha = 0.0;
  [(CAShapeLayer *)self->_linesLayer removeFromSuperlayer];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)start
{
  [(NSMapTable *)self->_weights removeAllObjects];
  links = self->_links;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__CKForceLayoutAnimator_start__block_invoke;
  v11[3] = &unk_278C363A0;
  v11[4] = self;
  [(NSMutableSet *)links enumerateObjectsUsingBlock:v11];
  [(NSMapTable *)self->_previousCenters removeAllObjects];
  nodes = self->_nodes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__CKForceLayoutAnimator_start__block_invoke_2;
  v10[3] = &unk_278C363C8;
  v10[4] = self;
  [(NSMutableSet *)nodes enumerateObjectsUsingBlock:v10];
  self->_alpha = fmax(self->_alpha, 0.100000001);
  v5 = [(UIView *)self->_referenceView layer];
  [v5 insertSublayer:self->_linesLayer atIndex:0];

  displayLink = self->_displayLink;
  if (!displayLink)
  {
    v7 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_tick];
    v8 = self->_displayLink;
    self->_displayLink = v7;

    displayLink = self->_displayLink;
  }

  v9 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(CADisplayLink *)displayLink addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];
}

void __30__CKForceLayoutAnimator_start__block_invoke(uint64_t a1, void *a2)
{
  v13 = [a2 allObjects];
  v3 = [v13 firstObject];
  v4 = [v13 lastObject];
  v5 = *(*(a1 + 32) + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = [v5 objectForKey:v3];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [v5 setObject:v8 forKey:v3];

  v9 = *(*(a1 + 32) + 32);
  v10 = MEMORY[0x277CCABB0];
  v11 = [v9 objectForKey:v4];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "integerValue") + 1}];
  [v9 setObject:v12 forKey:v4];
}

void __30__CKForceLayoutAnimator_start__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = MEMORY[0x277CCAE60];
  v4 = a2;
  [v4 center];
  v5 = [v3 valueWithCGPoint:?];
  [v2 setObject:v5 forKey:v4];
}

- (void)setAlpha:(double)a3
{
  if (self->_alpha == 0.0)
  {
    if (a3 > 0.0)
    {
      self->_alpha = a3;
      [(CADisplayLink *)self->_displayLink setPaused:0];
    }
  }

  else
  {
    self->_alpha = fmax(a3, 0.0);
  }
}

- (void)fixNode:(id)a3 atPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  fixedNodes = self->_fixedNodes;
  v8 = a3;
  [(NSMapTable *)fixedNodes setObject:MEMORY[0x277CBEC38] forKey:v8];
  previousCenters = self->_previousCenters;
  v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  [(NSMapTable *)previousCenters setObject:v10 forKey:v8];
}

- (void)unlinkNode:(id)a3 fromNode:(id)a4
{
  links = self->_links;
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{a3, a4, 0}];
  [(NSMutableSet *)links removeObject:v5];
}

- (void)linkNode:(id)a3 toNode:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CKForceLayoutAnimator.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"firstNode"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"CKForceLayoutAnimator.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"secondNode"}];

LABEL_3:
  links = self->_links;
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{v12, v7, 0}];
  [(NSMutableSet *)links addObject:v9];
}

- (void)removeAllNodes
{
  [(NSMutableSet *)self->_links removeAllObjects];
  nodes = self->_nodes;

  [(NSMutableSet *)nodes removeAllObjects];
}

- (void)removeNode:(id)a3
{
  v4 = a3;
  links = self->_links;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__CKForceLayoutAnimator_removeNode___block_invoke;
  v8[3] = &unk_278C36378;
  v9 = v4;
  v6 = v4;
  v7 = [(NSMutableSet *)links objectsPassingTest:v8];
  [(NSMutableSet *)links minusSet:v7];

  [(NSMutableSet *)self->_nodes removeObject:v6];
}

- (void)addNode:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CKForceLayoutAnimator.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"node"}];

    v5 = 0;
  }

  v6 = [v5 superview];
  v7 = [v6 isEqual:self->_referenceView];

  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CKForceLayoutAnimator.m" lineNumber:81 description:@"Nodes must be direct children of the reference view"];
  }

  [(NSMutableSet *)self->_nodes addObject:v10];
}

- (UIColor)lineColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(CAShapeLayer *)self->_linesLayer strokeColor];

  return [v2 colorWithCGColor:v3];
}

- (void)setLineColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  linesLayer = self->_linesLayer;

  [(CAShapeLayer *)linesLayer setStrokeColor:v6];
}

- (CKForceLayoutAnimator)initWithReferenceView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"CKForceLayoutAnimator.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"referenceView"}];
  }

  v28.receiver = self;
  v28.super_class = CKForceLayoutAnimator;
  v7 = [(CKForceLayoutAnimator *)&v28 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_referenceView, a3);
    v9 = [MEMORY[0x277CBEB58] set];
    nodes = v8->_nodes;
    v8->_nodes = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    links = v8->_links;
    v8->_links = v11;

    v13 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    weights = v8->_weights;
    v8->_weights = v13;

    v15 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    previousCenters = v8->_previousCenters;
    v8->_previousCenters = v15;

    v17 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    fixedNodes = v8->_fixedNodes;
    v8->_fixedNodes = v17;

    *&v8->_linkDistance = xmmword_23E3B2B90;
    *&v8->_friction = xmmword_23E3B2BA0;
    *&v8->_chargeDistance = xmmword_23E3B2BB0;
    v8->_gravity = 0.100000001;
    v19 = [MEMORY[0x277CD9F90] layer];
    linesLayer = v8->_linesLayer;
    v8->_linesLayer = v19;

    v21 = [MEMORY[0x277D75348] systemBlueColor];
    v22 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
    v23 = [v21 resolvedColorWithTraitCollection:v22];
    v24 = [v23 colorWithAlphaComponent:0.4];
    -[CAShapeLayer setStrokeColor:](v8->_linesLayer, "setStrokeColor:", [v24 CGColor]);

    v25 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v8->_linesLayer, "setFillColor:", [v25 CGColor]);
  }

  return v8;
}

@end