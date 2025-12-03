@interface NTKExplorerDialView
- (NTKExplorerDialView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (id)_hourNumeralHideAnimation;
- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value;
- (id)_minuteClusterExpandAnimation;
- (id)_minuteTickBreakAnimation;
- (id)_minuteTickShowAnimation;
- (id)_minuteTickShrinkAndGrow;
- (id)_numeralShowAnimation;
- (id)_secondTickBrightenAnimation;
- (id)_secondTickDimAnimation;
- (void)_addOrRemoveChildLayers;
- (void)_applyDensity:(unint64_t)density;
- (void)applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity;
- (void)cleanupAfterEditing;
- (void)setDensity:(unint64_t)density;
@end

@implementation NTKExplorerDialView

- (NTKExplorerDialView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v145.receiver = self;
  v145.super_class = NTKExplorerDialView;
  height = [(NTKExplorerDialView *)&v145 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    v128 = deviceCopy;
    objc_storeStrong(&height->_device, device);
    v13 = +[UIColor blackColor];
    [(NTKExplorerDialView *)v12 setBackgroundColor:v13];

    v138 = 0u;
    memset(v137, 0, sizeof(v137));
    sub_78B4(v12->_device, v137);
    layer = [(NTKExplorerDialView *)v12 layer];
    [layer bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = v19 * 0.5;
    v24 = v21 * 0.5;
    if (qword_16800 != -1)
    {
      sub_82DC();
    }

    v25 = qword_167F8;
    v26 = objc_opt_new();
    ringLayer = v12->_ringLayer;
    v12->_ringLayer = v26;

    v135 = v23;
    [(CALayer *)v12->_ringLayer setPosition:v23, v24];
    [(CALayer *)v12->_ringLayer setBounds:v16, v18, v20, v22];
    [(CALayer *)v12->_ringLayer setCornerRadius:width * 0.5];
    v28 = v12->_ringLayer;
    v29 = _ringColor();
    -[CALayer setBorderColor:](v28, "setBorderColor:", [v29 CGColor]);

    v30 = *v137;
    [(CALayer *)v12->_ringLayer setBorderWidth:*v137];
    [layer addSublayer:v12->_ringLayer];
    v31 = objc_opt_new();
    hourReplicatorLayer = v12->_hourReplicatorLayer;
    v12->_hourReplicatorLayer = v31;

    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setBounds:v16, v18, v20, v22];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setInstanceCount:12];
    v33 = v12->_hourReplicatorLayer;
    CATransform3DMakeRotation(&v136, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v33 setInstanceTransform:&v136];
    [layer addSublayer:v12->_hourReplicatorLayer];
    v34 = objc_opt_new();
    v133 = v12;
    hourTickLayer = v12->_hourTickLayer;
    v12->_hourTickLayer = v34;

    v131 = CGPointZero.y;
    v36 = v138;
    [(CALayer *)v12->_hourTickLayer setBounds:?];
    [(CALayer *)v12->_hourTickLayer setCornerRadius:*&v36 * 0.5];
    v37 = v12->_hourTickLayer;
    v38 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v37, "setBackgroundColor:", [v38 CGColor]);

    [(CALayer *)v12->_hourTickLayer setPosition:v23];
    [(CALayer *)v12->_hourTickLayer setActions:v25];
    [(CAReplicatorLayer *)v133->_hourReplicatorLayer addSublayer:v133->_hourTickLayer];
    v39 = objc_opt_new();
    minuteReplicatorLayer = v12->_minuteReplicatorLayer;
    v12->_minuteReplicatorLayer = v39;

    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setBounds:v16, v18, v20, v22];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setInstanceCount:12];
    v41 = v12->_minuteReplicatorLayer;
    CATransform3DMakeRotation(&v136, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v41 setInstanceTransform:&v136];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setInstanceDelay:5.0];
    [layer addSublayer:v12->_minuteReplicatorLayer];
    v42 = objc_opt_new();
    minuteCollectionLayer = v12->_minuteCollectionLayer;
    v12->_minuteCollectionLayer = v42;

    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setBounds:v16, v18, v20, v22];
    v44 = v12->_minuteCollectionLayer;
    CATransform3DMakeRotation(&v136, 0.261799388, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v44 setTransform:&v136];
    v45 = v12->_minuteCollectionLayer;
    v46 = *&CATransform3DIdentity.m33;
    *&v136.m31 = *&CATransform3DIdentity.m31;
    *&v136.m33 = v46;
    v47 = *&CATransform3DIdentity.m43;
    *&v136.m41 = *&CATransform3DIdentity.m41;
    *&v136.m43 = v47;
    v48 = *&CATransform3DIdentity.m13;
    *&v136.m11 = *&CATransform3DIdentity.m11;
    *&v136.m13 = v48;
    v49 = *&CATransform3DIdentity.m23;
    *&v136.m21 = *&CATransform3DIdentity.m21;
    *&v136.m23 = v49;
    [(CAReplicatorLayer *)v45 setInstanceTransform:&v136];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setActions:v25];
    [(CAReplicatorLayer *)v133->_minuteReplicatorLayer addSublayer:v133->_minuteCollectionLayer];
    v50 = objc_opt_new();
    minuteTickLayer = v12->_minuteTickLayer;
    v12->_minuteTickLayer = v50;

    v52 = v139;
    [(CALayer *)v12->_minuteTickLayer setBounds:CGPointZero.x, v131, v139, v140];
    [(CALayer *)v12->_minuteTickLayer setCornerRadius:v52 * 0.5];
    [(CALayer *)v12->_minuteTickLayer setPosition:v23, v30 * 0.5];
    v53 = v12->_minuteTickLayer;
    v54 = _minuteTickColor();
    -[CALayer setBackgroundColor:](v53, "setBackgroundColor:", [v54 CGColor]);

    [(CALayer *)v12->_minuteTickLayer setActions:v25];
    [(CAReplicatorLayer *)v133->_minuteCollectionLayer addSublayer:v133->_minuteTickLayer];
    v55 = objc_opt_new();
    subdialReplicatorLayer = v12->_subdialReplicatorLayer;
    v12->_subdialReplicatorLayer = v55;

    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setBounds:CGPointZero.x, v131, *(v137 + 1), *(v137 + 1)];
    v134 = v24;
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setActions:v25];
    [layer addSublayer:v12->_subdialReplicatorLayer];
    v57 = objc_opt_new();
    secondTickLayer = v12->_secondTickLayer;
    v12->_secondTickLayer = v57;

    v59 = v141;
    v60 = v142;
    [(CALayer *)v12->_secondTickLayer setBounds:CGPointZero.x, v131, v141, v142];
    [(CALayer *)v12->_secondTickLayer setCornerRadius:v59 * 0.5];
    v61 = v12->_secondTickLayer;
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer bounds];
    [(CALayer *)v61 setPosition:v62 * 0.5, v60 * 0.5];
    [(CALayer *)v12->_secondTickLayer setActions:v25];
    v63 = v12->_secondTickLayer;
    v64 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v63, "setBackgroundColor:", [v64 CGColor]);

    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer addSublayer:v12->_secondTickLayer];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setInstanceCount:12];
    v65 = v12->_subdialReplicatorLayer;
    v66 = v25;
    CATransform3DMakeRotation(&v136, 0.523598776, 0.0, 0.0, 1.0);
    v67 = v65;
    v68 = layer;
    [(CAReplicatorLayer *)v67 setInstanceTransform:&v136];
    v132 = [NSMutableArray arrayWithCapacity:3];
    v69 = 0;
    v70 = v144;
    v71 = UIFontWeightBold;
    v72 = NSFontAttributeName;
    v74 = CGSizeZero.width;
    v73 = CGSizeZero.height;
    v75 = &v137[1] + 1;
    v76 = &NTKAllSignatureCornerTypes_ptr;
    v77 = &NTKAllSignatureCornerTypes_ptr;
    do
    {
      v78 = v76;
      v79 = [v76[109] localizedStringWithFormat:@"%i", dword_CC70[v69]];
      v80 = *(v75 - 1);
      v81 = *v75;
      v82 = v77;
      v83 = v71;
      v84 = [v77[106] systemFontOfSize:CLKRoundedFontDesignName weight:v70 design:v71];
      v148 = v72;
      v149 = v84;
      v85 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      [v79 boundingRectWithSize:3 options:v85 attributes:0 context:{v74, v73}];
      v87 = v86;

      v88 = CLKLocaleCurrentNumberSystem();
      if ((v88 - 3) < 0xC || v88 == -1)
      {
        [v84 capHeight];
        v90 = v89 + 1.0;
        v91 = &NTKAllSignatureCornerTypes_ptr;
      }

      else
      {
        v91 = &NTKAllSignatureCornerTypes_ptr;
        if (v88 == 2)
        {
          [v84 capHeight];
          v98 = v97;
          [v84 descender];
          v90 = v98 - v99;
        }

        else
        {
          [v84 capHeight];
          v90 = v100 + 1.0;
        }
      }

      layer2 = [v91[101] layer];
      [layer2 setString:v79];
      v93 = _numeralsGreyColor();
      [layer2 setForegroundColor:{objc_msgSend(v93, "CGColor")}];

      [v84 ascender];
      v95 = v94;
      [v84 capHeight];
      [layer2 setBounds:{0.0, v95 - v96 + -1.0, v87, ceil(v90)}];
      [layer2 setFont:v84];
      [layer2 setFontSize:v70];
      [layer2 setAnchorPoint:{0.5, 0.5}];
      [layer2 setPosition:{v135 + v80, v134 + v81}];
      [layer2 setActions:v66];
      [layer2 setContentsScale:2.0];
      [v68 addSublayer:layer2];
      [v132 addObject:layer2];

      ++v69;
      v75 += 2;
      v71 = v83;
      v74 = CGSizeZero.width;
      v76 = v78;
      v72 = NSFontAttributeName;
      v77 = v82;
    }

    while (v69 != 3);
    v101 = [v132 copy];
    hourNumerals = v133->_hourNumerals;
    v133->_hourNumerals = v101;

    v103 = [NSMutableArray arrayWithCapacity:12];
    v104 = v143;
    v105 = v66;
    v130 = v68;
    v106 = &v137[19] + 1;
    v107 = -60;
    v129 = v73;
    do
    {
      v108 = [v76[109] localizedStringWithFormat:@"%02i", v107 + 65];
      v109 = *(v106 - 25);
      v110 = *(v106 - 24);
      v111 = [v77[106] systemFontOfSize:CLKRoundedFontDesignName weight:v104 design:v71];
      v146 = v72;
      v147 = v111;
      v112 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
      [v108 boundingRectWithSize:3 options:v112 attributes:0 context:{v74, v129}];
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;

      v121 = +[CATextLayer layer];
      [v121 setString:v108];
      v122 = _numeralsGreyColor();
      [v121 setForegroundColor:{objc_msgSend(v122, "CGColor")}];

      v123 = v114;
      v71 = v83;
      v124 = v116;
      v74 = CGSizeZero.width;
      [v121 setBounds:{v123, v124, v118, v120}];
      [v121 setFont:v111];
      [v121 setFontSize:v104];
      [v121 setAnchorPoint:{*(v106 - 1), *v106}];
      [v121 setPosition:{v135 + v109, v134 + v110}];
      [v121 setActions:v105];
      [v121 setContentsScale:2.0];
      [v130 addSublayer:v121];
      [v103 addObject:v121];

      v72 = NSFontAttributeName;
      v77 = v82;

      v76 = v78;
      v106 += 2;
      v107 += 5;
    }

    while (v107);
    v125 = [v103 copy];
    v12 = v133;
    minuteNumerals = v133->_minuteNumerals;
    v133->_minuteNumerals = v125;

    v133->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
    v133->_density = 0x7FFFFFFFFFFFFFFFLL;

    deviceCopy = v128;
  }

  return v12;
}

