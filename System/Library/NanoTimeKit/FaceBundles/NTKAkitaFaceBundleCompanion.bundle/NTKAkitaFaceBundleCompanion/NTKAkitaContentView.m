@interface NTKAkitaContentView
- (BOOL)updateDate;
- (CGPath)_hairPathForIndex:(unint64_t)a3;
- (CGPath)_headPathForIndex:(unint64_t)a3;
- (CGPath)_lipsInnerPathForIndex:(unint64_t)a3;
- (CGPath)_lipsOuterPathForIndex:(unint64_t)a3 fullness:(unint64_t)a4;
- (CGPath)_neckPathForIndex:(unint64_t)a3;
- (CGPath)_nosePathForIndex:(unint64_t)a3;
- (CGPath)_shirtPathForIndex:(unint64_t)a3;
- (NTKAkitaContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 morph:(id)a5 dateProvider:(id)a6 is24HourMode:(BOOL)a7 device:(id)a8;
- (id)_createFillShapeLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createStrokeShapeLayerOfSize:(CGSize)a3 parent:(id)a4;
- (id)_createTextLayerOfSize:(CGSize)a3 x:(double)a4 alignment:(id)a5 parent:(id)a6;
- (void)_animateFromMorph:(id)a3 toMorph:(id)a4;
- (void)_handleSignificantTimeChange:(id)a3;
- (void)_setMorph:(id)a3;
- (void)_setupSceneForLayer:(id)a3 size:(CGSize)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)interpolateFromMorph:(id)a3 toMorph:(id)a4 fraction:(double)a5;
- (void)set24HourMode:(BOOL)a3;
- (void)setAdjustsForStatusBarIcon:(BOOL)a3 animated:(BOOL)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setMorph:(id)a3 animate:(BOOL)a4;
- (void)timerFired;
- (void)waitForAnimationsWithCompletion:(id)a3;
@end

@implementation NTKAkitaContentView

- (NTKAkitaContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 morph:(id)a5 dateProvider:(id)a6 is24HourMode:(BOOL)a7 device:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = NTKAkitaContentView;
  v20 = [(NTKAkitaContentView *)&v28 initWithFrame:x, y, width, height];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_device, a8);
    v21->_role = a4;
    v21->_lineWidth = width * 0.0138888889;
    v22 = objc_retainBlock(v18);
    dateProvider = v21->_dateProvider;
    v21->_dateProvider = v22;

    v21->_currentHour = -1;
    v21->_currentMinute = -1;
    v21->_is24HourMode = a7;
    v21->_isLuxo = [v19 deviceCategory] != &dword_0 + 1;
    v24 = [(NTKAkitaContentView *)v21 layer];
    [v24 setMasksToBounds:1];
    v25 = sub_30F4();
    [v24 setActions:v25];

    [(NTKAkitaContentView *)v21 _setupSceneForLayer:v24 size:width, height];
    [(NTKAkitaContentView *)v21 setMorph:v17 animate:0];
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v21 selector:"_handleSignificantTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v21;
}

- (void)dealloc
{
  v3 = 0;
  hairPaths = self->_hairPaths;
  do
  {
    CGPathRelease(hairPaths[v3++]);
  }

  while (v3 != 12);
  for (i = 0; i != 10; ++i)
  {
    CGPathRelease(self->_neckPaths[i]);
    CGPathRelease(self->_headPaths[i]);
    CGPathRelease(self->_shirtPaths[i]);
  }

  for (j = 0; j != 6; ++j)
  {
    CGPathRelease(self->_nosePaths[j]);
  }

  for (k = 0; k != 9; ++k)
  {
    CGPathRelease(self->_lipsInnerPaths[k]);
    CGPathRelease(self->_lipsOuterPaths[k]);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  v9.receiver = self;
  v9.super_class = NTKAkitaContentView;
  [(NTKAkitaContentView *)&v9 dealloc];
}

- (void)_handleSignificantTimeChange:(id)a3
{
  calendar = self->_calendar;
  v5 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)calendar setTimeZone:v5];

  [(NTKAkitaContentView *)self updateDate];
}

