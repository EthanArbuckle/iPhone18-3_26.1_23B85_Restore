@interface CRLCanvasSpacingGuideUILayer
- (CRLCanvasSpacingGuideUILayer)initWithSpacingRect:(CGRect)a3 ofOrientation:(int)a4 icc:(id)a5 useVisibleRect:(BOOL)a6;
- (void)p_generateArrowLayerForSpacingRect:(CGRect)a3 andViewScale:(double)a4;
- (void)setFrameFromSpacingRect:(CGRect)a3 icc:(id)a4;
@end

@implementation CRLCanvasSpacingGuideUILayer

- (CRLCanvasSpacingGuideUILayer)initWithSpacingRect:(CGRect)a3 ofOrientation:(int)a4 icc:(id)a5 useVisibleRect:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = CRLCanvasSpacingGuideUILayer;
  v13 = [(CRLCanvasSpacingGuideUILayer *)&v17 init];
  if (v13)
  {
    if (a4)
    {
      +[CRLSwappableAxesGeometry swappedAxesGeometry];
    }

    else
    {
      +[CRLSwappableAxesGeometry standardAxesGeometry];
    }
    v14 = ;
    mHorizontalGeom = v13->mHorizontalGeom;
    v13->mHorizontalGeom = v14;

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CRLCanvasSpacingGuideUILayer *)v13 setFrameFromSpacingRect:v12 icc:x, y, width, height];
    +[CATransaction commit];
  }

  return v13;
}

- (void)setFrameFromSpacingRect:(CGRect)a3 icc:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->mUseVisibleRect)
  {
    [v9 visibleScaledRectForCanvasUI];
    v81 = v11;
    v82 = v10;
    v80 = v12;
    rect = v13;
  }

  else
  {
    v81 = CGRectNull.origin.y;
    v82 = CGRectNull.origin.x;
    v80 = CGRectNull.size.width;
    rect = CGRectNull.size.height;
  }

  [v9 viewScale];
  v79 = v14;
  CGAffineTransformMakeScale(&v84, v14, v14);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = height;
  v86 = CGRectApplyAffineTransform(v85, &v84);
  v15 = v86.origin.x;
  v16 = v86.origin.y;
  v17 = v86.size.width;
  v18 = v86.size.height;
  mHorizontalGeom = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)mHorizontalGeom rectMinX:?];
  v21 = v20;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v15, v16, v17, v18];
  [(CRLSwappableAxesGeometry *)mHorizontalGeom makePointWithX:v21 Y:v22];
  v24 = v23;
  v26 = v25;
  v27 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v27 rectMaxX:v15, v16, v17, v18];
  v29 = v28;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v15, v16, v17, v18];
  [(CRLSwappableAxesGeometry *)v27 makePointWithX:v29 Y:v30];
  v32 = v31;
  v87.origin.y = v81;
  v87.origin.x = v82;
  v87.size.width = v80;
  v87.size.height = rect;
  if (!CGRectIsNull(v87))
  {
    v33 = self->mHorizontalGeom;
    [(CRLSwappableAxesGeometry *)v33 rectMinX:v15, v16, v17, v18];
    v77 = v34;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v15, v16, v17, v18];
    v36 = v35;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinY:v82, v81, v80, rect];
    [(CRLSwappableAxesGeometry *)v33 makePointWithX:v77 Y:fmax(v36, v37)];
    v76 = v38;
    v78 = v39;
    v40 = self->mHorizontalGeom;
    [(CRLSwappableAxesGeometry *)v40 rectMaxX:v15, v16, v17, v18];
    v42 = v41;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v15, v16, v17, v18];
    v44 = v43;
    v24 = v76;
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxY:v82, v81, v80, rect];
    v46 = fmin(v44, v45);
    v47 = v42;
    v26 = v78;
    [(CRLSwappableAxesGeometry *)v40 makePointWithX:v47 Y:v46];
    v32 = v48;
  }

  v49 = sub_10011EC88(v24, v26, v32);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v56 rectMinX:?];
  v58 = v57;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMidY:v49, v51, v53, v55];
  v60 = v59 + 1.0 + -7.0 / v79;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v49, v51, v53, v55];
  [(CRLSwappableAxesGeometry *)v56 makeRectWithX:v58 Y:v60 width:v61 height:15.0];
  v66 = sub_1001221E0(v62, v63, v64, v65);
  v68 = v67;
  v70 = v69;
  v72 = v71;
  [(CRLCanvasSpacingGuideUILayer *)self setFrame:?];
  mWidth = self->mWidth;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v66, v68, v70, v72];
  if (mWidth != v74)
  {
    [(CAShapeLayer *)self->mArrowLayer removeFromSuperlayer];
    [(CRLCanvasSpacingGuideUILayer *)self p_generateArrowLayerForSpacingRect:v66 andViewScale:v68, v70, v72, v79];
    [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:v66, v68, v70, v72];
    self->mWidth = v75;
  }

  +[CATransaction commit];
}

