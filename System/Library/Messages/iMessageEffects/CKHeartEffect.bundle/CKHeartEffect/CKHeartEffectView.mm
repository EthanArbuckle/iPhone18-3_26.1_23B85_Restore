@interface CKHeartEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (CKHeartEffectView)initWithFrame:(CGRect)a3;
- (SCNVector3)calculateHandlePosition;
- (id)_snapshotImage;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForegroundNotification;
- (void)applicationWillResignActive;
- (void)setMessageRect:(CGRect)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation CKHeartEffectView

- (CKHeartEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v29.receiver = self;
  v29.super_class = CKHeartEffectView;
  v7 = [(CKHeartEffectView *)&v29 initWithFrame:?];
  if (v7)
  {
    v8 = [[CKHeartEffectSCNView alloc] initWithFrame:x, y, width, height];
    heartView = v7->_heartView;
    v7->_heartView = v8;

    v10 = +[UIColor clearColor];
    [(CKHeartEffectSCNView *)v7->_heartView setBackgroundColor:v10];

    [(CKHeartEffectSCNView *)v7->_heartView setPreferredFramesPerSecond:60];
    [(CKHeartEffectView *)v7 addSubview:v7->_heartView];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 pathForResource:@"heart" ofType:@"scn"];
    v13 = [NSURL fileURLWithPath:v12];
    v14 = [SCNScene sceneWithURL:v13 options:0 error:0];

    v15 = [v14 rootNode];
    v16 = [v15 childNodeWithName:@"heart" recursively:1];

    *&v17 = SCNVector3Zero.x;
    *&v18 = SCNVector3Zero.y;
    *&v19 = SCNVector3Zero.z;
    [v16 setScale:{v17, v18, v19}];
    [(CKHeartEffectSCNView *)v7->_heartView setScene:v14];
    v20 = [(CKHeartEffectSCNView *)v7->_heartView scene];
    v21 = [v20 rootNode];
    v22 = [v21 childNodeWithName:@"heart" recursively:1];
    heart = v7->_heart;
    v7->_heart = v22;

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v7 selector:"applicationWillResignActive" name:UIApplicationWillResignActiveNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v7 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v7 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v7 selector:"applicationWillEnterForegroundNotification" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v7;
}

