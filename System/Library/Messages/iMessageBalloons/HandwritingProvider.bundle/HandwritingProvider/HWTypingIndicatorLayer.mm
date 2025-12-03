@interface HWTypingIndicatorLayer
- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name;
- (HWTypingIndicatorLayer)init;
- (id)_loadTypingIndicatorFile;
- (void)_setupLayerAndStateControllerWithStateName:(id)name;
- (void)setTraitCollection:(id)collection;
- (void)startGrowAnimationWithCompletionBlock:(id)block;
- (void)startShrinkAnimationWithCompletionBlock:(id)block;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
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

- (void)_setupLayerAndStateControllerWithStateName:(id)name
{
  nameCopy = name;
  _loadTypingIndicatorFile = [(HWTypingIndicatorLayer *)self _loadTypingIndicatorFile];
  rootAnimationLayer = self->_rootAnimationLayer;
  self->_rootAnimationLayer = _loadTypingIndicatorFile;

  v7 = [[CAStateController alloc] initWithLayer:self->_rootAnimationLayer];
  stateController = self->_stateController;
  self->_stateController = v7;

  [(CAStateController *)self->_stateController setDelegate:self];
  [(CALayer *)self->_rootAnimationLayer position];
  [(CALayer *)self->_rootAnimationLayer setPosition:58.0, -76.0];
  [(HWTypingIndicatorLayer *)self addSublayer:self->_rootAnimationLayer];
  v9 = [(CALayer *)self->_rootAnimationLayer stateWithName:nameCopy];

  [(CAStateController *)self->_stateController setState:v9 ofLayer:self->_rootAnimationLayer];
}

- (id)_loadTypingIndicatorFile
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [[NSDataAsset alloc] initWithName:@"TypingIndicator" bundle:v3];
  data = [v4 data];
  v6 = objc_alloc_init(CAMLParser);
  [v6 setDelegate:self];
  [v6 parseData:data];
  result = [v6 result];

  return result;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (self->_rootAnimationLayer)
  {
    rootAnimationLayerUserInterfaceStyle = self->_rootAnimationLayerUserInterfaceStyle;
    if (rootAnimationLayerUserInterfaceStyle == [collectionCopy userInterfaceStyle])
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
  name = [v8 name];

  if (name)
  {
    v10 = name;
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

- (void)startGrowAnimationWithCompletionBlock:(id)block
{
  rootAnimationLayer = self->_rootAnimationLayer;
  blockCopy = block;
  v7 = [(CALayer *)rootAnimationLayer stateWithName:@"Thinking"];
  LODWORD(v6) = 1.0;
  [(CAStateController *)self->_stateController setState:v7 ofLayer:self->_rootAnimationLayer transitionSpeed:v6];
  [(HWTypingIndicatorLayer *)self setCompletionBlock:blockCopy];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)block
{
  rootAnimationLayer = self->_rootAnimationLayer;
  blockCopy = block;
  v7 = [(CALayer *)rootAnimationLayer stateWithName:@"State 1"];
  LODWORD(v6) = 1.0;
  [(CAStateController *)self->_stateController setState:v7 ofLayer:self->_rootAnimationLayer transitionSpeed:v6];
  [(HWTypingIndicatorLayer *)self setCompletionBlock:blockCopy];
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  v6 = [(HWTypingIndicatorLayer *)self completionBlock:controller];

  if (v6)
  {
    completionBlock = [(HWTypingIndicatorLayer *)self completionBlock];
    completionBlock[2]();

    [(HWTypingIndicatorLayer *)self setCompletionBlock:0];
  }
}

- (void)stopAnimation
{
  v3 = [(CALayer *)self->_rootAnimationLayer stateWithName:@"State 1"];
  [(CAStateController *)self->_stateController setState:v3 ofLayer:self->_rootAnimationLayer];
}

- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name
{
  parserCopy = parser;
  nameCopy = name;
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

  v17 = [v7 objectForKey:nameCopy];
  if (!v17)
  {
    NSLog(@"%s %@ substitution: %@", "[HWTypingIndicatorLayer CAMLParser:didFailToFindClassWithName:]", nameCopy, 0);
  }

  v18 = v17;

  return v17;
}

@end