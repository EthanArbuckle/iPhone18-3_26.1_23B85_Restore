@interface CKSpotlightEffectView
+ (id)effectedZIndexes;
- (CGPoint)_flippedFocusPoint;
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (void)_displayLinkCallback:(id)callback;
- (void)setFocusPoint:(CGPoint)point;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKSpotlightEffectView

- (void)startAnimation
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"Spotlight" withExtension:@"ca"];

  v5 = [CAPackage packageWithContentsOfURL:v4 type:kCAPackageTypeCAMLBundle options:0 error:0];
  v6 = [NSNumber numberWithInteger:[(CKSpotlightEffectView *)self zIndex]];
  stringValue = [v6 stringValue];

  v8 = [v5 publishedObjectWithName:stringValue];
  [(CKSpotlightEffectView *)self bounds];
  v10 = v9;
  v12 = v11;
  layer = [(CKSpotlightEffectView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  [v8 setBeginTime:?];

  [v8 setPosition:{v10 * 0.5, v12 * 0.5}];
  [v8 setBounds:{0.0, 0.0, v10, v12}];
  [v8 setGeometryFlipped:1];
  [v8 setAllowsGroupOpacity:0];
  [v8 setAllowsGroupBlending:0];
  if ([(CKSpotlightEffectView *)self zIndex]== &dword_0 + 3)
  {
    v370 = stringValue;
    v371 = v5;
    v372 = v4;
    [(CKSpotlightEffectView *)self _flippedFocusPoint];
    v15 = [CKElasticFunction functionWithTension:90.0 friction:18.0 initialValue:v14];
    elasticFunctionPositionY = self->_elasticFunctionPositionY;
    self->_elasticFunctionPositionY = v15;

    v17 = [CKElasticFunction functionWithTension:60.0 friction:10.0 initialValue:0.0];
    elasticFunctionPositionX = self->_elasticFunctionPositionX;
    self->_elasticFunctionPositionX = v17;

    v19 = self->_elasticFunctionPositionY;
    [(CKSpotlightEffectView *)self _flippedFocusPoint];
    [(CKElasticFunction *)v19 setInput:v20];
    [(CKElasticFunction *)self->_elasticFunctionPositionX setInput:0.0];
    if (!self->_displayLink)
    {
      v21 = +[UIScreen mainScreen];
      v22 = [v21 displayLinkWithTarget:self selector:"_displayLinkCallback:"];
      displayLink = self->_displayLink;
      self->_displayLink = v22;

      v24 = self->_displayLink;
      v25 = +[NSRunLoop currentRunLoop];
      [(CADisplayLink *)v24 addToRunLoop:v25 forMode:NSRunLoopCommonModes];

      self->_elasticLastTime = CACurrentMediaTime();
      self->_elasticRemainingTime = 0.0;
    }

    sublayers = [v8 sublayers];
    v27 = [sublayers objectAtIndexedSubscript:0];
    darken = self->_darken;
    self->_darken = v27;

    sublayers2 = [v8 sublayers];
    v30 = [sublayers2 objectAtIndexedSubscript:0];
    sublayers3 = [v30 sublayers];
    v32 = [sublayers3 objectAtIndexedSubscript:0];
    circleParent = self->_circleParent;
    self->_circleParent = v32;

    sublayers4 = [v8 sublayers];
    v35 = [sublayers4 objectAtIndexedSubscript:0];
    sublayers5 = [v35 sublayers];
    [sublayers5 objectAtIndexedSubscript:0];
    v37 = v377 = self;
    sublayers6 = [v37 sublayers];
    v39 = [sublayers6 objectAtIndexedSubscript:0];
    ringParent = v377->_ringParent;
    v377->_ringParent = v39;

    sublayers7 = [v8 sublayers];
    v42 = [sublayers7 objectAtIndexedSubscript:0];
    sublayers8 = [v42 sublayers];
    v44 = [sublayers8 objectAtIndexedSubscript:0];
    sublayers9 = [v44 sublayers];
    [sublayers9 objectAtIndexedSubscript:0];
    v47 = v46 = v8;
    sublayers10 = [v47 sublayers];
    v49 = [sublayers10 objectAtIndexedSubscript:0];
    ring0Parent = v377->_ring0Parent;
    v377->_ring0Parent = v49;

    sublayers11 = [v46 sublayers];
    v52 = [sublayers11 objectAtIndexedSubscript:0];
    sublayers12 = [v52 sublayers];
    v54 = [sublayers12 objectAtIndexedSubscript:0];
    sublayers13 = [v54 sublayers];
    v56 = [sublayers13 objectAtIndexedSubscript:0];
    sublayers14 = [v56 sublayers];
    v58 = [sublayers14 objectAtIndexedSubscript:0];
    sublayers15 = [v58 sublayers];
    v60 = [sublayers15 objectAtIndexedSubscript:0];
    ring0 = v377->_ring0;
    v377->_ring0 = v60;

    sublayers16 = [v46 sublayers];
    v63 = [sublayers16 objectAtIndexedSubscript:0];
    sublayers17 = [v63 sublayers];
    v65 = [sublayers17 objectAtIndexedSubscript:0];
    sublayers18 = [v65 sublayers];
    v67 = [sublayers18 objectAtIndexedSubscript:0];
    sublayers19 = [v67 sublayers];
    v69 = [sublayers19 objectAtIndexedSubscript:1];
    ring1 = v377->_ring1;
    v377->_ring1 = v69;

    sublayers20 = [v46 sublayers];
    v72 = [sublayers20 objectAtIndexedSubscript:1];
    dustEmitter = v377->_dustEmitter;
    v377->_dustEmitter = v72;

    sublayers21 = [v46 sublayers];
    v75 = [sublayers21 objectAtIndexedSubscript:1];
    sublayers22 = [v75 sublayers];
    v77 = [sublayers22 objectAtIndexedSubscript:0];
    beamParent1 = v377->_beamParent1;
    v377->_beamParent1 = v77;

    sublayers23 = [v46 sublayers];
    v80 = [sublayers23 objectAtIndexedSubscript:1];
    sublayers24 = [v80 sublayers];
    v82 = [sublayers24 objectAtIndexedSubscript:0];
    sublayers25 = [v82 sublayers];
    v84 = [sublayers25 objectAtIndexedSubscript:0];
    beamPos1 = v377->_beamPos1;
    v377->_beamPos1 = v84;

    sublayers26 = [v46 sublayers];
    v87 = [sublayers26 objectAtIndexedSubscript:1];
    sublayers27 = [v87 sublayers];
    v89 = [sublayers27 objectAtIndexedSubscript:0];
    sublayers28 = [v89 sublayers];
    v91 = [sublayers28 objectAtIndexedSubscript:0];
    sublayers29 = [v91 sublayers];
    v93 = [sublayers29 objectAtIndexedSubscript:0];
    beam1 = v377->_beam1;
    v377->_beam1 = v93;

    sublayers30 = [v46 sublayers];
    v96 = [sublayers30 objectAtIndexedSubscript:2];
    beamParent0 = v377->_beamParent0;
    v377->_beamParent0 = v96;

    sublayers31 = [v46 sublayers];
    v99 = [sublayers31 objectAtIndexedSubscript:2];
    sublayers32 = [v99 sublayers];
    v101 = [sublayers32 objectAtIndexedSubscript:0];
    beamPos0 = v377->_beamPos0;
    v377->_beamPos0 = v101;

    v369 = v46;
    sublayers33 = [v46 sublayers];
    v104 = [sublayers33 objectAtIndexedSubscript:2];
    sublayers34 = [v104 sublayers];
    v106 = [sublayers34 objectAtIndexedSubscript:0];
    sublayers35 = [v106 sublayers];
    v108 = [sublayers35 objectAtIndexedSubscript:0];
    beam0 = v377->_beam0;
    v377->_beam0 = v108;

    [(CKSpotlightEffectView *)v377 bounds];
    v377->_screenBounds.width = v110;
    v377->_screenBounds.height = v111;
    [(CALayer *)v377->_darken setPosition:v10 * 0.5, v12 * 0.5];
    [(CALayer *)v377->_darken setBounds:0.0, 0.0, v10, v12];
    [(CALayer *)v377->_circleParent setPosition:v10 * 0.5, v12 * 0.5];
    [(CALayer *)v377->_circleParent setBounds:0.0, 0.0, v10, v12];
    messageOrientation = [(CKSpotlightEffectView *)v377 messageOrientation];
    v377->_leftToRight = messageOrientation == 0;
    if (messageOrientation)
    {
      CATransform3DMakeScale(&v381, 0.65, 0.65, 0.65);
      v113 = v377->_beamPos0;
      v383 = v381;
      [(CALayer *)v113 setTransform:&v383];
      CATransform3DMakeScale(&v380, 0.65, 0.65, 0.65);
      v114 = v377->_beamPos1;
      *&v383.m31 = *&v380.m31;
      *&v383.m33 = *&v380.m33;
      *&v383.m41 = *&v380.m41;
      *&v383.m43 = *&v380.m43;
      *&v383.m11 = *&v380.m11;
      *&v383.m13 = *&v380.m13;
      v115 = *&v380.m21;
      v116 = *&v380.m23;
    }

    else
    {
      CATransform3DMakeScale(&v384, -0.65, 0.65, 0.65);
      v117 = v377->_beamPos0;
      v383 = v384;
      [(CALayer *)v117 setTransform:&v383];
      CATransform3DMakeScale(&v382, -0.65, 0.65, 0.65);
      v114 = v377->_beamPos1;
      *&v383.m31 = *&v382.m31;
      *&v383.m33 = *&v382.m33;
      *&v383.m41 = *&v382.m41;
      *&v383.m43 = *&v382.m43;
      *&v383.m11 = *&v382.m11;
      *&v383.m13 = *&v382.m13;
      v115 = *&v382.m21;
      v116 = *&v382.m23;
    }

    *&v383.m21 = v115;
    *&v383.m23 = v116;
    [(CALayer *)v114 setTransform:&v383];
    [(CKSpotlightEffectView *)v377 _flippedFocusPoint];
    [(CALayer *)v377->_ringParent setPosition:?];
    [(CKSpotlightEffectView *)v377 _flippedFocusPoint];
    [(CALayer *)v377->_beamParent0 setPosition:?];
    [(CKSpotlightEffectView *)v377 _flippedFocusPoint];
    [(CALayer *)v377->_beamParent1 setPosition:?];
    v118 = v377->_dustEmitter;
    v119 = [NSNumber numberWithDouble:v10];
    [(CAEmitterLayer *)v118 setValue:v119 forKeyPath:@"emitterSize.width"];

    v120 = v377->_dustEmitter;
    v121 = [NSNumber numberWithDouble:v12];
    [(CAEmitterLayer *)v120 setValue:v121 forKeyPath:@"emitterSize.height"];

    v122 = v377->_dustEmitter;
    v123 = [NSNumber numberWithDouble:v10 * 0.5];
    [(CAEmitterLayer *)v122 setValue:v123 forKeyPath:@"emitterPosition.x"];

    v124 = v377->_dustEmitter;
    v125 = [NSNumber numberWithDouble:v12 * 0.5];
    [(CAEmitterLayer *)v124 setValue:v125 forKeyPath:@"emitterPosition.y"];

    v126 = v10 * v12 * 0.00056;
    emitterCells = [(CAEmitterLayer *)v377->_dustEmitter emitterCells];
    v128 = [emitterCells objectAtIndexedSubscript:0];
    *&v129 = v126;
    [v128 setBirthRate:v129];

    emitterCells2 = [(CAEmitterLayer *)v377->_dustEmitter emitterCells];
    v131 = [emitterCells2 objectAtIndexedSubscript:0];
    [v131 setContentsScale:10.0];

    [(CAEmitterLayer *)v377->_dustEmitter setPosition:v10 * 0.5, v12 * 0.5];
    [(CAEmitterLayer *)v377->_dustEmitter setBounds:0.0, 0.0, v10, v12];
    [(CAEmitterLayer *)v377->_dustEmitter setSeed:arc4random()];
    v132 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
    v133 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    cGColor = [v133 CGColor];
    v135 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.94];
    cGColor2 = [v135 CGColor];
    v137 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.94];
    cGColor3 = [v137 CGColor];
    v139 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v140 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, cGColor2, cGColor3, [v139 CGColor], 0);
    [v132 setValues:v140];

    [v132 setKeyTimes:&off_8768];
    LODWORD(v141) = 1051361018;
    LODWORD(v142) = 1062551421;
    LODWORD(v143) = 1062551421;
    v144 = [CAMediaTimingFunction functionWithControlPoints:v141];
    v400[0] = v144;
    LODWORD(v145) = 1.0;
    LODWORD(v146) = 1043005964;
    LODWORD(v147) = 1059766403;
    v148 = [CAMediaTimingFunction functionWithControlPoints:v146];
    v400[1] = v148;
    LODWORD(v149) = 1.0;
    LODWORD(v150) = 1051361018;
    LODWORD(v151) = 1059766403;
    v152 = [CAMediaTimingFunction functionWithControlPoints:v150];
    v400[2] = v152;
    v153 = [NSArray arrayWithObjects:v400 count:3];
    [v132 setTimingFunctions:v153];

    v368 = v132;
    [v132 setDuration:4.6];
    [v132 setFrameInterval:0.0166666667];
    v154 = kCAAnimationAbsolute;
    v376 = kCAAnimationAbsolute;
    [v132 setBeginTimeMode:kCAAnimationAbsolute];
    [v132 setFillMode:kCAFillModeForwards];
    [v132 setRemovedOnCompletion:0];
    [(CALayer *)v377->_darken addAnimation:v132 forKey:@"backgroundColor"];
    v155 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    LODWORD(v156) = 1.0;
    v157 = [NSNumber numberWithFloat:v156];
    LODWORD(v158) = 1051931443;
    v159 = [NSNumber numberWithFloat:v158];
    LODWORD(v160) = 1051931443;
    v161 = [NSNumber numberWithFloat:v160];
    LODWORD(v162) = 1.0;
    v163 = [NSNumber numberWithFloat:v162];
    v164 = [NSArray arrayWithObjects:v157, v159, v161, v163, 0];
    [v155 setValues:v164];

    [v155 setKeyTimes:&off_8780];
    LODWORD(v165) = 1051361018;
    LODWORD(v166) = 1062551421;
    LODWORD(v167) = 1062551421;
    v168 = [CAMediaTimingFunction functionWithControlPoints:v165];
    v399[0] = v168;
    LODWORD(v169) = 1.0;
    LODWORD(v170) = 1043005964;
    LODWORD(v171) = 1059766403;
    v172 = [CAMediaTimingFunction functionWithControlPoints:v170];
    v399[1] = v172;
    LODWORD(v173) = 1.0;
    LODWORD(v174) = 1051361018;
    LODWORD(v175) = 1059766403;
    v176 = [CAMediaTimingFunction functionWithControlPoints:v174];
    v399[2] = v176;
    v177 = [NSArray arrayWithObjects:v399 count:3];
    [v155 setTimingFunctions:v177];

    v367 = v155;
    [v155 setDuration:4.6];
    [v155 setFrameInterval:0.0166666667];
    [v155 setBeginTimeMode:v154];
    [v155 setFillMode:kCAFillModeForwards];
    [v155 setRemovedOnCompletion:0];
    [(CALayer *)v377->_ring1 addAnimation:v155 forKey:@"opacity"];
    v373 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    [v373 setKeyTimes:&off_8798];
    LODWORD(v178) = 1.0;
    LODWORD(v179) = 1043005964;
    LODWORD(v180) = 1062551421;
    v181 = [CAMediaTimingFunction functionWithControlPoints:v179];
    v398[0] = v181;
    LODWORD(v182) = 1051361018;
    LODWORD(v183) = 1062551421;
    LODWORD(v184) = 1062551421;
    v185 = [CAMediaTimingFunction functionWithControlPoints:v182];
    v398[1] = v185;
    LODWORD(v186) = 1058642330;
    LODWORD(v187) = 1.0;
    LODWORD(v188) = 1043005964;
    LODWORD(v189) = 1043005964;
    v190 = [CAMediaTimingFunction functionWithControlPoints:v188];
    v398[2] = v190;
    LODWORD(v191) = 1056159302;
    LODWORD(v192) = 1061796446;
    LODWORD(v193) = 1073993482;
    v194 = [CAMediaTimingFunction functionWithControlPoints:v191];
    v398[3] = v194;
    LODWORD(v195) = 1060252942;
    LODWORD(v196) = 1055253332;
    LODWORD(v197) = 1.0;
    LODWORD(v198) = 1059766403;
    v199 = [CAMediaTimingFunction functionWithControlPoints:v195];
    v398[4] = v199;
    LODWORD(v200) = 1043542835;
    LODWORD(v201) = 1008981770;
    LODWORD(v202) = 1053407838;
    LODWORD(v203) = 1057266598;
    v204 = [CAMediaTimingFunction functionWithControlPoints:v200];
    v398[5] = v204;
    LODWORD(v205) = 1063306396;
    LODWORD(v206) = 1024416809;
    LODWORD(v207) = 1053005185;
    LODWORD(v208) = 1066317906;
    v209 = [CAMediaTimingFunction functionWithControlPoints:v205];
    v398[6] = v209;
    v210 = [NSArray arrayWithObjects:v398 count:7];
    [v373 setTimingFunctions:v210];

    v364 = [NSNumber numberWithDouble:1.4];
    v396[0] = v364;
    v362 = [NSNumber numberWithDouble:1.4];
    v396[1] = v362;
    v396[2] = &off_83C0;
    v361 = [NSArray arrayWithObjects:v396 count:3];
    v397[0] = v361;
    v360 = [NSNumber numberWithDouble:1.4];
    v395[0] = v360;
    v359 = [NSNumber numberWithDouble:1.4];
    v395[1] = v359;
    v395[2] = &off_83C0;
    v358 = [NSArray arrayWithObjects:v395 count:3];
    v397[1] = v358;
    v357 = [NSNumber numberWithDouble:1.06];
    v394[0] = v357;
    v356 = [NSNumber numberWithDouble:1.06];
    v394[1] = v356;
    v394[2] = &off_83C0;
    v355 = [NSArray arrayWithObjects:v394 count:3];
    v397[2] = v355;
    LODWORD(v211) = 1.0;
    v354 = [NSNumber numberWithFloat:v211];
    v393[0] = v354;
    LODWORD(v212) = 1.0;
    v353 = [NSNumber numberWithFloat:v212];
    v393[1] = v353;
    v393[2] = &off_83C0;
    v352 = [NSArray arrayWithObjects:v393 count:3];
    v397[3] = v352;
    LODWORD(v213) = 1.0;
    v351 = [NSNumber numberWithFloat:v213];
    v392[0] = v351;
    LODWORD(v214) = 1.0;
    v350 = [NSNumber numberWithFloat:v214];
    v392[1] = v350;
    v392[2] = &off_83C0;
    v349 = [NSArray arrayWithObjects:v392 count:3];
    v397[4] = v349;
    v348 = [NSNumber numberWithDouble:0.95];
    v391[0] = v348;
    v215 = [NSNumber numberWithDouble:0.95];
    v391[1] = v215;
    v391[2] = &off_83C0;
    v216 = [NSArray arrayWithObjects:v391 count:3];
    v397[5] = v216;
    LODWORD(v217) = 1.0;
    v218 = [NSNumber numberWithFloat:v217];
    v390[0] = v218;
    LODWORD(v219) = 1.0;
    v220 = [NSNumber numberWithFloat:v219];
    v390[1] = v220;
    v390[2] = &off_83C0;
    v221 = [NSArray arrayWithObjects:v390 count:3];
    v397[6] = v221;
    v222 = [NSNumber numberWithDouble:8.66];
    v389[0] = v222;
    v223 = [NSNumber numberWithDouble:8.66];
    v389[1] = v223;
    v389[2] = &off_83C0;
    v224 = [NSArray arrayWithObjects:v389 count:3];
    v397[7] = v224;
    v225 = [NSArray arrayWithObjects:v397 count:8];
    [v373 setValues:v225];

    [v373 setDuration:4.15];
    [v373 setFrameInterval:0.0166666667];
    [v373 setBeginTimeMode:v376];
    [v373 setFillMode:kCAFillModeForwards];
    [v373 setRemovedOnCompletion:0];
    [(CALayer *)v377->_ring0 addAnimation:v373 forKey:@"transform.scale"];
    [(CALayer *)v377->_beam0 addAnimation:v373 forKey:@"transform.scale"];
    [(CALayer *)v377->_beam1 addAnimation:v373 forKey:@"transform.scale"];
    v226 = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    [v226 setKeyTimes:&off_87B0];
    LODWORD(v227) = 1.0;
    LODWORD(v228) = 1043005964;
    LODWORD(v229) = 1062551421;
    v230 = [CAMediaTimingFunction functionWithControlPoints:v228];
    v388[0] = v230;
    LODWORD(v231) = 1043005964;
    LODWORD(v232) = 1043005964;
    LODWORD(v233) = 1062551421;
    LODWORD(v234) = 1062551421;
    v235 = [CAMediaTimingFunction functionWithControlPoints:v231];
    v388[1] = v235;
    LODWORD(v236) = 1.0;
    LODWORD(v237) = 1043005964;
    LODWORD(v238) = 1059766403;
    v239 = [CAMediaTimingFunction functionWithControlPoints:v237];
    v388[2] = v239;
    LODWORD(v240) = 1051361018;
    LODWORD(v241) = 1062551421;
    LODWORD(v242) = 1062551421;
    v243 = [CAMediaTimingFunction functionWithControlPoints:v240];
    v388[3] = v243;
    v244 = [NSArray arrayWithObjects:v388 count:4];
    [v226 setTimingFunctions:v244];

    v365 = v226;
    [v226 setValues:&off_87C8];
    [v226 setDuration:4.267];
    [v226 setFrameInterval:0.0166666667];
    [v226 setBeginTimeMode:v376];
    [v226 setFillMode:kCAFillModeForwards];
    [v226 setRemovedOnCompletion:0];
    [(CALayer *)v377->_ring0 addAnimation:v226 forKey:@"opacity"];
    [(CALayer *)v377->_beam0 addAnimation:v226 forKey:@"opacity"];
    [(CALayer *)v377->_beam1 addAnimation:v226 forKey:@"opacity"];
    v245 = [CAKeyframeAnimation animationWithKeyPath:@"contentsMultiplyColor"];
    [v245 setKeyTimes:&off_87E0];
    LODWORD(v246) = 1.0;
    LODWORD(v247) = 1043005964;
    LODWORD(v248) = 1062551421;
    v249 = [CAMediaTimingFunction functionWithControlPoints:v247];
    v387[0] = v249;
    LODWORD(v250) = 1043005964;
    LODWORD(v251) = 1043005964;
    LODWORD(v252) = 1062551421;
    LODWORD(v253) = 1062551421;
    v254 = [CAMediaTimingFunction functionWithControlPoints:v250];
    v387[1] = v254;
    LODWORD(v255) = 1.0;
    LODWORD(v256) = 1043005964;
    LODWORD(v257) = 1059766403;
    v258 = [CAMediaTimingFunction functionWithControlPoints:v256];
    v387[2] = v258;
    LODWORD(v259) = 1051361018;
    LODWORD(v260) = 1062551421;
    LODWORD(v261) = 1062551421;
    v262 = [CAMediaTimingFunction functionWithControlPoints:v259];
    v387[3] = v262;
    v263 = [NSArray arrayWithObjects:v387 count:4];
    [v245 setTimingFunctions:v263];

    v264 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    cGColor4 = [v264 CGColor];
    v266 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    cGColor5 = [v266 CGColor];
    v268 = [UIColor colorWithRed:0.654901961 green:0.82745098 blue:0.996078431 alpha:1.0];
    cGColor6 = [v268 CGColor];
    v270 = [UIColor colorWithRed:0.654901961 green:0.82745098 blue:0.996078431 alpha:1.0];
    cGColor7 = [v270 CGColor];
    v272 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    v273 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor4, cGColor5, cGColor6, cGColor7, [v272 CGColor], 0);
    [v245 setValues:v273];

    v366 = v245;
    [v245 setDuration:4.267];
    [v245 setFrameInterval:0.0166666667];
    [v245 setBeginTimeMode:v376];
    [v245 setFillMode:kCAFillModeForwards];
    [v245 setRemovedOnCompletion:0];
    [(CALayer *)v377->_beam0 addAnimation:v245 forKey:@"contentsMultiplyColor"];
    v274 = +[UIBezierPath bezierPath];
    [v274 moveToPoint:{-20.501, -10.522}];
    [v274 addCurveToPoint:-20.501 controlPoint1:-10.522 controlPoint2:{-20.501, -10.522, -20.501, -10.522}];
    [v274 addCurveToPoint:5.499 controlPoint1:-0.522 controlPoint2:{-20.501, -10.522, 5.499, -0.522}];
    [v274 addCurveToPoint:? controlPoint1:? controlPoint2:?];
    [v274 addCurveToPoint:-0.501 controlPoint1:-0.522 controlPoint2:{3.499, -2.522, -0.501, -0.522}];
    [v274 addCurveToPoint:1.63 controlPoint1:-0.522 controlPoint2:{-0.501, -0.522, 1.63, -0.522}];
    [v274 addCurveToPoint:-1.094 controlPoint1:1.478 controlPoint2:{1.63, -0.522, -1.094, 1.478}];
    [v274 addCurveToPoint:2.381 controlPoint1:8.636 controlPoint2:{-1.094, 1.478, 2.381, 8.636}];
    v375 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [v375 setKeyTimes:&off_87F8];
    LODWORD(v275) = 1.0;
    LODWORD(v276) = 1062551421;
    LODWORD(v277) = 1051361018;
    v278 = [CAMediaTimingFunction functionWithControlPoints:v277];
    v386[0] = v278;
    LODWORD(v279) = 1057233043;
    LODWORD(v280) = 1.0;
    LODWORD(v281) = 1051361018;
    v282 = [CAMediaTimingFunction functionWithControlPoints:v281];
    v386[1] = v282;
    LODWORD(v283) = 1044348142;
    LODWORD(v284) = 1058189345;
    LODWORD(v285) = 1.0;
    v286 = [CAMediaTimingFunction functionWithControlPoints:v283];
    v386[2] = v286;
    LODWORD(v287) = 1051226800;
    LODWORD(v288) = 1059716071;
    LODWORD(v289) = 1.0;
    v290 = [CAMediaTimingFunction functionWithControlPoints:v287];
    v386[3] = v290;
    LODWORD(v291) = 1051394572;
    LODWORD(v292) = 1042133549;
    LODWORD(v293) = 1059816735;
    v294 = [CAMediaTimingFunction functionWithControlPoints:v291];
    v386[4] = v294;
    LODWORD(v295) = 1051461681;
    LODWORD(v296) = 1049179980;
    LODWORD(v297) = 1060269720;
    LODWORD(v298) = 1059816735;
    v299 = [CAMediaTimingFunction functionWithControlPoints:v295];
    v386[5] = v299;
    LODWORD(v300) = 1051964998;
    LODWORD(v301) = 1040388719;
    LODWORD(v302) = 1058524889;
    LODWORD(v303) = -1072298983;
    v304 = [CAMediaTimingFunction functionWithControlPoints:v300];
    v386[6] = v304;
    v305 = [NSArray arrayWithObjects:v386 count:7];
    [v375 setTimingFunctions:v305];

    v363 = v274;
    [v375 setPath:{objc_msgSend(v274, "CGPath")}];
    v306 = [NSValue valueWithCGPoint:-20.501, -10.522];
    v385[0] = v306;
    v307 = [NSValue valueWithCGPoint:-20.501, -10.522];
    v385[1] = v307;
    v308 = [NSValue valueWithCGPoint:5.499, -0.522];
    v385[2] = v308;
    v309 = [NSValue valueWithCGPoint:3.499, -2.522];
    v385[3] = v309;
    v310 = [NSValue valueWithCGPoint:-0.501, -0.522];
    v385[4] = v310;
    v311 = [NSValue valueWithCGPoint:1.63, -0.522];
    v385[5] = v311;
    v312 = [NSValue valueWithCGPoint:-1.094, 1.478];
    v385[6] = v312;
    v313 = [NSValue valueWithCGPoint:2.381, 8.636];
    v385[7] = v313;
    v314 = [NSArray arrayWithObjects:v385 count:8];
    [v375 setValues:v314];

    [v375 setDuration:4.266];
    [v375 setFrameInterval:0.0166666667];
    [v375 setBeginTimeMode:v376];
    [v375 setFillMode:kCAFillModeForwards];
    [v375 setRemovedOnCompletion:0];
    [(CALayer *)v377->_ring0 addAnimation:v375 forKey:@"position"];
    [(CALayer *)v377->_beamPos0 addAnimation:v375 forKey:@"position"];
    [(CALayer *)v377->_beamPos1 addAnimation:v375 forKey:@"position"];
    v315 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    [v315 setFrameInterval:0.0166666667];
    [v315 setKeyTimes:&off_8810];
    v316 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v317 = [NSArray arrayWithObjects:v316, 0];
    v374 = v315;
    [v315 setTimingFunctions:v317];

    [v315 setValues:&off_88A0];
    [v315 setDuration:4.2];
    [v315 setBeginTimeMode:v376];
    [v315 setFillMode:kCAFillModeForwards];
    [v315 setRemovedOnCompletion:0];
    v318 = [CAKeyframeAnimation animationWithKeyPath:@"shadowRadius"];
    [v318 setFrameInterval:0.0166666667];
    v319 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v320 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v321 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v322 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v323 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v324 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v325 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    v326 = [NSArray arrayWithObjects:v319, v320, v321, v322, v323, v324, v325, 0];
    [v318 setTimingFunctions:v326];

    LODWORD(v327) = 3.75;
    v328 = [NSNumber numberWithFloat:v327];
    LODWORD(v329) = 4.0;
    v330 = [NSNumber numberWithFloat:v329];
    LODWORD(v331) = 2.25;
    v332 = [NSNumber numberWithFloat:v331];
    LODWORD(v333) = 4.0;
    v334 = [NSNumber numberWithFloat:v333];
    LODWORD(v335) = 3.75;
    v336 = [NSNumber numberWithFloat:v335];
    LODWORD(v337) = 4.0;
    v338 = [NSNumber numberWithFloat:v337];
    LODWORD(v339) = 2.25;
    v340 = [NSNumber numberWithFloat:v339];
    LODWORD(v341) = 1101398016;
    v342 = [NSNumber numberWithFloat:v341];
    v343 = v328;
    v344 = [NSArray arrayWithObjects:v328, v330, v332, v334, v336, v338, v340, v342, 0];
    [v318 setValues:v344];

    self = v377;
    [v318 setDuration:4.2];
    [v318 setBeginTimeMode:v376];
    [v318 setFillMode:kCAFillModeForwards];
    [v318 setRemovedOnCompletion:0];
    [(CALayer *)v377->_ring0 addAnimation:v318 forKey:@"shadowRadius"];

    v5 = v371;
    v4 = v372;
    v8 = v369;
    stringValue = v370;
  }

  layer2 = [(CKSpotlightEffectView *)self layer];
  [layer2 addSublayer:v8];

  objc_storeStrong(&self->_SpotlightLayer, v8);
  v346 = dispatch_time(0, 5700000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3574;
  block[3] = &unk_81B0;
  v379 = v8;
  v347 = v8;
  dispatch_after(v346, &_dispatch_main_q, block);
}