- (void)startAnimation
{
  heartView = self->_heartView;
  [(CKHeartEffectView *)self bounds];
  [(CKHeartEffectSCNView *)heartView setFrame:?];
  v4 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v4 setPaused:0];

  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  self->_startTime = v6;

  v7 = [(SCNNode *)self->_heart parentNode];
  self->_leftToRight = [(CKHeartEffectView *)self messageOrientation]== 0;
  [(CKHeartEffectView *)self calculateHandlePosition];
  v140 = v7;
  [v7 setPosition:?];
  v8 = [(CKHeartEffectView *)self _snapshotImage];
  v9 = [(SCNNode *)self->_heart childNodes];
  v10 = [v9 firstObject];
  v11 = [v10 geometry];
  v12 = [v11 firstMaterial];
  v13 = [v12 reflective];
  [v13 setContents:v8];

  v14 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
  [v14 setKeyTimes:&off_46D0];
  if (self->_leftToRight)
  {
    *&v15 = 0.000000017578;
  }

  else
  {
    *&v15 = -0.000000017578;
  }

  LODWORD(v16) = -1286627784;
  LODWORD(v17) = -1321913946;
  v18 = [NSValue valueWithSCNVector3:v15, v16, v17];
  v146[0] = v18;
  if (self->_leftToRight)
  {
    *&v19 = 0.000000017578;
  }

  else
  {
    *&v19 = -0.000000017578;
  }

  LODWORD(v20) = -1286627784;
  LODWORD(v21) = -1321913946;
  v22 = [NSValue valueWithSCNVector3:v19, v20, v21];
  v146[1] = v22;
  LODWORD(v25) = -1162061132;
  if (self->_leftToRight)
  {
    *&v25 = 0.001437;
  }

  LODWORD(v23) = 1040436901;
  LODWORD(v24) = -1116224567;
  v26 = [NSValue valueWithSCNVector3:v25, v23, v24];
  v146[2] = v26;
  LODWORD(v29) = -1095621629;
  if (self->_leftToRight)
  {
    *&v29 = 0.34793;
  }

  LODWORD(v27) = 1060975150;
  LODWORD(v28) = -1103204065;
  v30 = [NSValue valueWithSCNVector3:v29, v27, v28];
  v146[3] = v30;
  LODWORD(v33) = -1082321583;
  if (self->_leftToRight)
  {
    *&v33 = 0.98861;
  }

  LODWORD(v31) = 1074987537;
  LODWORD(v32) = -1111963033;
  v34 = [NSValue valueWithSCNVector3:v33, v31, v32];
  v146[4] = v34;
  v35 = [NSArray arrayWithObjects:v146 count:5];
  [v14 setValues:v35];

  [v14 setDuration:6.65];
  [v14 setCalculationMode:kCAAnimationCubic];
  v139 = v14;
  [(SCNNode *)self->_heart addAnimation:v14 forKey:0];
  v36 = +[UIScreen mainScreen];
  [v36 bounds];
  v38 = v37;
  v40 = v39;

  if (+[UIDevice __ck_currentDeviceIsPadOrMac])
  {
    v41 = +[UIScreen mainScreen];
    [v41 bounds];
    v44 = fmax(v42, v43) / 5000.0;
  }

  else
  {
    v44 = fmax(v38, v40) / 1500.0;
  }

  v45 = [CAKeyframeAnimation animationWithKeyPath:@"scale"];
  [v45 setKeyTimes:&off_46E8];
  v46 = [NSValue valueWithSCNVector3:0.0, 0.0, 0.0];
  v145[0] = v46;
  *&v47 = v44;
  LODWORD(v48) = LODWORD(v47);
  LODWORD(v49) = LODWORD(v47);
  v50 = [NSValue valueWithSCNVector3:v47, v48, v49];
  v145[1] = v50;
  v51 = v44 * 1.1375;
  *&v51 = v44 * 1.1375;
  LODWORD(v52) = LODWORD(v51);
  LODWORD(v53) = LODWORD(v51);
  v54 = [NSValue valueWithSCNVector3:v51, v52, v53];
  v145[2] = v54;
  v55 = [NSValue valueWithSCNVector3:0.0, 0.0, 0.0];
  v145[3] = v55;
  v56 = [NSArray arrayWithObjects:v145 count:4];
  [v45 setValues:v56];

  v138 = v45;
  [v45 setDuration:6.65];
  [v45 setCalculationMode:kCAAnimationCubic];
  [(SCNNode *)self->_heart addAnimation:v45 forKey:0];
  v57 = [CAKeyframeAnimation animationWithKeyPath:@"eulerAngles.x"];
  [v57 setKeyTimes:&off_4700];
  v134 = [NSNumber numberWithFloat:0.0];
  v144[0] = v134;
  LODWORD(v58) = -1118406832;
  v59 = [NSNumber numberWithFloat:v58];
  v144[1] = v59;
  LODWORD(v60) = -1137685620;
  v61 = [NSNumber numberWithFloat:v60];
  v144[2] = v61;
  LODWORD(v62) = 1039807965;
  v63 = [NSNumber numberWithFloat:v62];
  v144[3] = v63;
  LODWORD(v64) = -1107675683;
  v65 = [NSNumber numberWithFloat:v64];
  v144[4] = v65;
  LODWORD(v66) = -1099403851;
  v67 = [NSNumber numberWithFloat:v66];
  v144[5] = v67;
  v68 = [NSArray arrayWithObjects:v144 count:6];
  [v57 setValues:v68];

  v136 = v57;
  [v57 setDuration:6.65];
  [v57 setCalculationMode:kCAAnimationCubic];
  [(SCNNode *)self->_heart addAnimation:v57 forKey:0];
  v69 = [CAKeyframeAnimation animationWithKeyPath:@"eulerAngles.y"];
  [v69 setKeyTimes:&off_4718];
  *&v70 = 0x8000000080000000;
  if (self->_leftToRight)
  {
    *&v70 = 0.0;
  }

  v71 = [NSNumber numberWithFloat:v70];
  v143[0] = v71;
  LODWORD(v72) = -1099287075;
  if (self->_leftToRight)
  {
    *&v72 = 0.24435;
  }

  v73 = [NSNumber numberWithFloat:v72];
  v143[1] = v73;
  LODWORD(v74) = 1044682761;
  if (self->_leftToRight)
  {
    *&v74 = -0.19199;
  }

  v75 = [NSNumber numberWithFloat:v74];
  v143[2] = v75;
  LODWORD(v76) = -1095057825;
  if (self->_leftToRight)
  {
    *&v76 = 0.36473;
  }

  v77 = [NSNumber numberWithFloat:v76];
  v143[3] = v77;
  LODWORD(v78) = -1067081507;
  if (self->_leftToRight)
  {
    *&v78 = 3.5879;
  }

  v79 = [NSNumber numberWithFloat:v78];
  v143[4] = v79;
  v80 = [NSArray arrayWithObjects:v143 count:5];
  [v69 setValues:v80];

  v135 = v69;
  [v69 setDuration:6.65];
  [v69 setCalculationMode:kCAAnimationCubic];
  [(SCNNode *)self->_heart addAnimation:v69 forKey:0];
  v81 = [CAKeyframeAnimation animationWithKeyPath:@"eulerAngles.z"];
  [v81 setKeyTimes:&off_4730];
  LODWORD(v82) = 1061259575;
  LODWORD(v83) = 1000593162;
  LODWORD(v84) = 1062551421;
  LODWORD(v85) = 1.0;
  v141 = [CAMediaTimingFunction functionWithControlPoints:v82];
  v142[0] = v141;
  LODWORD(v86) = 1050488603;
  LODWORD(v87) = 1036563513;
  LODWORD(v88) = 1063541277;
  v137 = [CAMediaTimingFunction functionWithControlPoints:v86];
  v142[1] = v137;
  LODWORD(v89) = 1048106238;
  LODWORD(v90) = -1105417208;
  LODWORD(v91) = 1058306785;
  LODWORD(v92) = 1061276353;
  v133 = [CAMediaTimingFunction functionWithControlPoints:v89];
  v142[2] = v133;
  LODWORD(v93) = 1050220167;
  LODWORD(v94) = 1059195978;
  LODWORD(v95) = 1065529377;
  LODWORD(v96) = -0.25;
  v132 = [CAMediaTimingFunction functionWithControlPoints:v93];
  v142[3] = v132;
  LODWORD(v97) = 1038979432;
  LODWORD(v98) = 1058088681;
  LODWORD(v99) = 1061930664;
  LODWORD(v100) = 1056058638;
  v101 = [CAMediaTimingFunction functionWithControlPoints:v100];
  v142[4] = v101;
  LODWORD(v102) = 1055320441;
  LODWORD(v103) = -1109846393;
  LODWORD(v104) = 1065755869;
  LODWORD(v105) = 1057333707;
  v106 = [CAMediaTimingFunction functionWithControlPoints:v102];
  v142[5] = v106;
  LODWORD(v107) = 1037771473;
  LODWORD(v108) = 1058742993;
  LODWORD(v109) = 1061695783;
  LODWORD(v110) = 1054078927;
  v111 = [CAMediaTimingFunction functionWithControlPoints:v110];
  v142[6] = v111;
  LODWORD(v112) = 1052401205;
  LODWORD(v113) = -1095820640;
  LODWORD(v114) = 1066292740;
  LODWORD(v115) = 1057333707;
  v116 = [CAMediaTimingFunction functionWithControlPoints:v112];
  v142[7] = v116;
  LODWORD(v117) = 1051226800;
  LODWORD(v118) = 1060370383;
  LODWORD(v119) = 1054078927;
  LODWORD(v120) = 1056058638;
  v121 = [CAMediaTimingFunction functionWithControlPoints:v119];
  v142[8] = v121;
  LODWORD(v122) = 1051495236;
  LODWORD(v123) = -1094411354;
  LODWORD(v124) = 1059531522;
  LODWORD(v125) = 1.0;
  v126 = [CAMediaTimingFunction functionWithControlPoints:v122];
  v142[9] = v126;
  LODWORD(v127) = 1051897889;
  LODWORD(v128) = 1059128869;
  LODWORD(v129) = 1066905108;
  v130 = [CAMediaTimingFunction functionWithControlPoints:v127];
  v142[10] = v130;
  v131 = [NSArray arrayWithObjects:v142 count:11];
  [v81 setTimingFunctions:v131];

  [v81 setValues:&off_4748];
  [v81 setDuration:7.0];
  [(SCNNode *)self->_heart addAnimation:v81 forKey:0];
}

