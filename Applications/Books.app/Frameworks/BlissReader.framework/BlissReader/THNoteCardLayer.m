@interface THNoteCardLayer
- (BOOL)draggedPastThreshold;
- (BOOL)isBottomCard;
- (BOOL)isPointInsideFlipGlyph:(CGPoint)a3;
- (BOOL)isTopCard;
- (CGPoint)dragAnchor;
- (CGPoint)dragOffset;
- (CGPoint)extendedDragOffsetInDirection:(CGPoint)a3;
- (NSArray)interactiveLayers;
- (THNoteCardContentLayer)downwardFacingLayer;
- (THNoteCardContentLayer)upwardFacingLayer;
- (THNoteCardLayer)initWithDelegate:(id)a3 darkMode:(BOOL)a4;
- (_THNoteCardDisplayAttributes)p_displayAttributesForParameters:(_THNoteTransformParameters *)a3;
- (_THNoteTransform)p_noteTransformForParameters:(SEL)a3;
- (id).cxx_construct;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelDragAnimated:(BOOL)a3 duration:(double)a4;
- (void)completeDragInDirection:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)dealloc;
- (void)flipAnimated:(BOOL)a3 duration:(double)a4;
- (void)layoutSublayers;
- (void)p_applyNoteTransform:(_THNoteTransform *)a3;
- (void)p_commonInitWithDarkMode:(BOOL)a3;
- (void)p_completeDragViaDragOffset:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)p_completeFlippedDragViaDragOffset:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)p_mayHaveSettled;
- (void)p_rebuildNoteTransform;
- (void)popAnimated:(BOOL)a3 duration:(double)a4;
- (void)removeFromSuperlayer;
- (void)reset;
- (void)setCardIndex:(int64_t)a3;
- (void)setCardIndex:(int64_t)a3 forceHidden:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)setDarkMode:(BOOL)a3;
- (void)setFilteredOut:(BOOL)a3;
- (void)setFilteredOut:(BOOL)a3 direction:(CGPoint)a4;
- (void)setFilteredOut:(BOOL)a3 direction:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)setFlipped:(BOOL)a3;
- (void)setFlownOut:(BOOL)a3;
- (void)setFlownOut:(BOOL)a3 direction:(CGPoint)a4;
- (void)setFlownOut:(BOOL)a3 direction:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)setLayoutContext:(id)a3;
- (void)setPoppedState:(int)a3;
- (void)setScaleFactor:(double)a3 darkerBackground:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)shuffleToIndex:(unint64_t)a3 animated:(BOOL)a4 delay:(double)a5 duration:(double)a6 completion:(id)a7;
- (void)unpopAnimated:(BOOL)a3 duration:(double)a4;
- (void)updateTransformAnimated:(BOOL)a3 duration:(double)a4;
@end

@implementation THNoteCardLayer

- (THNoteCardLayer)initWithDelegate:(id)a3 darkMode:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = THNoteCardLayer;
  v6 = [(THNoteCardLayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_delegate = a3;
    [(THNoteCardLayer *)v6 p_commonInitWithDarkMode:v4];
  }

  return v7;
}

- (void)dealloc
{
  self->_frontLayer = 0;

  self->_backLayer = 0;
  self->_completionAnimationCompletionBlock = 0;

  self->_layoutContext = 0;
  v3.receiver = self;
  v3.super_class = THNoteCardLayer;
  [(THNoteCardLayer *)&v3 dealloc];
}

- (void)setLayoutContext:(id)a3
{
  [a3 noteCardSize];
  TSDRectWithSize();
  TSDRoundedRect();
  [(THNoteCardLayer *)self setBounds:?];

  self->_layoutContext = a3;
  [(THNoteCardContentLayer *)self->_frontLayer setLayoutContext:a3];
  [(THNoteCardContentLayer *)self->_backLayer setLayoutContext:a3];
  [(THNoteCardLayer *)self p_rebuildNoteTransform];

  [(THNoteCardLayer *)self setNeedsLayout];
}

- (THNoteCardContentLayer)upwardFacingLayer
{
  if (self->_transformParams.flipped)
  {
    return [(THNoteCardLayer *)self backLayer];
  }

  else
  {
    return [(THNoteCardLayer *)self frontLayer];
  }
}

- (THNoteCardContentLayer)downwardFacingLayer
{
  if (self->_transformParams.flipped)
  {
    return [(THNoteCardLayer *)self frontLayer];
  }

  else
  {
    return [(THNoteCardLayer *)self backLayer];
  }
}

- (void)setCardIndex:(int64_t)a3
{
  p_transformParams = &self->_transformParams;
  self->_transformParams.cardIndex = a3;
  [(THNoteCardLayer *)self p_rebuildNoteTransform];
  filteredOutDirection = p_transformParams->filteredOutDirection;
  v8[4] = *&p_transformParams->flownOutDirection.y;
  v8[5] = filteredOutDirection;
  v8[6] = *&p_transformParams->scaleFactor;
  dragAnchor = p_transformParams->dragAnchor;
  v8[0] = *&p_transformParams->cardIndex;
  v8[1] = dragAnchor;
  v7 = *&p_transformParams->shuffleAnimationState;
  v8[2] = p_transformParams->dragOffset;
  v8[3] = v7;
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:v8]& 0xFFFFFFFFFFLL animated:0 duration:0.0];
}

- (BOOL)isTopCard
{
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  v6[4] = *&self->_transformParams.flownOutDirection.y;
  v6[5] = filteredOutDirection;
  v6[6] = *&self->_transformParams.scaleFactor;
  dragAnchor = self->_transformParams.dragAnchor;
  v6[0] = *&self->_transformParams.cardIndex;
  v6[1] = dragAnchor;
  v4 = *&self->_transformParams.shuffleAnimationState;
  v6[2] = self->_transformParams.dragOffset;
  v6[3] = v4;
  return [(THNoteCardLayer *)self p_isTopCardParameters:v6];
}

- (BOOL)isBottomCard
{
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  v6[4] = *&self->_transformParams.flownOutDirection.y;
  v6[5] = filteredOutDirection;
  v6[6] = *&self->_transformParams.scaleFactor;
  dragAnchor = self->_transformParams.dragAnchor;
  v6[0] = *&self->_transformParams.cardIndex;
  v6[1] = dragAnchor;
  v4 = *&self->_transformParams.shuffleAnimationState;
  v6[2] = self->_transformParams.dragOffset;
  v6[3] = v4;
  return [(THNoteCardLayer *)self p_isBottomCardParameters:v6];
}

- (void)setDarkMode:(BOOL)a3
{
  v3 = a3;
  [(THNoteCardContentLayer *)self->_backLayer setDarkMode:?];
  frontLayer = self->_frontLayer;

  [(THNoteCardContentLayer *)frontLayer setDarkMode:v3];
}

- (void)setFlipped:(BOOL)a3
{
  if (self->_transformParams.flipped != a3)
  {
    self->_transformParams.flipped = a3;
    [(THNoteCardLayer *)self p_rebuildNoteTransform];
  }
}

- (void)setPoppedState:(int)a3
{
  if (self->_transformParams.poppedState != a3)
  {
    self->_transformParams.poppedState = a3;
    [(THNoteCardLayer *)self p_rebuildNoteTransform];
  }
}

- (CGPoint)dragAnchor
{
  x = self->_transformParams.dragAnchor.x;
  y = self->_transformParams.dragAnchor.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)dragOffset
{
  x = self->_transformParams.dragOffset.x;
  y = self->_transformParams.dragOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setFlownOut:(BOOL)a3
{
  self->_transformParams.flownOut = a3;
  self->_transformParams.flownOutDirection = xmmword_34A660;
  [(THNoteCardLayer *)self p_rebuildNoteTransform];
}

- (void)setFlownOut:(BOOL)a3 direction:(CGPoint)a4
{
  self->_transformParams.flownOut = a3;
  self->_transformParams.flownOutDirection = a4;
  [(THNoteCardLayer *)self p_rebuildNoteTransform];
}

- (void)setFilteredOut:(BOOL)a3
{
  self->_transformParams.filteredOut = a3;
  self->_transformParams.filteredOutDirection = xmmword_34A660;
  [(THNoteCardLayer *)self p_rebuildNoteTransform];
}

- (void)setFilteredOut:(BOOL)a3 direction:(CGPoint)a4
{
  self->_transformParams.filteredOut = a3;
  self->_transformParams.filteredOutDirection = a4;
  [(THNoteCardLayer *)self p_rebuildNoteTransform];
}

- (BOOL)draggedPastThreshold
{
  [(THNoteCardLayer *)self bounds];
  [(THNoteCardLayer *)self bounds];
  TSDPointLength();
  v4 = v3 + v3;
  if ([(THNoteCardLayer *)self isBottomCard])
  {
    return v4 >= 0.100000001;
  }

  else
  {
    return v4 >= 0.5;
  }
}

- (BOOL)isPointInsideFlipGlyph:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THNoteCardLayer *)self upwardFacingLayer];
  [(THNoteCardContentLayer *)v6 convertPoint:self fromLayer:x, y];
  v8 = v7;
  v10 = v9;
  [(THNoteCardContentLayer *)v6 flipGlyphFrame];
  v15 = v8;
  v16 = v10;

  return CGRectContainsPoint(*&v11, *&v15);
}

- (NSArray)interactiveLayers
{
  v2 = [(THNoteCardLayer *)self upwardFacingLayer];

  return [(THNoteCardContentLayer *)v2 interactiveLayers];
}

- (void)p_applyNoteTransform:(_THNoteTransform *)a3
{
  p_transform = &self->_transform;
  memcpy(&self->_transform, a3, sizeof(self->_transform));
  v6 = *&a3->xform.m33;
  v18 = *&a3->xform.m31;
  v19 = v6;
  v7 = *&a3->xform.m43;
  v20 = *&a3->xform.m41;
  v21 = v7;
  v8 = *&a3->xform.m13;
  v14 = *&a3->xform.m11;
  v15 = v8;
  v9 = *&a3->xform.m23;
  v16 = *&a3->xform.m21;
  v17 = v9;
  [(THNoteCardLayer *)self setTransform:&v14];
  [(THNoteCardLayer *)self setZPosition:p_transform->zPosition];
  [(THNoteCardLayer *)self bounds];
  TSDRectWithCenterAndSize();
  TSDRoundedRect();
  TSDCenterOfRect();
  [(THNoteCardLayer *)self setPosition:?];
  v10 = *&p_transform->sublayerXform.m33;
  v18 = *&p_transform->sublayerXform.m31;
  v19 = v10;
  v11 = *&p_transform->sublayerXform.m43;
  v20 = *&p_transform->sublayerXform.m41;
  v21 = v11;
  v12 = *&p_transform->sublayerXform.m13;
  v14 = *&p_transform->sublayerXform.m11;
  v15 = v12;
  v13 = *&p_transform->sublayerXform.m23;
  v16 = *&p_transform->sublayerXform.m21;
  v17 = v13;
  [(THNoteCardLayer *)self setSublayerTransform:&v14];
}

