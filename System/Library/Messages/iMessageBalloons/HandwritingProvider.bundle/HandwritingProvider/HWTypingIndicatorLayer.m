@interface HWTypingIndicatorLayer
- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4;
- (HWTypingIndicatorLayer)init;
- (id)_loadTypingIndicatorFile;
- (void)_setupLayerAndStateControllerWithStateName:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)startGrowAnimationWithCompletionBlock:(id)a3;
- (void)startShrinkAnimationWithCompletionBlock:(id)a3;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
- (void)stopAnimation;
@end

@implementation HWTypingIndicatorLayer

- (HWTypingIndicatorLayer)init
{
  v7.receiver = self;
  v7.super_class = HWTypingIndicatorLayer;
  v2 = [(HWTypingIndicatorLayer *)&v7 init];
  if (v2)
  {
    v3 = +[UIColor greenColor];
    -[HWTypingIndicatorLayer setBackgroundColor:](v2, "setBackgroundColor:", [v3 CGColor]);

    v4 = +[UIColor blueColor];
    -[HWTypingIndicatorLayer setBorderColor:](v2, "setBorderColor:", [v4 CGColor]);

    [(HWTypingIndicatorLayer *)v2 setBorderWidth:2.0];
    [(HWTypingIndicatorLayer *)v2 setGeometryFlipped:1];
    v5 = +[UITraitCollection currentTraitCollection];
    v2->_rootAnimationLayerUserInterfaceStyle = [v5 userInterfaceStyle];

    [(HWTypingIndicatorLayer *)v2 _setupLayerAndStateControllerWithStateName:@"State 1"];
  }

  return v2;
}

- (void)_setupLayerAndStateControllerWithStateName:(id)a3
{
  v4 = a3;
  v5 = [(HWTypingIndicatorLayer *)self _loadTypingIndicatorFile];
  rootAnimationLayer = self->_rootAnimationLayer;
  self->_rootAnimationLayer = v5;

  v7 = [[CAStateController alloc] initWithLayer:self->_rootAnimationLayer];
  stateController = self->_stateController;
  self->_stateController = v7;

  [(CAStateController *)self->_stateController setDelegate:self];
  [(CALayer *)self->_rootAnimationLayer position];
  [(CALayer *)self->_rootAnimationLayer setPosition:58.0, -76.0];
  [(HWTypingIndicatorLayer *)self addSublayer:self->_rootAnimationLayer];
  v9 = [(CALayer *)self->_rootAnimationLayer stateWithName:v4];

  [(CAStateController *)self->_stateController setState:v9 ofLayer:self->_rootAnimationLayer];
}

- (id)_loadTypingIndicatorFile
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [[NSDataAsset alloc] initWithName:@"TypingIndicator" bundle:v3];
  v5 = [v4 data];
  v6 = objc_alloc_init(CAMLParser);
  [v6 setDelegate:self];
  [v6 parseData:v5];
  v7 = [v6 result];

  return v7;
}

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rootAnimationLayer)
  {
    rootAnimationLayerUserInterfaceStyle = self->_rootAnimationLayerUserInterfaceStyle;
    if (rootAnimationLayerUserInterfaceStyle == [v4 userInterfaceStyle])
    {
      goto LABEL_9;
    }

    rootAnimationLayer = self->_rootAnimationLayer;
  }

  else
  {
    rootAnimationLayer = 0;
  }

  v8 = [(CAStateController *)self->_stateController stateOfLayer:rootAnimationLayer];
  v9 = [v8 name];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"State 1";
  }

  [(CALayer *)self->_rootAnimationLayer removeFromSuperlayer];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_9970;
  v12[3] = &unk_287A8;
  v12[4] = self;
  v13 = v5;
  v14 = v10;
  v11 = v10;
  [v13 performAsCurrentTraitCollection:v12];

LABEL_9:
}

- (void)startGrowAnimationWithCompletionBlock:(id)a3
{
  rootAnimationLayer = self->_rootAnimationLayer;
  v5 = a3;
  v7 = [(CALayer *)rootAnimationLayer stateWithName:@"Thinking"];
  LODWORD(v6) = 1.0;
  [(CAStateController *)self->_stateController setState:v7 ofLayer:self->_rootAnimationLayer transitionSpeed:v6];
  [(HWTypingIndicatorLayer *)self setCompletionBlock:v5];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)a3
{
  rootAnimationLayer = self->_rootAnimationLayer;
  v5 = a3;
  v7 = [(CALayer *)rootAnimationLayer stateWithName:@"State 1"];
  LODWORD(v6) = 1.0;
  [(CAStateController *)self->_stateController setState:v7 ofLayer:self->_rootAnimationLayer transitionSpeed:v6];
  [(HWTypingIndicatorLayer *)self setCompletionBlock:v5];
}

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v6 = [(HWTypingIndicatorLayer *)self completionBlock:a3];

  if (v6)
  {
    v7 = [(HWTypingIndicatorLayer *)self completionBlock];
    v7[2]();

    [(HWTypingIndicatorLayer *)self setCompletionBlock:0];
  }
}

- (void)stopAnimation
{
  v3 = [(CALayer *)self->_rootAnimationLayer stateWithName:@"State 1"];
  [(CAStateController *)self->_stateController setState:v3 ofLayer:self->_rootAnimationLayer];
}

- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_32280;
  if (!qword_32280)
  {
    v23 = [NSDictionary alloc];
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v23 initWithObjectsAndKeys:{v22, @"LKState", v21, @"LKEventHandler", v20, @"LKStateAddAnimation", v8, @"LKStateAddElement", v9, @"LKStateElement", v10, @"LKStateRemoveAnimation", v11, @"LKStateRemoveElement", v12, @"LKStateSetValue", v13, @"LKStateSetProperty", v14, @"LKStateTransition", objc_opt_class(), @"LKStateTransitionElement", 0}];
    v16 = qword_32280;
    qword_32280 = v15;

    v7 = qword_32280;
  }

  v17 = [v7 objectForKey:v6];
  if (!v17)
  {
    NSLog(@"%s %@ substitution: %@", "[HWTypingIndicatorLayer CAMLParser:didFailToFindClassWithName:]", v6, 0);
  }

  v18 = v17;

  return v17;
}

@end