- (SCNVector3)calculateHandlePosition
{
  v3 = [(SCNNode *)self->_heart parentNode];
  heartView = self->_heartView;
  [v3 position];
  [(CKHeartEffectSCNView *)heartView projectPoint:?];
  v6 = v5;
  LODWORD(heartView) = self->_leftToRight;
  [(CKHeartEffectView *)self messageRect];
  if (heartView == 1)
  {
    MaxX = CGRectGetMaxX(*&v7);
    [(CKHeartEffectView *)self messageRect];
    v13 = -0.25;
  }

  else
  {
    MaxX = CGRectGetMinX(*&v7);
    [(CKHeartEffectView *)self messageRect];
    v13 = 0.25;
  }

  v14 = MaxX + v12 * v13;
  [(CKHeartEffectView *)self messageRect];
  MinY = CGRectGetMinY(v29);
  HIDWORD(v16) = 1076985856;
  v17 = MinY + 17.5;
  *&v16 = v17;
  *&v17 = v14;
  LODWORD(v18) = v6;
  [(CKHeartEffectSCNView *)self->_heartView unprojectPoint:v17, v16, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v20;
  v26 = v22;
  v27 = v24;
  result.z = v27;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)stopAnimation
{
  v2 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v2 setPaused:1];
}

- (void)applicationWillResignActive
{
  v3 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v3 setPaused:0];

  heartView = self->_heartView;

  [(CKHeartEffectSCNView *)heartView setEnableBackgroundRendering:1];
}