- (void)setDensity:(unint64_t)density
{
  if (self->_density != density)
  {
    self->_density = density;
    self->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
    [(NTKExplorerDialView *)self _applyDensity:self->_density];
  }
}

- (void)cleanupAfterEditing
{
  self->_editing = 0;
  self->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
  [(NTKExplorerDialView *)self _addOrRemoveChildLayers];
}

- (void)_applyDensity:(unint64_t)density
{
  [(NTKExplorerDialView *)self _addOrRemoveChildLayers];
  layer = [(NTKExplorerDialView *)self layer];
  LODWORD(v6) = 1.0;
  [layer setSpeed:v6];
  [layer setTimeOffset:0.0];
  [(CALayer *)self->_secondTickLayer removeAllAnimations];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer removeAllAnimations];
  [(CALayer *)self->_minuteTickLayer removeAllAnimations];
  if (density == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  hourNumerals = self->_hourNumerals;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_57D0;
  v19[3] = &unk_10438;
  *&v19[4] = v7;
  [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v19];
  minuteNumerals = self->_minuteNumerals;
  if (density == 3)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_588C;
  v18[3] = &unk_10438;
  *&v18[4] = v10;
  if (density == 3)
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v18];
  secondTickLayer = self->_secondTickLayer;
  v13 = _secondTickColor(density);
  -[CALayer setBackgroundColor:](secondTickLayer, "setBackgroundColor:", [v13 CGColor]);

  hourTickLayer = self->_hourTickLayer;
  v15 = _hourTickColor(density);
  -[CALayer setBackgroundColor:](hourTickLayer, "setBackgroundColor:", [v15 CGColor]);

  [(CAReplicatorLayer *)self->_minuteCollectionLayer setTransform:v17, _minuteClusterTransform(density, v17).n128_f64[0]];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer setInstanceTransform:v17, _minuteInstanceTransform(density, v17).n128_f64[0]];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer setInstanceCount:v11];
  v16 = 0.0;
  if (density)
  {
    *&v16 = 1.0;
  }

  [(CAReplicatorLayer *)self->_minuteCollectionLayer setOpacity:v16];
}

