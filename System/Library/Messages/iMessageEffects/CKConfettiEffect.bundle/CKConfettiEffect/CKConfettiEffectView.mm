@interface CKConfettiEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKConfettiEffectView

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"Confetti" withExtension:@"ca"];

  v130 = v4;
  v5 = [CAPackage packageWithContentsOfURL:v4 type:kCAPackageTypeCAMLBundle options:0 error:0];
  v6 = [NSNumber numberWithInteger:[(CKConfettiEffectView *)self zIndex]];
  stringValue = [v6 stringValue];

  v128 = stringValue;
  v129 = v5;
  v8 = [v5 publishedObjectWithName:stringValue];
  selfCopy = self;
  [(CKConfettiEffectView *)self bounds];
  v10 = v9;
  v12 = v11;
  CATransform3DMakeScale(&v136, 0.5, -0.5, 1.0);
  v135 = v136;
  [v8 setTransform:&v135];
  layer = [(CKConfettiEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  [v8 setBeginTime:?];

  [v8 setSeed:arc4random()];
  [v8 setBirthRate:0.0];
  v14 = [CABasicAnimation animationWithKeyPath:@"birthRate"];
  [v14 setFrameInterval:?];
  [v14 setFromValue:&off_4468];
  [v14 setToValue:&off_4468];
  [v14 setDuration:2.0];
  v15 = kCAAnimationAbsolute;
  v127 = v14;
  [v14 setBeginTimeMode:kCAAnimationAbsolute];
  v16 = v10 + v10;
  v17 = v12 + v12;
  v18 = (v10 + v10) * 0.5;
  [v8 setPosition:{v18, v17 * 0.5}];
  [v8 setBounds:{0.0, 0.0, v16, v17}];
  LODWORD(v19) = 1117782016;
  v20 = [NSNumber numberWithFloat:v19];
  [v8 setValue:v20 forKeyPath:@"emitterSize.width"];

  LODWORD(v21) = 1117782016;
  v22 = [NSNumber numberWithFloat:v21];
  [v8 setValue:v22 forKeyPath:@"emitterSize.height"];

  v23 = v18;
  *&v24 = v23;
  v25 = [NSNumber numberWithFloat:v24];
  [v8 setValue:v25 forKeyPath:@"emitterPosition.x"];

  v116 = v17 + (v16 + -750.0) / 1500.0 * 400.0 + 200.0;
  *&v26 = v116;
  v27 = v16;
  v28 = [NSNumber numberWithFloat:v26];
  [v8 setValue:v28 forKeyPath:@"emitterPosition.y"];

  [v8 setTimeOffset:-1.0];
  v29 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  [v29 setFrameInterval:0.0166666667];
  v30 = (v16 * v17 + -1000500.0) / 6117724.0;
  v31 = [NSNumber numberWithDouble:v30 * 0.0 + 1100.0];
  [v29 setFromValue:v31];

  [v29 setToValue:&off_4480];
  [v29 setDuration:1.0];
  v126 = v29;
  [v29 setBeginTimeMode:v15];
  v32 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell2.birthRate"];
  [v32 setFrameInterval:0.0166666667];
  v33 = [NSNumber numberWithDouble:v30 * 200.0 + 1300.0];
  [v32 setFromValue:v33];

  [v32 setToValue:&off_4480];
  [v32 setDuration:1.0];
  v125 = v32;
  [v32 setBeginTimeMode:v15];
  v34 = [CAKeyframeAnimation animationWithKeyPath:@"emitterBehaviors.attractor.stiffness"];
  [v34 setFrameInterval:0.0166666667];
  v35 = (v16 + -750.0) / 1298.0;
  v36 = v35 * 400.0 + 400.0;
  *&v36 = v36;
  v37 = [NSNumber numberWithFloat:v36];
  v38 = [NSNumber numberWithFloat:0.0];
  v39 = [NSArray arrayWithObjects:v37, v38, 0];

  v40 = [NSNumber numberWithFloat:0.0];
  v41 = v35 * 0.2 + 0.4;
  *&v41 = v41;
  v42 = [NSNumber numberWithFloat:v41];
  v43 = [NSArray arrayWithObjects:v40, v42, 0];

  v44 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v45 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v46 = [NSArray arrayWithObjects:v44, v45, 0];

  v124 = v39;
  [v34 setValues:v39];
  v123 = v43;
  [v34 setKeyTimes:v43];
  v122 = v46;
  [v34 setTimingFunctions:v46];
  [v34 setDuration:3.0];
  v132 = v34;
  [v34 setBeginTimeMode:v15];
  v47 = +[CAKeyframeAnimation animation];
  [v47 setFrameInterval:0.0166666667];
  v48 = [NSNumber numberWithFloat:0.0];
  LODWORD(v49) = 2.0;
  v50 = [NSNumber numberWithFloat:v49];
  LODWORD(v51) = 2.0;
  v52 = [NSNumber numberWithFloat:v51];
  v53 = [NSArray arrayWithObjects:v48, v50, v52, 0];

  LODWORD(v54) = 1025758986;
  v55 = [NSNumber numberWithFloat:v54];
  LODWORD(v56) = 1031127695;
  v57 = [NSNumber numberWithFloat:v56];
  LODWORD(v58) = 1.0;
  v59 = [NSNumber numberWithFloat:v58];
  v60 = [NSArray arrayWithObjects:v55, v57, v59, 0];

  v61 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v62 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v63 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v64 = [NSArray arrayWithObjects:v61, v62, v63, 0];

  v120 = v53;
  [v47 setValues:v53];
  v119 = v60;
  [v47 setKeyTimes:v60];
  v118 = v64;
  [v47 setTimingFunctions:v64];
  [v47 setDuration:6.0];
  v131 = v47;
  [v47 setBeginTimeMode:v15];
  v65 = +[CAKeyframeAnimation animation];
  [v65 setFrameInterval:0.0166666667];
  v66 = [NSNumber numberWithFloat:0.0];
  v67 = (v17 + -1334.0) / 714.0;
  v68 = v67 * -1200.0 + -2400.0;
  *&v68 = v68;
  v69 = [NSNumber numberWithFloat:v68];
  v70 = v67 * -1800.0 + -4000.0;
  *&v70 = v70;
  v71 = [NSNumber numberWithFloat:v70];
  v72 = [NSArray arrayWithObjects:v66, v69, v71, 0];

  LODWORD(v73) = 1028443341;
  v74 = [NSNumber numberWithFloat:v73];
  LODWORD(v75) = 0.5;
  v76 = [NSNumber numberWithFloat:v75];
  LODWORD(v77) = 1.0;
  v78 = [NSNumber numberWithFloat:v77];
  v79 = [NSArray arrayWithObjects:v74, v76, v78, 0];

  v80 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v81 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v82 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v83 = [NSArray arrayWithObjects:v80, v81, v82, 0];

  v117 = v72;
  [v65 setValues:v72];
  [v65 setKeyTimes:v79];
  [v65 setTimingFunctions:v83];
  [v65 setDuration:6.0];
  [v65 setBeginTimeMode:v15];
  zIndex = [(CKConfettiEffectView *)selfCopy zIndex];
  if (zIndex == &dword_0 + 3)
  {
    v93 = [NSNumber numberWithFloat:0.0];
    [v8 setValue:v93 forKeyPath:@"cullRect.origin.x"];

    v94 = v17;
    *&v95 = -v94;
    v96 = [NSNumber numberWithFloat:v95];
    [v8 setValue:v96 forKeyPath:@"cullRect.origin.y"];

    v87 = v125;
    v86 = v126;
    goto LABEL_5;
  }

  v87 = v125;
  v86 = v126;
  if (!zIndex)
  {
    LODWORD(v85) = -1022623744;
    v88 = [NSNumber numberWithFloat:v85];
    [v8 setValue:v88 forKeyPath:@"cullRect.origin.x"];

    v89 = v17;
    *&v90 = -v89;
    v91 = [NSNumber numberWithFloat:v90];
    [v8 setValue:v91 forKeyPath:@"cullRect.origin.y"];

    HIDWORD(v92) = 1081180160;
    v27 = v27 + 280.0;
LABEL_5:
    *&v92 = v27;
    v97 = [NSNumber numberWithFloat:v92];
    [v8 setValue:v97 forKeyPath:@"cullRect.size.width"];

    v98 = v17 + v17 * 2.0;
    *&v98 = v98;
    v99 = [NSNumber numberWithFloat:v98];
    [v8 setValue:v99 forKeyPath:@"cullRect.size.height"];

    v100 = [NSNumber numberWithFloat:0.0];
    [v8 setValue:v100 forKeyPath:@"emitterCells.cell1.birthRate"];

    [v8 addAnimation:v86 forKey:0];
    v101 = [NSNumber numberWithFloat:0.0];
    [v8 setValue:v101 forKeyPath:@"emitterCells.cell2.birthRate"];

    [v8 addAnimation:v87 forKey:0];
    [v8 addAnimation:v132 forKey:0];
    [v8 addAnimation:v131 forKey:@"emitterBehaviors.drag.drag"];
    [v8 addAnimation:v65 forKey:@"emitterCells.cell1.yAcceleration"];
    [v8 addAnimation:v65 forKey:@"emitterCells.cell2.yAcceleration"];
    *&v102 = v23;
    v103 = [NSNumber numberWithFloat:v102];
    [v8 setValue:v103 forKeyPath:@"emitterBehaviors.attractor.position.x"];

    v104 = v116 + -18.0;
    *&v104 = v116 + -18.0;
    v105 = [NSNumber numberWithFloat:v104];
    [v8 setValue:v105 forKeyPath:@"emitterBehaviors.attractor.position.y"];
  }

  layer2 = [(CKConfettiEffectView *)selfCopy layer];
  v107 = *&CATransform3DIdentity.m23;
  *&v135.m21 = *&CATransform3DIdentity.m21;
  *&v135.m23 = v107;
  *&v135.m31 = *&CATransform3DIdentity.m31;
  v135.m33 = CATransform3DIdentity.m33;
  v108 = *&CATransform3DIdentity.m13;
  *&v135.m11 = *&CATransform3DIdentity.m11;
  *&v135.m13 = v108;
  v135.m34 = v35 * -0.000003 + -0.000097;
  v109 = *&CATransform3DIdentity.m43;
  *&v135.m41 = *&CATransform3DIdentity.m41;
  *&v135.m43 = v109;
  [layer2 setSublayerTransform:&v135];

  [v8 position];
  v111 = v110 * 0.5;
  [v8 position];
  [v8 setPosition:{v111, v112 * 0.5}];
  [v8 addAnimation:v127 forKey:@"fall"];
  layer3 = [(CKConfettiEffectView *)selfCopy layer];
  [layer3 addSublayer:v8];

  objc_storeStrong(&selfCopy->_confettiLayer, v8);
  v114 = dispatch_time(0, 6000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CBC;
  block[3] = &unk_4160;
  v134 = v8;
  v115 = v8;
  dispatch_after(v114, &_dispatch_main_q, block);
}

- (void)stopAnimation
{
  [(CALayer *)self->_confettiLayer removeFromSuperlayer];
  confettiLayer = self->_confettiLayer;
  self->_confettiLayer = 0;
}

- (CGPoint)focusPoint
{
  x = self->focusPoint.x;
  y = self->focusPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)messageRect
{
  x = self->messageRect.origin.x;
  y = self->messageRect.origin.y;
  width = self->messageRect.size.width;
  height = self->messageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end