- (void)p_rebuildNoteTransform
{
  if (self->_delegate)
  {
    filteredOutDirection = self->_transformParams.filteredOutDirection;
    *&v6[64] = *&self->_transformParams.flownOutDirection.y;
    *&v6[80] = filteredOutDirection;
    *&v6[96] = *&self->_transformParams.scaleFactor;
    dragAnchor = self->_transformParams.dragAnchor;
    *v6 = *&self->_transformParams.cardIndex;
    *&v6[16] = dragAnchor;
    v5 = *&self->_transformParams.shuffleAnimationState;
    *&v6[32] = self->_transformParams.dragOffset;
    *&v6[48] = v5;
    [(THNoteCardLayer *)self p_noteTransformForParameters:v6];
    memcpy(v6, __src, sizeof(v6));
    [(THNoteCardLayer *)self p_applyNoteTransform:v6];
  }
}

- (_THNoteTransform)p_noteTransformForParameters:(SEL)a3
{
  retstr->zPosition = 0.0;
  v7 = *&CATransform3DIdentity.m31;
  v8 = *&CATransform3DIdentity.m33;
  *&retstr->xform.m31 = v7;
  *&retstr->xform.m33 = v8;
  v9 = *&CATransform3DIdentity.m41;
  v10 = *&CATransform3DIdentity.m43;
  *&retstr->xform.m41 = v9;
  *&retstr->xform.m43 = v10;
  v11 = *&CATransform3DIdentity.m11;
  v12 = *&CATransform3DIdentity.m13;
  *&retstr->xform.m11 = *&CATransform3DIdentity.m11;
  *&retstr->xform.m13 = v12;
  v13 = *&CATransform3DIdentity.m21;
  v14 = *&CATransform3DIdentity.m23;
  *&retstr->xform.m21 = v13;
  *&retstr->xform.m23 = v14;
  *&retstr->sublayerXform.m43 = v10;
  *&retstr->sublayerXform.m41 = v9;
  *&retstr->sublayerXform.m33 = v8;
  *&retstr->sublayerXform.m31 = v7;
  *&retstr->sublayerXform.m23 = v14;
  *&retstr->sublayerXform.m21 = v13;
  *&retstr->sublayerXform.m13 = v12;
  *&retstr->sublayerXform.m11 = v11;
  retstr->position = CGPointZero;
  TSDPointLength();
  if (v15 <= 0.0)
  {
    v20 = 1.0;
    v19 = 0.0;
    y = 0.0;
  }

  else
  {
    [(THNoteCardLayer *)self bounds];
    [(THNoteCardLayer *)self bounds];
    x = a4->dragOffset.x;
    if (a4->flipped)
    {
      y = 0.0;
    }

    else
    {
      y = a4->dragOffset.y;
    }

    TSDPointLength();
    *&v18 = v18 + v18;
    v19 = fminf(atanf(*&v18) * 50.0, 75.0);
    v20 = -x;
  }

  v21 = a4->cardIndex - [(THNoteCardLayerDelegate *)self->_delegate noteCardLayerCount]+ 1;
  filteredOutDirection = a4->filteredOutDirection;
  *&v97.m31 = *&a4->flownOutDirection.y;
  *&v97.m33 = filteredOutDirection;
  *&v97.m41 = *&a4->scaleFactor;
  dragAnchor = a4->dragAnchor;
  *&v97.m11 = *&a4->cardIndex;
  *&v97.m13 = dragAnchor;
  v24 = *&a4->shuffleAnimationState;
  *&v97.m21 = a4->dragOffset;
  *&v97.m23 = v24;
  v25 = [(THNoteCardLayer *)self p_isTopCardParameters:&v97];
  v26 = a4->filteredOutDirection;
  *&v97.m31 = *&a4->flownOutDirection.y;
  *&v97.m33 = v26;
  *&v97.m41 = *&a4->scaleFactor;
  v27 = a4->dragAnchor;
  *&v97.m11 = *&a4->cardIndex;
  *&v97.m13 = v27;
  v28 = *&a4->shuffleAnimationState;
  *&v97.m21 = a4->dragOffset;
  *&v97.m23 = v28;
  v29 = [(THNoteCardLayer *)self p_isBottomCardParameters:&v97];
  v30 = *&CATransform3DIdentity.m33;
  *&retstr->sublayerXform.m31 = *&CATransform3DIdentity.m31;
  *&retstr->sublayerXform.m33 = v30;
  v31 = *&CATransform3DIdentity.m43;
  *&retstr->sublayerXform.m41 = *&CATransform3DIdentity.m41;
  *&retstr->sublayerXform.m43 = v31;
  v32 = *&CATransform3DIdentity.m13;
  *&retstr->sublayerXform.m11 = *&CATransform3DIdentity.m11;
  *&retstr->sublayerXform.m13 = v32;
  v33 = *&CATransform3DIdentity.m21;
  v34 = *&CATransform3DIdentity.m23;
  *&retstr->sublayerXform.m21 = v33;
  v35 = CGPointZero.x;
  v36 = CGPointZero.y;
  *&retstr->sublayerXform.m23 = v34;
  if (a4->flipped)
  {
    v19 = -v19;
    CATransform3DMakeRotation(&retstr->sublayerXform, 3.14159265, 0.0, 1.0, 0.0);
  }

  v37 = v21 & (v21 >> 63);
  if ((v25 & 1) != 0 || a4->shuffleAnimationState == 2)
  {
    v38 = 0.0;
    if (!a4->flipped)
    {
      v39 = a4->dragOffset.x;
      TSDPointLength();
      if (*v33.i64 > 0.0)
      {
        v40 = v39 / 300.0;
        *v33.i64 = (atanf(v40) * 7.5);
        v34.i32[1] = -1080959162;
        v38 = *v33.i64 * -0.0174532925;
      }
    }
  }

  else
  {
    v38 = 0.0;
    if (!a4->forceHidden)
    {
      if (v29)
      {
        [(THNoteCardLayoutContext *)self->_layoutContext bottomCardAngle];
        v38 = v41 * 0.0174532925;
        [(THNoteCardLayoutContext *)self->_layoutContext bottomCardOffset];
        v35 = v42;
        v36 = v43;
        [(THNoteCardLayerDelegate *)self->_delegate dragOffset];
        v19 = 0.0;
        if (*v33.i64 > 0.0)
        {
          v44 = *v33.i64 / 100.0;
          atanf(v44);
          [(THNoteCardLayoutContext *)self->_layoutContext scale];
          if (v45 != 0.0)
          {
            [(THNoteCardLayoutContext *)self->_layoutContext scale:v45];
          }

          TSDMultiplyPointScalar();
          TSDMultiplyPointScalar();
          v35 = *v33.i64;
          v36 = *v34.i64;
        }
      }
    }
  }

  if (a4->flownOut)
  {
    if (v37 == -1)
    {
      v33.i64[0] = 0xBFB1DF46A2529D39;
    }

    else
    {
      if (v37)
      {
        goto LABEL_26;
      }

      v33.i64[0] = 0x3FB1DF46A2529D39;
    }

    v38 = v38 + *v33.i64;
  }

LABEL_26:
  if (a4->flattenFlipped)
  {
    *v34.i32 = v19;
    v92 = v34;
    v33.i32[0] = 1127481344;
    v46.i64[0] = 0x8000000080000000;
    v46.i64[1] = 0x8000000080000000;
    v47 = *vbslq_s8(v46, v33, v34).i32;
    TSDPointLength();
    *v49.i64 = fabs(*v49.i64);
    v48 = *v49.i64 < 0.00999999978;
    v49.i32[0] = 1110704128;
    if (v48)
    {
      *v49.i32 = 0.0;
    }

    v50.i64[0] = 0x8000000080000000;
    v50.i64[1] = 0x8000000080000000;
    v19 = v47 - *vbslq_s8(v50, v49, v92).i32;
    v38 = -v38;
  }

  if (a4->filteredOut || a4->forceHidden)
  {
    v38 = 0.0;
  }

  v51 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m23;
  *&v97.m31 = *&CATransform3DIdentity.m31;
  *&v97.m33 = v51;
  v53 = *&CATransform3DIdentity.m33;
  v54 = *&CATransform3DIdentity.m43;
  *&v97.m41 = *&CATransform3DIdentity.m41;
  *&v97.m43 = v54;
  v55 = *&CATransform3DIdentity.m13;
  *&v97.m11 = *&CATransform3DIdentity.m11;
  *&v97.m13 = v55;
  v56 = *&CATransform3DIdentity.m23;
  v58 = *&CATransform3DIdentity.m11;
  v57 = *&CATransform3DIdentity.m13;
  *&v97.m21 = *&CATransform3DIdentity.m21;
  *&v97.m23 = v56;
  *&a.m31 = *&v97.m31;
  *&a.m33 = v53;
  v59 = *&CATransform3DIdentity.m43;
  *&a.m41 = *&v97.m41;
  *&a.m43 = v59;
  *&a.m11 = v58;
  *&a.m13 = v57;
  *&a.m21 = *&v97.m21;
  *&a.m23 = v52;
  v60 = 0.0;
  CATransform3DMakeRotation(&b, v38, 0.0, 0.0, 1.0);
  CATransform3DConcat(&v97, &a, &b);
  b = v97;
  CATransform3DMakeRotation(&v94, v19 * 0.0174532925, y, v20, 0.0);
  CATransform3DConcat(&a, &b, &v94);
  v97 = a;
  memset(&a, 0, sizeof(a));
  b = v97;
  CATransform3DMakeTranslation(&v94, v35, v36, 0.0);
  CATransform3DConcat(&a, &b, &v94);
  memset(&b, 0, sizeof(b));
  v94 = a;
  CATransform3DMakeScale(&v93, a4->scaleFactor, a4->scaleFactor, 1.0);
  CATransform3DConcat(&b, &v94, &v93);
  v61 = *&b.m33;
  *&retstr->xform.m31 = *&b.m31;
  *&retstr->xform.m33 = v61;
  v62 = *&b.m43;
  *&retstr->xform.m41 = *&b.m41;
  *&retstr->xform.m43 = v62;
  v63 = *&b.m13;
  *&retstr->xform.m11 = *&b.m11;
  *&retstr->xform.m13 = v63;
  v64 = *&b.m23;
  *&retstr->xform.m21 = *&b.m21;
  *&retstr->xform.m23 = v64;
  TSDPointLength();
  if (v65 != 0.0)
  {
    [(THNoteCardLayer *)self bounds];
    CGRectGetWidth(v98);
    [(THNoteCardLayer *)self bounds];
    CGRectGetHeight(v99);
    [(THNoteCardLayer *)self bounds];
    TSDRectWithOriginAndSize();
    v94 = v97;
    THBoundingCubeForTransformedRect(v100, &v94, &v93.m11);
    v66 = 0.5;
    if (!a4->flipped)
    {
      v66 = 1.0;
    }

    m13 = v93.m13;
    v60 = v66 * fmaxf(-m13, 0.0);
  }

  if (a4->poppedState == 3)
  {
    v68 = v60 + 90.0;
  }

  else
  {
    v68 = v60;
  }

  if ((v25 & 1) == 0 && ([(THNoteCardLayerDelegate *)self->_delegate topNoteCardIsFlipped]& 1) == 0 && [(THNoteCardLayerDelegate *)self->_delegate isDraggingTopCard])
  {
    [(THNoteCardLayerDelegate *)self->_delegate dragOffset];
    *&v69 = v69 / 150.0;
    v68 = v68 + atanf(fabsf(*&v69)) * 53.9999986;
  }

  retstr->zPosition = v68 + (5 * v37);
  if ([(THNoteCardLayer *)self superlayer])
  {
    TSDMultiplyPointScalar();
    v71 = v70;
    v73 = v72;
    v75 = CGPointZero.x;
    v74 = CGPointZero.y;
    if (a4->filteredOut)
    {
      [(THNoteCardLayerDelegate *)self->_delegate offscreenNoteDistance];
      TSDMultiplyPointScalar();
      v77 = v76;
      v79 = v78;
    }

    else
    {
      if (!a4->flownOut)
      {
        v77 = CGPointZero.x;
        v79 = CGPointZero.y;
        goto LABEL_58;
      }

      [(THNoteCardLayerDelegate *)self->_delegate offscreenNoteDistance];
      TSDMultiplyPointScalar();
      v77 = v83;
      v79 = v84;
      if (a4->flownOut)
      {
        if (v37 == -2)
        {
          v74 = 0.0;
          *&v85 = 60.0;
        }

        else if (v37 == -1)
        {
          v74 = 0.0;
          *&v85 = 120.0;
        }

        else
        {
          if (v37)
          {
            goto LABEL_58;
          }

          v74 = 0.0;
          *&v85 = 200.0;
        }

        v75 = *&v85;
      }
    }

LABEL_58:
    [-[THNoteCardLayer superlayer](self "superlayer")];
    TSDCenterOfRect();
    v88 = v75 + v77 + v71 + v86 + a4->dragOffset.x;
    v89 = v74 + v79 + v73 + v87 + a4->dragOffset.y;
    result = [(THNoteCardLayoutContext *)self->_layoutContext noteCardOffset];
    v81 = v88 + v90;
    v82 = v89 + v91;
    goto LABEL_59;
  }

  result = [(THNoteCardLayer *)self position];
LABEL_59:
  retstr->position.x = v81;
  retstr->position.y = v82;
  return result;
}

