@interface ZWLensZoomView
- (BOOL)_effectRequiresQuartzFilter:(id)filter;
- (CGPoint)updateZoomPanOffset:(CGPoint)offset zoomFactor:(double)factor roundedLensCorners:(BOOL)corners animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion;
- (CGPoint)zoomPanOffset;
- (CGRect)_effectiveRectForBounds:(CGRect)bounds position:(CGPoint)position scaleFactor:(double)factor;
- (CGRect)effectiveZoomViewFrame;
- (CGRect)sampleRect;
- (CGSize)_prescaledSizeForFinalSize:(CGSize)size zoomFactor:(double)factor;
- (CGSize)sampledContentSizeWithZoomFactor:(double)factor;
- (ZWLensZoomView)initWithFrame:(CGRect)frame;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)makePortalVisible:(BOOL)visible withGrayScaleFilter:(BOOL)filter;
- (void)showLensResizingHandlesShowing:(BOOL)showing;
- (void)updateCornerRadii;
- (void)updateLensEffect:(id)effect animated:(BOOL)animated completion:(id)completion;
@end

@implementation ZWLensZoomView

- (ZWLensZoomView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = ZWLensZoomView;
  v3 = [(ZWLensZoomView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ZWLensZoomView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIColor clearColor];
    [(ZWLensZoomView *)v4 setBackgroundColor:v5];

    [(ZWLensZoomView *)v4 setClipsToBounds:1];
    [(ZWLensZoomView *)v4 setZoomFactor:AXZoomMinimumZoomLevel];
    [(ZWLensZoomView *)v4 setZoomPanOffset:CGPointZero.x, CGPointZero.y];
    v6 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(ZWLensZoomView *)v4 setZoomView:v10];
    [(ZWLensZoomView *)v4 addSubview:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v10 ax_pinConstraintsInAllDimensionsToView:v4];
    v12 = objc_alloc_init(CAReplicatorLayer);
    [v12 setAllowsHitTesting:0];
    [v12 setInstanceCount:2];
    [(ZWLensZoomView *)v4 setZoomReplicatorLayer:v12];
    layer = [v10 layer];
    [layer addSublayer:v12];

    v14 = objc_alloc_init(CABackdropLayer);
    [v14 setEnabled:1];
    [v14 setAllowsHitTesting:1];
    [v14 setGroupName:@"ZoomBackdropLayer"];
    [(ZWLensZoomView *)v4 setZoomBackdropLayer:v14];
    [v12 addSublayer:v14];
    if (ZWUseVibrantBlendModes())
    {
      v15 = +[CAShapeLayer layer];
      zoomBackdropLayer = [(ZWLensZoomView *)v4 zoomBackdropLayer];
      [zoomBackdropLayer setMask:v15];

      [(ZWLensZoomView *)v4 setMaskLayer:v15];
    }

    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(ZWLensZoomView *)v4 setEffectView:v17];
    [(ZWLensZoomView *)v4 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v17 ax_pinConstraintsInAllDimensionsToView:v4];
    v19 = objc_alloc_init(CAReplicatorLayer);

    [v19 setAllowsHitTesting:0];
    [v19 setInstanceCount:2];
    [(ZWLensZoomView *)v4 setEffectReplicatorLayer:v19];
    layer2 = [v17 layer];
    [layer2 addSublayer:v19];

    layer3 = [v17 layer];
    [layer3 setAllowsHitTesting:0];

    v22 = objc_alloc_init(CABackdropLayer);
    [v22 setEnabled:1];
    [v22 setAllowsHitTesting:0];
    v23 = [CAFilter filterWithType:kCAFilterColorInvert];
    v29 = v23;
    v24 = [NSArray arrayWithObjects:&v29 count:1];
    [v22 setFilters:v24];

    [(ZWLensZoomView *)v4 setEffectBackdropLayer:v22];
    [v19 addSublayer:v22];
    effectView = [(ZWLensZoomView *)v4 effectView];
    [(ZWLensZoomView *)v4 sendSubviewToBack:effectView];

    v26 = objc_alloc_init(CAPortalLayer);
    [(ZWLensZoomView *)v4 setIslandPortalLayer:v26];

    [(ZWLensZoomView *)v4 requestPortalInfo];
    [(ZWLensZoomView *)v4 makePortalVisible:0 withGrayScaleFilter:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = ZWLensZoomView;
  [(ZWLensZoomView *)&v8 layoutSubviews];
  [(ZWLensZoomView *)self zoomPanOffset];
  v4 = v3;
  v6 = v5;
  [(ZWLensZoomView *)self zoomFactor];
  [(ZWLensZoomView *)self updateZoomPanOffset:[(ZWLensZoomView *)self roundedLensCorners] zoomFactor:0 roundedLensCorners:0 animated:v4 animationDuration:v6 completion:v7, -1.0];
}

