@interface CKShootingStarEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKShootingStarEffectView

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v5 = [stopCopy valueForKey:@"startLensFlareBehavior"];
  if ([v5 isEqualToString:@"start"])
  {
    lensBurst = [(CKShootingStarEffectView *)self lensBurst];
    [lensBurst setEnabled:1];

    lensEmitter = [(CKShootingStarEffectView *)self lensEmitter];
    [lensEmitter reloadValueForKeyPath:@"emitterCells"];
  }

  else
  {
    lensEmitter = [stopCopy valueForKey:@"stopLensFlareBehavior"];
    if ([lensEmitter isEqualToString:@"stop"])
    {
      lensBurst2 = [(CKShootingStarEffectView *)self lensBurst];
      [lensBurst2 setEnabled:0];

      lensEmitter2 = [(CKShootingStarEffectView *)self lensEmitter];
      [lensEmitter2 reloadValueForKeyPath:@"emitterCells"];
    }
  }
}

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v183 = [v3 URLForResource:@"ShootingStar" withExtension:@"ca"];

  v182 = [CAPackage packageWithContentsOfURL:v183 type:kCAPackageTypeCAMLBundle options:0 error:0];
  stringValue = [&off_85E8 stringValue];
  v4 = [v182 publishedObjectWithName:stringValue];
  sublayers = [v4 sublayers];
  v6 = [sublayers objectAtIndexedSubscript:0];

  sublayers2 = [v4 sublayers];
  v8 = [sublayers2 objectAtIndexedSubscript:1];

  sublayers3 = [v4 sublayers];
  v10 = [sublayers3 objectAtIndexedSubscript:2];

  [v8 setUpdateInterval:0.0166666667];
  [v10 setUpdateInterval:0.0166666667];
  sublayers4 = [v4 sublayers];
  v12 = [sublayers4 objectAtIndexedSubscript:3];
  [(CKShootingStarEffectView *)self setLensEmitter:v12];

  lensEmitter = [(CKShootingStarEffectView *)self lensEmitter];
  emitterBehaviors = [lensEmitter emitterBehaviors];
  v15 = [emitterBehaviors objectAtIndexedSubscript:0];
  [(CKShootingStarEffectView *)self setLensBurst:v15];

  [v10 setValue:kCAEmitterCellPoint forKeyPath:@"emitterCells.cell1.particleType"];
  [(CKShootingStarEffectView *)self bounds];
  v17 = v16;
  v19 = v18;
  selfCopy = self;
  layer = [(CKShootingStarEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  [v4 setBeginTime:?];

  [v4 setPosition:{v17 * 0.5, v19 * 0.5}];
  v180 = v4;
  [v4 setBounds:{0.0, 0.0, v17, v19}];
  v191 = v6;
  [v6 setPosition:{v17 * 0.5, v19 * 0.5}];
  [v6 setBounds:{0.0, 0.0, v17, v19}];
  [v4 setGeometryFlipped:1];
  v190 = v10;
  [v10 setTimeOffset:-0.600000024];
  lensEmitter2 = [(CKShootingStarEffectView *)self lensEmitter];
  [lensEmitter2 setTimeOffset:-0.600000024];

  v22 = [NSNumber numberWithDouble:v17 + 100.0];
  [v8 setValue:v22 forKeyPath:@"emitterSize.width"];

  v23 = [NSNumber numberWithDouble:v19 + 100.0];
  [v8 setValue:v23 forKeyPath:@"emitterSize.height"];

  v24 = [NSNumber numberWithDouble:v17 * 0.5];
  [v8 setValue:v24 forKeyPath:@"emitterPosition.x"];

  v25 = [NSNumber numberWithDouble:v19 * 0.5];
  [v8 setValue:v25 forKeyPath:@"emitterPosition.y"];

  [v8 setValue:&off_8600 forKeyPath:@"emitterZPosition"];
  [v8 setValue:&off_8618 forKeyPath:@"emitterDepth"];
  v26 = [NSNumber numberWithDouble:v17 * v19 * 0.0008];
  [v8 setValue:v26 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v8 setPosition:{v17 * 0.5, v19 * 0.5}];
  [v8 setBounds:{0.0, 0.0, v17, v19}];
  [v8 setZPosition:-10000.0];
  v179 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
  [v179 setFrameInterval:0.0166666667];
  [v179 setFromValue:&off_8640];
  [v179 setToValue:&off_8650];
  [v179 setDuration:5.0];
  v27 = kCAAnimationAbsolute;
  [v179 setBeginTimeMode:kCAAnimationAbsolute];
  v176 = v8;
  [v8 addAnimation:v179 forKey:@"transform.rotation.x"];
  v178 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  [v178 setFrameInterval:0.0166666667];
  [v178 setFromValue:&off_8660];
  [v178 setToValue:&off_8640];
  [v178 setDuration:5.0];
  [v178 setBeginTimeMode:v27];
  [v8 addAnimation:v178 forKey:@"transform.rotation.z"];
  v28 = +[UIBezierPath bezierPath];
  [v28 moveToPoint:{-20.0, v19 * 0.5 - v19 / 10.0}];
  v189 = v28;
  [v28 addCurveToPoint:v17 + v17 / -6.0 controlPoint1:v19 - v19 / 3.0 controlPoint2:{-20.0, v19 - v19 * 0.5, v17 * 0.5, v19 - v19 / 10.0}];
  v29 = +[CAKeyframeAnimation animation];
  [v29 setFrameInterval:0.0166666667];
  [v29 setKeyPath:@"emitterPosition"];
  [v29 setPath:{objc_msgSend(v28, "CGPath")}];
  [v29 setDuration:3.0];
  v30 = v29;
  v177 = v29;
  [v29 setBeginTimeMode:v27];
  v31 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v30 setTimingFunction:v31];

  [v10 addAnimation:v30 forKey:@"trailAnimation"];
  v32 = [CAKeyframeAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  LODWORD(v33) = 1169915904;
  v34 = [NSNumber numberWithFloat:v33];
  v35 = [NSNumber numberWithFloat:0.0];
  v175 = [NSArray arrayWithObjects:v34, v35, 0];

  LODWORD(v36) = 1061997773;
  v37 = [NSNumber numberWithFloat:v36];
  LODWORD(v38) = 1.0;
  v39 = [NSNumber numberWithFloat:v38];
  v174 = [NSArray arrayWithObjects:v37, v39, 0];

  v40 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v41 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v173 = [NSArray arrayWithObjects:v40, v41, 0];

  [v32 setFrameInterval:0.0166666667];
  [v32 setValues:v175];
  [v32 setKeyTimes:v174];
  [v32 setTimingFunctions:v173];
  [v32 setDuration:2.70000005];
  [v32 setBeginTimeMode:v27];
  v42 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v172 = v32;
  [v32 setTimingFunction:v42];

  v43 = [NSNumber numberWithFloat:0.0];
  [v10 setValue:v43 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v10 addAnimation:v32 forKey:0];
  v44 = +[CABasicAnimation animation];
  [v44 setFrameInterval:0.0166666667];
  [v44 setFromValue:&off_8640];
  [v44 setToValue:&off_8670];
  [v44 setDuration:2.0999999];
  v171 = v44;
  [v44 setBeginTimeMode:v27];
  v45 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  [v44 setTimingFunction:v45];

  [v44 setDelegate:self];
  [v44 setValue:@"start" forKey:@"startLensFlareBehavior"];
  lensEmitter3 = [(CKShootingStarEffectView *)self lensEmitter];
  [lensEmitter3 addAnimation:v44 forKey:0];

  v47 = +[CABasicAnimation animation];
  [v47 setFrameInterval:0.0166666667];
  [v47 setFromValue:&off_8640];
  [v47 setToValue:&off_8670];
  [v47 setDuration:2.4000001];
  v170 = v47;
  v48 = v27;
  [v47 setBeginTimeMode:v27];
  v49 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  [v47 setTimingFunction:v49];

  [v47 setDelegate:self];
  [v47 setValue:@"stop" forKey:@"stopLensFlareBehavior"];
  lensEmitter4 = [(CKShootingStarEffectView *)self lensEmitter];
  [lensEmitter4 addAnimation:v47 forKey:0];

  v51 = +[CAKeyframeAnimation animation];
  [v51 setFrameInterval:0.0166666667];
  [v51 setKeyPath:@"position"];
  [v51 setPath:{objc_msgSend(v189, "CGPath")}];
  [v51 setDuration:3.0];
  v52 = v48;
  v192 = v48;
  [v51 setBeginTimeMode:v48];
  v53 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v169 = v51;
  [v51 setTimingFunction:v53];

  lensEmitter5 = [(CKShootingStarEffectView *)self lensEmitter];
  [lensEmitter5 addAnimation:v51 forKey:@"position"];

  v55 = [CAKeyframeAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  LODWORD(v56) = 1125187584;
  v57 = [NSNumber numberWithFloat:v56];
  v58 = [NSNumber numberWithFloat:0.0];
  v168 = [NSArray arrayWithObjects:v57, v58, 0];

  LODWORD(v59) = 1065336439;
  v60 = [NSNumber numberWithFloat:v59];
  LODWORD(v61) = 1.0;
  v62 = [NSNumber numberWithFloat:v61];
  v167 = [NSArray arrayWithObjects:v60, v62, 0];

  v63 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v64 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v166 = [NSArray arrayWithObjects:v63, v64, 0];

  [v55 setFrameInterval:0.0166666667];
  [v55 setValues:v168];
  [v55 setKeyTimes:v167];
  [v55 setTimingFunctions:v166];
  [v55 setDuration:2.0999999];
  v165 = v55;
  [v55 setBeginTimeMode:v52];
  lensEmitter6 = [(CKShootingStarEffectView *)self lensEmitter];
  v66 = [NSNumber numberWithFloat:0.0];
  [lensEmitter6 setValue:v66 forKeyPath:@"emitterCells.cell1.birthRate"];

  lensEmitter7 = [(CKShootingStarEffectView *)self lensEmitter];
  [lensEmitter7 addAnimation:v55 forKey:0];

  v185 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
  v184 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
  LODWORD(v68) = 1041865114;
  v69 = [NSNumber numberWithFloat:v68];
  LODWORD(v70) = 1045220557;
  v71 = [NSNumber numberWithFloat:v70];
  LODWORD(v72) = 0.5;
  v73 = [NSNumber numberWithFloat:v72];
  LODWORD(v74) = 1051595899;
  v75 = [NSNumber numberWithFloat:v74];
  LODWORD(v76) = 1045220557;
  v77 = [NSNumber numberWithFloat:v76];
  LODWORD(v78) = 1050253722;
  v79 = [NSNumber numberWithFloat:v78];
  LODWORD(v80) = 0.25;
  v81 = [NSNumber numberWithFloat:v80];
  LODWORD(v82) = 1047233823;
  v83 = [NSNumber numberWithFloat:v82];
  LODWORD(v84) = 1041865114;
  v85 = [NSNumber numberWithFloat:v84];
  v86 = [NSNumber numberWithFloat:0.0];
  v188 = [NSArray arrayWithObjects:v69, v71, v73, v75, v77, v79, v81, v83, v85, v86, 0];

  v163 = [NSNumber numberWithFloat:0.0];
  LODWORD(v87) = 1031127695;
  v160 = [NSNumber numberWithFloat:v87];
  LODWORD(v88) = 1039516303;
  v89 = [NSNumber numberWithFloat:v88];
  LODWORD(v90) = 1051595899;
  v91 = [NSNumber numberWithFloat:v90];
  LODWORD(v92) = 1054951342;
  v93 = [NSNumber numberWithFloat:v92];
  LODWORD(v94) = 1057803469;
  v95 = [NSNumber numberWithFloat:v94];
  LODWORD(v96) = 1060655596;
  v97 = [NSNumber numberWithFloat:v96];
  LODWORD(v98) = 1063004406;
  v99 = [NSNumber numberWithFloat:v98];
  LODWORD(v100) = 1063675494;
  v101 = [NSNumber numberWithFloat:v100];
  LODWORD(v102) = 1064346583;
  v103 = [NSNumber numberWithFloat:v102];
  LODWORD(v104) = 1.0;
  v105 = [NSNumber numberWithFloat:v104];
  v187 = [NSArray arrayWithObjects:v163, v160, v89, v91, v93, v95, v97, v99, v101, v103, v105, 0];

  v161 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v106 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v107 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v108 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v109 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v110 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v111 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v112 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v113 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v114 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
  v186 = [NSArray arrayWithObjects:v161, v106, v107, v108, v109, v110, v111, v112, v113, v114, 0];

  [v185 setFrameInterval:0.0166666667];
  [v185 setValues:v188];
  [v185 setKeyTimes:v187];
  [v185 setTimingFunctions:v186];
  [v185 setDuration:3.0];
  [v185 setBeginTimeMode:v192];
  [v184 setFrameInterval:0.0166666667];
  [v184 setValues:v188];
  [v184 setKeyTimes:v187];
  [v184 setTimingFunctions:v186];
  [v184 setDuration:3.0];
  [v184 setBeginTimeMode:v192];
  lensEmitter8 = [(CKShootingStarEffectView *)selfCopy lensEmitter];
  [lensEmitter8 addAnimation:v185 forKey:@"transform.scale.x"];

  lensEmitter9 = [(CKShootingStarEffectView *)selfCopy lensEmitter];
  [lensEmitter9 addAnimation:v184 forKey:@"transform.scale.y"];

  v117 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
  v118 = [NSNumber numberWithFloat:0.0];
  LODWORD(v119) = 1058642330;
  v120 = [NSNumber numberWithFloat:v119];
  LODWORD(v121) = 1058642330;
  v122 = [NSNumber numberWithFloat:v121];
  v123 = [NSNumber numberWithFloat:0.0];
  v164 = [NSArray arrayWithObjects:v118, v120, v122, v123, 0];

  v124 = [NSNumber numberWithFloat:0.0];
  LODWORD(v125) = 1050253722;
  v126 = [NSNumber numberWithFloat:v125];
  LODWORD(v127) = 1061997773;
  v128 = [NSNumber numberWithFloat:v127];
  LODWORD(v129) = 1.0;
  v130 = [NSNumber numberWithFloat:v129];
  v162 = [NSArray arrayWithObjects:v124, v126, v128, v130, 0];

  v131 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v132 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v159 = [NSArray arrayWithObjects:v131, v132, 0];

  [v117 setFrameInterval:0.0166666667];
  [v117 setValues:v164];
  [v117 setKeyTimes:v162];
  [v117 setTimingFunctions:v159];
  [v117 setDuration:4.5999999];
  [v117 setBeginTimeMode:v192];
  [v191 addAnimation:v117 forKey:@"opacity"];
  v133 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
  v134 = [NSNumber numberWithFloat:0.0];
  LODWORD(v135) = 1.0;
  v136 = [NSNumber numberWithFloat:v135];
  LODWORD(v137) = 1.0;
  v138 = [NSNumber numberWithFloat:v137];
  v139 = [NSNumber numberWithFloat:0.0];
  v140 = [NSArray arrayWithObjects:v134, v136, v138, v139, 0];

  v141 = [NSNumber numberWithFloat:0.0];
  LODWORD(v142) = 1050253722;
  v143 = [NSNumber numberWithFloat:v142];
  LODWORD(v144) = 1061997773;
  v145 = [NSNumber numberWithFloat:v144];
  LODWORD(v146) = 1.0;
  v147 = [NSNumber numberWithFloat:v146];
  v148 = [NSArray arrayWithObjects:v141, v143, v145, v147, 0];

  v149 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v150 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v151 = [NSArray arrayWithObjects:v149, v150, 0];

  [v133 setFrameInterval:0.0166666667];
  [v133 setValues:v140];
  [v133 setKeyTimes:v148];
  [v133 setTimingFunctions:v151];
  [v133 setDuration:4.5999999];
  [v133 setBeginTimeMode:v192];
  [v176 addAnimation:v133 forKey:@"opacity"];
  v152 = *&CATransform3DIdentity.m23;
  v196[2] = *&CATransform3DIdentity.m21;
  v196[3] = v152;
  v196[4] = *&CATransform3DIdentity.m31;
  m33 = CATransform3DIdentity.m33;
  v153 = *&CATransform3DIdentity.m13;
  v196[0] = *&CATransform3DIdentity.m11;
  v196[1] = v153;
  v154 = *&CATransform3DIdentity.m43;
  v199 = *&CATransform3DIdentity.m41;
  v200 = v154;
  layer2 = [(CKShootingStarEffectView *)selfCopy layer];
  v198 = (v17 * v19 + -1000500.0) / 6117724.0 * 0.000298844721 + -0.000839537354;
  [layer2 setSublayerTransform:v196];

  layer3 = [(CKShootingStarEffectView *)selfCopy layer];
  [layer3 addSublayer:v180];

  objc_storeStrong(&selfCopy->_shootingStarLayer, v180);
  v157 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C00;
  block[3] = &unk_81D8;
  v195 = v180;
  v158 = v180;
  dispatch_after(v157, &_dispatch_main_q, block);
}

- (void)stopAnimation
{
  [(CALayer *)self->_shootingStarLayer removeFromSuperlayer];
  shootingStarLayer = self->_shootingStarLayer;
  self->_shootingStarLayer = 0;
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