- (_THNoteCardDisplayAttributes)p_displayAttributesForParameters:(_THNoteTransformParameters *)a3
{
  filteredOutDirection = a3->filteredOutDirection;
  v22 = *&a3->flownOutDirection.y;
  v23 = filteredOutDirection;
  v24 = *&a3->scaleFactor;
  dragAnchor = a3->dragAnchor;
  v18 = *&a3->cardIndex;
  v19 = dragAnchor;
  v7 = *&a3->shuffleAnimationState;
  dragOffset = a3->dragOffset;
  v21 = v7;
  v8 = [(THNoteCardLayer *)self p_isTopCardParameters:&v18];
  v9 = a3->filteredOutDirection;
  v22 = *&a3->flownOutDirection.y;
  v23 = v9;
  v24 = *&a3->scaleFactor;
  v10 = a3->dragAnchor;
  v18 = *&a3->cardIndex;
  v19 = v10;
  v11 = *&a3->shuffleAnimationState;
  dragOffset = a3->dragOffset;
  v21 = v11;
  v12 = [(THNoteCardLayer *)self p_isBottomCardParameters:&v18];
  if (v8)
  {
    v13 = [(THNoteCardInfo *)self->_noteCardInfo hasBackContent];
    useDarkerBackground = a3->useDarkerBackground;
    v15 = 1;
  }

  else
  {
    useDarkerBackground = 0;
    v13 = 0;
    v15 = v12;
  }

  v16 = 0x1000000;
  if ((v12 & (v8 ^ 1)) == 0)
  {
    v16 = 0;
  }

  return (v16 | (useDarkerBackground << 32) | (v13 << 16) | (v15 << 8) | v15);
}

- (void)reset
{
  [(THNoteCardContentLayer *)self->_frontLayer reset];
  backLayer = self->_backLayer;

  [(THNoteCardContentLayer *)backLayer reset];
}

- (CGPoint)extendedDragOffsetInDirection:(CGPoint)a3
{
  TSDPointLength();
  TSDNormalizePoint();
  v5 = v4;
  v7 = v6;
  [(THNoteCardLayer *)self bounds];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
  if ([(THNoteCardLayer *)self isFlipped])
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24 = CGRectInset(v23, 0.0, height * -0.5);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v22.x = v5;
  v22.y = v7;
  v16 = THDistanceFromRectCenterToEdge(v25, v22);
  if ([(THNoteCardLayer *)self isTopCard])
  {
    v17 = [(THNoteCardLayer *)self isFlipped];
    v18 = 1.0;
    if (!v17)
    {
      v18 = 1.60000002;
    }
  }

  else
  {
    v18 = 2.20000005;
  }

  v19 = v16 / 0.699999988 * (v5 * v18);
  v20 = v16 / 0.699999988 * (v7 * v18);
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)setCardIndex:(int64_t)a3 forceHidden:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  v25 = a5;
  v8 = a4;
  [(THNoteCardLayer *)self p_willUnsettle];
  v11 = *&self->_transformParams.flipped;
  v27 = v11;
  v12 = *(&self->_transformParams.flownOutDirection + 3);
  v13 = *(&self->_transformParams.filteredOutDirection.y + 3);
  v45 = *(&self->_transformParams.filteredOut + 3);
  v46[0] = v13;
  *(v46 + 13) = *&self->_transformParams.useDarkerBackground;
  v14 = *(&self->_transformParams.dragAnchor.y + 3);
  v41 = *(&self->_transformParams.forceHidden + 1);
  v42 = v14;
  v43 = *(&self->_transformParams.dragOffset.y + 3);
  v44 = v12;
  *v28 = a3;
  *&v28[8] = v11;
  v28[10] = v8;
  *&v28[59] = *(&self->_transformParams.flownOutDirection + 3);
  *&v28[75] = *(&self->_transformParams.filteredOut + 3);
  *&v28[91] = *(&self->_transformParams.filteredOutDirection.y + 3);
  *&v28[104] = *&self->_transformParams.useDarkerBackground;
  *&v28[11] = *(&self->_transformParams.forceHidden + 1);
  *&v28[27] = *(&self->_transformParams.dragAnchor.y + 3);
  *&v28[43] = *(&self->_transformParams.dragOffset.y + 3);
  [(THNoteCardLayer *)self p_noteTransformForParameters:v28];
  if (!v7)
  {
    a6 = 0.0;
  }

  v15 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
  zPosition = self->_transform.zPosition;
  *&zPosition = zPosition;
  [(CABasicAnimation *)v15 setFromValue:[NSNumber numberWithFloat:zPosition]];
  HIDWORD(v17) = HIDWORD(v30);
  *&v17 = v30;
  [(CABasicAnimation *)v15 setToValue:[NSNumber numberWithFloat:v17]];
  [(CABasicAnimation *)v15 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v18 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v19 = *&self->_transform.xform.m33;
  *&v28[64] = *&self->_transform.xform.m31;
  *&v28[80] = v19;
  v20 = *&self->_transform.xform.m43;
  *&v28[96] = *&self->_transform.xform.m41;
  v29 = v20;
  v21 = *&self->_transform.xform.m13;
  *v28 = *&self->_transform.xform.m11;
  *&v28[16] = v21;
  v22 = *&self->_transform.xform.m23;
  *&v28[32] = *&self->_transform.xform.m21;
  *&v28[48] = v22;
  [(CABasicAnimation *)v18 setFromValue:[NSValue valueWithCATransform3D:v28]];
  *&v28[64] = v35;
  *&v28[80] = v36;
  *&v28[96] = v37;
  v29 = v38;
  *v28 = v31;
  *&v28[16] = v32;
  *&v28[32] = v33;
  *&v28[48] = v34;
  [(CABasicAnimation *)v18 setToValue:[NSValue valueWithCATransform3D:v28]];
  [(CABasicAnimation *)v18 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v23 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v23 setFromValue:[NSValue valueWithCGPoint:self->_transform.position.x, self->_transform.position.y]];
  [(CABasicAnimation *)v23 setToValue:[NSValue valueWithCGPoint:v39, v40]];
  [(CABasicAnimation *)v23 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v24 = +[CAAnimationGroup animation];
  [v24 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v15, v18, v23, 0)}];
  [v24 setDuration:a6];
  [v24 setDelegate:self];
  [(THNoteCardLayer *)self addAnimation:v24 forKey:@"cardIndexAnimation"];
  *&v28[59] = v44;
  *&v28[75] = v45;
  *&v28[91] = v46[0];
  *&v28[11] = v41;
  *&v28[27] = v42;
  *v28 = a3;
  *&v28[8] = v27;
  v28[10] = v8;
  *&v28[104] = *(v46 + 13);
  *&v28[43] = v43;
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:v28]& 0xFFFFFFFFFFLL animated:v25 duration:a6];
  [(THNoteCardLayer *)self setForceHidden:v8];
  [(THNoteCardLayer *)self setCardIndex:a3];
}