- (CGSize)sampledContentSizeWithZoomFactor:(double)factor
{
  [(ZWLensZoomView *)self bounds];

  [(ZWLensZoomView *)self _prescaledSizeForFinalSize:v5 zoomFactor:v6, factor];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showLensResizingHandlesShowing:(BOOL)showing
{
  [(ZWLensZoomView *)self setLensResizingHandlesShowing:showing];

  [(ZWLensZoomView *)self setNeedsLayout];
}

- (CGRect)effectiveZoomViewFrame
{
  zoomReplicatorLayer = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [zoomReplicatorLayer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  zoomReplicatorLayer2 = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [zoomReplicatorLayer2 position];
  v14 = v13;
  v16 = v15;

  [(ZWLensZoomView *)self _effectiveRectForBounds:v5 position:v7 scaleFactor:v9, v11, v14, v16, 1.0];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)animationDidStart:(id)start
{
  ZOTMainScreenSize();
  v5 = v4;
  ZOTMainScreenSize();
  if (v5 < v6)
  {
    v5 = v6;
  }

  zoomBackdropLayer = [(ZWLensZoomView *)self zoomBackdropLayer];
  [zoomBackdropLayer setMarginWidth:v5];

  ZOTMainScreenSize();
  v9 = v8;
  ZOTMainScreenSize();
  if (v9 < v10)
  {
    v9 = v10;
  }

  effectBackdropLayer = [(ZWLensZoomView *)self effectBackdropLayer];
  [effectBackdropLayer setMarginWidth:v9];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(ZWLensZoomView *)self zoomBackdropLayer:stop];
  [v5 setMarginWidth:0.0];

  effectBackdropLayer = [(ZWLensZoomView *)self effectBackdropLayer];
  [effectBackdropLayer setMarginWidth:0.0];

  if ([(ZWLensZoomView *)self roundedLensCorners])
  {
    [(ZWLensZoomView *)self zoomFactor];
    v8 = 1.0 / v7;
    [(ZWLensZoomView *)self zoomFactor];
    CGAffineTransformMakeScale(&m, v8, 1.0 / v9);
    CATransform3DMakeAffineTransform(&v18, &m);
    maskLayer = [(ZWLensZoomView *)self maskLayer];
    v14 = *&v18.m31;
    v15 = *&v18.m33;
    v16 = *&v18.m41;
    v17 = *&v18.m43;
    *&m.a = *&v18.m11;
    *&m.c = *&v18.m13;
    *&m.tx = *&v18.m21;
    v13 = *&v18.m23;
    [maskLayer setTransform:&m];
  }

  else
  {
    layer = [(ZWLensZoomView *)self layer];
    [layer setCornerRadius:0.0];
  }
}

- (CGPoint)updateZoomPanOffset:(CGPoint)offset zoomFactor:(double)factor roundedLensCorners:(BOOL)corners animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  cornersCopy = corners;
  y = offset.y;
  x = offset.x;
  completionCopy = completion;
  [(ZWLensZoomView *)self zoomFactor];
  v17 = v16;
  [(ZWLensZoomView *)self setZoomFactor:factor];
  [(ZWLensZoomView *)self setZoomPanOffset:x, y];
  [(ZWLensZoomView *)self setRoundedLensCorners:cornersCopy];
  [(ZWLensZoomView *)self bounds];
  if (CGRectIsEmpty(v248))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    v18 = CGPointZero.x;
    v19 = CGPointZero.y;
    goto LABEL_67;
  }

  v20 = vabdd_f64(factor, AXZoomMinimumZoomLevel) <= 0.0001;
  v244[0] = _NSConcreteStackBlock;
  v244[1] = 3221225472;
  v244[2] = __106__ZWLensZoomView_updateZoomPanOffset_zoomFactor_roundedLensCorners_animated_animationDuration_completion___block_invoke;
  v244[3] = &unk_78F80;
  v21 = AXZoomMinimumZoomLevel >= factor || v20;
  v244[4] = self;
  v246 = v21;
  v245 = completionCopy;
  v22 = objc_retainBlock(v244);
  v23 = v22;
  if (!animatedCopy)
  {
    zoomReplicatorLayer = [(ZWLensZoomView *)self zoomReplicatorLayer];
    [zoomReplicatorLayer removeAllAnimations];

    v23 = 0;
  }

  v219 = v17;
  durationCopy = duration;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [CATransaction setCompletionBlock:v23];
  if ((v21 & 1) == 0)
  {
    zoomBackdropLayer = [(ZWLensZoomView *)self zoomBackdropLayer];
    [zoomBackdropLayer setEnabled:1];
  }

  [(ZWLensZoomView *)self zoomPanOffset];
  v27 = v26;
  v29 = v28;
  [(ZWLensZoomView *)self bounds];
  v233 = v31;
  v234 = v30;
  v231 = v32;
  v232 = v33;
  [(ZWLensZoomView *)self zw_boundsCenter];
  v35 = v34;
  v37 = v36;
  [(ZWLensZoomView *)self bounds];
  v39 = v38;
  v41 = v40;
  [(ZWLensZoomView *)self zoomFactor];
  [(ZWLensZoomView *)self _prescaledSizeForFinalSize:v39 zoomFactor:v41, v42];
  v44 = v43;
  v46 = v45;
  v218 = v35;
  [(ZWLensZoomView *)self bounds];
  v48 = v47 * 0.5 - ZWZoomEdgeSlackAmount();
  if ([(ZWLensZoomView *)self offsetZoomWindowFromFinger])
  {
    v49 = v29 + v37 + v48;
  }

  else
  {
    v49 = v29 + v37;
  }

  v216 = v46;
  v217 = v44;
  [(ZWLensZoomView *)self _effectiveRectForBounds:0.0 position:0.0 scaleFactor:v44, v46, v27 + v35, v49, 1.0];
  v54 = v27 + fabs(v50);
  if (v50 >= v234)
  {
    v54 = v27;
  }

  v55 = v50 + v52;
  if (v55 <= v232)
  {
    v56 = v54;
  }

  else
  {
    v56 = v54 - (v55 - v232);
  }

  v57 = v29 + fabs(v51);
  if (v51 >= v231)
  {
    v57 = v29;
  }

  v58 = v51 + v53;
  if (v58 <= v233)
  {
    v59 = v57;
  }

  else
  {
    v59 = v57 - (v58 - v233);
  }

  v60 = v37 + v59;
  if ([(ZWLensZoomView *)self offsetZoomWindowFromFinger])
  {
    v61 = v48 + v60;
  }

  else
  {
    v61 = v60;
  }

  v229 = *&CATransform3DIdentity.m33;
  *&v243.m31 = *&CATransform3DIdentity.m31;
  v230 = *&v243.m31;
  *&v243.m33 = v229;
  v227 = *&CATransform3DIdentity.m43;
  v228 = *&CATransform3DIdentity.m41;
  *&v243.m41 = v228;
  *&v243.m43 = v227;
  v225 = *&CATransform3DIdentity.m13;
  v226 = *&CATransform3DIdentity.m11;
  *&v243.m11 = *&CATransform3DIdentity.m11;
  *&v243.m13 = v225;
  v223 = *&CATransform3DIdentity.m23;
  v224 = *&CATransform3DIdentity.m21;
  *&v243.m21 = v224;
  *&v243.m23 = v223;
  *&v242.m31 = *&v243.m31;
  *&v242.m33 = v229;
  v222 = v59;
  if ([(ZWLensZoomView *)self offsetZoomWindowFromFinger])
  {
    v62 = v48 + v59;
  }

  else
  {
    v62 = v59;
  }

  v63 = v56;
  *&v242.m41 = v228;
  *&v242.m43 = v227;
  *&v242.m11 = v226;
  *&v242.m13 = v225;
  *&v242.m21 = v224;
  *&v242.m23 = v223;
  CATransform3DTranslate(&v243, &v242, -v56, -v62, 0.0);
  [(ZWLensZoomView *)self zoomFactor];
  v65 = v64;
  [(ZWLensZoomView *)self zoomFactor];
  v241 = v243;
  CATransform3DScale(&v242, &v241, v65, v66, 1.0);
  v243 = v242;
  window = [(ZWLensZoomView *)self window];
  [window convertRect:self fromView:{v234, v231, v232, v233}];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  traitCollection = [(ZWLensZoomView *)self traitCollection];
  [traitCollection displayCornerRadius];
  v78 = v77;

  if (cornersCopy && (v79 = [(ZWLensZoomView *)self lensResizingHandlesShowing], memset(&v241, 0, 64), !v79))
  {
    window2 = [(ZWLensZoomView *)self window];
    [window2 bounds];
    ZWCornerRadiiForFrameInContainer(&v241, v69, v71, v73, v75, v84, v85, v86, v87, v78);

    ZWCornerRadiusForBackgroundWithSize(v232, v233);
    v82 = v88 == 0.0;
  }

  else
  {
    v80 = *(&CACornerRadiiZero + 1);
    *&v241.m11 = *&CACornerRadiiZero;
    *&v241.m13 = v80;
    v81 = *(&CACornerRadiiZero + 3);
    *&v241.m21 = *(&CACornerRadiiZero + 2);
    *&v241.m23 = v81;
    v82 = 1;
  }

  v89 = v63;
  v90 = durationCopy;
  if (!animatedCopy || !v82)
  {
    v237 = *&v241.m11;
    v238 = *&v241.m13;
    v239 = *&v241.m21;
    v240 = *&v241.m23;
    layer = [(ZWLensZoomView *)self layer];
    *&v242.m11 = v237;
    *&v242.m13 = v238;
    *&v242.m21 = v239;
    *&v242.m23 = v240;
    [layer setCornerRadii:&v242];
  }

  v92 = v218 + v89;
  if (animatedCopy)
  {
    if (durationCopy <= 0.0)
    {
      v90 = ZWDefaultZoomAnimationDuration();
    }

    v93 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
    zoomReplicatorLayer2 = [(ZWLensZoomView *)self zoomReplicatorLayer];
    v95 = zoomReplicatorLayer2;
    if (zoomReplicatorLayer2)
    {
      [zoomReplicatorLayer2 instanceTransform];
    }

    else
    {
      memset(&v242, 0, sizeof(v242));
    }

    v96 = [NSValue valueWithCATransform3D:&v242];
    [v93 setFromValue:v96];

    v242 = v243;
    v97 = [NSValue valueWithCATransform3D:&v242];
    [v93 setToValue:v97];

    [v93 setDuration:v90];
    [v93 setDelegate:self];
    [v93 setCumulative:1];
    zoomReplicatorLayer3 = [(ZWLensZoomView *)self zoomReplicatorLayer];
    [zoomReplicatorLayer3 addAnimation:v93 forKey:@"RepInstanceTransform"];

    [(ZWLensZoomView *)self zoomFactor];
    if (v99 >= v219)
    {
      [(ZWLensZoomView *)self zoomFactor];
      if (v106 != v219)
      {
        goto LABEL_51;
      }

      zoomReplicatorLayer4 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer4 position];
      v109 = v108;
      v111 = v110;

      if (v109 == v92 && v111 == v61)
      {
        goto LABEL_51;
      }

      usleep(0x3E8u);
      v100 = [CABasicAnimation animationWithKeyPath:@"position"];
      [(ZWLensZoomView *)self zoomReplicatorLayer];
      v112 = v221 = v22;
      [v112 position];
      v113 = [NSValue valueWithCGPoint:?];
      [v100 setFromValue:v113];

      v114 = [NSValue valueWithCGPoint:v92, v61];
      [v100 setToValue:v114];

      [v100 setDuration:v90];
      zoomReplicatorLayer5 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer5 addAnimation:v100 forKey:@"RepPosition"];

      zoomReplicatorLayer9 = [CABasicAnimation animationWithKeyPath:@"position"];
      zoomReplicatorLayer6 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer6 position];
      v117 = [NSValue valueWithCGPoint:?];
      [zoomReplicatorLayer9 setFromValue:v117];

      v22 = v221;
      v118 = [NSValue valueWithCGPoint:v92, v61];
      [zoomReplicatorLayer9 setToValue:v118];

      [zoomReplicatorLayer9 setDuration:v90];
      effectReplicatorLayer = [(ZWLensZoomView *)self effectReplicatorLayer];
      [effectReplicatorLayer addAnimation:zoomReplicatorLayer9 forKey:@"FilterPosition"];
    }

    else
    {
      v100 = [CABasicAnimation animationWithKeyPath:@"position"];
      zoomReplicatorLayer7 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer7 position];
      v102 = [NSValue valueWithCGPoint:?];
      [v100 setFromValue:v102];

      zoomReplicatorLayer8 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer8 position];
      v104 = [NSValue valueWithCGPoint:?];
      [v100 setToValue:v104];

      [v100 setDuration:v90];
      zoomReplicatorLayer9 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer9 addAnimation:v100 forKey:@"RepPosition"];
    }

