@interface CKFireworksEffectView
- (CGPoint)focusPoint;
- (CGRect)messageRect;
- (CKFireworksEffectView)initWithFrame:(CGRect)frame;
- (void)startAnimation;
@end

@implementation CKFireworksEffectView

- (void)startAnimation
{
  [(GameScene *)self->_scene setPaused:0];
  fireworksView = self->_fireworksView;
  [(CKFireworksEffectView *)self bounds];
  [(SKView *)fireworksView setFrame:?];
  scene = self->_scene;

  [(GameScene *)scene runChoregraphy];
}

- (CKFireworksEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = CKFireworksEffectView;
  v7 = [(CKFireworksEffectView *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [[SKView alloc] initWithFrame:{x, y, width, height}];
    fireworksView = v7->_fireworksView;
    v7->_fireworksView = v8;

    [(SKView *)v7->_fireworksView setAllowsTransparency:1];
    [(CKFireworksEffectView *)v7 addSubview:v7->_fireworksView];
    v10 = +[GameScene node];
    scene = v7->_scene;
    v7->_scene = v10;

    [(GameScene *)v7->_scene setScaleMode:3];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"applicationWillResignActive" name:UIApplicationWillResignActiveNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v7 selector:"applicationWillEnterForegroundNotification" name:UIApplicationWillEnterForegroundNotification object:0];

    [(GameScene *)v7->_scene setType1FireworkEnabled:1];
    [(GameScene *)v7->_scene setType2FireworkEnabled:1];
    [(SKView *)v7->_fireworksView setPreferredFramesPerSecond:60];
    [(SKView *)v7->_fireworksView presentScene:v7->_scene];
  }

  return v7;
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