- (CGPath)_hairPathForIndex:(unint64_t)a3
{
  hairPaths = self->_hairPaths;
  v4 = self->_hairPaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaHairPathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 1, v7, v8);
    hairPaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_neckPathForIndex:(unint64_t)a3
{
  neckPaths = self->_neckPaths;
  v4 = self->_neckPaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaNeckPathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 1, v7, v8);
    neckPaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_headPathForIndex:(unint64_t)a3
{
  headPaths = self->_headPaths;
  v4 = self->_headPaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaHeadPathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 1, v7, v8);
    headPaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_shirtPathForIndex:(unint64_t)a3
{
  shirtPaths = self->_shirtPaths;
  v4 = self->_shirtPaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaShirtPathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 1, v7, v8);
    shirtPaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_nosePathForIndex:(unint64_t)a3
{
  nosePaths = self->_nosePaths;
  v4 = self->_nosePaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaNosePathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 0, v7, v8);
    nosePaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_lipsInnerPathForIndex:(unint64_t)a3
{
  lipsInnerPaths = self->_lipsInnerPaths;
  v4 = self->_lipsInnerPaths[a3];
  if (!v4)
  {
    v6 = &NTKAkitaLipsInnerPathData + 16 * a3;
    [(NTKAkitaContentView *)self frame];
    v4 = sub_3360(v6, 0, v7, v8);
    lipsInnerPaths[a3] = v4;
  }

  return v4;
}

- (CGPath)_lipsOuterPathForIndex:(unint64_t)a3 fullness:(unint64_t)a4
{
  v4 = 9 * a4 + a3;
  lipsOuterPaths = self->_lipsOuterPaths;
  Mutable = self->_lipsOuterPaths[v4];
  if (!Mutable)
  {
    [(NTKAkitaContentView *)self frame];
    v11 = &NTKAkitaLipsOuterPathData + 16 * a3;
    if (a4)
    {
      v12 = *(v11 + 1);
      if (v12 < 1)
      {
        Mutable = 0;
      }

      else
      {
        v39 = v10;
        v40 = v9;
        Mutable = CGPathCreateMutable();
        v13 = *(v11 + 1);
        v14 = v13 + 1;
        v15 = *v13;
        v16 = v12;
        v17 = *v13;
        do
        {
          v18 = v14[-1];
          v19 = vbsl_s8(vdup_lane_s32(vcgt_f32(v17, v18), 0), v18, v17);
          v20 = vbsl_s8(vdup_lane_s32(vcgt_f32(v18, v15), 0), v18, v15);
          v17 = vbsl_s8(vdup_lane_s32(vcgt_f32(v19, *v14), 0), *v14, v19);
          v15 = vbsl_s8(vdup_lane_s32(vcgt_f32(*v14, v20), 0), *v14, v20);
          v14 += 4;
          --v16;
        }

        while (v16);
        v21 = 0;
        v22.f64[0] = v40;
        v22.f64[1] = v39;
        v23 = vcvt_f32_f64(v22);
        v24 = vsub_f32(v15, v17);
        v25 = vmul_n_f32(v24, 1.0 / sqrtf(vaddv_f32(vmul_f32(v24, v24))));
        v26 = v13 + 2;
        do
        {
          v28 = v26[-1];
          v27 = *v26;
          v29 = v26[1];
          if (!v21)
          {
            v30 = vmul_f32(v25, vsub_f32(v26[-2], v17));
            v31 = vmul_f32(vmla_n_f32(v17, v25, vadd_f32(v30, vdup_lane_s32(v30, 1)).f32[0]), v23);
            CGPathMoveToPoint(Mutable, 0, v31.f32[0], v31.f32[1]);
          }

          v32 = vmul_f32(v25, vsub_f32(v28, v17));
          v33 = vmul_f32(vmla_n_f32(v17, v25, vadd_f32(v32, vdup_lane_s32(v32, 1)).f32[0]), v23);
          v34 = vmul_f32(v25, vsub_f32(v27, v17));
          v35 = vmul_f32(vmla_n_f32(v17, v25, vadd_f32(v34, vdup_lane_s32(v34, 1)).f32[0]), v23);
          v36 = vmul_f32(v25, vsub_f32(v29, v17));
          v37 = vmul_f32(vmla_n_f32(v17, v25, vadd_f32(v36, vdup_lane_s32(v36, 1)).f32[0]), v23);
          CGPathAddCurveToPoint(Mutable, 0, v35.f32[0], v35.f32[1], v37.f32[0], v37.f32[1], v33.f32[0], v33.f32[1]);
          ++v21;
          v26 += 4;
        }

        while (v12 != v21);
        CGPathCloseSubpath(Mutable);
      }
    }

    else
    {
      Mutable = sub_3360(v11, 1, v9, v10);
    }

    lipsOuterPaths[v4] = Mutable;
  }

  return Mutable;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = objc_retainBlock(self->_animationCompletion);
  if (v5)
  {
    animationCompletion = self->_animationCompletion;
    self->_animationCompletion = 0;
    v7 = v5;

    v7[2](v7);
    v5 = v7;
  }
}

