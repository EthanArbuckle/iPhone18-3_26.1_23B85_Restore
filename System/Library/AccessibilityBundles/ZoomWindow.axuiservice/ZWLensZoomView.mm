@interface ZWLensZoomView
- (BOOL)_effectRequiresQuartzFilter:(id)a3;
- (CGPoint)updateZoomPanOffset:(CGPoint)a3 zoomFactor:(double)a4 roundedLensCorners:(BOOL)a5 animated:(BOOL)a6 animationDuration:(double)a7 completion:(id)a8;
- (CGPoint)zoomPanOffset;
- (CGRect)_effectiveRectForBounds:(CGRect)a3 position:(CGPoint)a4 scaleFactor:(double)a5;
- (CGRect)effectiveZoomViewFrame;
- (CGRect)sampleRect;
- (CGSize)_prescaledSizeForFinalSize:(CGSize)a3 zoomFactor:(double)a4;
- (CGSize)sampledContentSizeWithZoomFactor:(double)a3;
- (ZWLensZoomView)initWithFrame:(CGRect)a3;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)makePortalVisible:(BOOL)a3 withGrayScaleFilter:(BOOL)a4;
- (void)showLensResizingHandlesShowing:(BOOL)a3;
- (void)updateCornerRadii;
- (void)updateLensEffect:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation ZWLensZoomView

