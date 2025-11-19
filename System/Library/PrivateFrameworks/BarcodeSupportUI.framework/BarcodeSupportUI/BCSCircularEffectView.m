@interface BCSCircularEffectView
- (BCSCircularEffectView)initWithFrame:(CGRect)a3;
- (void)_buildRings;
- (void)animateCenterGlyphAndRings;
- (void)animateRingsRotationWithCompletion:(id)a3;
- (void)animationDidStart:(id)a3;
- (void)prepareCenterGlyphWithImage:(id)a3;
- (void)revealCenterGlyphAndRings;
@end

@implementation BCSCircularEffectView

- (BCSCircularEffectView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BCSCircularEffectView;
  v3 = [(BCSCircularEffectView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BCSCircularEffectView *)v3 _buildRings];
    v5 = v4;
  }

  return v4;
}

- (void)_buildRings
{
  v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277CBEB18] array];
  circles = self->_circles;
  self->_circles = v3;

  [(BCSCircularEffectView *)self bounds];
  v5 = CGRectGetWidth(v55) / 200.0;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = 0.0;
  v10 = 5;
  v48 = *(MEMORY[0x277CD9DE8] + 80);
  v49 = *(MEMORY[0x277CD9DE8] + 64);
  v46 = *(MEMORY[0x277CD9DE8] + 112);
  v47 = *(MEMORY[0x277CD9DE8] + 96);
  v44 = *(MEMORY[0x277CD9DE8] + 16);
  v45 = *MEMORY[0x277CD9DE8];
  v42 = *(MEMORY[0x277CD9DE8] + 48);
  v43 = *(MEMORY[0x277CD9DE8] + 32);
  v40 = *(MEMORY[0x277CBF2C0] + 16);
  v41 = *MEMORY[0x277CBF2C0];
  v39 = *(MEMORY[0x277CBF2C0] + 32);
  v11 = *MEMORY[0x277CDA310];
  do
  {
    v12 = [MEMORY[0x277CD9ED0] layer];
    [(BCSCircularEffectView *)self bounds];
    [v12 setBounds:?];
    [(BCSCircularEffectView *)self bounds];
    MidX = CGRectGetMidX(v56);
    [(BCSCircularEffectView *)self bounds];
    [v12 setPosition:{MidX, CGRectGetMidY(v57)}];
    v14 = [(BCSCircularEffectView *)self layer];
    [v14 addSublayer:v12];

    v15 = [MEMORY[0x277CD9ED0] layer];
    [(NSMutableArray *)self->_circles addObject:v15];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ring-%1lu", v10];
    v17 = [MEMORY[0x277D755B8] imageNamed:v16 inBundle:v50];
    v18 = [v17 CGImage];

    v19 = CGImageGetWidth(v18) / v8;
    [v15 setContents:v18];
    [v15 setContentsScale:v8];
    [v15 setBounds:{0.0, 0.0, v19, v19}];
    *&v53.m31 = v49;
    *&v53.m33 = v48;
    *&v53.m41 = v47;
    *&v53.m43 = v46;
    *&v53.m11 = v45;
    *&v53.m13 = v44;
    *&v53.m21 = v43;
    *&v53.m23 = v42;
    CATransform3DScale(&v54, &v53, 0.35, 0.35, 1.0);
    v53 = v54;
    [v15 setTransform:&v53];
    [(BCSCircularEffectView *)self bounds];
    v20 = CGRectGetMidX(v58);
    [(BCSCircularEffectView *)self bounds];
    [v15 setPosition:{v20, CGRectGetMidY(v59)}];
    [v12 addSublayer:v15];
    *&v53.m11 = v41;
    *&v53.m13 = v40;
    *&v53.m21 = v39;
    CGAffineTransformScale(&v52, &v53, v5, v5);
    *&v53.m11 = *&v52.a;
    *&v53.m13 = *&v52.c;
    *&v53.m21 = *&v52.tx;
    [v12 setAffineTransform:&v53];
    v21 = [MEMORY[0x277CD9ED0] layer];
    v22 = v21;
    if (v10 == 5)
    {
      v23 = v19 * 0.85;
    }

    else
    {
      v23 = v9;
    }

    [v21 setBounds:{0.0, 0.0, v23, v23}];
    [(BCSCircularEffectView *)self bounds];
    v24 = CGRectGetMidX(v60);
    [(BCSCircularEffectView *)self bounds];
    [v22 setPosition:{v24, CGRectGetMidY(v61)}];
    v25 = [MEMORY[0x277D75348] whiteColor];
    [v22 setBackgroundColor:{objc_msgSend(v25, "CGColor")}];

    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = v23;
    v62.size.height = v23;
    [v22 setCornerRadius:CGRectGetWidth(v62) * 0.5];
    v26 = [MEMORY[0x277CD9EA0] filterWithType:v11];
    [v22 setCompositingFilter:v26];

    [v12 addSublayer:v22];
    v9 = v19;
    --v10;
  }

  while (v10);
  v27 = [MEMORY[0x277CD9ED0] layer];
  centerRing = self->_centerRing;
  self->_centerRing = v27;

  v29 = [MEMORY[0x277D755B8] imageNamed:@"Center-Glyph" inBundle:v50];
  v30 = [v29 CGImage];

  v31 = v5 * CGImageGetWidth(v30) / v8;
  [(CALayer *)self->_centerRing setBounds:0.0, 0.0, v31, v31];
  [(CALayer *)self->_centerRing setCornerRadius:v31 * 0.5];
  [(BCSCircularEffectView *)self bounds];
  v32 = CGRectGetMidX(v63);
  [(BCSCircularEffectView *)self bounds];
  [(CALayer *)self->_centerRing setPosition:v32, CGRectGetMidY(v64)];
  v33 = [MEMORY[0x277D75348] whiteColor];
  -[CALayer setBackgroundColor:](self->_centerRing, "setBackgroundColor:", [v33 CGColor]);

  v34 = [(BCSCircularEffectView *)self layer];
  [v34 addSublayer:self->_centerRing];

  v35 = [MEMORY[0x277CD9ED0] layer];
  [(CALayer *)v35 setContents:v30];
  [(CALayer *)v35 setContentsScale:v8];
  [(CALayer *)v35 setBounds:0.0, 0.0, v31, v31];
  [(CALayer *)v35 setPosition:v31 * 0.5, v31 * 0.5];
  [(CALayer *)self->_centerRing addSublayer:v35];
  glyphLayer = self->_glyphLayer;
  self->_glyphLayer = v35;
  v37 = v35;

  CGAffineTransformMakeScale(&v51, 0.0, 0.0);
  v38 = self->_centerRing;
  *&v53.m11 = *&v51.a;
  *&v53.m13 = *&v51.c;
  *&v53.m21 = *&v51.tx;
  [(CALayer *)v38 setAffineTransform:&v53];
}