- (void)_setMorph:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentMorph, a3);
  animatingMorph = self->_animatingMorph;
  self->_animatingMorph = 0;

  interpolateToMorph = self->_interpolateToMorph;
  self->_interpolateToMorph = 0;

  interpolateFromMorph = self->_interpolateFromMorph;
  self->_interpolateFromMorph = 0;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_morphLayers;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v25 + 1) + 8 * i) removeAllAnimations];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if (v5)
  {
    [v5 config];
  }

  CGColor = NTKAkitaColorGetCGColor(0, 0);
  v14 = NTKAkitaColorGetCGColor(0, 1);
  v15 = NTKAkitaColorGetCGColor(0, 0);
  v16 = NTKAkitaColorGetCGColor(0, 0);
  self->_isLuxo;
  v24 = NTKAkitaColorGetCGColor(0, 0);
  if (self->_role)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v18 = NTKAkitaColorGetCGColor(v17, 0);
  [(CAShapeLayer *)self->_hairLayer setPath:[(NTKAkitaContentView *)self _hairPathForIndex:0]];
  hairLayer = self->_hairLayer;
  if (self->_role)
  {
    [(CAShapeLayer *)hairLayer setStrokeColor:v15];
  }

  else
  {
    [(CAShapeLayer *)hairLayer setFillColor:v15];
  }

  [(CAShapeLayer *)self->_shirtLayer setPath:[(NTKAkitaContentView *)self _shirtPathForIndex:0]];
  shirtLayer = self->_shirtLayer;
  if (self->_role)
  {
    [(CAShapeLayer *)shirtLayer setStrokeColor:v16];
  }

  else
  {
    [(CAShapeLayer *)shirtLayer setFillColor:v16];
  }

  [(CAShapeLayer *)self->_neckLayer setPath:[(NTKAkitaContentView *)self _neckPathForIndex:0]];
  neckLayer = self->_neckLayer;
  if (self->_role)
  {
    [(CAShapeLayer *)neckLayer setStrokeColor:v14];
  }

  else
  {
    [(CAShapeLayer *)neckLayer setFillColor:v14];
  }

  [(CAShapeLayer *)self->_headLayer setPath:[(NTKAkitaContentView *)self _headPathForIndex:0]];
  headLayer = self->_headLayer;
  if (self->_role)
  {
    [(CAShapeLayer *)headLayer setStrokeColor:CGColor];
  }

  else
  {
    [(CAShapeLayer *)headLayer setFillColor:CGColor];
  }

  [(CAShapeLayer *)self->_noseLayer setPath:[(NTKAkitaContentView *)self _nosePathForIndex:0]];
  [(CAShapeLayer *)self->_lipsOuterLayer setPath:[(NTKAkitaContentView *)self _lipsOuterPathForIndex:0 fullness:0]];
  [(CAShapeLayer *)self->_lipsInnerLayer setPath:[(NTKAkitaContentView *)self _lipsInnerPathForIndex:0]];
  [(CAShapeLayer *)self->_noseLayer setStrokeColor:v18];
  [(CAShapeLayer *)self->_lipsOuterLayer setStrokeColor:v18];
  [(CAShapeLayer *)self->_lipsInnerLayer setStrokeColor:v18];
  [(CALayer *)self->_backgroundLayer setBackgroundColor:v24];
}