- (void)applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity
{
  currentDensityTransition = self->_currentDensityTransition;
  if (density != toDensity)
  {
    if (currentDensityTransition != density)
    {
      self->_currentDensityTransition = density;
      [(NTKExplorerDialView *)self _applyDensity:density];
      v9 = self->_currentDensityTransition;
      switch(v9)
      {
        case 2uLL:
          [(CAReplicatorLayer *)self->_subdialReplicatorLayer setInstanceDelay:3.0];
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _secondTickDimAnimation];
          [(CALayer *)self->_secondTickLayer addAnimation:_secondTickDimAnimation forKey:@"secondTickDim"];
          _hourNumeralHideAnimation = [(NTKExplorerDialView *)self _hourNumeralHideAnimation];
          hourNumerals = self->_hourNumerals;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_5F54;
          v25[3] = &unk_10460;
          v26 = _hourNumeralHideAnimation;
          v16 = _hourNumeralHideAnimation;
          [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v25];
          _numeralShowAnimation = [(NTKExplorerDialView *)self _numeralShowAnimation];
          minuteNumerals = self->_minuteNumerals;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_5FD0;
          v23[3] = &unk_10460;
          v24 = _numeralShowAnimation;
          v19 = _numeralShowAnimation;
          [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v23];
          _minuteClusterExpandAnimation = [(NTKExplorerDialView *)self _minuteClusterExpandAnimation];
          [(CAReplicatorLayer *)self->_minuteCollectionLayer addAnimation:_minuteClusterExpandAnimation forKey:@"minuteClusterExpand"];
          _minuteTickShrinkAndGrow = [(NTKExplorerDialView *)self _minuteTickShrinkAndGrow];
          [(CALayer *)self->_minuteTickLayer addAnimation:_minuteTickShrinkAndGrow forKey:@"minuteScale"];

          goto LABEL_13;
        case 1uLL:
          [(CAReplicatorLayer *)self->_subdialReplicatorLayer setInstanceDelay:1.0];
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _secondTickBrightenAnimation];
          [(CALayer *)self->_secondTickLayer addAnimation:_secondTickDimAnimation forKey:@"secondTickBrighten"];
          _numeralShowAnimation2 = [(NTKExplorerDialView *)self _numeralShowAnimation];
          v12 = self->_hourNumerals;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_5ED8;
          v27[3] = &unk_10460;
          v28 = _numeralShowAnimation2;
          v13 = _numeralShowAnimation2;
          [(NSArray *)v12 enumerateObjectsUsingBlock:v27];

          goto LABEL_13;
        case 0uLL:
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _minuteTickShowAnimation];
          [(CAReplicatorLayer *)self->_minuteCollectionLayer addAnimation:_secondTickDimAnimation forKey:@"minuteTickShow"];
LABEL_13:

          break;
      }
    }

    layer = [(NTKExplorerDialView *)self layer];
    [layer setSpeed:0.0];
    [layer setTimeOffset:dbl_CCB0[density] * fraction];

    return;
  }

  if (currentDensityTransition != density)
  {
    self->_currentDensityTransition = density;

    [(NTKExplorerDialView *)self _applyDensity:fraction];
  }
}

- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v5 setFromValue:valueCopy];
  [v5 setToValue:valueCopy];

  [v5 setBeginTime:0.00000011920929];
  [v5 setDuration:0.00001];
  [v5 setFillMode:kCAFillModeForwards];

  return v5;
}

- (void)_addOrRemoveChildLayers
{
  if (self->_editing)
  {
    LOBYTE(v3) = 1;
    v4 = 1;
  }

  else
  {
    density = self->_density;
    v4 = density - 1;
    if (density - 1 > 2)
    {
      layer = [(NTKExplorerDialView *)self layer];
      [(CAReplicatorLayer *)self->_minuteReplicatorLayer removeFromSuperlayer];
      v4 = 0;
      LOBYTE(v3) = 0;
      goto LABEL_8;
    }

    v3 = 4u >> (v4 & 7);
  }

  layer = [(NTKExplorerDialView *)self layer];
  superlayer = [(CAReplicatorLayer *)self->_minuteReplicatorLayer superlayer];

  if (!superlayer)
  {
    [layer insertSublayer:self->_minuteReplicatorLayer above:self->_ringLayer];
  }

LABEL_8:
  firstObject = [(NSArray *)self->_hourNumerals firstObject];
  superlayer2 = [firstObject superlayer];
  v10 = superlayer2 != 0;

  hourNumerals = self->_hourNumerals;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6340;
  v23[3] = &unk_10488;
  v26 = v4 & 1;
  v27 = v10;
  v12 = layer;
  v24 = v12;
  selfCopy = self;
  [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v23];
  firstObject2 = [(NSArray *)self->_minuteNumerals firstObject];
  superlayer3 = [firstObject2 superlayer];
  v15 = superlayer3 != 0;

  minuteNumerals = self->_minuteNumerals;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_63C4;
  v18[3] = &unk_10488;
  v21 = v3 & 1;
  v22 = v15;
  v19 = v12;
  selfCopy2 = self;
  v17 = v12;
  [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v18];
}

