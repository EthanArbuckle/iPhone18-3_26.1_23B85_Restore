@interface CKSparklesEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKSparklesEffectView

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v181 = [v3 URLForResource:@"Sparkles" withExtension:@"ca"];

  v180 = [CAPackage packageWithContentsOfURL:v181 type:kCAPackageTypeCAMLBundle options:0 error:0];
  stringValue = [&off_84C0 stringValue];
  v4 = [v180 publishedObjectWithName:stringValue];
  sublayers = [v4 sublayers];
  v6 = [sublayers objectAtIndexedSubscript:0];

  [v6 setOpacity:0.0];
  sublayers2 = [v4 sublayers];
  v8 = [sublayers2 objectAtIndexedSubscript:1];

  sublayers3 = [v4 sublayers];
  v10 = [sublayers3 objectAtIndexedSubscript:1];
  sublayers4 = [v10 sublayers];
  v12 = [sublayers4 objectAtIndexedSubscript:0];

  sublayers5 = [v4 sublayers];
  v14 = [sublayers5 objectAtIndexedSubscript:1];
  sublayers6 = [v14 sublayers];
  v16 = [sublayers6 objectAtIndexedSubscript:1];

  sublayers7 = [v4 sublayers];
  v18 = [sublayers7 objectAtIndexedSubscript:1];
  sublayers8 = [v18 sublayers];
  v20 = [sublayers8 objectAtIndexedSubscript:2];

  selfCopy = self;
  [(CKSparklesEffectView *)self bounds];
  v22 = v21;
  v24 = v23;
  layer = [(CKSparklesEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v176 = v4;
  [v4 setBeginTime:?];

  [v4 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v4 setBounds:{0.0, 0.0, v22, v24}];
  [v4 setGeometryFlipped:1];
  v175 = v6;
  [v6 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v6 setBounds:{0.0, 0.0, v22, v24}];
  v178 = v8;
  [v8 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v8 setBounds:{0.0, 0.0, v22, v24}];
  [v12 setSeed:arc4random()];
  [v12 setBirthRate:0.0];
  [v12 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v12 setBounds:{0.0, 0.0, v22, v24}];
  emitterCells = [v12 emitterCells];
  v27 = [emitterCells objectAtIndexedSubscript:0];
  [v27 setScale:0.5];

  v28 = (v22 * v24 + -1000500.0) / 6117724.0;
  emitterCells2 = [v12 emitterCells];
  v30 = [emitterCells2 objectAtIndexedSubscript:0];
  [v30 setContentsScale:v28 * -2.4 + 3.2];

  [v16 setSeed:arc4random()];
  [v16 setBirthRate:0.0];
  [v16 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v16 setBounds:{0.0, 0.0, v22, v24}];
  emitterCells3 = [v16 emitterCells];
  v32 = [emitterCells3 objectAtIndexedSubscript:0];
  [v32 setScale:1.0];

  emitterCells4 = [v16 emitterCells];
  v34 = [emitterCells4 objectAtIndexedSubscript:1];
  [v34 setScale:1.0];

  emitterCells5 = [v16 emitterCells];
  v36 = [emitterCells5 objectAtIndexedSubscript:0];
  [v36 setContentsScale:v28 * -1.275 + 1.7];

  emitterCells6 = [v16 emitterCells];
  v38 = [emitterCells6 objectAtIndexedSubscript:1];
  [v38 setContentsScale:v28 * -1.2 + 1.6];

  [v20 setSeed:arc4random()];
  [v20 setBirthRate:0.0];
  [v20 setPosition:{v22 * 0.5, v24 * 0.5}];
  [v20 setBounds:{0.0, 0.0, v22, v24}];
  emitterCells7 = [v20 emitterCells];
  v40 = [emitterCells7 objectAtIndexedSubscript:0];
  [v40 setScale:0.5];

  emitterCells8 = [v20 emitterCells];
  v42 = [emitterCells8 objectAtIndexedSubscript:1];
  [v42 setScale:0.5];

  emitterCells9 = [v20 emitterCells];
  v44 = [emitterCells9 objectAtIndexedSubscript:0];
  [v44 setContentsScale:v28 * -0.6 + 0.8];

  emitterCells10 = [v20 emitterCells];
  v46 = [emitterCells10 objectAtIndexedSubscript:1];
  [v46 setContentsScale:v28 * -0.525 + 0.7];

  v192 = [CABasicAnimation animationWithKeyPath:@"birthRate"];
  [v192 setFromValue:&off_84D8];
  [v192 setToValue:&off_84D8];
  [v192 setDuration:2.0];
  v182 = kCAAnimationAbsolute;
  [v192 setBeginTimeMode:?];
  [v192 setFrameInterval:0.0166666667];
  v47 = v24 + 70.0;
  v48 = [NSNumber numberWithFloat:70.0000159];
  [v12 setValue:v48 forKeyPath:@"emitterSize.width"];

  LODWORD(v49) = 1117782016;
  v50 = [NSNumber numberWithFloat:v49];
  [v12 setValue:v50 forKeyPath:@"emitterSize.height"];

  *&v24 = v22 + 40.0;
  LODWORD(v51) = LODWORD(v24);
  v52 = [NSNumber numberWithFloat:v51];
  [v12 setValue:v52 forKeyPath:@"emitterPosition.x"];

  *&v22 = v47;
  LODWORD(v53) = LODWORD(v22);
  v54 = [NSNumber numberWithFloat:v53];
  v185 = v12;
  [v12 setValue:v54 forKeyPath:@"emitterPosition.y"];

  [v12 setTimeOffset:0.0];
  LODWORD(v55) = 1117782016;
  v56 = [NSNumber numberWithFloat:v55];
  [v16 setValue:v56 forKeyPath:@"emitterSize.width"];

  LODWORD(v57) = 1117782016;
  v58 = [NSNumber numberWithFloat:v57];
  v184 = v16;
  [v16 setValue:v58 forKeyPath:@"emitterSize.height"];

  LODWORD(v59) = LODWORD(v24);
  v60 = [NSNumber numberWithFloat:v59];
  [v16 setValue:v60 forKeyPath:@"emitterPosition.x"];

  *&v61 = v47;
  v62 = [NSNumber numberWithFloat:v61];
  [v16 setValue:v62 forKeyPath:@"emitterPosition.y"];

  [v16 setTimeOffset:0.0];
  LODWORD(v63) = 1117782016;
  v64 = [NSNumber numberWithFloat:v63];
  [v20 setValue:v64 forKeyPath:@"emitterSize.width"];

  LODWORD(v65) = 1117782016;
  v66 = [NSNumber numberWithFloat:v65];
  [v20 setValue:v66 forKeyPath:@"emitterSize.height"];

  LODWORD(v67) = -1028390912;
  v68 = [NSNumber numberWithFloat:v67];
  [v20 setValue:v68 forKeyPath:@"emitterPosition.x"];

  LODWORD(v69) = -1028390912;
  v70 = [NSNumber numberWithFloat:v69];
  [v20 setValue:v70 forKeyPath:@"emitterPosition.y"];

  [v20 setTimeOffset:0.0];
  v191 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  [v191 setFrameInterval:0.0166666667];
  v71 = [NSNumber numberWithDouble:v28 * 600.0 + 2400.0];
  [v191 setFromValue:v71];

  [v191 setToValue:&off_84F0];
  [v191 setDuration:1.0];
  [v191 setBeginTimeMode:v182];
  v190 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  [v190 setFrameInterval:0.0166666667];
  v72 = [NSNumber numberWithDouble:v28 * 100.0 + 200.0];
  [v190 setFromValue:v72];

  [v190 setToValue:&off_84F0];
  [v190 setDuration:2.0];
  [v190 setBeginTimeMode:v182];
  v189 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell2.birthRate"];
  [v189 setFrameInterval:0.0166666667];
  v73 = [NSNumber numberWithDouble:v28 * 100.0 + 200.0];
  [v189 setFromValue:v73];

  [v189 setToValue:&off_84F0];
  [v189 setDuration:2.0];
  [v189 setBeginTimeMode:v182];
  v188 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell1.birthRate"];
  [v188 setFrameInterval:0.0166666667];
  v74 = [NSNumber numberWithDouble:v28 * 400.0 + 800.0];
  [v188 setFromValue:v74];

  [v188 setToValue:&off_84F0];
  [v188 setDuration:1.0];
  [v188 setBeginTimeMode:v182];
  v187 = [CABasicAnimation animationWithKeyPath:@"emitterCells.cell2.birthRate"];
  [v187 setFrameInterval:0.0166666667];
  v75 = [NSNumber numberWithDouble:v28 * 400.0 + 800.0];
  [v187 setFromValue:v75];

  [v187 setToValue:&off_84F0];
  [v187 setDuration:1.0];
  [v187 setBeginTimeMode:v182];
  v76 = [CAKeyframeAnimation animationWithKeyPath:@"emitterBehaviors.attractor.stiffness"];
  [v76 setFrameInterval:0.0166666667];
  LODWORD(v77) = 1056293519;
  v78 = [NSNumber numberWithFloat:v77];
  v79 = [NSNumber numberWithFloat:0.0];
  LODWORD(v80) = 1054280253;
  v81 = [NSNumber numberWithFloat:v80];
  v82 = [NSNumber numberWithFloat:0.0];
  v174 = [NSArray arrayWithObjects:v78, v79, v81, v82, 0];

  LODWORD(v83) = 1041194025;
  v84 = [NSNumber numberWithFloat:v83];
  LODWORD(v85) = 1043207291;
  v86 = [NSNumber numberWithFloat:v85];
  LODWORD(v87) = 1043878380;
  v88 = [NSNumber numberWithFloat:v87];
  v89 = [NSNumber numberWithFloat:?];
  v173 = [NSArray arrayWithObjects:v84, v86, v88, v89, 0];

  v186 = v76;
  [v76 setValues:v174];
  [v76 setKeyTimes:v173];
  [v76 setDuration:5.0];
  [v76 setBeginTimeMode:v182];
  v90 = [CAKeyframeAnimation animationWithKeyPath:@"emitterBehaviors.attractor.stiffness"];
  [v90 setFrameInterval:0.0166666667];
  LODWORD(v91) = 2.0;
  v92 = [NSNumber numberWithFloat:v91];
  v93 = [NSNumber numberWithFloat:0.0];
  LODWORD(v94) = 1058642330;
  v95 = [NSNumber numberWithFloat:v94];
  v96 = [NSNumber numberWithFloat:0.0];
  v172 = [NSArray arrayWithObjects:v92, v93, v95, v96, 0];

  LODWORD(v97) = 1041194025;
  v98 = [NSNumber numberWithFloat:v97];
  LODWORD(v99) = 1043207291;
  v100 = [NSNumber numberWithFloat:v99];
  LODWORD(v101) = 1043878380;
  v102 = [NSNumber numberWithFloat:v101];
  LODWORD(v103) = 1058642330;
  v104 = [NSNumber numberWithFloat:v103];
  v171 = [NSArray arrayWithObjects:v98, v100, v102, v104, 0];

  v183 = v90;
  [v90 setValues:v172];
  [v90 setKeyTimes:v171];
  [v90 setDuration:5.0];
  [v90 setBeginTimeMode:v182];
  v105 = [CAKeyframeAnimation animationWithKeyPath:@"emitterBehaviors.attractor.stiffness"];
  [v105 setFrameInterval:0.0166666667];
  v106 = [NSNumber numberWithFloat:0.0];
  LODWORD(v107) = 1067869798;
  v108 = [NSNumber numberWithFloat:v107];
  v109 = [NSNumber numberWithFloat:0.0];
  v170 = [NSArray arrayWithObjects:v106, v108, v109, 0];

  LODWORD(v110) = 1036831949;
  v111 = [NSNumber numberWithFloat:v110];
  LODWORD(v112) = 1037503037;
  v113 = [NSNumber numberWithFloat:v112];
  LODWORD(v114) = 1045220557;
  v115 = [NSNumber numberWithFloat:v114];
  v169 = [NSArray arrayWithObjects:v111, v113, v115, 0];

  [v105 setValues:v170];
  [v105 setKeyTimes:v169];
  [v105 setDuration:5.0];
  v116 = v105;
  v165 = v105;
  [v105 setBeginTimeMode:v182];
  v117 = +[CAKeyframeAnimation animation];
  [v117 setFrameInterval:0.0166666667];
  v118 = [NSNumber numberWithFloat:0.0];
  LODWORD(v119) = -1019346944;
  v120 = [NSNumber numberWithFloat:v119];
  v168 = [NSArray arrayWithObjects:v118, v120, 0];

  v121 = [NSNumber numberWithFloat:0.0];
  LODWORD(v122) = 1.0;
  v123 = [NSNumber numberWithFloat:v122];
  v167 = [NSArray arrayWithObjects:v121, v123, 0];

  v124 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  v166 = [NSArray arrayWithObjects:v124, 0];

  [v117 setValues:v168];
  [v117 setKeyTimes:v167];
  [v117 setTimingFunctions:v166];
  [v117 setDuration:5.0];
  v164 = v117;
  [v117 setBeginTimeMode:v182];
  v125 = [NSNumber numberWithFloat:0.0];
  [v185 setValue:v125 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v185 addAnimation:v191 forKey:0];
  v126 = [NSNumber numberWithFloat:0.0];
  [v16 setValue:v126 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v16 addAnimation:v190 forKey:0];
  v127 = [NSNumber numberWithFloat:0.0];
  [v16 setValue:v127 forKeyPath:@"emitterCells.cell2.birthRate"];

  [v16 addAnimation:v189 forKey:0];
  v128 = [NSNumber numberWithFloat:0.0];
  [v20 setValue:v128 forKeyPath:@"emitterCells.cell1.birthRate"];

  [v20 addAnimation:v188 forKey:0];
  v129 = [NSNumber numberWithFloat:0.0];
  [v20 setValue:v129 forKeyPath:@"emitterCells.cell2.birthRate"];

  [v20 addAnimation:v187 forKey:0];
  LODWORD(v130) = LODWORD(v24);
  v131 = [NSNumber numberWithFloat:v130];
  [v185 setValue:v131 forKeyPath:@"emitterBehaviors.attractor.position.x"];

  LODWORD(v132) = LODWORD(v22);
  v133 = [NSNumber numberWithFloat:v132];
  [v185 setValue:v133 forKeyPath:@"emitterBehaviors.attractor.position.y"];

  LODWORD(v134) = LODWORD(v24);
  v135 = [NSNumber numberWithFloat:v134];
  [v16 setValue:v135 forKeyPath:@"emitterBehaviors.attractor.position.x"];

  LODWORD(v136) = LODWORD(v22);
  v137 = [NSNumber numberWithFloat:v136];
  [v16 setValue:v137 forKeyPath:@"emitterBehaviors.attractor.position.y"];

  LODWORD(v138) = -1028390912;
  v139 = [NSNumber numberWithFloat:v138];
  [v20 setValue:v139 forKeyPath:@"emitterBehaviors.attractor.position.x"];

  LODWORD(v140) = -1028390912;
  v141 = [NSNumber numberWithFloat:v140];
  [v20 setValue:v141 forKeyPath:@"emitterBehaviors.attractor.position.y"];

  [v185 addAnimation:v186 forKey:0];
  [v16 addAnimation:v183 forKey:0];
  [v20 addAnimation:v116 forKey:0];
  [v185 addAnimation:v117 forKey:@"emitterCells.cell1.yAcceleration"];
  v142 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
  [v142 setFrameInterval:0.0166666667];
  v143 = [NSNumber numberWithFloat:0.0];
  LODWORD(v144) = 1.0;
  v145 = [NSNumber numberWithFloat:v144];
  LODWORD(v146) = 1.0;
  v147 = [NSNumber numberWithFloat:v146];
  v148 = [NSNumber numberWithFloat:0.0];
  v163 = [NSArray arrayWithObjects:v143, v145, v147, v148, 0];

  v149 = [NSNumber numberWithFloat:0.0];
  LODWORD(v150) = 1050253722;
  v151 = [NSNumber numberWithFloat:v150];
  LODWORD(v152) = 1059313418;
  v153 = [NSNumber numberWithFloat:v152];
  LODWORD(v154) = 1.0;
  v155 = [NSNumber numberWithFloat:v154];
  v156 = [NSArray arrayWithObjects:v149, v151, v153, v155, 0];

  v157 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v158 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v159 = [NSArray arrayWithObjects:v157, v158, 0];

  [v142 setValues:v163];
  [v142 setKeyTimes:v156];
  [v142 setTimingFunctions:v159];
  [v142 setDuration:5.5];
  [v142 setBeginTimeMode:v182];
  [v175 addAnimation:v142 forKey:@"opacity"];
  [v185 addAnimation:v192 forKey:@"fall"];
  [v184 addAnimation:v192 forKey:@"fall"];
  [v20 addAnimation:v192 forKey:@"fall"];
  layer2 = [(CKSparklesEffectView *)selfCopy layer];
  [layer2 addSublayer:v176];

  objc_storeStrong(&selfCopy->_sparklesLayer, v176);
  v161 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C18;
  block[3] = &unk_81C0;
  v194 = v176;
  v162 = v176;
  dispatch_after(v161, &_dispatch_main_q, block);
}

- (void)stopAnimation
{
  [(CALayer *)self->_sparklesLayer removeFromSuperlayer];
  sparklesLayer = self->_sparklesLayer;
  self->_sparklesLayer = 0;
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