- (void)prepareCenterGlyphWithImage:(id)a3
{
  v5 = a3;
  if (!self->_centerRingScaleAnimationStarted)
  {
    v6 = v5;
    objc_storeStrong(&self->_centerGlyphImage, a3);
    v5 = v6;
  }
}

- (void)animateCenterGlyphAndRings
{
  v3 = [(NSMutableArray *)self->_circles count];
  v4 = *MEMORY[0x277CDA238];
  if (v3)
  {
    v5 = 0;
    v6 = *MEMORY[0x277CDA7C0];
    do
    {
      v7 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale"];
      [v7 setMass:1.0];
      [v7 setDamping:39.0];
      [v7 setStiffness:700.0];
      [v7 setFromValue:&unk_2853A11D8];
      [v7 setToValue:&unk_2853A1138];
      [v7 setDuration:0.39];
      [v7 setFillMode:v4];
      [v7 setRemovedOnCompletion:0];
      [v7 setBeginTime:CACurrentMediaTime() + 0.3675 + v5 * 0.133];
      v8 = [MEMORY[0x277CD9EF8] functionWithName:v6];
      [v7 setTimingFunction:v8];

      v9 = [(NSMutableArray *)self->_circles objectAtIndexedSubscript:v5];
      [v9 addAnimation:v7 forKey:@"tranform.scale"];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_circles count]);
  }

  v11 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.scale"];
  [v11 setMass:1.0];
  [v11 setDamping:39.0];
  [v11 setStiffness:700.0];
  [v11 setFromValue:&unk_2853A1150];
  [v11 setToValue:&unk_2853A1138];
  [v11 setDuration:0.39];
  [v11 setBeginTime:CACurrentMediaTime() + 0.235];
  [v11 setFillMode:v4];
  [v11 setRemovedOnCompletion:0];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v11 setTimingFunction:v10];

  [v11 setDelegate:self];
  [(CALayer *)self->_centerRing addAnimation:v11 forKey:@"tranform.scale"];
}