- (void)flipAnimated:(BOOL)a3 duration:(double)a4
{
  v5 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  if (v5)
  {
    v7 = [NSNumber numberWithFloat:0.0];
    LODWORD(v8) = 1051372203;
    v9 = [NSNumber numberWithFloat:v8];
    LODWORD(v10) = 1059760811;
    v11 = [NSNumber numberWithFloat:v10];
    LODWORD(v12) = 1.0;
    v13 = [NSArray arrayWithObjects:v7, v9, v11, [NSNumber numberWithFloat:v12], 0];
    v14 = [CAKeyframeAnimation animationWithKeyPath:@"zPosition"];
    [(THNoteCardLayer *)self zPosition];
    v16 = v15;
    [(THNoteCardLayer *)self zPosition];
    v18 = v17;
    [(THNoteCardLayer *)self bounds];
    v20 = v18 + (v19 + 20.0) * 0.5;
    [(CAKeyframeAnimation *)v14 setKeyTimes:v13];
    *&v16 = v16;
    LODWORD(v21) = LODWORD(v16);
    v22 = [NSNumber numberWithFloat:v21];
    *&v23 = v20;
    v24 = [NSNumber numberWithFloat:v23];
    LODWORD(v25) = LODWORD(v16);
    v26 = [NSNumber numberWithFloat:v25];
    LODWORD(v27) = LODWORD(v16);
    [(CAKeyframeAnimation *)v14 setValues:[NSArray arrayWithObjects:v22, v24, v26, [NSNumber numberWithFloat:v27], 0]];
    [(CAKeyframeAnimation *)v14 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], 0]];
    if (self->_transformParams.flipped)
    {
      v28 = -1.0;
    }

    else
    {
      v28 = 1.0;
    }

    v29 = [CAKeyframeAnimation animationWithKeyPath:@"sublayerTransform"];
    memset(&v39, 0, sizeof(v39));
    [(THNoteCardLayer *)self sublayerTransform];
    v38 = v39;
    a = v39;
    CATransform3DMakeRotation(&b, v28 * -90.0 * 0.0174532925, 0.0, 1.0, 0.0);
    CATransform3DConcat(&v38, &a, &b);
    b = v38;
    CATransform3DMakeRotation(&v35, v28 * -2.0 * 0.0174532925, 0.0, 0.0, 1.0);
    CATransform3DConcat(&a, &b, &v35);
    v38 = a;
    b = a;
    CATransform3DMakeTranslation(&v35, v28 * 160.0, 0.0, 0.0);
    CATransform3DConcat(&a, &b, &v35);
    v38 = a;
    a = v39;
    b = v39;
    CATransform3DMakeRotation(&v35, v28 * -180.0 * 0.0174532925, 0.0, 1.0, 0.0);
    CATransform3DConcat(&a, &b, &v35);
    v35 = a;
    CATransform3DMakeRotation(&v34, v28 * -1.25 * 0.0174532925, 0.0, 0.0, 1.0);
    CATransform3DConcat(&b, &v35, &v34);
    a = b;
    v35 = b;
    CATransform3DMakeTranslation(&v34, v28 * 10.0, 0.0, 0.0);
    CATransform3DConcat(&b, &v35, &v34);
    a = b;
    b = v39;
    v35 = v39;
    CATransform3DMakeRotation(&v34, v28 * -180.0 * 0.0174532925, 0.0, 1.0, 0.0);
    CATransform3DConcat(&b, &v35, &v34);
    [(CAKeyframeAnimation *)v29 setKeyTimes:v13];
    [(CAKeyframeAnimation *)v29 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], 0]];
    v35 = v39;
    v30 = [NSValue valueWithCATransform3D:&v35];
    v35 = v38;
    v31 = [NSValue valueWithCATransform3D:&v35];
    v35 = a;
    v32 = [NSValue valueWithCATransform3D:&v35];
    v35 = b;
    [(CAKeyframeAnimation *)v29 setValues:[NSArray arrayWithObjects:v30, v31, v32, [NSValue valueWithCATransform3D:&v35], 0]];
    v33 = +[CAAnimationGroup animation];
    [v33 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v14, v29, 0)}];
    [v33 setDuration:a4];
    [v33 setDelegate:self];
    [(THNoteCardLayer *)self addAnimation:v33 forKey:@"cardFlipAnimation"];
  }

  [(THNoteCardLayer *)self setFlipped:[(THNoteCardLayer *)self isFlipped]^ 1];
}

- (void)popAnimated:(BOOL)a3 duration:(double)a4
{
  v5 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  if ((self->_transformParams.poppedState | 2) == 2)
  {
    if (!v5)
    {
      a4 = 0.0;
    }

    v7 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    [(CABasicAnimation *)v7 setAdditive:1];
    [(CABasicAnimation *)v7 setFromValue:[NSNumber numberWithFloat:0.0]];
    LODWORD(v8) = 1119092736;
    [(CABasicAnimation *)v7 setToValue:[NSNumber numberWithFloat:v8]];
    [(CABasicAnimation *)v7 setDelegate:self];
    [(CABasicAnimation *)v7 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v7 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)v7 setDuration:a4];
    [(THNoteCardLayer *)self addAnimation:v7 forKey:@"cardPopAnimation"];
  }

  [(THNoteCardLayer *)self setPoppedState:1];
}

- (void)unpopAnimated:(BOOL)a3 duration:(double)a4
{
  if ((self->_transformParams.poppedState | 2) == 3)
  {
    if (!a3)
    {
      a4 = 0.0;
    }

    v6 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    [(CABasicAnimation *)v6 setAdditive:1];
    [(CABasicAnimation *)v6 setFromValue:[NSNumber numberWithFloat:0.0]];
    LODWORD(v7) = -1028390912;
    [(CABasicAnimation *)v6 setToValue:[NSNumber numberWithFloat:v7]];
    [(CABasicAnimation *)v6 setDelegate:self];
    [(CABasicAnimation *)v6 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v6 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)v6 setDuration:a4];
    [(THNoteCardLayer *)self addAnimation:v6 forKey:@"cardUnpopAnimation"];
  }

  [(THNoteCardLayer *)self setPoppedState:2];
}

- (void)cancelDragAnimated:(BOOL)a3 duration:(double)a4
{
  v5 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  *&v22 = self->_transformParams.cardIndex;
  v7 = *&self->_transformParams.flipped;
  dragAnchor = self->_transformParams.dragAnchor;
  v9 = *&self->_transformParams.flownOutDirection.y;
  v25 = *&self->_transformParams.shuffleAnimationState;
  v26 = v9;
  v10 = *&self->_transformParams.scaleFactor;
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  v28 = v10;
  v11 = CGPointZero;
  v41 = dragAnchor;
  v42 = v11;
  *(&v22 + 1) = v7;
  v23 = dragAnchor;
  v24 = v11;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v22];
  if (!v5)
  {
    a4 = 0.0;
  }

  v12 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
  zPosition = self->_transform.zPosition;
  *&zPosition = zPosition;
  [(CABasicAnimation *)v12 setFromValue:[NSNumber numberWithFloat:zPosition]];
  HIDWORD(v14) = HIDWORD(v30);
  *&v14 = v30;
  [(CABasicAnimation *)v12 setToValue:[NSNumber numberWithFloat:v14]];
  [(CABasicAnimation *)v12 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
  v15 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v16 = *&self->_transform.xform.m33;
  v26 = *&self->_transform.xform.m31;
  filteredOutDirection = v16;
  v17 = *&self->_transform.xform.m43;
  v28 = *&self->_transform.xform.m41;
  v29 = v17;
  v18 = *&self->_transform.xform.m13;
  v22 = *&self->_transform.xform.m11;
  v23 = v18;
  v19 = *&self->_transform.xform.m23;
  v24 = *&self->_transform.xform.m21;
  v25 = v19;
  [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCATransform3D:&v22]];
  v26 = v35;
  filteredOutDirection = v36;
  v28 = v37;
  v29 = v38;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  [(CABasicAnimation *)v15 setToValue:[NSValue valueWithCATransform3D:&v22]];
  [(CABasicAnimation *)v15 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  v20 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v20 setFromValue:[NSValue valueWithCGPoint:self->_transform.position.x, self->_transform.position.y]];
  [(CABasicAnimation *)v20 setToValue:[NSValue valueWithCGPoint:v39, v40]];
  [(CABasicAnimation *)v20 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
  v21 = +[CAAnimationGroup animation];
  [v21 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v12, v15, v20, 0)}];
  [v21 setDuration:a4];
  [v21 setDelegate:self];
  [(THNoteCardLayer *)self addAnimation:v21 forKey:@"cancelDragAnimation"];
  [(THNoteCardLayer *)self setDragOffset:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setPoppedState:0];
  [(THNoteCardLayer *)self setDragAnchor:CGPointZero.x, CGPointZero.y];
}

- (void)completeDragInDirection:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v9 = a5;
  y = a3.y;
  x = a3.x;
  [(THNoteCardLayer *)self p_willUnsettle];
  [(THNoteCardLayer *)self extendedDragOffsetInDirection:x, y];
  v15 = v14;
  v17 = v16;
  if ([(THNoteCardLayer *)self isFlipped])
  {

    [(THNoteCardLayer *)self p_completeFlippedDragViaDragOffset:a4 newCardIndex:v9 animated:a7 duration:v15 completion:v17, a6];
  }

  else
  {

    [(THNoteCardLayer *)self p_completeDragViaDragOffset:a4 newCardIndex:v9 animated:a7 duration:v15 completion:v17, a6];
  }
}