LABEL_51:
  }

  v120 = fabs(v61) != INFINITY;
  if (fabs(v92) != INFINITY && v120)
  {
    v249.origin.x = 0.0;
    v249.origin.y = 0.0;
    v249.size.height = v216;
    v249.size.width = v217;
    if (!CGRectIsEmpty(v249))
    {
      zoomReplicatorLayer10 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer10 setPosition:{v92, v61}];

      zoomReplicatorLayer11 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer11 setBounds:{0.0, 0.0, v217, v216}];

      zoomBackdropLayer2 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [zoomBackdropLayer2 setBounds:{0.0, 0.0, v217, v216}];

      v250.origin.x = 0.0;
      v250.origin.y = 0.0;
      v250.size.width = v217;
      v250.size.height = v216;
      MidX = CGRectGetMidX(v250);
      v251.origin.x = 0.0;
      v251.origin.y = 0.0;
      v251.size.width = v217;
      v251.size.height = v216;
      MidY = CGRectGetMidY(v251);
      zoomBackdropLayer3 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [zoomBackdropLayer3 setPosition:{MidX, MidY}];

      v236 = v243;
      zoomReplicatorLayer12 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      v242 = v236;
      [zoomReplicatorLayer12 setInstanceTransform:&v242];

      zoomReplicatorLayer13 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer13 bounds];
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v137 = v136;
      effectReplicatorLayer2 = [(ZWLensZoomView *)self effectReplicatorLayer];
      [effectReplicatorLayer2 setBounds:{v131, v133, v135, v137}];

      zoomReplicatorLayer14 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [zoomReplicatorLayer14 position];
      v141 = v140;
      v143 = v142;
      effectReplicatorLayer3 = [(ZWLensZoomView *)self effectReplicatorLayer];
      [effectReplicatorLayer3 setPosition:{v141, v143}];

      zoomBackdropLayer4 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [zoomBackdropLayer4 bounds];
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      effectBackdropLayer = [(ZWLensZoomView *)self effectBackdropLayer];
      [effectBackdropLayer setBounds:{v147, v149, v151, v153}];

      zoomBackdropLayer5 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [zoomBackdropLayer5 position];
      v157 = v156;
      v159 = v158;
      effectBackdropLayer2 = [(ZWLensZoomView *)self effectBackdropLayer];
      [effectBackdropLayer2 setPosition:{v157, v159}];
    }
  }

  if (cornersCopy)
  {
    maskLayer = [(ZWLensZoomView *)self maskLayer];
    zoomBackdropLayer6 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [zoomBackdropLayer6 setMask:maskLayer];

    lensResizingHandlesShowing = [(ZWLensZoomView *)self lensResizingHandlesShowing];
    *&v242.m11 = *&v241.m11;
    *&v242.m13 = *&v241.m13;
    *&v242.m21 = *&v241.m21;
    *&v242.m23 = *&v241.m23;
    v164 = ZWInnerLensBorderForBounds(lensResizingHandlesShowing, &v242.m11, v234, v231, v232, v233);
    cGPath = [v164 CGPath];
    maskLayer2 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer2 setPath:cGPath];

    v167 = +[UIColor whiteColor];
    cGColor = [v167 CGColor];
    maskLayer3 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer3 setFillColor:cGColor];

    v170 = +[UIColor whiteColor];
    cGColor2 = [v170 CGColor];
    maskLayer4 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer4 setStrokeColor:cGColor2];

    v173 = ZWLensInnerBorderWidth();
    maskLayer5 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer5 setLineWidth:v173];

    v175 = +[UIColor clearColor];
    cGColor3 = [v175 CGColor];
    maskLayer6 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer6 setBackgroundColor:cGColor3];

    zoomBackdropLayer7 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [zoomBackdropLayer7 position];
    v180 = v179;
    v182 = v181;
    maskLayer7 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer7 setPosition:{v180, v182}];

    layer2 = [(ZWLensZoomView *)self layer];
    [layer2 bounds];
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    maskLayer8 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer8 setBounds:{v186, v188, v190, v192}];

    if (animatedCopy)
    {
      maskLayer9 = [(ZWLensZoomView *)self maskLayer];
      v195 = maskLayer9;
      *&v242.m31 = v230;
      *&v242.m33 = v229;
      *&v242.m41 = v228;
      *&v242.m43 = v227;
      *&v242.m11 = v226;
      *&v242.m13 = v225;
      *&v242.m21 = v224;
      *&v242.m23 = v223;
    }

    else
    {
      [(ZWLensZoomView *)self zoomFactor];
      v210 = 1.0 / v209;
      [(ZWLensZoomView *)self zoomFactor];
      CGAffineTransformMakeScale(&v242, v210, 1.0 / v211);
      CATransform3DMakeAffineTransform(&v235, &v242);
      maskLayer9 = [(ZWLensZoomView *)self maskLayer];
      v195 = maskLayer9;
      v242 = v235;
    }

    [maskLayer9 setTransform:&v242];
  }

  else
  {
    zoomBackdropLayer8 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [zoomBackdropLayer8 setMask:0];

    layer3 = [(ZWLensZoomView *)self layer];
    [layer3 bounds];
    v199 = v198;
    v201 = v200;
    v203 = v202;
    v205 = v204;
    maskLayer10 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer10 setFrame:{v199, v201, v203, v205}];

    v195 = +[UIColor whiteColor];
    cGColor4 = [v195 CGColor];
    maskLayer11 = [(ZWLensZoomView *)self maskLayer];
    [maskLayer11 setBackgroundColor:cGColor4];
  }

  [(ZWLensZoomView *)self setZoomPanOffset:v89, v222];
  +[CATransaction commit];
  if (!animatedCopy)
  {
    (v22[2])(v22);
  }

  [(ZWLensZoomView *)self zoomPanOffset];
  v18 = v212;
  v19 = v213;