- (CGPoint)_flippedFocusPoint
{
  [(CKSpotlightEffectView *)self focusPoint];
  v4 = v3;
  v6 = v5;
  [(CKSpotlightEffectView *)self bounds];
  v8 = v7 - v6;
  v9 = v4;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)_displayLinkCallback:(id)callback
{
  v4 = CACurrentMediaTime();
  v5 = v4 - self->_elasticLastTime;
  self->_elasticLastTime = v4;
  self->_elasticRemainingTime = v5 + self->_elasticRemainingTime;
  self->_randomNumber = arc4random() % 0xC8 - 100;
  elasticFunctionPositionY = self->_elasticFunctionPositionY;
  [(CKSpotlightEffectView *)self _flippedFocusPoint];
  [(CKElasticFunction *)elasticFunctionPositionY setInput:v7];
  elasticFunctionPositionX = self->_elasticFunctionPositionX;
  [(CKElasticFunction *)self->_elasticFunctionPositionY velocity];
  v10 = (v9 + 1000.0) / 2000.0 * 2.0 + -1.0;
  randomNumber = self->_randomNumber;
  [(CKElasticFunction *)self->_elasticFunctionPositionY velocity];
  [(CKElasticFunction *)elasticFunctionPositionX setInput:(v12 + 1000.0) / 2000.0 * 40.0 + -20.0 + v10 * randomNumber];
  for (i = self->_elasticRemainingTime; i >= 0.001; self->_elasticRemainingTime = i)
  {
    [(CKElasticFunction *)self->_elasticFunctionPositionY step];
    [(CKElasticFunction *)self->_elasticFunctionPositionX step];
    i = self->_elasticRemainingTime - 0.001;
  }

  [(CKSpotlightEffectView *)self _flippedFocusPoint];
  v15 = v14;
  [(CKElasticFunction *)self->_elasticFunctionPositionX output];
  v17 = v15 + v16;
  [(CKElasticFunction *)self->_elasticFunctionPositionY output];
  v19 = v18;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CALayer *)self->_ringParent setPosition:v17, v19];
  [(CALayer *)self->_beamParent0 setPosition:v17, v19];
  [(CALayer *)self->_beamParent1 setPosition:v17, v19];
  v20 = v19 / self->_screenBounds.height * -16.0 + 164.0 + -150.0;
  if (self->_leftToRight)
  {
    CATransform3DMakeRotation(&v30, (360.0 - v20) * 0.0174532925, 0.0, 0.0, 1.0);
    beamParent0 = self->_beamParent0;
    v29 = v30;
    [(CALayer *)beamParent0 setTransform:&v29];
    CATransform3DMakeRotation(&v28, (360.0 - (v19 / self->_screenBounds.height * -16.0 + 164.0 + -150.0)) * 0.0174532925, 0.0, 0.0, 1.0);
    beamParent1 = self->_beamParent1;
    *&v29.m31 = *&v28.m31;
    *&v29.m33 = *&v28.m33;
    *&v29.m41 = *&v28.m41;
    *&v29.m43 = *&v28.m43;
    *&v29.m11 = *&v28.m11;
    *&v29.m13 = *&v28.m13;
    v23 = *&v28.m21;
    v24 = *&v28.m23;
  }

  else
  {
    CATransform3DMakeRotation(&v27, v20 * 0.0174532925, 0.0, 0.0, 1.0);
    v25 = self->_beamParent0;
    v29 = v27;
    [(CALayer *)v25 setTransform:&v29];
    CATransform3DMakeRotation(&v26, (v19 / self->_screenBounds.height * -16.0 + 164.0 + -150.0) * 0.0174532925, 0.0, 0.0, 1.0);
    beamParent1 = self->_beamParent1;
    *&v29.m31 = *&v26.m31;
    *&v29.m33 = *&v26.m33;
    *&v29.m41 = *&v26.m41;
    *&v29.m43 = *&v26.m43;
    *&v29.m11 = *&v26.m11;
    *&v29.m13 = *&v26.m13;
    v23 = *&v26.m21;
    v24 = *&v26.m23;
  }

  *&v29.m21 = v23;
  *&v29.m23 = v24;
  [(CALayer *)beamParent1 setTransform:&v29];
  +[CATransaction commit];
}

- (void)setFocusPoint:(CGPoint)point
{
  if (self->_focusPoint.x != point.x || self->_focusPoint.y != point.y)
  {
    self->_focusPoint = point;
  }
}

- (void)stopAnimation
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  elasticFunctionPositionY = self->_elasticFunctionPositionY;
  self->_elasticFunctionPositionY = 0;

  [(CALayer *)self->_SpotlightLayer removeFromSuperlayer];
  SpotlightLayer = self->_SpotlightLayer;
  self->_SpotlightLayer = 0;
}

+ (id)effectedZIndexes
{
  v2 = [NSMutableIndexSet indexSetWithIndex:0];
  [v2 addIndex:3];
  v3 = [v2 copy];

  return v3;
}

- (CGPoint)focusPoint
{
  x = self->_focusPoint.x;
  y = self->_focusPoint.y;
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