- (void)shuffleToIndex:(unint64_t)a3 animated:(BOOL)a4 delay:(double)a5 duration:(double)a6 completion:(id)a7
{
  v10 = a4;
  v69 = a4;
  [(THNoteCardLayer *)self p_willUnsettle];
  +[CATransaction begin];
  [CATransaction setCompletionBlock:a7];
  [(THNoteCardLayerDelegate *)self->_delegate shuffleOffset:[(THNoteCardLayer *)self cardIndex]& 1];
  v14 = v13;
  v16 = v15;
  cardIndex = self->_transformParams.cardIndex;
  v18 = *&self->_transformParams.flipped;
  poppedState = self->_transformParams.poppedState;
  dragAnchor = self->_transformParams.dragAnchor;
  x = self->_transformParams.dragOffset.x;
  y = self->_transformParams.dragOffset.y;
  v22 = *(&self->_transformParams.flownOutDirection.y + 4);
  v104 = *&self->_transformParams.flownOut;
  v105 = v22;
  v106[0] = *(&self->_transformParams.filteredOutDirection + 4);
  *(v106 + 12) = *&self->_transformParams.scaleFactor;
  v87 = *&cardIndex;
  *v88 = v18;
  v23 = v18;
  *&v88[4] = poppedState;
  v24 = poppedState;
  HIDWORD(v68) = poppedState;
  *&v88[8] = self->_transformParams.dragAnchor;
  *&v88[24] = x;
  *v89 = y;
  *&v89[8] = 1;
  *&v89[12] = *&self->_transformParams.flownOut;
  *&v89[28] = *(&self->_transformParams.flownOutDirection.y + 4);
  *&v89[44] = *(&self->_transformParams.filteredOutDirection + 4);
  *&v89[56] = *&self->_transformParams.scaleFactor;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v87];
  *&v82[8] = dragAnchor;
  *&v83[12] = v104;
  v81 = *&cardIndex;
  *v82 = v23;
  *&v82[4] = 3;
  *&v82[24] = x;
  *v83 = y;
  *&v83[8] = 1;
  *&v83[28] = v105;
  *&v83[44] = v106[0];
  *&v83[56] = *(v106 + 12);
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v81];
  v67 = a3;
  v75 = *&a3;
  *v76 = v23;
  *&v76[4] = 3;
  LODWORD(v68) = v23;
  *&v76[8] = dragAnchor;
  *&v76[24] = v14;
  *v77 = v16;
  *&v77[8] = 2;
  *&v77[12] = v104;
  *&v77[28] = v105;
  *&v77[44] = v106[0];
  *&v77[56] = *(v106 + 12);
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v75];
  v71 = dragAnchor;
  *&v73[4] = v104;
  *&v70 = a3;
  *(&v70 + 1) = __PAIR64__(v24, v23);
  *&v72 = x;
  *(&v72 + 1) = y;
  *v73 = 3;
  *&v73[20] = v105;
  *&v73[36] = v106[0];
  *&v73[48] = *(v106 + 12);
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v70];
  if (v10)
  {
    v25 = a5 + a6;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [NSNumber numberWithFloat:0.0];
  *&v27 = (a5 + a6 * 0.1) / v25;
  v28 = [NSNumber numberWithFloat:v27];
  *&v29 = (a5 + a6 * 0.5) / v25;
  v30 = [NSNumber numberWithFloat:v29];
  LODWORD(v31) = 1.0;
  v66 = [NSArray arrayWithObjects:v26, v28, v30, [NSNumber numberWithFloat:v31], 0];
  v32 = [CAKeyframeAnimation animationWithKeyPath:@"zPosition"];
  [(CAKeyframeAnimation *)v32 setKeyTimes:v66];
  [(CAKeyframeAnimation *)v32 setCalculationMode:kCAAnimationCubic];
  LODWORD(v33) = -0.5;
  v34 = [NSNumber numberWithFloat:v33];
  LODWORD(v35) = -0.5;
  v36 = [NSNumber numberWithFloat:v35];
  LODWORD(v37) = -0.5;
  v38 = [NSNumber numberWithFloat:v37];
  LODWORD(v39) = -0.5;
  [(CAKeyframeAnimation *)v32 setTensionValues:[NSArray arrayWithObjects:v34, v36, v38, [NSNumber numberWithFloat:v39], 0]];
  HIDWORD(v40) = HIDWORD(v93);
  *&v40 = v93;
  v41 = [NSNumber numberWithFloat:v40];
  HIDWORD(v42) = HIDWORD(v87);
  *&v42 = v87;
  v43 = [NSNumber numberWithFloat:v42];
  HIDWORD(v44) = HIDWORD(v81);
  *&v44 = v81;
  v45 = [NSNumber numberWithFloat:v44];
  HIDWORD(v46) = HIDWORD(v75);
  *&v46 = v75;
  [(CAKeyframeAnimation *)v32 setValues:[NSArray arrayWithObjects:v41, v43, v45, [NSNumber numberWithFloat:v46], 0]];
  v47 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  LODWORD(v48) = 1036831949;
  LODWORD(v49) = 1054280253;
  LODWORD(v50) = 0.5;
  LODWORD(v51) = 1.0;
  v52 = [CAMediaTimingFunction functionWithControlPoints:v48];
  LODWORD(v53) = 1045220557;
  LODWORD(v54) = 1066192077;
  LODWORD(v55) = 2.0;
  LODWORD(v56) = 0.75;
  [(CAKeyframeAnimation *)v32 setTimingFunctions:[NSArray arrayWithObjects:v47, v52, [CAMediaTimingFunction functionWithControlPoints:v53], 0]];
  v57 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  [(CAKeyframeAnimation *)v57 setKeyTimes:v66];
  [(CAKeyframeAnimation *)v57 setCalculationMode:kCAAnimationCubic];
  *&v73[16] = v98;
  *&v73[32] = v99;
  *&v73[48] = v100;
  v74 = v101;
  v70 = v94;
  v71 = v95;
  v72 = v96;
  *v73 = v97;
  v58 = [NSValue valueWithCATransform3D:&v70];
  *&v73[16] = *&v89[32];
  *&v73[32] = *&v89[48];
  *&v73[48] = *&v89[64];
  v74 = v90;
  v70 = *v88;
  v71 = *&v88[16];
  v72 = *v89;
  *v73 = *&v89[16];
  v59 = [NSValue valueWithCATransform3D:&v70];
  *&v73[16] = *&v83[32];
  *&v73[32] = *&v83[48];
  *&v73[48] = *&v83[64];
  v74 = v84;
  v70 = *v82;
  v71 = *&v82[16];
  v72 = *v83;
  *v73 = *&v83[16];
  v60 = [NSValue valueWithCATransform3D:&v70];
  *&v73[16] = *&v77[32];
  *&v73[32] = *&v77[48];
  *&v73[48] = *&v77[64];
  v74 = v78;
  v70 = *v76;
  v71 = *&v76[16];
  v72 = *v77;
  *v73 = *&v77[16];
  [(CAKeyframeAnimation *)v57 setValues:[NSArray arrayWithObjects:v58, v59, v60, [NSValue valueWithCATransform3D:&v70], 0]];
  [(CAKeyframeAnimation *)v57 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v61 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [(CAKeyframeAnimation *)v61 setKeyTimes:v66];
  v62 = [NSValue valueWithCGPoint:v102, v103];
  v63 = [NSValue valueWithCGPoint:v91, v92];
  v64 = [NSValue valueWithCGPoint:v85, v86];
  [(CAKeyframeAnimation *)v61 setValues:[NSArray arrayWithObjects:v62, v63, v64, [NSValue valueWithCGPoint:v79, v80], 0]];
  [(CAKeyframeAnimation *)v61 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v65 = +[CAAnimationGroup animation];
  [v65 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v32, v57, v61, 0)}];
  [v65 setDuration:v25];
  [v65 setDelegate:self];
  [v65 setRemovedOnCompletion:0];
  [(THNoteCardLayer *)self addAnimation:v65 forKey:@"shuffleAnimation"];
  *&v70 = v67;
  *(&v70 + 1) = v68;
  v71 = dragAnchor;
  *&v72 = x;
  *(&v72 + 1) = y;
  *v73 = 3;
  *&v73[4] = v104;
  *&v73[20] = v105;
  *&v73[36] = v106[0];
  *&v73[48] = *(v106 + 12);
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:&v70]& 0xFFFFFFFFFFLL animated:v69 duration:v25];
  +[CATransaction commit];
  [(THNoteCardLayer *)self setDragOffset:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setDragAnchor:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setCardIndex:v67];
  [(THNoteCardLayer *)self setFlipped:0];
}

- (void)setFilteredOut:(BOOL)a3 direction:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v9 = a5;
  y = a4.y;
  x = a4.x;
  v12 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  +[CATransaction begin];
  [CATransaction setCompletionBlock:a7];
  v14 = *&self->_transformParams.shuffleAnimationState;
  dragOffset = self->_transformParams.dragOffset;
  v30 = v14;
  *&v31 = self->_transformParams.flownOutDirection.y;
  dragAnchor = self->_transformParams.dragAnchor;
  v27 = *&self->_transformParams.cardIndex;
  v28 = dragAnchor;
  v33 = *&self->_transformParams.scaleFactor;
  self->_transformParams.filteredOut = v12;
  self->_transformParams.filteredOutDirection.x = x;
  self->_transformParams.filteredOutDirection.y = y;
  BYTE8(v31) = v12;
  v16 = *(&self->_transformParams.filteredOut + 1);
  HIDWORD(v31) = *(&self->_transformParams.filteredOut + 1);
  *(&v31 + 9) = v16;
  *&v32 = x;
  *(&v32 + 1) = y;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v27];
  if (!v9)
  {
    a6 = 0.0;
  }

  v17 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
  zPosition = self->_transform.zPosition;
  *&zPosition = zPosition;
  [(CABasicAnimation *)v17 setFromValue:[NSNumber numberWithFloat:zPosition]];
  HIDWORD(v19) = HIDWORD(v35);
  *&v19 = v35;
  [(CABasicAnimation *)v17 setToValue:[NSNumber numberWithFloat:v19]];
  [(CABasicAnimation *)v17 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v20 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v21 = *&self->_transform.xform.m33;
  v31 = *&self->_transform.xform.m31;
  v32 = v21;
  v22 = *&self->_transform.xform.m43;
  v33 = *&self->_transform.xform.m41;
  v34 = v22;
  v23 = *&self->_transform.xform.m13;
  v27 = *&self->_transform.xform.m11;
  v28 = v23;
  v24 = *&self->_transform.xform.m23;
  dragOffset = *&self->_transform.xform.m21;
  v30 = v24;
  [(CABasicAnimation *)v20 setFromValue:[NSValue valueWithCATransform3D:&v27]];
  v31 = v40;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v27 = v36;
  v28 = v37;
  dragOffset = v38;
  v30 = v39;
  [(CABasicAnimation *)v20 setToValue:[NSValue valueWithCATransform3D:&v27]];
  [(CABasicAnimation *)v20 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v25 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v25 setFromValue:[NSValue valueWithCGPoint:self->_transform.position.x, self->_transform.position.y]];
  [(CABasicAnimation *)v25 setToValue:[NSValue valueWithCGPoint:v44, v45]];
  [(CABasicAnimation *)v25 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v26 = +[CAAnimationGroup animation];
  [v26 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v17, v20, v25, 0)}];
  [v26 setDuration:a6];
  [v26 setDelegate:self];
  [(THNoteCardLayer *)self addAnimation:v26 forKey:@"cardIndexAnimation"];
  +[CATransaction commit];
  [(THNoteCardLayer *)self setFilteredOut:v12 direction:x, y];
}