- (ZWLensZoomView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = ZWLensZoomView;
  v3 = [(ZWLensZoomView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [v10 layer];
    [v13 addSublayer:v12];

    v14 = objc_alloc_init(CABackdropLayer);
    [v14 setEnabled:1];
    [v14 setAllowsHitTesting:1];
    [v14 setGroupName:@"ZoomBackdropLayer"];
    [(ZWLensZoomView *)v4 setZoomBackdropLayer:v14];
    [v12 addSublayer:v14];
    if (ZWUseVibrantBlendModes())
    {
      v15 = +[CAShapeLayer layer];
      v16 = [(ZWLensZoomView *)v4 zoomBackdropLayer];
      [v16 setMask:v15];

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
    v20 = [v17 layer];
    [v20 addSublayer:v19];

    v21 = [v17 layer];
    [v21 setAllowsHitTesting:0];

    v22 = objc_alloc_init(CABackdropLayer);
    [v22 setEnabled:1];
    [v22 setAllowsHitTesting:0];
    v23 = [CAFilter filterWithType:kCAFilterColorInvert];
    v29 = v23;
    v24 = [NSArray arrayWithObjects:&v29 count:1];
    [v22 setFilters:v24];

    [(ZWLensZoomView *)v4 setEffectBackdropLayer:v22];
    [v19 addSublayer:v22];
    v25 = [(ZWLensZoomView *)v4 effectView];
    [(ZWLensZoomView *)v4 sendSubviewToBack:v25];

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

- (CGSize)sampledContentSizeWithZoomFactor:(double)a3
{
  [(ZWLensZoomView *)self bounds];

  [(ZWLensZoomView *)self _prescaledSizeForFinalSize:v5 zoomFactor:v6, a3];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)showLensResizingHandlesShowing:(BOOL)a3
{
  [(ZWLensZoomView *)self setLensResizingHandlesShowing:a3];

  [(ZWLensZoomView *)self setNeedsLayout];
}

- (CGRect)effectiveZoomViewFrame
{
  v3 = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [v12 position];
  v14 = v13;
  v16 = v15;

  [(ZWLensZoomView *)self _effectiveRectForBounds:v5 position:v7 scaleFactor:v9, v11, v14, v16, 1.0];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)animationDidStart:(id)a3
{
  ZOTMainScreenSize();
  v5 = v4;
  ZOTMainScreenSize();
  if (v5 < v6)
  {
    v5 = v6;
  }

  v7 = [(ZWLensZoomView *)self zoomBackdropLayer];
  [v7 setMarginWidth:v5];

  ZOTMainScreenSize();
  v9 = v8;
  ZOTMainScreenSize();
  if (v9 < v10)
  {
    v9 = v10;
  }

  v11 = [(ZWLensZoomView *)self effectBackdropLayer];
  [v11 setMarginWidth:v9];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(ZWLensZoomView *)self zoomBackdropLayer:a3];
  [v5 setMarginWidth:0.0];

  v6 = [(ZWLensZoomView *)self effectBackdropLayer];
  [v6 setMarginWidth:0.0];

  if ([(ZWLensZoomView *)self roundedLensCorners])
  {
    [(ZWLensZoomView *)self zoomFactor];
    v8 = 1.0 / v7;
    [(ZWLensZoomView *)self zoomFactor];
    CGAffineTransformMakeScale(&m, v8, 1.0 / v9);
    CATransform3DMakeAffineTransform(&v18, &m);
    v10 = [(ZWLensZoomView *)self maskLayer];
    v14 = *&v18.m31;
    v15 = *&v18.m33;
    v16 = *&v18.m41;
    v17 = *&v18.m43;
    *&m.a = *&v18.m11;
    *&m.c = *&v18.m13;
    *&m.tx = *&v18.m21;
    v13 = *&v18.m23;
    [v10 setTransform:&m];
  }

  else
  {
    v11 = [(ZWLensZoomView *)self layer];
    [v11 setCornerRadius:0.0];
  }
}

- (CGPoint)updateZoomPanOffset:(CGPoint)a3 zoomFactor:(double)a4 roundedLensCorners:(BOOL)a5 animated:(BOOL)a6 animationDuration:(double)a7 completion:(id)a8
{
  v9 = a6;
  v10 = a5;
  y = a3.y;
  x = a3.x;
  v15 = a8;
  [(ZWLensZoomView *)self zoomFactor];
  v17 = v16;
  [(ZWLensZoomView *)self setZoomFactor:a4];
  [(ZWLensZoomView *)self setZoomPanOffset:x, y];
  [(ZWLensZoomView *)self setRoundedLensCorners:v10];
  [(ZWLensZoomView *)self bounds];
  if (CGRectIsEmpty(v248))
  {
    if (v15)
    {
      v15[2](v15);
    }

    v18 = CGPointZero.x;
    v19 = CGPointZero.y;
    goto LABEL_67;
  }

  v20 = vabdd_f64(a4, AXZoomMinimumZoomLevel) <= 0.0001;
  v244[0] = _NSConcreteStackBlock;
  v244[1] = 3221225472;
  v244[2] = __106__ZWLensZoomView_updateZoomPanOffset_zoomFactor_roundedLensCorners_animated_animationDuration_completion___block_invoke;
  v244[3] = &unk_78F80;
  v21 = AXZoomMinimumZoomLevel >= a4 || v20;
  v244[4] = self;
  v246 = v21;
  v245 = v15;
  v22 = objc_retainBlock(v244);
  v23 = v22;
  if (!v9)
  {
    v24 = [(ZWLensZoomView *)self zoomReplicatorLayer];
    [v24 removeAllAnimations];

    v23 = 0;
  }

  v219 = v17;
  v220 = a7;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [CATransaction setCompletionBlock:v23];
  if ((v21 & 1) == 0)
  {
    v25 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [v25 setEnabled:1];
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
  v67 = [(ZWLensZoomView *)self window];
  [v67 convertRect:self fromView:{v234, v231, v232, v233}];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = [(ZWLensZoomView *)self traitCollection];
  [v76 displayCornerRadius];
  v78 = v77;

  if (v10 && (v79 = [(ZWLensZoomView *)self lensResizingHandlesShowing], memset(&v241, 0, 64), !v79))
  {
    v83 = [(ZWLensZoomView *)self window];
    [v83 bounds];
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
  v90 = v220;
  if (!v9 || !v82)
  {
    v237 = *&v241.m11;
    v238 = *&v241.m13;
    v239 = *&v241.m21;
    v240 = *&v241.m23;
    v91 = [(ZWLensZoomView *)self layer];
    *&v242.m11 = v237;
    *&v242.m13 = v238;
    *&v242.m21 = v239;
    *&v242.m23 = v240;
    [v91 setCornerRadii:&v242];
  }

  v92 = v218 + v89;
  if (v9)
  {
    if (v220 <= 0.0)
    {
      v90 = ZWDefaultZoomAnimationDuration();
    }

    v93 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
    v94 = [(ZWLensZoomView *)self zoomReplicatorLayer];
    v95 = v94;
    if (v94)
    {
      [v94 instanceTransform];
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
    v98 = [(ZWLensZoomView *)self zoomReplicatorLayer];
    [v98 addAnimation:v93 forKey:@"RepInstanceTransform"];

    [(ZWLensZoomView *)self zoomFactor];
    if (v99 >= v219)
    {
      [(ZWLensZoomView *)self zoomFactor];
      if (v106 != v219)
      {
        goto LABEL_51;
      }

      v107 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v107 position];
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
      v115 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v115 addAnimation:v100 forKey:@"RepPosition"];

      v105 = [CABasicAnimation animationWithKeyPath:@"position"];
      v116 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v116 position];
      v117 = [NSValue valueWithCGPoint:?];
      [v105 setFromValue:v117];

      v22 = v221;
      v118 = [NSValue valueWithCGPoint:v92, v61];
      [v105 setToValue:v118];

      [v105 setDuration:v90];
      v119 = [(ZWLensZoomView *)self effectReplicatorLayer];
      [v119 addAnimation:v105 forKey:@"FilterPosition"];
    }

    else
    {
      v100 = [CABasicAnimation animationWithKeyPath:@"position"];
      v101 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v101 position];
      v102 = [NSValue valueWithCGPoint:?];
      [v100 setFromValue:v102];

      v103 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v103 position];
      v104 = [NSValue valueWithCGPoint:?];
      [v100 setToValue:v104];

      [v100 setDuration:v90];
      v105 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v105 addAnimation:v100 forKey:@"RepPosition"];
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
      v122 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v122 setPosition:{v92, v61}];

      v123 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v123 setBounds:{0.0, 0.0, v217, v216}];

      v124 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [v124 setBounds:{0.0, 0.0, v217, v216}];

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
      v127 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [v127 setPosition:{MidX, MidY}];

      v236 = v243;
      v128 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      v242 = v236;
      [v128 setInstanceTransform:&v242];

      v129 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v129 bounds];
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v137 = v136;
      v138 = [(ZWLensZoomView *)self effectReplicatorLayer];
      [v138 setBounds:{v131, v133, v135, v137}];

      v139 = [(ZWLensZoomView *)self zoomReplicatorLayer];
      [v139 position];
      v141 = v140;
      v143 = v142;
      v144 = [(ZWLensZoomView *)self effectReplicatorLayer];
      [v144 setPosition:{v141, v143}];

      v145 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [v145 bounds];
      v147 = v146;
      v149 = v148;
      v151 = v150;
      v153 = v152;
      v154 = [(ZWLensZoomView *)self effectBackdropLayer];
      [v154 setBounds:{v147, v149, v151, v153}];

      v155 = [(ZWLensZoomView *)self zoomBackdropLayer];
      [v155 position];
      v157 = v156;
      v159 = v158;
      v160 = [(ZWLensZoomView *)self effectBackdropLayer];
      [v160 setPosition:{v157, v159}];
    }
  }

  if (v10)
  {
    v161 = [(ZWLensZoomView *)self maskLayer];
    v162 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [v162 setMask:v161];

    v163 = [(ZWLensZoomView *)self lensResizingHandlesShowing];
    *&v242.m11 = *&v241.m11;
    *&v242.m13 = *&v241.m13;
    *&v242.m21 = *&v241.m21;
    *&v242.m23 = *&v241.m23;
    v164 = ZWInnerLensBorderForBounds(v163, &v242.m11, v234, v231, v232, v233);
    v165 = [v164 CGPath];
    v166 = [(ZWLensZoomView *)self maskLayer];
    [v166 setPath:v165];

    v167 = +[UIColor whiteColor];
    v168 = [v167 CGColor];
    v169 = [(ZWLensZoomView *)self maskLayer];
    [v169 setFillColor:v168];

    v170 = +[UIColor whiteColor];
    v171 = [v170 CGColor];
    v172 = [(ZWLensZoomView *)self maskLayer];
    [v172 setStrokeColor:v171];

    v173 = ZWLensInnerBorderWidth();
    v174 = [(ZWLensZoomView *)self maskLayer];
    [v174 setLineWidth:v173];

    v175 = +[UIColor clearColor];
    v176 = [v175 CGColor];
    v177 = [(ZWLensZoomView *)self maskLayer];
    [v177 setBackgroundColor:v176];

    v178 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [v178 position];
    v180 = v179;
    v182 = v181;
    v183 = [(ZWLensZoomView *)self maskLayer];
    [v183 setPosition:{v180, v182}];

    v184 = [(ZWLensZoomView *)self layer];
    [v184 bounds];
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = [(ZWLensZoomView *)self maskLayer];
    [v193 setBounds:{v186, v188, v190, v192}];

    if (v9)
    {
      v194 = [(ZWLensZoomView *)self maskLayer];
      v195 = v194;
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
      v194 = [(ZWLensZoomView *)self maskLayer];
      v195 = v194;
      v242 = v235;
    }

    [v194 setTransform:&v242];
  }

  else
  {
    v196 = [(ZWLensZoomView *)self zoomBackdropLayer];
    [v196 setMask:0];

    v197 = [(ZWLensZoomView *)self layer];
    [v197 bounds];
    v199 = v198;
    v201 = v200;
    v203 = v202;
    v205 = v204;
    v206 = [(ZWLensZoomView *)self maskLayer];
    [v206 setFrame:{v199, v201, v203, v205}];

    v195 = +[UIColor whiteColor];
    v207 = [v195 CGColor];
    v208 = [(ZWLensZoomView *)self maskLayer];
    [v208 setBackgroundColor:v207];
  }

  [(ZWLensZoomView *)self setZoomPanOffset:v89, v222];
  +[CATransaction commit];
  if (!v9)
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
    v3 = [(ZWLensZoomView *)self window];
    [(ZWLensZoomView *)self bounds];
    [v3 convertRect:self fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(ZWLensZoomView *)self traitCollection];
    [v12 displayCornerRadius];
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
      v17 = [(ZWLensZoomView *)self window];
      [v17 bounds];
      ZWCornerRadiiForFrameInContainer(&v43, v5, v7, v9, v11, v18, v19, v20, v21, v14);
    }

    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v22 = [(ZWLensZoomView *)self layer];
    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    [v22 setCornerRadii:&v35];

    [(ZWLensZoomView *)self bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(ZWLensZoomView *)self lensResizingHandlesShowing];
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v32 = ZWInnerLensBorderForBounds(v31, &v35, v24, v26, v28, v30);
    v33 = [v32 CGPath];
    v34 = [(ZWLensZoomView *)self maskLayer];
    [v34 setPath:v33];
  }
}