- (id)_minuteTickShowAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&off_10E48];
  [v2 setToValue:&off_10E60];
  [v2 setDuration:13.0];
  [v2 setBeginTime:7.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
  if (qword_16598 != -1)
  {
    sub_837C();
  }

  v18 = xmmword_16558;
  v19 = unk_16568;
  v20 = xmmword_16578;
  v21 = unk_16588;
  v14 = xmmword_16518;
  v15 = unk_16528;
  v16 = xmmword_16538;
  v17 = unk_16548;
  v4 = [NSValue valueWithCATransform3D:&v14];
  [v3 setFromValue:v4];

  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v18 = xmmword_16458;
  v19 = unk_16468;
  v20 = xmmword_16478;
  v21 = unk_16488;
  v14 = xmmword_16418;
  v15 = unk_16428;
  v16 = xmmword_16438;
  v17 = unk_16448;
  v5 = [NSValue valueWithCATransform3D:&v14];
  [v3 setToValue:v5];

  [v3 setDuration:20.0];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = [CABasicAnimation animationWithKeyPath:@"transform"];
  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v18 = xmmword_163D0;
  v19 = unk_163E0;
  v20 = xmmword_163F0;
  v21 = unk_16400;
  v14 = xmmword_16390;
  v15 = unk_163A0;
  v16 = xmmword_163B0;
  v17 = unk_163C0;
  v7 = [NSValue valueWithCATransform3D:&v14];
  [v6 setFromValue:v7];

  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v18 = xmmword_162D0;
  v19 = unk_162E0;
  v20 = xmmword_162F0;
  v21 = unk_16300;
  v14 = xmmword_16290;
  v15 = unk_162A0;
  v16 = xmmword_162B0;
  v17 = unk_162C0;
  v8 = [NSValue valueWithCATransform3D:&v14];
  [v6 setToValue:v8];

  [v6 setDuration:20.0];
  [v6 setFillMode:kCAFillModeBoth];
  v9 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v9 setFromValue:&off_10E78];
  [v9 setToValue:&off_10E78];
  [v9 setDuration:0.0];
  [v9 setFillMode:kCAFillModeBoth];
  v10 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v10 setFromValue:&off_10E78];
  [v10 setToValue:&off_10E48];
  [v10 setDuration:5.0];
  [v10 setBeginTime:15.0];
  [v10 setFillMode:kCAFillModeBoth];
  v11 = objc_opt_new();
  [v11 setBeginTime:0.00000011920929];
  [v11 setDuration:20.0];
  [v11 setFillMode:kCAFillModeBoth];
  v22[0] = v9;
  v22[1] = v6;
  v22[2] = v2;
  v22[3] = v3;
  v22[4] = v10;
  v12 = [NSArray arrayWithObjects:v22 count:5];
  [v11 setAnimations:v12];

  return v11;
}