LABEL_67:
  v214 = v18;
  v215 = v19;
  result.y = v215;
  result.x = v214;
  return result;
}

uint64_t __106__ZWLensZoomView_updateZoomPanOffset_zoomFactor_roundedLensCorners_animated_animationDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) zoomBackdropLayer];
  [v3 setEnabled:(v2 & 1) == 0];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = ZWLensZoomView;
  [(ZWLensZoomView *)&v3 didMoveToWindow];
  [(ZWLensZoomView *)self updateCornerRadii];
}

- (void)updateCornerRadii
{
  if ([(ZWLensZoomView *)self roundedLensCorners])
  {
    window = [(ZWLensZoomView *)self window];
    [(ZWLensZoomView *)self bounds];
    [window convertRect:self fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    traitCollection = [(ZWLensZoomView *)self traitCollection];
    [traitCollection displayCornerRadius];
    v14 = v13;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    if ([(ZWLensZoomView *)self lensResizingHandlesShowing])
    {
      v15 = CACornerRadiiZero[1];
      v43 = CACornerRadiiZero[0];
      v44 = v15;
      v16 = CACornerRadiiZero[3];
      v45 = CACornerRadiiZero[2];
      v46 = v16;
    }

    else
    {
      window2 = [(ZWLensZoomView *)self window];
      [window2 bounds];
      ZWCornerRadiiForFrameInContainer(&v43, v5, v7, v9, v11, v18, v19, v20, v21, v14);
    }

    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    layer = [(ZWLensZoomView *)self layer];
    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    [layer setCornerRadii:&v35];

    [(ZWLensZoomView *)self bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    lensResizingHandlesShowing = [(ZWLensZoomView *)self lensResizingHandlesShowing];
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v32 = ZWInnerLensBorderForBounds(lensResizingHandlesShowing, &v35, v24, v26, v28, v30);
    cGPath = [v32 CGPath];
    maskLayer = [(ZWLensZoomView *)self maskLayer];
    [maskLayer setPath:cGPath];
  }
}

- (CGRect)sampleRect
{
  zoomReplicatorLayer = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [zoomReplicatorLayer bounds];
  v4 = v3;
  v6 = v5;
  [zoomReplicatorLayer position];
  v8 = v7;
  [zoomReplicatorLayer bounds];
  v10 = v8 - v9 * 0.5;
  [zoomReplicatorLayer position];
  v12 = v11;
  [zoomReplicatorLayer bounds];
  v14 = v12 - v13 * 0.5;

  v15 = v10;
  v16 = v14;
  v17 = v4;
  v18 = v6;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)_effectRequiresQuartzFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy isEqualToString:AXZoomLensEffectInvertColors] & 1) != 0 || (objc_msgSend(filterCopy, "isEqualToString:", AXZoomLensEffectBlackAndWhite) & 1) != 0 || (objc_msgSend(filterCopy, "isEqualToString:", AXZoomLensEffectBlackAndWhiteInverted) & 1) != 0 || (objc_msgSend(filterCopy, "isEqualToString:", AXZoomLensEffectHueAdjust))
  {
    v4 = 1;
  }

  else
  {
    if (([filterCopy isEqualToString:AXZoomLensEffectLowLight] & 1) == 0 && (objc_msgSend(filterCopy, "isEqualToString:", AXZoomLensEffectNone) & 1) == 0)
    {
      _AXAssert();
    }

    v4 = 0;
  }

  return v4;
}