- (void)interpolateFromMorph:(id)a3 toMorph:(id)a4 fraction:(double)a5
{
  v9 = a3;
  v10 = a4;
  currentMorph = self->_currentMorph;
  self->_currentMorph = 0;

  animatingMorph = self->_animatingMorph;
  self->_animatingMorph = 0;

  if (![(NTKAkitaMorph *)self->_interpolateFromMorph isEqualToMorph:v9]|| ![(NTKAkitaMorph *)self->_interpolateToMorph isEqualToMorph:v10])
  {
    v23 = v10;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = self->_morphLayers;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v28 + 1) + 8 * v17) setSpeed:0.0];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v15);
    }

    [(NTKAkitaContentView *)self _setMorph:v9];
    objc_storeStrong(&self->_interpolateFromMorph, a3);
    objc_storeStrong(&self->_interpolateToMorph, a4);
    v10 = v23;
    [(NTKAkitaContentView *)self _animateFromMorph:v9 toMorph:v23];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = self->_morphLayers;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * v22) setTimeOffset:a5];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)_animateFromMorph:(id)a3 toMorph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v9 = 0uLL;
  if (v6)
  {
    [v6 config];
    v9 = 0uLL;
  }

  v70 = v9;
  v71 = v9;
  v68 = v9;
  v69 = v9;
  v66 = v7;
  v67 = v6;
  if (v7)
  {
    [v7 config];
    v63 = *(&v71 + 1);
    v10 = *(&v70 + 1);
    v11 = v69;
  }

  else
  {
    v11 = 0;
    v63 = 0;
    v10 = 0;
  }

  if (self->_role)
  {
    v12 = v11;
  }

  else
  {
    v12 = 2;
  }

  CGColor = NTKAkitaColorGetCGColor(v12, 0);
  if (self->_role)
  {
    v13 = @"strokeColor";
  }

  else
  {
    v13 = @"fillColor";
  }

  v14 = v13;
  hairLayer = self->_hairLayer;
  v16 = [(NTKAkitaContentView *)self _hairPathForIndex:0];
  v17 = [(NTKAkitaContentView *)self _hairPathForIndex:v70];
  v18 = NTKAkitaColorGetCGColor(0, 0);
  v19 = NTKAkitaColorGetCGColor(*(&v68 + 1), 0);
  v20 = sub_4588(v16, v17, v18, v19, v14, v8);
  [(CAShapeLayer *)hairLayer addAnimation:v20 forKey:@"morph"];

  shirtLayer = self->_shirtLayer;
  v22 = [(NTKAkitaContentView *)self _shirtPathForIndex:0];
  v23 = [(NTKAkitaContentView *)self _shirtPathForIndex:v10];
  v24 = v10;
  v62 = v10;
  v25 = NTKAkitaColorGetCGColor(0, 0);
  v26 = NTKAkitaColorGetCGColor(*(&v69 + 1), 0);
  v27 = sub_4588(v22, v23, v25, v26, v14, v8);
  [(CAShapeLayer *)shirtLayer addAnimation:v27 forKey:@"morph"];

  neckLayer = self->_neckLayer;
  v29 = [(NTKAkitaContentView *)self _neckPathForIndex:0];
  v30 = [(NTKAkitaContentView *)self _neckPathForIndex:v24];
  v31 = NTKAkitaColorGetCGColor(0, 1);
  v32 = NTKAkitaColorGetCGColor(v11, 1);
  v33 = sub_4588(v29, v30, v31, v32, v14, v8);
  [(CAShapeLayer *)neckLayer addAnimation:v33 forKey:@"morph"];

  headLayer = self->_headLayer;
  v35 = [(NTKAkitaContentView *)self _headPathForIndex:0];
  v36 = [(NTKAkitaContentView *)self _headPathForIndex:v62];
  v37 = NTKAkitaColorGetCGColor(0, 0);
  v38 = NTKAkitaColorGetCGColor(v11, 0);
  v65 = v14;
  v39 = sub_4588(v35, v36, v37, v38, v14, v8);
  [(CAShapeLayer *)headLayer addAnimation:v39 forKey:@"morph"];

  noseLayer = self->_noseLayer;
  v41 = sub_46E0([(NTKAkitaContentView *)self _nosePathForIndex:0], [(NTKAkitaContentView *)self _nosePathForIndex:v71], v8);
  [(CAShapeLayer *)noseLayer addAnimation:v41 forKey:@"morph"];

  lipsOuterLayer = self->_lipsOuterLayer;
  v43 = [(NTKAkitaContentView *)self _lipsOuterPathForIndex:0 fullness:0];
  v44 = [(NTKAkitaContentView *)self _lipsOuterPathForIndex:0 fullness:1];
  v45 = [(NTKAkitaContentView *)self _lipsOuterPathForIndex:v63 fullness:0];
  v46 = [(NTKAkitaContentView *)self _lipsOuterPathForIndex:v63 fullness:1];
  v47 = lipsOuterLayer;
  v48 = v8;
  if (v43 && v45)
  {
    v49 = v63;
    v50 = sub_46E0(v43, v45, v48);
    v51 = CGColor;
  }

  else
  {
    v49 = v63;
    if (v43)
    {
      v52 = v43;
      v53 = 1;
      v54 = v44;
      v55 = 0;
    }

    else
    {
      v52 = v46;
      v53 = 0;
      v54 = v45;
      v55 = 1;
    }

    v51 = CGColor;
    v50 = sub_479C(v47, v52, v53, v54, v55, CGColor, v48);
  }

  [(CAShapeLayer *)v47 addAnimation:v50 forKey:@"morph"];
  lipsInnerLayer = self->_lipsInnerLayer;
  v57 = sub_479C(lipsInnerLayer, [(NTKAkitaContentView *)self _lipsInnerPathForIndex:0], NTKAkitaLipsInnerPathData, [(NTKAkitaContentView *)self _lipsInnerPathForIndex:v49], *(&NTKAkitaLipsInnerPathData + 16 * v49), v51, v48);
  [(CAShapeLayer *)lipsInnerLayer addAnimation:v57 forKey:@"morph"];

  if (self->_isLuxo)
  {
    backgroundLayer = self->_backgroundLayer;
    v59 = NTKAkitaColorGetCGColor(0, 0);
    v60 = NTKAkitaColorGetCGColor(v68, 0);
    v61 = sub_4980(v59, v60, @"backgroundColor", v48);
    [(CALayer *)backgroundLayer addAnimation:v61 forKey:@"morph"];
  }
}