- (void)applicationDidBecomeActive
{
  v3 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v3 setPaused:0];

  heartView = self->_heartView;

  [(CKHeartEffectSCNView *)heartView setEnableBackgroundRendering:1];
}

- (void)applicationDidEnterBackground
{
  v3 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v3 setPaused:1];

  heartView = self->_heartView;

  [(CKHeartEffectSCNView *)heartView setEnableBackgroundRendering:0];
}

- (void)applicationWillEnterForegroundNotification
{
  v3 = [(CKHeartEffectSCNView *)self->_heartView scene];
  [v3 setPaused:0];

  heartView = self->_heartView;

  [(CKHeartEffectSCNView *)heartView setEnableBackgroundRendering:1];
}

- (void)setMessageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_messageRect = &self->_messageRect;
  if (!CGRectEqualToRect(self->_messageRect, a3))
  {
    p_messageRect->origin.x = x;
    p_messageRect->origin.y = y;
    p_messageRect->size.width = width;
    p_messageRect->size.height = height;
    if (self->_startTime == 0.0 || (+[NSDate date](NSDate, "date"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceReferenceDate], v11 = v10 - self->_startTime, v9, v11 < 2.0))
    {
      [(CKHeartEffectView *)self calculateHandlePosition];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v21 = [(SCNNode *)self->_heart parentNode];
      LODWORD(v18) = v13;
      LODWORD(v19) = v15;
      LODWORD(v20) = v17;
      [v21 setPosition:{v18, v19, v20}];
    }
  }
}

- (id)_snapshotImage
{
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4 * 0.5;

  v6 = [(CKHeartEffectView *)self window];
  v7 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v7 setScale:v5];
  v8 = [UIGraphicsImageRenderer alloc];
  [v6 frame];
  v11 = [v8 initWithSize:v7 format:{v9, v10}];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2410;
  v15[3] = &unk_41E0;
  v16 = v6;
  v12 = v6;
  v13 = [v11 imageWithActions:v15];

  return v13;
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
  x = self->_messageRect.origin.x;
  y = self->_messageRect.origin.y;
  width = self->_messageRect.size.width;
  height = self->_messageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end