- (void)setFlownOut:(BOOL)a3 direction:(CGPoint)a4 animated:(BOOL)a5 duration:(double)a6
{
  v27 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  +[CATransaction begin];
  dragAnchor = self->_transformParams.dragAnchor;
  v30 = *&self->_transformParams.cardIndex;
  v31 = dragAnchor;
  dragOffset = self->_transformParams.dragOffset;
  LODWORD(v33) = self->_transformParams.shuffleAnimationState;
  *&v34[8] = *&self->_transformParams.filteredOut;
  *&v34[24] = *&self->_transformParams.filteredOutDirection.y;
  *&v34[40] = *&self->_transformParams.useDarkerBackground;
  self->_transformParams.flownOut = v9;
  self->_transformParams.flownOutDirection.x = x;
  self->_transformParams.flownOutDirection.y = y;
  BYTE4(v33) = v9;
  *(&v33 + 5) = *(&self->_transformParams.flownOut + 1);
  BYTE7(v33) = *(&self->_transformParams.flownOut + 3);
  *(&v33 + 1) = x;
  *v34 = y;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v30];
  v12 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
  zPosition = self->_transform.zPosition;
  *&zPosition = zPosition;
  [(CABasicAnimation *)v12 setFromValue:[NSNumber numberWithFloat:zPosition]];
  HIDWORD(v14) = HIDWORD(v36);
  *&v14 = v36;
  [(CABasicAnimation *)v12 setToValue:[NSNumber numberWithFloat:v14]];
  [(CABasicAnimation *)v12 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  v15 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v16 = *&self->_transform.xform.m33;
  *v34 = *&self->_transform.xform.m31;
  *&v34[16] = v16;
  v17 = *&self->_transform.xform.m43;
  *&v34[32] = *&self->_transform.xform.m41;
  v35 = v17;
  v18 = *&self->_transform.xform.m13;
  v30 = *&self->_transform.xform.m11;
  v31 = v18;
  v19 = *&self->_transform.xform.m23;
  dragOffset = *&self->_transform.xform.m21;
  v33 = v19;
  [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCATransform3D:&v30]];
  *v34 = v41;
  *&v34[16] = v42;
  *&v34[32] = v43;
  v35 = v44;
  v30 = v37;
  v31 = v38;
  dragOffset = v39;
  v33 = v40;
  [(CABasicAnimation *)v15 setToValue:[NSValue valueWithCATransform3D:&v30]];
  if (v9)
  {
    v24 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  }

  else
  {
    LODWORD(v21) = -1110651699;
    LODWORD(v20) = 0.75;
    LODWORD(v22) = 0.5;
    LODWORD(v23) = 1.0;
    v24 = [CAMediaTimingFunction functionWithControlPoints:v20];
  }

  [(CABasicAnimation *)v15 setTimingFunction:v24];
  if (!v27)
  {
    a6 = 0.0;
  }

  v25 = [CABasicAnimation animationWithKeyPath:@"position"];
  [(CABasicAnimation *)v25 setFromValue:[NSValue valueWithCGPoint:self->_transform.position.x, self->_transform.position.y]];
  [(CABasicAnimation *)v25 setToValue:[NSValue valueWithCGPoint:v45, v46]];
  [(CABasicAnimation *)v25 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [(THNoteCardLayer *)self setPosition:v45, v46];
  v26 = +[CAAnimationGroup animation];
  [v26 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v12, v15, v25, 0)}];
  [v26 setFillMode:kCAFillModeBoth];
  [v26 setDuration:a6];
  [v26 setDelegate:self];
  [(THNoteCardLayer *)self addAnimation:v26 forKey:@"cardIndexAnimation"];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_DB968;
  v28[3] = &unk_45B2C0;
  v28[4] = self;
  v29 = v9;
  [CATransaction setCompletionBlock:v28];
  +[CATransaction commit];
}

- (void)updateTransformAnimated:(BOOL)a3 duration:(double)a4
{
  v5 = a3;
  [(THNoteCardLayer *)self p_willUnsettle];
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  *&__dst[64] = *&self->_transformParams.flownOutDirection.y;
  *&__dst[80] = filteredOutDirection;
  *&__dst[96] = *&self->_transformParams.scaleFactor;
  dragAnchor = self->_transformParams.dragAnchor;
  *__dst = *&self->_transformParams.cardIndex;
  *&__dst[16] = dragAnchor;
  v9 = *&self->_transformParams.shuffleAnimationState;
  *&__dst[32] = self->_transformParams.dragOffset;
  *&__dst[48] = v9;
  [(THNoteCardLayer *)self p_noteTransformForParameters:__dst];
  if (v5)
  {
    v10 = [CABasicAnimation animationWithKeyPath:@"transform"];
    v11 = *&self->_transform.xform.m33;
    *&__dst[64] = *&self->_transform.xform.m31;
    *&__dst[80] = v11;
    v12 = *&self->_transform.xform.m43;
    *&__dst[96] = *&self->_transform.xform.m41;
    *&__dst[112] = v12;
    v13 = *&self->_transform.xform.m13;
    *__dst = *&self->_transform.xform.m11;
    *&__dst[16] = v13;
    v14 = *&self->_transform.xform.m23;
    *&__dst[32] = *&self->_transform.xform.m21;
    *&__dst[48] = v14;
    [(CABasicAnimation *)v10 setFromValue:[NSValue valueWithCATransform3D:__dst]];
    *&__dst[64] = *&__src[9];
    *&__dst[80] = *&__src[11];
    *&__dst[96] = *&__src[13];
    *&__dst[112] = *&__src[15];
    *__dst = *&__src[1];
    *&__dst[16] = *&__src[3];
    *&__dst[32] = *&__src[5];
    *&__dst[48] = *&__src[7];
    [(CABasicAnimation *)v10 setToValue:[NSValue valueWithCATransform3D:__dst]];
    v15 = [CABasicAnimation animationWithKeyPath:@"position"];
    [(CABasicAnimation *)v15 setFromValue:[NSValue valueWithCGPoint:self->_transform.position.x, self->_transform.position.y]];
    [(CABasicAnimation *)v15 setToValue:[NSValue valueWithCGPoint:__src[33], __src[34]]];
    v16 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    zPosition = self->_transform.zPosition;
    *&zPosition = zPosition;
    [(CABasicAnimation *)v16 setFromValue:[NSNumber numberWithFloat:zPosition]];
    HIDWORD(v18) = HIDWORD(__src[0]);
    *&v18 = __src[0];
    [(CABasicAnimation *)v16 setToValue:[NSNumber numberWithFloat:v18]];
    v19 = +[CAAnimationGroup animation];
    [v19 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v16, v10, v15, 0)}];
    [v19 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut)}];
    [v19 setDuration:a4];
    [v19 setDelegate:self];
    [(THNoteCardLayer *)self addAnimation:v19 forKey:@"transform"];
    memcpy(__dst, __src, sizeof(__dst));
    [(THNoteCardLayer *)self p_applyNoteTransform:__dst];
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    [(THNoteCardLayer *)self p_applyNoteTransform:__dst];
    [(THNoteCardLayer *)self p_mayHaveSettled];
  }
}

- (void)setScaleFactor:(double)a3 darkerBackground:(BOOL)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  [(THNoteCardLayer *)self p_willUnsettle];
  self->_transformParams.useDarkerBackground = a4;
  self->_transformParams.scaleFactor = a3;
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  *&v22[64] = *&self->_transformParams.flownOutDirection.y;
  *&v22[80] = filteredOutDirection;
  *&v22[96] = *&self->_transformParams.scaleFactor;
  dragAnchor = self->_transformParams.dragAnchor;
  *v22 = *&self->_transformParams.cardIndex;
  *&v22[16] = dragAnchor;
  v13 = *&self->_transformParams.shuffleAnimationState;
  *&v22[32] = self->_transformParams.dragOffset;
  *&v22[48] = v13;
  [(THNoteCardLayer *)self p_noteTransformForParameters:v22];
  if (v7)
  {
    v14 = [CABasicAnimation animationWithKeyPath:@"transform"];
    v15 = *&self->_transform.xform.m33;
    *&v22[64] = *&self->_transform.xform.m31;
    *&v22[80] = v15;
    v16 = *&self->_transform.xform.m43;
    *&v22[96] = *&self->_transform.xform.m41;
    *&v22[112] = v16;
    v17 = *&self->_transform.xform.m13;
    *v22 = *&self->_transform.xform.m11;
    *&v22[16] = v17;
    v18 = *&self->_transform.xform.m23;
    *&v22[32] = *&self->_transform.xform.m21;
    *&v22[48] = v18;
    [(CABasicAnimation *)v14 setFromValue:[NSValue valueWithCATransform3D:v22]];
    *&v22[64] = *&__src[9];
    *&v22[80] = *&__src[11];
    *&v22[96] = *&__src[13];
    *&v22[112] = *&__src[15];
    *v22 = *&__src[1];
    *&v22[16] = *&__src[3];
    *&v22[32] = *&__src[5];
    *&v22[48] = *&__src[7];
    [(CABasicAnimation *)v14 setToValue:[NSValue valueWithCATransform3D:v22]];
    [(CABasicAnimation *)v14 setDelegate:self];
    [(THNoteCardLayer *)self addAnimation:v14 forKey:@"scaleAnimation"];
  }

  memcpy(v22, __src, sizeof(v22));
  [(THNoteCardLayer *)self p_applyNoteTransform:v22];
  v19 = self->_transformParams.filteredOutDirection;
  *&v22[64] = *&self->_transformParams.flownOutDirection.y;
  *&v22[80] = v19;
  *&v22[96] = *&self->_transformParams.scaleFactor;
  v20 = self->_transformParams.dragAnchor;
  *v22 = *&self->_transformParams.cardIndex;
  *&v22[16] = v20;
  v21 = *&self->_transformParams.shuffleAnimationState;
  *&v22[32] = self->_transformParams.dragOffset;
  *&v22[48] = v21;
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:v22]& 0xFFFFFFFFFFLL animated:1 duration:a6];
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = THNoteCardLayer;
  [(THNoteCardLayer *)&v3 layoutSublayers];
  [(THNoteCardLayer *)self bounds];
  TSDRectWithSize();
  [(THNoteCardContentLayer *)self->_frontLayer setFrame:?];
  [(THNoteCardLayer *)self bounds];
  TSDRectWithSize();
  [(THNoteCardContentLayer *)self->_backLayer setFrame:?];
}

- (void)removeFromSuperlayer
{
  self->_delegate = 0;
  [(THNoteCardLayer *)self removeAllAnimations];
  v3.receiver = self;
  v3.super_class = THNoteCardLayer;
  [(THNoteCardLayer *)&v3 removeFromSuperlayer];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [CATransaction begin:a3];
  if ([(THNoteCardLayer *)self animationForKey:@"cardPopAnimation"]== a3)
  {
    if (self->_transformParams.poppedState == 1)
    {
      self->_transformParams.poppedState = 3;
    }

    v6 = @"cardPopAnimation";
    goto LABEL_10;
  }

  if ([(THNoteCardLayer *)self animationForKey:@"cardUnpopAnimation"]== a3)
  {
    if (self->_transformParams.poppedState == 2)
    {
      self->_transformParams.poppedState = 0;
    }

    v6 = @"cardUnpopAnimation";
LABEL_10:
    [(THNoteCardLayer *)self removeAnimationForKey:v6];
    goto LABEL_11;
  }

  self->_transformParams.poppedState = 0;
LABEL_11:
  if ([(THNoteCardLayer *)self animationForKey:@"completeDragAnimation"]== a3 || [(THNoteCardLayer *)self animationForKey:@"completeFlippedDragAnimation"]== a3)
  {
    completionAnimationCompletionBlock = self->_completionAnimationCompletionBlock;
    if (completionAnimationCompletionBlock)
    {
      completionAnimationCompletionBlock[2]();

      self->_completionAnimationCompletionBlock = 0;
    }

    [(THNoteCardLayer *)self removeAnimationForKey:@"completeDragAnimation"];
    [(THNoteCardLayer *)self removeAnimationForKey:@"completeFlippedDragAnimation"];
  }

  [(THNoteCardLayer *)self p_rebuildNoteTransform];
  +[CATransaction commit];

  [(THNoteCardLayer *)self p_mayHaveSettled];
}