- (CGRect)sampleRect
{
  v2 = [(ZWLensZoomView *)self zoomReplicatorLayer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  [v2 position];
  v8 = v7;
  [v2 bounds];
  v10 = v8 - v9 * 0.5;
  [v2 position];
  v12 = v11;
  [v2 bounds];
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

- (BOOL)_effectRequiresQuartzFilter:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AXZoomLensEffectInvertColors] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXZoomLensEffectBlackAndWhite) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXZoomLensEffectBlackAndWhiteInverted) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXZoomLensEffectHueAdjust))
  {
    v4 = 1;
  }

  else
  {
    if (([v3 isEqualToString:AXZoomLensEffectLowLight] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXZoomLensEffectNone) & 1) == 0)
    {
      _AXAssert();
    }

    v4 = 0;
  }

  return v4;
}

- (void)updateLensEffect:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = &PLLogRegisteredEvent_ptr;
  +[CATransaction begin];
  [CATransaction setDisableActions:v6];
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  [CATransaction setCompletionBlock:v11];
  v12 = [(ZWLensZoomView *)self _effectRequiresQuartzFilter:v8];
  v13 = [(ZWLensZoomView *)self effectReplicatorLayer];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 superlayer];

    if (v15)
    {
      goto LABEL_9;
    }

    v14 = [(ZWLensZoomView *)self effectView];
    v16 = [v14 layer];
    v17 = [(ZWLensZoomView *)self effectReplicatorLayer];
    [v16 addSublayer:v17];
  }

  else
  {
    [v13 removeFromSuperlayer];
  }

