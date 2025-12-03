@interface LaunchTransitionController
+ (id)controllerForTransitioningBetweenMessagesController:(id)controller andLaunchController:(id)launchController;
- (LaunchViewController)launchController;
- (MessagesViewController)messagesController;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)performAnimatedTransitionByFadingSplash:(id)splash;
- (void)performAnimatedTransitionByMovingVideo:(id)video;
@end

@implementation LaunchTransitionController

+ (id)controllerForTransitioningBetweenMessagesController:(id)controller andLaunchController:(id)launchController
{
  launchControllerCopy = launchController;
  controllerCopy = controller;
  v8 = objc_alloc_init(self);
  [v8 setMessagesController:controllerCopy];

  [v8 setLaunchController:launchControllerCopy];

  return v8;
}

- (void)performAnimatedTransitionByFadingSplash:(id)splash
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
  splashCopy = splash;
  v3 = splashCopy;
  [UIView animateWithDuration:v6 animations:v4 completion:0.2];
}

- (void)performAnimatedTransitionByMovingVideo:(id)video
{
  videoCopy = video;
  selfCopy = self;
  launchController = [(LaunchTransitionController *)self launchController];
  view = [launchController view];
  v117 = launchController;
  videoController = [launchController videoController];
  view2 = [videoController view];
  [launchController detachVideoController];
  messagesController = [(LaunchTransitionController *)self messagesController];
  view3 = [messagesController view];
  paddleView = [messagesController paddleView];
  [paddleView setAutomaticallyStartsPlaying:0];
  superview = [view3 superview];
  superview2 = [paddleView superview];
  v9 = [UIView alloc];
  [superview bounds];
  v10 = [v9 initWithFrame:?];
  [v10 setUserInteractionEnabled:0];
  [superview addSubview:v10];
  v11 = [UIView alloc];
  [v10 bounds];
  v12 = [v11 initWithFrame:?];
  [v10 addSubview:v12];
  [paddleView center];
  v14 = v13;
  v16 = v15;
  superview3 = [paddleView superview];
  [v12 convertPoint:superview3 fromView:{v14, v16}];
  v19 = v18;
  v21 = v20;

  [view2 center];
  v23 = v22;
  v25 = v24;
  superview4 = [view2 superview];
  [v10 convertPoint:superview4 fromView:{v23, v25}];
  v28 = v27;
  v30 = v29;

  v132 = view3;
  [v12 addSubview:view3];
  [v12 addSubview:paddleView];
  [v10 addSubview:view];
  [v10 addSubview:view2];
  [view2 setCenter:{v28, v30}];
  v112 = paddleView;
  [paddleView setCenter:{v19, v21}];
  [view2 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v125 = v37;
  v140 = v12;
  [paddleView frameForVideoInCoordinateSpace:v12];
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
  [view3 setTransform:&v154];
  [view2 bounds];
  v51 = CGRectGetWidth(v173);
  [view2 bounds];
  v52 = CGRectGetHeight(v174);
  if (v51 < v52)
  {
    v52 = v51;
  }

  [view2 _setContinuousCornerRadius:v52 / 5.0];
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

  v109 = view2;
  layer = [view2 layer];
  [layer addAnimation:v53 forKey:@"expand-transform"];

  layer2 = [view layer];
  v134 = v53;
  [layer2 addAnimation:v53 forKey:@"expand-transform"];

  v60 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v61 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v60 setTimingFunction:v61];

  [v60 setFillMode:kCAFillModeForwards];
  [v60 setDuration:0.1625];
  [v60 setBeginTime:0.2275];
  v62 = v55;
  [v60 setBeginTimeMode:v55];
  toValue = [v53 toValue];
  recta = v60;
  [v60 setFromValue:toValue];

  a = v164;
  b = v163;
  CATransform3DConcat(&v154, &a, &b);
  v64 = [NSValue valueWithCATransform3D:&v154];
  [v60 setToValue:v64];

  layer3 = [view2 layer];
  [layer3 addAnimation:v60 forKey:@"move-transform"];

  v66 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v67 = [CAMediaTimingFunction functionWithName:?];
  [v66 setTimingFunction:v67];

  [v66 setFillMode:kCAFillModeBoth];
  [v66 setDuration:0.2275];
  [v66 setBeginTime:0.2275];
  [v66 setBeginTimeMode:v62];
  layer4 = [v132 layer];
  v69 = [layer4 valueForKeyPath:@"transform"];
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

  layer5 = [v132 layer];
  [layer5 addAnimation:v66 forKey:@"blend-transform"];

  v72 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v73 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v72 setTimingFunction:v73];

  [v72 setFillMode:kCAFillModeForwards];
  [v72 setDuration:0.2275];
  [v72 setBeginTime:0.2275];
  [v72 setBeginTimeMode:v62];
  toValue2 = [v53 toValue];
  v110 = v72;
  [v72 setFromValue:toValue2];

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

  layer6 = [view layer];
  [layer6 addAnimation:v72 forKey:@"blend-transform"];

  v77 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v78 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v77 setTimingFunction:v78];

  [v77 setFillMode:kCAFillModeBoth];
  [v77 setDuration:0.2275];
  [v77 setBeginTime:0.2275];
  [v77 setBeginTimeMode:v62];
  layer7 = [v140 layer];
  v80 = [layer7 valueForKeyPath:@"opacity"];
  *&v127 = v77;
  [v77 setFromValue:v80];

  LODWORD(v81) = 1.0;
  v82 = [NSNumber numberWithFloat:v81];
  [v77 setToValue:v82];

  layer8 = [v140 layer];
  [layer8 addAnimation:v77 forKey:@"blend-opacity"];

  v84 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v85 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v84 setTimingFunction:v85];

  [v84 setFillMode:kCAFillModeBoth];
  [v84 setDuration:0.2275];
  [v84 setBeginTime:0.2275];
  [v84 setBeginTimeMode:v62];
  layer9 = [view layer];
  v87 = [layer9 valueForKeyPath:@"opacity"];
  [v84 setFromValue:v87];

  v88 = [NSNumber numberWithFloat:0.0];
  *&v126 = v84;
  [v84 setToValue:v88];

  layer10 = [view layer];
  [layer10 addAnimation:v84 forKey:@"blend-opacity"];

  v90 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v91 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v90 setTimingFunction:v91];

  [v90 setFillMode:kCAFillModeForwards];
  [v90 setDuration:0.13];
  [v90 setBeginTime:0.39];
  [v90 setBeginTimeMode:v62];
  toValue3 = [recta toValue];
  [v90 setFromValue:toValue3];

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

  layer11 = [v109 layer];
  [layer11 addAnimation:v90 forKey:@"bounce-down-transform"];

  v95 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v96 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  [v95 setTimingFunction:v96];

  [v95 setFillMode:kCAFillModeForwards];
  [v95 setDuration:0.13];
  [v95 setBeginTime:0.52];
  [v95 setBeginTimeMode:v62];
  fromValue = [v90 fromValue];
  [v95 setFromValue:fromValue];

  a = v164;
  b = v163;
  CATransform3DConcat(&v154, &a, &b);
  v98 = [NSValue valueWithCATransform3D:&v154];
  [v95 setToValue:v98];

  v99 = [WeakCAAnimationDelegate weakAnimationDelegate:selfCopy];
  [v95 setDelegate:v99];

  [v95 setRemovedOnCompletion:0];
  layer12 = [v109 layer];
  [layer12 addAnimation:v95 forKey:@"bounce-up-transform"];

  [v140 setAlpha:1.0];
  [view setAlpha:0.0];
  v101 = *&CGAffineTransformIdentity.c;
  *&v154.m11 = *&CGAffineTransformIdentity.a;
  *&v154.m13 = v101;
  *&v154.m21 = *&CGAffineTransformIdentity.tx;
  [v132 setTransform:&v154];
  v141[0] = _NSConcreteStackBlock;
  v141[1] = 3221225472;
  v141[2] = sub_10001CD28;
  v141[3] = &unk_100034F00;
  v142 = superview2;
  v143 = v112;
  v144 = v109;
  v145 = videoController;
  v146 = superview;
  v147 = v132;
  v148 = view;
  v149 = v10;
  v150 = selfCopy;
  v151 = videoCopy;
  v131 = videoCopy;
  v129 = v10;
  v102 = view;
  v139 = v132;
  v103 = superview;
  v104 = videoController;
  v105 = v109;
  v106 = v112;
  v107 = superview2;
  v108 = objc_retainBlock(v141);
  [(LaunchTransitionController *)selfCopy setTransitionCompletionBlock:v108];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(LaunchTransitionController *)self transitionCompletionBlock:stop];
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