- (void)animateRingsRotationWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17[0] = xmmword_241A06650;
  v17[1] = xmmword_241A06650;
  v18 = 0xC03E000000000000;
  [MEMORY[0x277CD9FF0] begin];
  v5 = MEMORY[0x277CD9FF0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__BCSCircularEffectView_animateRingsRotationWithCompletion___block_invoke;
  v15[3] = &unk_278D02498;
  v14 = v4;
  v16 = v14;
  [v5 setCompletionBlock:v15];
  if ([(NSMutableArray *)self->_circles count])
  {
    v6 = 0;
    v7 = *MEMORY[0x277CDA230];
    v8 = *MEMORY[0x277CDA7B8];
    do
    {
      v9 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform.rotation.z"];
      [v9 setMass:2.0];
      [v9 setDamping:50.0];
      [v9 setStiffness:300.0];
      [v9 setFromValue:&unk_2853A1150];
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(v17 + v6) / 180.0 * 3.14159265];
      [v9 setToValue:v10];

      [v9 setDuration:0.6];
      [v9 setFillMode:v7];
      [v9 setRemovedOnCompletion:0];
      v11 = [MEMORY[0x277CD9EF8] functionWithName:v8];
      [v9 setTimingFunction:v11];

      v12 = [(NSMutableArray *)self->_circles objectAtIndexedSubscript:v6];
      [v12 addAnimation:v9 forKey:@"transform.rotation.z"];

      ++v6;
    }

    while (v6 < [(NSMutableArray *)self->_circles count]);
  }

  [MEMORY[0x277CD9FF0] commit];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)revealCenterGlyphAndRings
{
  if ([(NSMutableArray *)self->_circles count])
  {
    v3 = 0;
    v12 = *(MEMORY[0x277CD9DE8] + 80);
    v13 = *(MEMORY[0x277CD9DE8] + 64);
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v11 = *(MEMORY[0x277CD9DE8] + 96);
    v8 = *(MEMORY[0x277CD9DE8] + 16);
    v9 = *MEMORY[0x277CD9DE8];
    v6 = *(MEMORY[0x277CD9DE8] + 48);
    v7 = *(MEMORY[0x277CD9DE8] + 32);
    do
    {
      *&v15.m31 = v13;
      *&v15.m33 = v12;
      *&v15.m41 = v11;
      *&v15.m43 = v10;
      *&v15.m11 = v9;
      *&v15.m13 = v8;
      *&v15.m21 = v7;
      *&v15.m23 = v6;
      CATransform3DScale(&v16, &v15, 1.0, 1.0, 1.0);
      v4 = [(NSMutableArray *)self->_circles objectAtIndexedSubscript:v3];
      v15 = v16;
      [v4 setTransform:&v15];

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_circles count]);
  }

  CGAffineTransformMakeScale(&v14, 1.0, 1.0);
  centerRing = self->_centerRing;
  *&v15.m11 = *&v14.a;
  *&v15.m13 = *&v14.c;
  *&v15.m21 = *&v14.tx;
  [(CALayer *)centerRing setAffineTransform:&v15];
}

- (void)animationDidStart:(id)a3
{
  centerRing = self->_centerRing;
  v5 = a3;
  v6 = [(CALayer *)centerRing animationForKey:@"tranform.scale"];

  if (v6 == v5)
  {
    self->_centerRingScaleAnimationStarted = 1;
    if (self->_centerGlyphImage)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(CALayer *)self->_glyphLayer setContents:[(UIImage *)self->_centerGlyphImage CGImage]];
      v7 = MEMORY[0x277CD9FF0];

      [v7 commit];
    }
  }
}

@end