- (void)p_commonInitWithDarkMode:(BOOL)a3
{
  v3 = a3;
  v5 = [[THNoteCardContentLayer alloc] initFrontContentLayerWithDarkMode:a3];
  self->_frontLayer = v5;
  [(THNoteCardContentLayer *)v5 setDoubleSided:0];
  [(THNoteCardContentLayer *)self->_frontLayer setDelegate:self];
  [(THNoteCardContentLayer *)self->_frontLayer setShouldRasterize:1];
  TSUScreenScale();
  [(THNoteCardContentLayer *)self->_frontLayer setRasterizationScale:?];
  [(THNoteCardLayer *)self addSublayer:self->_frontLayer];
  self->_backLayer = [[THNoteCardContentLayer alloc] initBackContentLayerWithDarkMode:v3];
  CATransform3DMakeRotation(&v8, 3.14159265, 0.0, 1.0, 0.0);
  backLayer = self->_backLayer;
  v7 = v8;
  [(THNoteCardContentLayer *)backLayer setTransform:&v7];
  [(THNoteCardContentLayer *)self->_backLayer setDoubleSided:0];
  [(THNoteCardContentLayer *)self->_backLayer setDelegate:self];
  [(THNoteCardContentLayer *)self->_backLayer setShouldRasterize:1];
  TSUScreenScale();
  [(THNoteCardContentLayer *)self->_backLayer setRasterizationScale:?];
  [(THNoteCardLayer *)self addSublayer:self->_backLayer];
  TSUScreenScale();
  [(THNoteCardContentLayer *)self->_frontLayer setContentsScale:?];
  TSUScreenScale();
  [(THNoteCardContentLayer *)self->_backLayer setContentsScale:?];
}

- (void)p_mayHaveSettled
{
  if (![-[THNoteCardLayer animationKeys](self "animationKeys")] && -[THNoteCardLayer isTopCard](self, "isTopCard") && (-[THNoteCardLayerDelegate isDraggingTopCard](self->_delegate, "isDraggingTopCard") & 1) == 0)
  {

    [(THNoteCardLayer *)self p_didSettle];
  }
}

- (void)p_completeDragViaDragOffset:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v67 = a5;
  y = a3.y;
  x = a3.x;
  p_transformParams = &self->_transformParams;
  filteredOutDirection = self->_transformParams.filteredOutDirection;
  *&v90[64] = *&self->_transformParams.flownOutDirection.y;
  *&v90[80] = filteredOutDirection;
  *&v90[96] = *&self->_transformParams.scaleFactor;
  dragAnchor = self->_transformParams.dragAnchor;
  *v90 = *&self->_transformParams.cardIndex;
  *&v90[16] = dragAnchor;
  v15 = *&self->_transformParams.shuffleAnimationState;
  *&v90[32] = self->_transformParams.dragOffset;
  *&v90[48] = v15;
  v16 = [(THNoteCardLayer *)self p_isBottomCardParameters:v90];
  TSDPointLength();
  v18 = v17;
  TSDPointLength();
  v20 = (vabdd_f64(v19, v18) / v19 + 1.0) * 0.300000012 * 0.5;
  v21 = [NSNumber numberWithFloat:0.0];
  *&v22 = v20;
  v23 = [NSNumber numberWithFloat:v22];
  LODWORD(v24) = 1.0;
  v25 = [NSArray arrayWithObjects:v21, v23, [NSNumber numberWithFloat:v24], 0];
  zPosition = self->_transform.zPosition;
  v27 = *&self->_transform.xform.m33;
  v98 = *&self->_transform.xform.m31;
  v99 = v27;
  v28 = *&self->_transform.xform.m43;
  v100 = *&self->_transform.xform.m41;
  v101 = v28;
  v29 = *&self->_transform.xform.m13;
  v94 = *&self->_transform.xform.m11;
  v95 = v29;
  v30 = *&self->_transform.xform.m23;
  v96 = *&self->_transform.xform.m21;
  v97 = v30;
  v31 = self->_transform.position.x;
  v32 = self->_transform.position.y;
  v77 = *&p_transformParams->cardIndex;
  v33 = *&p_transformParams->flipped;
  v34 = *&p_transformParams->flownOutDirection.y;
  *(v79 + 8) = *&p_transformParams->shuffleAnimationState;
  *(&v79[1] + 8) = v34;
  v35 = *&p_transformParams->scaleFactor;
  *(&v79[2] + 8) = p_transformParams->filteredOutDirection;
  *(&v79[3] + 8) = v35;
  *v78 = v33;
  *&v78[4] = 0;
  *&v78[8] = CGPointZero;
  *&v78[24] = x;
  *v79 = y;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v77];
  v65 = v16;
  if (v16)
  {
    *v90 = *v90 + -1.0;
  }

  v36 = *&p_transformParams->flownOutDirection.y;
  v82 = *&p_transformParams->shuffleAnimationState;
  v83 = v36;
  v37 = *&p_transformParams->scaleFactor;
  v84 = p_transformParams->filteredOutDirection;
  v85 = v37;
  v86 = CGPointZero;
  v87 = v86;
  v70 = CGPointZero;
  v71 = v70;
  v38 = *&p_transformParams->scaleFactor;
  v74 = v84;
  v75 = v38;
  v88 = *&p_transformParams->flattenFlipped;
  v89 = *(&p_transformParams->forceHidden + 1);
  v68 = a4;
  *&v69 = a4;
  BYTE8(v69) = 0;
  *(&v69 + 9) = *&p_transformParams->flattenFlipped;
  BYTE11(v69) = *(&p_transformParams->forceHidden + 1);
  HIDWORD(v69) = 0;
  v72 = v82;
  v73 = v36;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v69];
  v39 = [CAKeyframeAnimation animationWithKeyPath:@"zPosition"];
  [(CAKeyframeAnimation *)v39 setKeyTimes:v25];
  *&v40 = zPosition;
  v41 = [NSNumber numberWithFloat:v40];
  HIDWORD(v42) = *&v90[4];
  *&v42 = *v90;
  v43 = [NSNumber numberWithFloat:v42];
  HIDWORD(v44) = HIDWORD(v77);
  *&v44 = v77;
  [(CAKeyframeAnimation *)v39 setValues:[NSArray arrayWithObjects:v41, v43, [NSNumber numberWithFloat:v44], 0]];
  LODWORD(v45) = 0.5;
  LODWORD(v46) = 1.0;
  LODWORD(v47) = 1054280253;
  v48 = [CAMediaTimingFunction functionWithControlPoints:0.0];
  LODWORD(v49) = 1045220557;
  LODWORD(v50) = 1066192077;
  LODWORD(v51) = 2.0;
  LODWORD(v52) = 0.75;
  [(CAKeyframeAnimation *)v39 setTimingFunctions:[NSArray arrayWithObjects:v48, [CAMediaTimingFunction functionWithControlPoints:v49], 0]];
  v53 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  [(CAKeyframeAnimation *)v53 setKeyTimes:v25];
  v73 = v98;
  v74 = v99;
  v75 = v100;
  v76 = v101;
  v69 = v94;
  v70 = v95;
  v71 = v96;
  v72 = v97;
  v54 = [NSValue valueWithCATransform3D:&v69];
  v73 = *&v90[72];
  v74 = *&v90[88];
  v75 = *&v90[104];
  v76 = v91;
  v69 = *&v90[8];
  v70 = *&v90[24];
  v71 = *&v90[40];
  v72 = *&v90[56];
  v55 = [NSValue valueWithCATransform3D:&v69];
  v73 = v79[2];
  v74 = v79[3];
  v75 = v79[4];
  v76 = v79[5];
  v69 = *v78;
  v70 = *&v78[16];
  v71 = v79[0];
  v72 = v79[1];
  [(CAKeyframeAnimation *)v53 setValues:[NSArray arrayWithObjects:v54, v55, [NSValue valueWithCATransform3D:&v69], 0]];
  [(CAKeyframeAnimation *)v53 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], 0]];
  v56 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [(CAKeyframeAnimation *)v56 setKeyTimes:v25];
  v57 = [NSValue valueWithCGPoint:v31, v32];
  v58 = [NSValue valueWithCGPoint:v92, v93];
  [(CAKeyframeAnimation *)v56 setValues:[NSArray arrayWithObjects:v57, v58, [NSValue valueWithCGPoint:v80, v81], 0]];
  if (v65)
  {
    v63 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  }

  else
  {
    LODWORD(v61) = 1058306785;
    LODWORD(v60) = -0.25;
    LODWORD(v62) = 1.0;
    LODWORD(v59) = 1054280253;
    v63 = [CAMediaTimingFunction functionWithControlPoints:v59];
  }

  if (!v67)
  {
    a6 = 0.0;
  }

  [(CAKeyframeAnimation *)v56 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], v63, 0]];

  self->_completionAnimationCompletionBlock = [a7 copy];
  v64 = +[CAAnimationGroup animation];
  [v64 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v39, v53, v56, 0)}];
  [v64 setDuration:a6];
  [v64 setDelegate:self];
  [v64 setRemovedOnCompletion:0];
  [(THNoteCardLayer *)self addAnimation:v64 forKey:@"completeDragAnimation"];
  *&v69 = v68;
  BYTE8(v69) = 0;
  *(&v69 + 9) = v88;
  BYTE11(v69) = v89;
  HIDWORD(v69) = 0;
  v70 = v87;
  v71 = v86;
  v74 = v84;
  v75 = v85;
  v72 = v82;
  v73 = v83;
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:&v69]& 0xFFFFFFFFFFLL animated:v67 duration:a6];
  [(THNoteCardLayer *)self setDragOffset:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setDragAnchor:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setCardIndex:v68];
  [(THNoteCardLayer *)self setFlipped:0];
}