- (void)p_generateArrowLayerForSpacingRect:(CGRect)a3 andViewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_alloc_init(CAShapeLayer);
  mArrowLayer = self->mArrowLayer;
  self->mArrowLayer = v9;

  Mutable = CGPathCreateMutable();
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom makePointWithX:0.5 Y:0.5];
  v79 = v13;
  v80 = v12;
  mHorizontalGeom = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)mHorizontalGeom makePointWithX:1.5 Y:v15 * 0.5];
  v78 = v16;
  v71 = v17;
  v18 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v18 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v18 makePointWithX:0.5 Y:v19 + -0.5];
  v76 = v21;
  v77 = v20;
  v22 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v22 rectWidth:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v22 makePointWithX:v23 + -0.5 Y:0.5];
  v74 = v25;
  v75 = v24;
  v26 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v26 rectWidth:x, y, width, height];
  v28 = v27 + -1.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v26 makePointWithX:v28 Y:v29 * 0.5];
  v72 = v31;
  v73 = v30;
  v32 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v32 rectWidth:x, y, width, height];
  v34 = v33 + -0.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v32 makePointWithX:v34 Y:v35 + -0.5];
  v69 = v37;
  v70 = v36;
  v38 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v38 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v38 makePointWithX:5.5 Y:v39 * 0.5 + -3.0];
  v67 = v41;
  v68 = v40;
  v42 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v42 rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v42 makePointWithX:5.5 Y:v43 * 0.5 + 3.0];
  v65 = v45;
  v66 = v44;
  v46 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v46 rectWidth:x, y, width, height];
  v48 = v47 + -5.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v46 makePointWithX:v48 Y:v49 * 0.5 + -3.0];
  v63 = v51;
  v64 = v50;
  v52 = self->mHorizontalGeom;
  [(CRLSwappableAxesGeometry *)v52 rectWidth:x, y, width, height];
  v54 = v53 + -5.5;
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectHeight:x, y, width, height];
  [(CRLSwappableAxesGeometry *)v52 makePointWithX:v54 Y:v55 * 0.5 + 3.0];
  v61 = v57;
  v62 = v56;
  CGPathMoveToPoint(Mutable, 0, v80, v79);
  CGPathAddLineToPoint(Mutable, 0, v77, v76);
  CGPathMoveToPoint(Mutable, 0, v75, v74);
  CGPathAddLineToPoint(Mutable, 0, v70, v69);
  CGPathMoveToPoint(Mutable, 0, v78, v71);
  CGPathAddLineToPoint(Mutable, 0, v73, v72);
  [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectWidth:x, y, width, height];
  if (v58 * a4 >= 14.0)
  {
    CGPathMoveToPoint(Mutable, 0, v68, v67);
    CGPathAddLineToPoint(Mutable, 0, v78, v71);
    CGPathAddLineToPoint(Mutable, 0, v66, v65);
    CGPathMoveToPoint(Mutable, 0, v64, v63);
    CGPathAddLineToPoint(Mutable, 0, v73, v72);
    CGPathAddLineToPoint(Mutable, 0, v62, v61);
  }

  [(CAShapeLayer *)self->mArrowLayer setFillColor:0];
  v59 = +[CRLCanvasGuideController guideColor];
  -[CAShapeLayer setStrokeColor:](self->mArrowLayer, "setStrokeColor:", [v59 CGColor]);

  [(CAShapeLayer *)self->mArrowLayer setLineCap:kCALineCapSquare];
  [(CAShapeLayer *)self->mArrowLayer setLineWidth:1.0];
  [(CAShapeLayer *)self->mArrowLayer setPath:Mutable];
  CGPathRelease(Mutable);
  v60 = self->mArrowLayer;

  [(CRLCanvasSpacingGuideUILayer *)self addSublayer:v60];
}

@end