@interface LaunchTransitionController
+ (id)controllerForTransitioningBetweenMessagesController:(id)a3 andLaunchController:(id)a4;
- (LaunchViewController)launchController;
- (MessagesViewController)messagesController;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)performAnimatedTransitionByFadingSplash:(id)a3;
- (void)performAnimatedTransitionByMovingVideo:(id)a3;
@end

@implementation LaunchTransitionController

+ (id)controllerForTransitioningBetweenMessagesController:(id)a3 andLaunchController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setMessagesController:v7];

  [v8 setLaunchController:v6];

  return v8;
}

- (void)performAnimatedTransitionByFadingSplash:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001BC60;
  v6[3] = &unk_100034788;
  v6[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BCD0;
  v4[3] = &unk_100034878;
  v5 = a3;
  v3 = v5;
  [UIView animateWithDuration:v6 animations:v4 completion:0.2];
}

- (void)performAnimatedTransitionByMovingVideo:(id)a3
{
  v115 = a3;
  v137 = self;
  v4 = [(LaunchTransitionController *)self launchController];
  v138 = [v4 view];
  v117 = v4;
  v114 = [v4 videoController];
  v5 = [v114 view];
  [v4 detachVideoController];
  v116 = [(LaunchTransitionController *)self messagesController];
  v6 = [v116 view];
  v7 = [v116 paddleView];
  [v7 setAutomaticallyStartsPlaying:0];
  v8 = [v6 superview];
  v113 = [v7 superview];
  v9 = [UIView alloc];
  [v8 bounds];
  v10 = [v9 initWithFrame:?];
  [v10 setUserInteractionEnabled:0];
  [v8 addSubview:v10];
  v11 = [UIView alloc];
  [v10 bounds];
  v12 = [v11 initWithFrame:?];
  [v10 addSubview:v12];
  [v7 center];
  v14 = v13;
  v16 = v15;
  v17 = [v7 superview];
  [v12 convertPoint:v17 fromView:{v14, v16}];
  v19 = v18;
  v21 = v20;

  [v5 center];
  v23 = v22;
  v25 = v24;
  v26 = [v5 superview];
  [v10 convertPoint:v26 fromView:{v23, v25}];
  v28 = v27;
  v30 = v29;

  v132 = v6;
  [v12 addSubview:v6];
  [v12 addSubview:v7];
  [v10 addSubview:v138];
  [v10 addSubview:v5];
  [v5 setCenter:{v28, v30}];
  v112 = v7;
  [v7 setCenter:{v19, v21}];
  [v5 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v125 = v37;
  v140 = v12;
  [v7 frameForVideoInCoordinateSpace:v12];
  height = v165.size.height;
  rect = v165.size.width;
  memset(&v164, 0, sizeof(v164));
  x = v165.origin.x;
  y = v165.origin.y;
  v130 = v165.origin.x;
  v39 = v165.origin.y;
  v40 = v165.size.height;
  Width = CGRectGetWidth(v165);
  v166.origin.x = v32;
  v166.origin.y = v34;
  v166.size.width = v36;
  v166.size.height = v125;
  sx = Width / CGRectGetWidth(v166);
  v167.origin.x = x;
  v167.origin.y = v39;
  v167.size.width = rect;
  v167.size.height = v40;
  v42 = CGRectGetHeight(v167);
  v168.origin.x = v32;
  v168.origin.y = v34;
  v168.size.width = v36;
  v168.size.height = v125;
  v43 = CGRectGetHeight(v168);
  CATransform3DMakeScale(&v164, sx, v42 / v43, 1.0);
  memset(&v163, 0, sizeof(v163));
  v169.origin.x = v130;
  v169.origin.y = y;
  v169.size.width = rect;
  v169.size.height = height;
  MidX = CGRectGetMidX(v169);
  v170.origin.x = v32;
  v170.origin.y = v34;
  v170.size.width = v36;
  v45 = v36;
  v170.size.height = v125;
  v46 = MidX - CGRectGetMidX(v170);
  v171.origin.x = v130;
  v171.origin.y = y;
  v171.size.width = rect;
  v171.size.height = height;
  MidY = CGRectGetMidY(v171);
  v172.origin.x = v32;
  v172.origin.y = v34;
  v172.size.width = v45;
  v172.size.height = v125;
  v48 = CGRectGetMidY(v172);
  CATransform3DMakeTranslation(&v163, v46, MidY - v48, 0.0);
  v161 = *&v164.m12;
  v162 = *&v164.m14;
  v158 = *&v164.m33;
  v159 = *&v164.m41;
  v160 = *&v164.m43;
  v49 = v164.m11 * 0.75;
  v50 = v164.m22 * 0.75;
  v156 = *&v164.m23;
  v157 = *&v164.m31;
  [v12 setAlpha:0.0];
  CGAffineTransformMakeScale(&v155, 0.75, 0.75);
  *&v154.m11 = *&v155.a;
  *&v154.m13 = *&v155.c;
  *&v154.m21 = *&v155.tx;
  [v6 setTransform:&v154];
  [v5 bounds];
  v51 = CGRectGetWidth(v173);
  [v5 bounds];
  v52 = CGRectGetHeight(v174);
  if (v51 < v52)
  {
    v52 = v51;
  }

  [v5 _setContinuousCornerRadius:v52 / 5.0];
  v53 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v54 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v53 setTimingFunction:v54];

  [v53 setFillMode:kCAFillModeForwards];
  [v53 setDuration:0.2275];
  [v53 setBeginTime:0.0];
  v55 = kCAAnimationRelative;
  [v53 setBeginTimeMode:kCAAnimationRelative];
  v126 = *&CATransform3DIdentity.m33;
  *&v154.m31 = *&CATransform3DIdentity.m31;
  v127 = *&v154.m31;
  *&v154.m33 = v126;
  v122 = *&CATransform3DIdentity.m43;
  *&v154.m41 = *&CATransform3DIdentity.m41;
  *sxa = *&v154.m41;
  *&v154.m43 = v122;
  v120 = *&CATransform3DIdentity.m13;
  *&v154.m11 = *&CATransform3DIdentity.m11;
  v121 = *&v154.m11;
  *&v154.m13 = v120;
  v118 = *&CATransform3DIdentity.m23;
  *&v154.m21 = *&CATransform3DIdentity.m21;
  v119 = *&v154.m21;
  *&v154.m23 = v118;
  v56 = [NSValue valueWithCATransform3D:&v154];
  [v53 setFromValue:v56];

  CATransform3DMakeScale(&v154, 1.05, 1.05, 1.0);
  v57 = [NSValue valueWithCATransform3D:&v154];
  [v53 setToValue:v57];

  v109 = v5;
  v58 = [v5 layer];
  [v58 addAnimation:v53 forKey:@"expand-transform"];

  v59 = [v138 layer];
  v134 = v53;
  [v59 addAnimation:v53 forKey:@"expand-transform"];

  v60 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v61 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v60 setTimingFunction:v61];

  [v60 setFillMode:kCAFillModeForwards];
  [v60 setDuration:0.1625];
  [v60 setBeginTime:0.2275];
  v62 = v55;
  [v60 setBeginTimeMode:v55];
  v63 = [v53 toValue];
  recta = v60;
  [v60 setFromValue:v63];

  a = v164;
  b = v163;
  CATransform3DConcat(&v154, &a, &b);
  v64 = [NSValue valueWithCATransform3D:&v154];
  [v60 setToValue:v64];

  v65 = [v5 layer];
  [v65 addAnimation:v60 forKey:@"move-transform"];

  v66 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v67 = [CAMediaTimingFunction functionWithName:?];
  [v66 setTimingFunction:v67];

  [v66 setFillMode:kCAFillModeBoth];
  [v66 setDuration:0.2275];
  [v66 setBeginTime:0.2275];
  [v66 setBeginTimeMode:v62];
  v68 = [v132 layer];
  v69 = [v68 valueForKeyPath:@"transform"];
  v111 = v66;
  [v66 setFromValue:v69];

  *&v154.m31 = v127;
  *&v154.m33 = v126;
  *&v154.m41 = *sxa;
  *&v154.m43 = v122;
  *&v154.m11 = v121;
  *&v154.m13 = v120;
  *&v154.m21 = v119;
  *&v154.m23 = v118;
  v70 = [NSValue valueWithCATransform3D:&v154];
  [v66 setToValue:v70];

  v71 = [v132 layer];
  [v71 addAnimation:v66 forKey:@"blend-transform"];

  v72 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v73 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v72 setTimingFunction:v73];

  [v72 setFillMode:kCAFillModeForwards];
  [v72 setDuration:0.2275];
  [v72 setBeginTime:0.2275];
  [v72 setBeginTimeMode:v62];
  v74 = [v53 toValue];
  v110 = v72;
  [v72 setFromValue:v74];

  *&v154.m31 = v127;
  *&v154.m33 = v126;
  *&v154.m41 = *sxa;
  *&v154.m43 = v122;
  *&v154.m11 = v121;
  *&v154.m13 = v120;
  *&v154.m21 = v119;
  *&v154.m23 = v118;
  v75 = [NSValue valueWithCATransform3D:&v154];
  [v72 setToValue:v75];

  v76 = [v138 layer];
  [v76 addAnimation:v72 forKey:@"blend-transform"];

  v77 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v78 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v77 setTimingFunction:v78];

  [v77 setFillMode:kCAFillModeBoth];
  [v77 setDuration:0.2275];
  [v77 setBeginTime:0.2275];
  [v77 setBeginTimeMode:v62];
  v79 = [v140 layer];
  v80 = [v79 valueForKeyPath:@"opacity"];
  *&v127 = v77;
  [v77 setFromValue:v80];

  LODWORD(v81) = 1.0;
  v82 = [NSNumber numberWithFloat:v81];
  [v77 setToValue:v82];

  v83 = [v140 layer];
  [v83 addAnimation:v77 forKey:@"blend-opacity"];

  v84 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v85 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v84 setTimingFunction:v85];

  [v84 setFillMode:kCAFillModeBoth];
  [v84 setDuration:0.2275];
  [v84 setBeginTime:0.2275];
  [v84 setBeginTimeMode:v62];
  v86 = [v138 layer];
  v87 = [v86 valueForKeyPath:@"opacity"];
  [v84 setFromValue:v87];

  v88 = [NSNumber numberWithFloat:0.0];
  *&v126 = v84;
  [v84 setToValue:v88];

  v89 = [v138 layer];
  [v89 addAnimation:v84 forKey:@"blend-opacity"];

  v90 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v91 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v90 setTimingFunction:v91];

  [v90 setFillMode:kCAFillModeForwards];
  [v90 setDuration:0.13];
  [v90 setBeginTime:0.39];
  [v90 setBeginTimeMode:v62];
  v92 = [recta toValue];
  [v90 setFromValue:v92];

  *&a.m12 = v161;
  *&a.m14 = v162;
  a.m11 = v49;
  a.m22 = v50;
  *&a.m33 = v158;
  *&a.m41 = v159;
  *&a.m43 = v160;
  *&a.m23 = v156;
  *&a.m31 = v157;
  b = v163;
  CATransform3DConcat(&v154, &a, &b);
  v93 = [NSValue valueWithCATransform3D:&v154];
  [v90 setToValue:v93];

  v94 = [v109 layer];
  [v94 addAnimation:v90 forKey:@"bounce-down-transform"];

  v95 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v96 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v95 setTimingFunction:v96];

  [v95 setFillMode:kCAFillModeForwards];
  [v95 setDuration:0.13];
  [v95 setBeginTime:0.52];
  [v95 setBeginTimeMode:v62];
  v97 = [v90 fromValue];
  [v95 setFromValue:v97];

  a = v164;
  b = v163;
  CATransform3DConcat(&v154, &a, &b);
  v98 = [NSValue valueWithCATransform3D:&v154];
  [v95 setToValue:v98];

  v99 = [WeakCAAnimationDelegate weakAnimationDelegate:v137];
  [v95 setDelegate:v99];

  [v95 setRemovedOnCompletion:0];
  v100 = [v109 layer];
  [v100 addAnimation:v95 forKey:@"bounce-up-transform"];

  [v140 setAlpha:1.0];
  [v138 setAlpha:0.0];
  v101 = *&CGAffineTransformIdentity.c;
  *&v154.m11 = *&CGAffineTransformIdentity.a;
  *&v154.m13 = v101;
  *&v154.m21 = *&CGAffineTransformIdentity.tx;
  [v132 setTransform:&v154];
  v141[0] = _NSConcreteStackBlock;
  v141[1] = 3221225472;
  v141[2] = sub_10001CD28;
  v141[3] = &unk_100034F00;
  v142 = v113;
  v143 = v112;
  v144 = v109;
  v145 = v114;
  v146 = v8;
  v147 = v132;
  v148 = v138;
  v149 = v10;
  v150 = v137;
  v151 = v115;
  v131 = v115;
  v129 = v10;
  v102 = v138;
  v139 = v132;
  v103 = v8;
  v104 = v114;
  v105 = v109;
  v106 = v112;
  v107 = v113;
  v108 = objc_retainBlock(v141);
  [(LaunchTransitionController *)v137 setTransitionCompletionBlock:v108];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(LaunchTransitionController *)self transitionCompletionBlock:a3];
  if (v5)
  {
    v6 = v5;
    [(LaunchTransitionController *)self setTransitionCompletionBlock:0];
    v6[2](v6);
    v5 = v6;
  }
}

- (MessagesViewController)messagesController
{
  WeakRetained = objc_loadWeakRetained(&self->_messagesController);

  return WeakRetained;
}

- (LaunchViewController)launchController
{
  WeakRetained = objc_loadWeakRetained(&self->_launchController);

  return WeakRetained;
}

@end