- (id)_secondTickDimAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
  v3 = _secondTickColor(2);
  [v2 setFromValue:{objc_msgSend(v3, "CGColor")}];

  v4 = _secondTickColor(1);
  [v2 setToValue:{objc_msgSend(v4, "CGColor")}];

  [v2 setDuration:19.0];
  [v2 setBeginTime:5.0];
  [v2 setFillMode:kCAFillModeBoth];

  return v2;
}

- (id)_secondTickBrightenAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
  v3 = _secondTickColor(1);
  [v2 setFromValue:{objc_msgSend(v3, "CGColor")}];

  v4 = _secondTickColor(2);
  [v2 setToValue:{objc_msgSend(v4, "CGColor")}];

  [v2 setDuration:6.0];
  [v2 setBeginTime:5.0];
  [v2 setFillMode:kCAFillModeBoth];

  return v2;
}

- (id)_numeralShowAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E60];
  [v2 setDuration:0.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = [CASpringAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v3 setMass:0.45];
  [v3 setStiffness:200.0];
  [v3 setDamping:11.0];
  [v3 setFromValue:&off_10E48];
  [v3 setToValue:&off_10E60];
  [v3 setDuration:13.0];
  [v3 duration];
  v5 = 0.6 / v4;
  *&v5 = v5;
  [v3 setSpeed:v5];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = objc_opt_new();
  [v6 setBeginTime:0.00000011920929];
  [v6 setDuration:13.0];
  [v6 setFillMode:kCAFillModeBoth];
  v9[0] = v2;
  v9[1] = v3;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  [v6 setAnimations:v7];

  return v6;
}