- (void)updateLensEffect:(id)effect animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  effectCopy = effect;
  completionCopy = completion;
  v10 = &PLLogRegisteredEvent_ptr;
  +[CATransaction begin];
  [CATransaction setDisableActions:animatedCopy];
  if (animatedCopy)
  {
    v11 = completionCopy;
  }

  else
  {
    v11 = 0;
  }

  [CATransaction setCompletionBlock:v11];
  v12 = [(ZWLensZoomView *)self _effectRequiresQuartzFilter:effectCopy];
  effectReplicatorLayer = [(ZWLensZoomView *)self effectReplicatorLayer];
  effectView = effectReplicatorLayer;
  if (v12)
  {
    superlayer = [effectReplicatorLayer superlayer];

    if (superlayer)
    {
      goto LABEL_9;
    }

    effectView = [(ZWLensZoomView *)self effectView];
    layer = [effectView layer];
    effectReplicatorLayer2 = [(ZWLensZoomView *)self effectReplicatorLayer];
    [layer addSublayer:effectReplicatorLayer2];
  }

  else
  {
    [effectReplicatorLayer removeFromSuperlayer];
  }

LABEL_9:
  effectBackdropLayer = [(ZWLensZoomView *)self effectBackdropLayer];
  v19 = +[UIColor clearColor];
  effectView2 = [(ZWLensZoomView *)self effectView];
  [effectView2 setAccessibilityIgnoresInvertColors:0];

  if (![effectCopy isEqualToString:AXZoomLensEffectLowLight])
  {
    if ([effectCopy isEqualToString:AXZoomLensEffectInvertColors])
    {
      v30 = [CAFilter filterWithType:kCAFilterColorInvert];
      v43 = v30;
      v31 = &v43;
    }

    else if ([effectCopy isEqualToString:AXZoomLensEffectBlackAndWhite])
    {
      v30 = [CAFilter filterWithType:kCAFilterColorSaturate];
      [v30 setValue:&off_7B458 forKey:@"inputAmount"];
      v42 = v30;
      v31 = &v42;
    }

    else
    {
      if ([effectCopy isEqualToString:AXZoomLensEffectBlackAndWhiteInverted])
      {
        v30 = [CAFilter filterWithType:kCAFilterColorSaturate];
        [v30 setValue:&off_7B458 forKey:@"inputAmount"];
        v41[0] = v30;
        v32 = [CAFilter filterWithType:kCAFilterColorInvert];
        v41[1] = v32;
        v38 = [NSArray arrayWithObjects:v41 count:2];
        [effectBackdropLayer setFilters:v38];

        goto LABEL_22;
      }

      if (![effectCopy isEqualToString:AXZoomLensEffectHueAdjust])
      {
        if ([effectCopy isEqualToString:AXZoomLensEffectNone])
        {
          [effectBackdropLayer setFilters:0];
        }

        else
        {
          v39 = effectCopy;
          _AXAssert();
        }

        goto LABEL_23;
      }

      v30 = [CAFilter filterWithType:kCAFilterColorHueRotate];
      [v30 setValue:&off_7B718 forKey:@"inputAngle"];
      v40 = v30;
      v31 = &v40;
    }

    v32 = [NSArray arrayWithObjects:v31 count:1];
    [effectBackdropLayer setFilters:v32];
LABEL_22:

    goto LABEL_23;
  }

  [effectBackdropLayer setFilters:0];
  v21 = +[UIColor blackColor];
  v22 = [v21 colorWithAlphaComponent:0.6];

  v23 = +[AXSubsystemZoom sharedInstance];
  LOBYTE(v21) = [v23 ignoreLogging];

  if ((v21 & 1) == 0)
  {
    v24 = +[AXSubsystemZoom identifier];
    v25 = AXLoggerForFacility();

    v26 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = AXColorizeFormatLog();
      v28 = _AXStringForArgs();
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 138543362;
        v45 = v28;
        _os_log_impl(&dword_0, v25, v26, "%{public}@", buf, 0xCu);
      }

      v10 = &PLLogRegisteredEvent_ptr;
    }
  }

  PLLogRegisteredEvent();
  effectView3 = [(ZWLensZoomView *)self effectView];
  [effectView3 setAccessibilityIgnoresInvertColors:1];

  v19 = v22;