- (void)setMorph:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (![(NTKAkitaMorph *)self->_currentMorph isEqualToMorph:v7])
  {
    if (v4)
    {
      if (self->_animatingMorph)
      {
        [(NTKAkitaContentView *)self _setMorph:?];
      }

      v8 = self->_currentMorph;
      objc_storeStrong(&self->_animatingMorph, a3);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = self->_morphLayers;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v9);
            }

            LODWORD(v11) = 1.0;
            [*(*(&v15 + 1) + 8 * v14) setSpeed:{v11, v15}];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v12);
      }

      [(NTKAkitaContentView *)self _animateFromMorph:v8 toMorph:self->_animatingMorph];
    }

    else
    {
      [(NTKAkitaContentView *)self _setMorph:v7];
    }
  }
}

- (void)set24HourMode:(BOOL)a3
{
  if (self->_is24HourMode != a3)
  {
    self->_is24HourMode = a3;
    [(NTKAkitaContentView *)self updateDate];
  }
}

- (void)setAdjustsForStatusBarIcon:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isStatusVisisble != a3)
  {
    v39 = v7;
    v40 = v6;
    v41 = v4;
    v42 = v5;
    v8 = a4;
    v9 = a3;
    self->_isStatusVisisble = a3;
    [(CALayer *)self->_foregroundLayer removeAllAnimations];
    [(NTKAkitaContentView *)self bounds];
    v12 = v11;
    CATransform3DMakeTranslation(&v38, 0.0, v11 * 0.5, 0.0);
    v36 = v38;
    CATransform3DScale(&v37, &v36, 0.939999998, 0.939999998, 1.0);
    v38 = v37;
    v36 = v37;
    CATransform3DTranslate(&v37, &v36, 0.0, v12 * -0.5, 0.0);
    v38 = v37;
    if (v8)
    {
      if (v9)
      {
        v13 = *&CATransform3DIdentity.m33;
        *&v37.m31 = *&CATransform3DIdentity.m31;
        *&v37.m33 = v13;
        v14 = *&CATransform3DIdentity.m43;
        *&v37.m41 = *&CATransform3DIdentity.m41;
        *&v37.m43 = v14;
        v15 = *&CATransform3DIdentity.m13;
        *&v37.m11 = *&CATransform3DIdentity.m11;
        *&v37.m13 = v15;
        v16 = *&CATransform3DIdentity.m23;
        *&v37.m21 = *&CATransform3DIdentity.m21;
        *&v37.m23 = v16;
        *&v36.m21 = *&v38.m21;
        *&v36.m23 = *&v38.m23;
        *&v36.m11 = *&v38.m11;
        *&v36.m13 = *&v38.m13;
        v17 = *&v38.m31;
        v18 = *&v38.m33;
        v19 = *&v38.m41;
        v20 = *&v38.m43;
      }

      else
      {
        v37 = v38;
        v24 = *&CATransform3DIdentity.m11;
        v25 = *&CATransform3DIdentity.m13;
        v26 = *&CATransform3DIdentity.m23;
        *&v36.m21 = *&CATransform3DIdentity.m21;
        *&v36.m23 = v26;
        *&v36.m11 = v24;
        *&v36.m13 = v25;
        v17 = *&CATransform3DIdentity.m31;
        v18 = *&CATransform3DIdentity.m33;
        v19 = *&CATransform3DIdentity.m41;
        v20 = *&CATransform3DIdentity.m43;
      }

      *&v36.m41 = v19;
      *&v36.m43 = v20;
      *&v36.m31 = v17;
      *&v36.m33 = v18;
      v27 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v28 = objc_opt_new();
      [v28 setKeyPath:@"transform"];
      v35 = v37;
      v29 = [NSValue valueWithBytes:&v35 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v28 setFromValue:v29];

      v34 = v36;
      v30 = [NSValue valueWithBytes:&v34 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v28 setToValue:v30];

      [v28 setDuration:0.3];
      [v28 setTimingFunction:v27];
      [v28 setFillMode:kCAFillModeForwards];
      [v28 setRemovedOnCompletion:0];
      [(CALayer *)self->_foregroundLayer addAnimation:v28 forKey:@"shrink"];
    }

    else
    {
      foregroundLayer = self->_foregroundLayer;
      if (v9)
      {
        *&v37.m31 = *&v38.m31;
        *&v37.m33 = *&v38.m33;
        *&v37.m41 = *&v38.m41;
        *&v37.m43 = *&v38.m43;
        *&v37.m11 = *&v38.m11;
        *&v37.m13 = *&v38.m13;
        v22 = *&v38.m21;
        v23 = *&v38.m23;
      }

      else
      {
        v31 = *&CATransform3DIdentity.m33;
        *&v37.m31 = *&CATransform3DIdentity.m31;
        *&v37.m33 = v31;
        v32 = *&CATransform3DIdentity.m43;
        *&v37.m41 = *&CATransform3DIdentity.m41;
        *&v37.m43 = v32;
        v33 = *&CATransform3DIdentity.m13;
        *&v37.m11 = *&CATransform3DIdentity.m11;
        *&v37.m13 = v33;
        v22 = *&CATransform3DIdentity.m21;
        v23 = *&CATransform3DIdentity.m23;
      }

      *&v37.m21 = v22;
      *&v37.m23 = v23;
      [(CALayer *)foregroundLayer setTransform:&v37];
    }
  }
}

