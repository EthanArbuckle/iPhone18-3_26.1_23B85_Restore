@interface HUDAnimator
+ (id)sharedAnimator;
- (HUDAnimator)init;
- (id)beginAnimationFromValue:(double)a3 toValue:(double)a4 duration:(double)a5 updateBlock:(id)a6 completionBlock:(id)a7;
- (void)displayLinkFired:(id)a3;
- (void)endAnimation:(id)a3;
- (void)updateAnimation:(id)a3 toValue:(double)a4 duration:(double)a5;
- (void)updateDisplayLink;
@end

@implementation HUDAnimator

- (HUDAnimator)init
{
  v11.receiver = self;
  v11.super_class = HUDAnimator;
  v2 = [(HUDAnimator *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    animations = v2->_animations;
    v2->_animations = v3;

    v5 = dispatch_queue_create("com.apple.hangtracerd.HUDAnimationQueue", 0);
    animationQueue = v2->_animationQueue;
    v2->_animationQueue = v5;

    v7 = dispatch_queue_create("com.apple.hangtracerd.HUDAnimationDisplayLinkQueue", 0);
    displayLinkAccessQueue = v2->_displayLinkAccessQueue;
    v2->_displayLinkAccessQueue = v7;

    v9 = v2;
  }

  return v2;
}

+ (id)sharedAnimator
{
  if (qword_10003E6C0 != -1)
  {
    sub_100018434();
  }

  v3 = qword_10003E6B8;

  return v3;
}

- (id)beginAnimationFromValue:(double)a3 toValue:(double)a4 duration:(double)a5 updateBlock:(id)a6 completionBlock:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = +[NSUUID UUID];
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001AA4;
  block[3] = &unk_1000306F8;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v24 = v12;
  v25 = v13;
  v16 = v14;
  v22 = v16;
  v23 = self;
  v17 = v13;
  v18 = v12;
  dispatch_sync(displayLinkAccessQueue, block);
  [(HUDAnimator *)self updateDisplayLink];
  v19 = v16;

  return v16;
}

- (void)updateAnimation:(id)a3 toValue:(double)a4 duration:(double)a5
{
  v8 = a3;
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100001C18;
  v14 = &unk_100030748;
  v15 = self;
  v16 = v8;
  v17 = a4;
  v18 = a5;
  v10 = v8;
  dispatch_sync(displayLinkAccessQueue, &v11);
  [(HUDAnimator *)self updateDisplayLink:v11];
}

- (void)endAnimation:(id)a3
{
  v4 = a3;
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001E8C;
  v7[3] = &unk_100030770;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(displayLinkAccessQueue, v7);
}

- (void)updateDisplayLink
{
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020D4;
  block[3] = &unk_100030668;
  block[4] = self;
  dispatch_sync(displayLinkAccessQueue, block);
}

- (void)displayLinkFired:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000024BC;
  v18[4] = sub_1000024CC;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_1000024BC;
  v16[4] = sub_1000024CC;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = CACurrentMediaTime();
  displayLinkAccessQueue = self->_displayLinkAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000024D4;
  block[3] = &unk_1000307F8;
  block[4] = self;
  block[5] = v18;
  *&block[8] = v5;
  block[6] = v16;
  block[7] = &v12;
  dispatch_sync(displayLinkAccessQueue, block);
  animationQueue = self->_animationQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002688;
  v10[3] = &unk_100030820;
  *&v10[6] = v5;
  v10[4] = v18;
  v10[5] = v16;
  dispatch_sync(animationQueue, v10);
  if (*(v13 + 24) == 1)
  {
    v8 = self->_displayLinkAccessQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000289C;
    v9[3] = &unk_100030668;
    v9[4] = self;
    dispatch_sync(v8, v9);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
}

@end