LABEL_23:
  v33 = [(ZWLensZoomView *)self effectView:v39];
  [v33 setBackgroundColor:v19];

  v34 = [effectCopy isEqualToString:AXZoomLensEffectNone];
  [effectBackdropLayer setHidden:v34];
  [effectBackdropLayer setEnabled:v34 ^ 1];
  if ([effectCopy isEqualToString:AXZoomLensEffectInvertColors])
  {
    selfCopy3 = self;
    v36 = 1;
LABEL_28:
    v37 = 0;
    goto LABEL_29;
  }

  if (![effectCopy isEqualToString:AXZoomLensEffectBlackAndWhiteInverted])
  {
    selfCopy3 = self;
    v36 = 0;
    goto LABEL_28;
  }

  selfCopy3 = self;
  v36 = 1;
  v37 = 1;
LABEL_29:
  [(ZWLensZoomView *)selfCopy3 makePortalVisible:v36 withGrayScaleFilter:v37];
  [v10[331] commit];
  if (completionCopy && !animatedCopy)
  {
    completionCopy[2](completionCopy);
  }
}

id __35__ZWLensZoomView_requestPortalInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 72) setSourceLayerRenderId:{objc_msgSend(v3, "sourceLayerRenderID")}];
  v4 = [v3 sourceContextID];

  v5 = *(*(a1 + 32) + 72);

  return [v5 setSourceContextId:v4];
}