- (BOOL)updateDate
{
  v3 = (*(self->_dateProvider + 2))();
  v4 = [(NSCalendar *)self->_calendar components:224 fromDate:v3];
  v5 = [v4 minute];
  v6 = [v4 hour];
  v7 = v6;
  if (!self->_is24HourMode)
  {
    LODWORD(v7) = v6 % 12;
    if (v6 % 12)
    {
      v7 = v7;
    }

    else
    {
      v7 = 12;
    }
  }

  if (self->_currentHour == v7 && self->_currentMinute == v5)
  {
    v8 = 0;
  }

  else
  {
    self->_currentHour = v7;
    self->_currentMinute = v5;
    v9 = [NSString stringWithFormat:@"%d", v7];
    v10 = [NSString stringWithFormat:@"%02d", v5];
    [(CATextLayer *)self->_leftTextLayer setString:v9];
    [(CATextLayer *)self->_rightTextLayer setString:v10];

    v8 = 1;
  }

  return v8;
}

- (void)timerFired
{
  if ([(NTKAkitaContentView *)self updateDate]&& !self->_role && !self->_isPaused)
  {
    v3 = objc_opt_new();
    [v3 setKeyPath:@"transform.scale.y"];
    [v3 setFromValue:&off_10CF8];
    [v3 setToValue:&off_10D08];
    [v3 setAutoreverses:1];
    [v3 setDuration:0.3];
    [v3 setDelegate:self];
    [(CATextLayer *)self->_leftTextLayer addAnimation:v3 forKey:@"blink"];
    [(CATextLayer *)self->_rightTextLayer addAnimation:v3 forKey:@"blink"];
  }
}