- (id)_hourNumeralHideAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E48];
  [v2 setDuration:13.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = objc_opt_new();
  [v3 setBeginTime:0.00000011920929];
  [v3 setDuration:13.0];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = v2;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setAnimations:v4];

  return v2;
}

- (id)_minuteTickBreakAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"transform"];
  if (qword_16410 != -1)
  {
    sub_8368();
  }

  v17 = xmmword_162D0;
  v18 = unk_162E0;
  v19 = xmmword_162F0;
  v20 = unk_16300;
  v13 = xmmword_16290;
  v14 = unk_162A0;
  v15 = xmmword_162B0;
  v16 = unk_162C0;
  v3 = [NSValue valueWithCATransform3D:&v13];
  [v2 setFromValue:v3];

  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v17 = xmmword_16350;
  v18 = unk_16360;
  v19 = xmmword_16370;
  v20 = unk_16380;
  v13 = xmmword_16310;
  v14 = unk_16320;
  v15 = xmmword_16330;
  v16 = unk_16340;
  v4 = [NSValue valueWithCATransform3D:&v13];
  [v2 setToValue:v4];

  [v2 setDuration:10.0];
  [v2 setFillMode:kCAFillModeBoth];
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  v6 = [NSNumber numberWithInteger:4];
  [v5 setFromValue:v6];
  [v5 setToValue:v6];
  [v5 setDuration:0.0];
  [v5 setFillMode:kCAFillModeBoth];
  v7 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v17 = xmmword_16458;
  v18 = unk_16468;
  v19 = xmmword_16478;
  v20 = unk_16488;
  v13 = xmmword_16418;
  v14 = unk_16428;
  v15 = xmmword_16438;
  v16 = unk_16448;
  v8 = [NSValue valueWithCATransform3D:&v13];
  [v7 setFromValue:v8];

  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v17 = xmmword_164D8;
  v18 = unk_164E8;
  v19 = xmmword_164F8;
  v20 = unk_16508;
  v13 = xmmword_16498;
  v14 = unk_164A8;
  v15 = xmmword_164B8;
  v16 = unk_164C8;
  v9 = [NSValue valueWithCATransform3D:&v13];
  [v7 setToValue:v9];

  [v7 setDuration:10.0];
  [v7 setFillMode:kCAFillModeBoth];
  v10 = objc_opt_new();
  [v10 setBeginTime:0.00000011920929];
  [v10 setDuration:10.0];
  [v10 setFillMode:kCAFillModeBoth];
  v21[0] = v5;
  v21[1] = v2;
  v21[2] = v7;
  v11 = [NSArray arrayWithObjects:v21 count:3];
  [v10 setAnimations:v11];

  return v10;
}

- (id)_minuteClusterExpandAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E90];
  [v2 setDuration:5.0];
  [v2 setFillMode:kCAFillModeForwards];
  v3 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  [v3 setFromValue:&off_11208];
  [v3 setToValue:&off_11208];
  [v3 setDuration:0.00000011920929];
  [v3 setFillMode:kCAFillModeForwards];
  v4 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v4 setFromValue:&off_11218];
  [v4 setToValue:&off_11218];
  [v4 setDuration:0.00000011920929];
  [v4 setFillMode:kCAFillModeForwards];
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceTransform.rotation.z"];
  [v5 setFromValue:&off_11208];
  [v5 setToValue:&off_11208];
  [v5 setDuration:0.00000011920929];
  [v5 setFillMode:kCAFillModeForwards];
  v6 = objc_opt_new();
  [v6 setBeginTime:1.5];
  [v6 setDuration:5.0];
  [v6 setFillMode:kCAFillModeForwards];
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v5;
  v9[3] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:4];
  [v6 setAnimations:v7];

  return v6;
}

- (id)_minuteTickShrinkAndGrow
{
  v2 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v2 setBeginTime:0.00000011920929];
  [v2 setDuration:6.5];
  [v2 setKeyTimes:&off_110E8];
  [v2 setValues:&off_11100];

  return v2;
}

@end