- (void)makePortalVisible:(BOOL)visible withGrayScaleFilter:(BOOL)filter
{
  visibleCopy = visible;
  if (filter)
  {
    v6 = [CAFilter filterWithType:kCAFilterColorSaturate];
    [v6 setValue:&off_7B458 forKey:@"inputAmount"];
    v14 = v6;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    [(CAPortalLayer *)self->_islandPortalLayer setFilters:v7];
  }

  else
  {
    [(CAPortalLayer *)self->_islandPortalLayer setFilters:&__NSArray0__struct];
  }

  [(CAPortalLayer *)self->_islandPortalLayer setMatchesPosition:visibleCopy];
  [(CAPortalLayer *)self->_islandPortalLayer setMatchesTransform:visibleCopy];
  [(CAPortalLayer *)self->_islandPortalLayer setHidden:visibleCopy ^ 1];
  [(CAPortalLayer *)self->_islandPortalLayer setAllowsHitTesting:visibleCopy];
  if (!visibleCopy)
  {
    islandPortalLayer = [(ZWLensZoomView *)self islandPortalLayer];
    [islandPortalLayer removeFromSuperlayer];
  }

  else
  {
    islandPortalLayer = [(ZWLensZoomView *)self effectView];
    layer = [islandPortalLayer layer];
    islandPortalLayer2 = [(ZWLensZoomView *)self islandPortalLayer];
    effectView = [(ZWLensZoomView *)self effectView];
    layer2 = [effectView layer];
    sublayers = [layer2 sublayers];
    [layer insertSublayer:islandPortalLayer2 atIndex:{objc_msgSend(sublayers, "count")}];
  }
}

- (CGSize)_prescaledSizeForFinalSize:(CGSize)size zoomFactor:(double)factor
{
  v4 = size.width / factor;
  v5 = size.height / factor;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)_effectiveRectForBounds:(CGRect)bounds position:(CGPoint)position scaleFactor:(double)factor
{
  v5 = bounds.size.width * factor;
  v6 = bounds.size.height * factor;
  v7 = position.x - v5 * 0.5;
  v8 = position.y - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)zoomPanOffset
{
  x = self->_zoomPanOffset.x;
  y = self->_zoomPanOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end