- (void)p_completeFlippedDragViaDragOffset:(CGPoint)a3 newCardIndex:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v92 = a5;
  y = a3.y;
  x = a3.x;
  p_transformParams = &self->_transformParams;
  TSDPointLength();
  v13 = v12;
  TSDPointLength();
  v15 = v14;
  v16 = (vabdd_f64(v14, v13) / v14 + 1.0) * 0.200000003 * 0.5;
  v17 = [NSNumber numberWithFloat:0.0];
  *&v18 = v16;
  v19 = [NSNumber numberWithFloat:v18];
  v20 = (v16 + 0.600000024) * 0.5;
  *&v20 = v20;
  v21 = [NSNumber numberWithFloat:v20];
  LODWORD(v22) = 1.0;
  v23 = [NSArray arrayWithObjects:v17, v19, v21, [NSNumber numberWithFloat:v22], 0];
  if (v13 > v15)
  {
    v24 = [NSNumber numberWithFloat:0.0];
    v25 = [NSNumber numberWithFloat:0.0];
    v26 = (v16 + 1.0) * 0.5;
    *&v26 = v26;
    v27 = [NSNumber numberWithFloat:v26];
    LODWORD(v28) = 1.0;
    v23 = [NSArray arrayWithObjects:v24, v25, v27, [NSNumber numberWithFloat:v28], 0];
  }

  v29 = v23;
  zPosition = self->_transform.zPosition;
  v31 = *&self->_transform.xform.m33;
  v143 = *&self->_transform.xform.m31;
  v144 = v31;
  v32 = *&self->_transform.xform.m43;
  v145 = *&self->_transform.xform.m41;
  v146 = v32;
  v33 = *&self->_transform.xform.m13;
  v139 = *&self->_transform.xform.m11;
  v140 = v33;
  v34 = *&self->_transform.xform.m23;
  v141 = *&self->_transform.xform.m21;
  v142 = v34;
  v35 = *&p_transformParams->flownOutDirection.y;
  v113 = *&p_transformParams->shuffleAnimationState;
  v114 = v35;
  v36 = *&p_transformParams->scaleFactor;
  v38 = *&p_transformParams->shuffleAnimationState;
  v37 = *&p_transformParams->flownOutDirection.y;
  filteredOutDirection = p_transformParams->filteredOutDirection;
  v115 = filteredOutDirection;
  v116 = v36;
  v138 = CGPointZero;
  v40 = self->_transform.position.x;
  v41 = self->_transform.position.y;
  v117 = *&p_transformParams->cardIndex;
  flipped = p_transformParams->flipped;
  flattenFlipped = p_transformParams->flattenFlipped;
  v43 = *&p_transformParams->forceHidden;
  poppedState = p_transformParams->poppedState;
  v45 = v13 <= v15;
  if (v13 > v15)
  {
    v46 = p_transformParams->dragOffset.x;
  }

  else
  {
    poppedState = 0;
    v46 = x;
  }

  if (v45)
  {
    v47 = y;
  }

  else
  {
    v47 = p_transformParams->dragOffset.y;
  }

  v102 = *&p_transformParams->cardIndex;
  v103[0] = p_transformParams->flipped;
  v103[1] = flattenFlipped;
  *&v103[2] = v43;
  *&v103[4] = poppedState;
  *&v103[8] = CGPointZero;
  *&v103[24] = v46;
  *v104 = v47;
  *(v104 + 8) = v38;
  *(&v104[1] + 8) = v37;
  v48 = *&p_transformParams->scaleFactor;
  *(&v104[2] + 8) = filteredOutDirection;
  *(&v104[3] + 8) = v48;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v102];
  v134 = v124;
  v135 = v125;
  v136 = v126;
  v137 = v127;
  v130 = v120;
  v131 = v121;
  v132 = v122;
  v133 = v123;
  v49 = v119;
  v50 = v128;
  v51 = v129;
  v102 = v117;
  v103[0] = flipped;
  v103[1] = 1;
  *&v103[2] = v43;
  *&v103[4] = 0;
  *&v103[8] = v138;
  *&v103[24] = v46;
  *v104 = v47;
  *(v104 + 8) = v113;
  *(&v104[1] + 8) = v114;
  *(&v104[2] + 8) = v115;
  *(&v104[3] + 8) = v116;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v102];
  v52 = *&p_transformParams->flownOutDirection.y;
  v107 = *&p_transformParams->shuffleAnimationState;
  v108 = v52;
  v53 = *&p_transformParams->scaleFactor;
  v55 = *&p_transformParams->shuffleAnimationState;
  v54 = *&p_transformParams->flownOutDirection.y;
  v109 = p_transformParams->filteredOutDirection;
  v110 = v53;
  v111 = CGPointZero;
  v112 = v111;
  v95 = CGPointZero;
  v96 = v95;
  v119 = -550.0;
  v56 = p_transformParams->flipped;
  v57 = *&p_transformParams->forceHidden;
  v93 = a4;
  *&v94 = a4;
  v88 = v56;
  v89 = v57;
  BYTE8(v94) = v56;
  BYTE9(v94) = 1;
  WORD5(v94) = v57;
  HIDWORD(v94) = 0;
  v97 = v55;
  v98 = v54;
  v58 = *&p_transformParams->scaleFactor;
  v99 = v109;
  v100 = v58;
  [(THNoteCardLayer *)self p_noteTransformForParameters:&v94];
  v59 = [CAKeyframeAnimation animationWithKeyPath:@"zPosition"];
  [(CAKeyframeAnimation *)v59 setKeyTimes:v29];
  [(CAKeyframeAnimation *)v59 setCalculationMode:?];
  LODWORD(v60) = -0.5;
  v61 = [NSNumber numberWithFloat:v60];
  LODWORD(v62) = -0.5;
  v63 = [NSNumber numberWithFloat:v62];
  LODWORD(v64) = -0.5;
  v65 = [NSNumber numberWithFloat:v64];
  LODWORD(v66) = -0.5;
  [(CAKeyframeAnimation *)v59 setTensionValues:[NSArray arrayWithObjects:v61, v63, v65, [NSNumber numberWithFloat:v66], 0]];
  *&v67 = zPosition;
  v68 = [NSNumber numberWithFloat:v67];
  *&v69 = v49;
  v70 = [NSNumber numberWithFloat:v69];
  HIDWORD(v71) = HIDWORD(v119);
  *&v71 = v119;
  v72 = [NSNumber numberWithFloat:v71];
  HIDWORD(v73) = HIDWORD(v102);
  *&v73 = v102;
  [(CAKeyframeAnimation *)v59 setValues:[NSArray arrayWithObjects:v68, v70, v72, [NSNumber numberWithFloat:v73], 0]];
  v87 = v59;
  [(CAKeyframeAnimation *)v59 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], 0]];
  v74 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  [(CAKeyframeAnimation *)v74 setKeyTimes:v29];
  [(CAKeyframeAnimation *)v74 setCalculationMode:kCAAnimationCubic];
  v98 = v143;
  v99 = v144;
  v100 = v145;
  v101 = v146;
  v94 = v139;
  v95 = v140;
  v96 = v141;
  v97 = v142;
  v75 = [NSValue valueWithCATransform3D:&v94];
  v98 = v134;
  v99 = v135;
  v100 = v136;
  v101 = v137;
  v94 = v130;
  v95 = v131;
  v96 = v132;
  v97 = v133;
  v76 = [NSValue valueWithCATransform3D:&v94];
  v98 = v124;
  v99 = v125;
  v100 = v126;
  v101 = v127;
  v94 = v120;
  v95 = v121;
  v77 = v74;
  v96 = v122;
  v97 = v123;
  v78 = [NSValue valueWithCATransform3D:&v94];
  v98 = v104[2];
  v99 = v104[3];
  v100 = v104[4];
  v101 = v104[5];
  v94 = *v103;
  v95 = *&v103[16];
  v96 = v104[0];
  v97 = v104[1];
  [(CAKeyframeAnimation *)v77 setValues:[NSArray arrayWithObjects:v75, v76, v78, [NSValue valueWithCATransform3D:&v94], 0]];
  [(CAKeyframeAnimation *)v77 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut], 0]];
  v79 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [(CAKeyframeAnimation *)v79 setKeyTimes:v29];
  [(CAKeyframeAnimation *)v79 setCalculationMode:kCAAnimationCubic];
  v80 = [NSValue valueWithCGPoint:v40, v41];
  v81 = [NSValue valueWithCGPoint:v50, v51];
  v82 = [NSValue valueWithCGPoint:v128, v129];
  [(CAKeyframeAnimation *)v79 setValues:[NSArray arrayWithObjects:v80, v81, v82, [NSValue valueWithCGPoint:v105, v106], 0]];
  [(CAKeyframeAnimation *)v79 setTimingFunctions:[NSArray arrayWithObjects:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear], 0]];
  v83 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
  [(THNoteCardLayer *)self sublayerTransform];
  [(CABasicAnimation *)v83 setFromValue:[NSValue valueWithCATransform3D:&v94]];
  [(THNoteCardLayer *)self sublayerTransform];
  [(CABasicAnimation *)v83 setToValue:[NSValue valueWithCATransform3D:&v94]];
  completionAnimationCompletionBlock = self->_completionAnimationCompletionBlock;
  if (completionAnimationCompletionBlock)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    completionAnimationCompletionBlock = self->_completionAnimationCompletionBlock;
  }

  if (v92)
  {
    v85 = a6;
  }

  else
  {
    v85 = 0.0;
  }

  self->_completionAnimationCompletionBlock = [a7 copy];
  v86 = +[CAAnimationGroup animation];
  [v86 setAnimations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v87, v77, v79, v83, 0)}];
  [v86 setDuration:v85];
  [v86 setDelegate:self];
  [v86 setRemovedOnCompletion:0];
  [(THNoteCardLayer *)self addAnimation:v86 forKey:@"completeFlippedDragAnimation"];
  *&v94 = v93;
  BYTE8(v94) = v88;
  BYTE9(v94) = 1;
  WORD5(v94) = v89;
  HIDWORD(v94) = 0;
  v95 = v112;
  v96 = v111;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  [(THNoteCardContentLayer *)self->_frontLayer setDisplayAttributes:[(THNoteCardLayer *)self p_displayAttributesForParameters:&v94]& 0xFFFFFFFFFFLL animated:v92 duration:v85];
  [(THNoteCardLayer *)self setDragOffset:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setDragAnchor:CGPointZero.x, CGPointZero.y];
  [(THNoteCardLayer *)self setCardIndex:v93];
  [(THNoteCardLayer *)self setFlipped:0];
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 5) = 0;
  *(self + 47) = 0;
  *(self + 56) = CGPointZero;
  *(self + 72) = CGPointZero;
  *(self + 92) = 0;
  *(self + 6) = CGPointZero;
  *(self + 112) = 0;
  *(self + 120) = CGPointZero;
  *(self + 17) = 0x3FF0000000000000;
  *(self + 144) = 0;
  *(self + 19) = 0;
  v2 = *&CATransform3DIdentity.m31;
  v3 = *&CATransform3DIdentity.m33;
  v4 = *&CATransform3DIdentity.m41;
  *(self + 17) = *&CATransform3DIdentity.m43;
  *(self + 16) = v4;
  *(self + 15) = v3;
  *(self + 14) = v2;
  v5 = *&CATransform3DIdentity.m11;
  v6 = *&CATransform3DIdentity.m13;
  v7 = *&CATransform3DIdentity.m21;
  *(self + 13) = *&CATransform3DIdentity.m23;
  *(self + 12) = v7;
  *(self + 11) = v6;
  *(self + 10) = v5;
  v8 = *&CATransform3DIdentity.m21;
  v9 = *&CATransform3DIdentity.m23;
  v10 = *&CATransform3DIdentity.m13;
  *(self + 18) = *&CATransform3DIdentity.m11;
  *(self + 21) = v9;
  *(self + 20) = v8;
  *(self + 19) = v10;
  v11 = *&CATransform3DIdentity.m41;
  v12 = *&CATransform3DIdentity.m43;
  v13 = *&CATransform3DIdentity.m33;
  *(self + 22) = *&CATransform3DIdentity.m31;
  *(self + 25) = v12;
  *(self + 24) = v11;
  *(self + 23) = v13;
  *(self + 26) = CGPointZero;
  return self;
}

@end