LABEL_9:
  v18 = [(ZWLensZoomView *)self effectBackdropLayer];
  v19 = +[UIColor clearColor];
  v20 = [(ZWLensZoomView *)self effectView];
  [v20 setAccessibilityIgnoresInvertColors:0];

  if (![v8 isEqualToString:AXZoomLensEffectLowLight])
  {
    if ([v8 isEqualToString:AXZoomLensEffectInvertColors])
    {
      v30 = [CAFilter filterWithType:kCAFilterColorInvert];
      v43 = v30;
      v31 = &v43;
    }

    else if ([v8 isEqualToString:AXZoomLensEffectBlackAndWhite])
    {
      v30 = [CAFilter filterWithType:kCAFilterColorSaturate];
      [v30 setValue:&off_7B458 forKey:@"inputAmount"];
      v42 = v30;
      v31 = &v42;
    }

    else
    {
      if ([v8 isEqualToString:AXZoomLensEffectBlackAndWhiteInverted])
      {
        v30 = [CAFilter filterWithType:kCAFilterColorSaturate];
        [v30 setValue:&off_7B458 forKey:@"inputAmount"];
        v41[0] = v30;
        v32 = [CAFilter filterWithType:kCAFilterColorInvert];
        v41[1] = v32;
        v38 = [NSArray arrayWithObjects:v41 count:2];
        [v18 setFilters:v38];

        goto LABEL_22;
      }

      if (![v8 isEqualToString:AXZoomLensEffectHueAdjust])
      {
        if ([v8 isEqualToString:AXZoomLensEffectNone])
        {
          [v18 setFilters:0];
        }

        else
        {
          v39 = v8;
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
    [v18 setFilters:v32];
LABEL_22:

    goto LABEL_23;
  }

  [v18 setFilters:0];
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
  v29 = [(ZWLensZoomView *)self effectView];
  [v29 setAccessibilityIgnoresInvertColors:1];

  v19 = v22;
LABEL_23:
  v33 = [(ZWLensZoomView *)self effectView:v39];
  [v33 setBackgroundColor:v19];

  v34 = [v8 isEqualToString:AXZoomLensEffectNone];
  [v18 setHidden:v34];
  [v18 setEnabled:v34 ^ 1];
  if ([v8 isEqualToString:AXZoomLensEffectInvertColors])
  {
    v35 = self;
    v36 = 1;
LABEL_28:
    v37 = 0;
    goto LABEL_29;
  }

  if (![v8 isEqualToString:AXZoomLensEffectBlackAndWhiteInverted])
  {
    v35 = self;
    v36 = 0;
    goto LABEL_28;
  }

  v35 = self;
  v36 = 1;
  v37 = 1;
LABEL_29:
  [(ZWLensZoomView *)v35 makePortalVisible:v36 withGrayScaleFilter:v37];
  [v10[331] commit];
  if (v9 && !v6)
  {
    v9[2](v9);
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

- (void)makePortalVisible:(BOOL)a3 withGrayScaleFilter:(BOOL)a4
{
  v4 = a3;
  if (a4)
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

  [(CAPortalLayer *)self->_islandPortalLayer setMatchesPosition:v4];
  [(CAPortalLayer *)self->_islandPortalLayer setMatchesTransform:v4];
  [(CAPortalLayer *)self->_islandPortalLayer setHidden:v4 ^ 1];
  [(CAPortalLayer *)self->_islandPortalLayer setAllowsHitTesting:v4];
  if (!v4)
  {
    v8 = [(ZWLensZoomView *)self islandPortalLayer];
    [v8 removeFromSuperlayer];
  }

  else
  {
    v8 = [(ZWLensZoomView *)self effectView];
    v9 = [v8 layer];
    v10 = [(ZWLensZoomView *)self islandPortalLayer];
    v11 = [(ZWLensZoomView *)self effectView];
    v12 = [v11 layer];
    v13 = [v12 sublayers];
    [v9 insertSublayer:v10 atIndex:{objc_msgSend(v13, "count")}];
  }
}

- (CGSize)_prescaledSizeForFinalSize:(CGSize)a3 zoomFactor:(double)a4
{
  v4 = a3.width / a4;
  v5 = a3.height / a4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)_effectiveRectForBounds:(CGRect)a3 position:(CGPoint)a4 scaleFactor:(double)a5
{
  v5 = a3.size.width * a5;
  v6 = a3.size.height * a5;
  v7 = a4.x - v5 * 0.5;
  v8 = a4.y - v6 * 0.5;
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