- (void)waitForAnimationsWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(CATextLayer *)self->_leftTextLayer animationForKey:@"blink"];

    if (v5)
    {
      v6 = objc_retainBlock(v8);
      animationCompletion = self->_animationCompletion;
      self->_animationCompletion = v6;
    }

    else
    {
      v8[2]();
    }

    v4 = v8;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  v6 = v5;
  v7 = [(NTKAkitaContentView *)self layer];
  [v7 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)_setupSceneForLayer:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = +[NSCalendar autoupdatingCurrentCalendar];
  calendar = self->_calendar;
  self->_calendar = v8;

  v10 = self->_calendar;
  v11 = +[NSTimeZone systemTimeZone];
  [(NSCalendar *)v10 setTimeZone:v11];

  v12 = [(NTKAkitaContentView *)self _createLayerOfSize:v7 parent:width, height];
  backgroundLayer = self->_backgroundLayer;
  self->_backgroundLayer = v12;

  v14 = [(NTKAkitaContentView *)self _createLayerOfSize:v7 parent:width, height];

  foregroundLayer = self->_foregroundLayer;
  self->_foregroundLayer = v14;

  v16 = [(NTKAkitaContentView *)self _createFillShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  neckLayer = self->_neckLayer;
  self->_neckLayer = v16;

  v18 = [(NTKAkitaContentView *)self _createFillShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  shirtLayer = self->_shirtLayer;
  self->_shirtLayer = v18;

  v20 = [(NTKAkitaContentView *)self _createFillShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  headLayer = self->_headLayer;
  self->_headLayer = v20;

  v22 = [(NTKAkitaContentView *)self _createFillShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  hairLayer = self->_hairLayer;
  self->_hairLayer = v22;

  v24 = [(NTKAkitaContentView *)self _createStrokeShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  noseLayer = self->_noseLayer;
  self->_noseLayer = v24;

  v26 = [(NTKAkitaContentView *)self _createStrokeShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  lipsInnerLayer = self->_lipsInnerLayer;
  self->_lipsInnerLayer = v26;

  v28 = [(NTKAkitaContentView *)self _createStrokeShapeLayerOfSize:self->_foregroundLayer parent:width, height];
  lipsOuterLayer = self->_lipsOuterLayer;
  self->_lipsOuterLayer = v28;

  v30 = self->_neckLayer;
  v42[0] = self->_backgroundLayer;
  v42[1] = v30;
  v31 = self->_headLayer;
  v42[2] = self->_shirtLayer;
  v42[3] = v31;
  v32 = self->_noseLayer;
  v42[4] = self->_hairLayer;
  v42[5] = v32;
  v33 = self->_lipsOuterLayer;
  v42[6] = self->_lipsInnerLayer;
  v42[7] = v33;
  v34 = [NSArray arrayWithObjects:v42 count:8];
  morphLayers = self->_morphLayers;
  self->_morphLayers = v34;

  v36 = [UIFont systemFontOfSize:@"NSCTFontUIFontDesignCompactRounded" weight:width * 0.185185185 design:UIFontWeightLight];
  font = self->_font;
  self->_font = v36;

  v38 = [(NTKAkitaContentView *)self _createLeftEyeLayerOfSize:self->_foregroundLayer parent:width, height];
  leftTextLayer = self->_leftTextLayer;
  self->_leftTextLayer = v38;

  v40 = [(NTKAkitaContentView *)self _createRightEyeLayerOfSize:self->_foregroundLayer parent:width, height];
  rightTextLayer = self->_rightTextLayer;
  self->_rightTextLayer = v40;

  [(NTKAkitaContentView *)self updateDate];
}

- (id)_createTextLayerOfSize:(CGSize)a3 x:(double)a4 alignment:(id)a5 parent:(id)a6
{
  height = a3.height;
  v10 = a6;
  v11 = a5;
  v12 = objc_opt_new();
  [v12 setFont:self->_font];
  [(UIFont *)self->_font pointSize];
  [v12 setFontSize:?];
  if (self->_role)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  [v12 setForegroundColor:{NTKAkitaColorGetCGColor(v13, 0)}];
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:self->_font, NSFontAttributeName, 0];
  [@"88" sizeWithAttributes:v14];
  v16 = v15;
  v18 = v17;
  [(UIFont *)self->_font descender];
  v20 = round(a4);
  v21 = round(height * 0.510736041 - v18 - v19);
  v22 = v20 - v16;
  if (kCAAlignmentRight != v11)
  {
    v22 = v20;
  }

  [v12 setFrame:{v22, v21, v16 + v16, v18}];
  [(CLKDevice *)self->_device screenScale];
  [v12 setContentsScale:?];
  [v12 setAlignmentMode:v11];

  v23 = sub_30F4();
  [v12 setActions:v23];

  [v10 addSublayer:v12];

  return v12;
}

- (id)_createFillShapeLayerOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setPosition:{width * 0.5, height * 0.5}];
  [v8 setBounds:{0.0, 0.0, width, height}];
  if (self->_role == 1)
  {
    [v8 setLineWidth:self->_lineWidth];
    v9 = kCALineCapRound;
    [v8 setLineCap:kCALineCapRound];
  }

  else
  {
    v9 = kCALineCapRound;
  }

  [v8 setLineCap:v9];
  [v8 setMiterLimit:1.0];
  v10 = sub_30F4();
  [v8 setActions:v10];

  [v7 addSublayer:v8];

  return v8;
}

- (id)_createStrokeShapeLayerOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setPosition:{width * 0.5, height * 0.5}];
  [v8 setBounds:{0.0, 0.0, width, height}];
  [v8 setStrokeColor:{NTKAkitaColorGetCGColor(2uLL, 0)}];
  [v8 setFillColor:0];
  [v8 setLineWidth:self->_lineWidth];
  [v8 setLineCap:kCALineCapRound];
  [v8 setMiterLimit:1.0];
  v9 = sub_30F4();
  [v8 setActions:v9];

  [v7 addSublayer:v8];

  return v8;
}

- (id)_createLayerOfSize:(CGSize)a3 parent:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setPosition:{width * 0.5, height * 0.5}];
  [v7 setBounds:{0.0, 0.0, width, height}];
  v8 = sub_30F4();
  [v7 setActions:v8];

  [v6 addSublayer:v7];

  return v7;
}

@end