@interface ETMessageFrameRenderer
- (CGImage)_createSceneImageForTime:(double)time;
- (CGImage)_createSketchImageForTime:(double)time;
- (CGImage)createImageForTime:(double)time;
- (ETMessageFrameRenderer)initWithMessage:(id)message videoFrame:(CGRect)frame;
- (void)messageDidStopPlaying:(id)playing;
@end

@implementation ETMessageFrameRenderer

- (ETMessageFrameRenderer)initWithMessage:(id)message videoFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = ETMessageFrameRenderer;
  v11 = [(ETMessageFrameRenderer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, message);
    v12->_videoFrame.origin.x = x;
    v12->_videoFrame.origin.y = y;
    v12->_videoFrame.size.width = width;
    v12->_videoFrame.size.height = height;
    [messageCopy startDelay];
    v12->_startTime = v13;
    v14 = v12;
  }

  return v12;
}

- (CGImage)createImageForTime:(double)time
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13D10;
  v8[3] = &unk_24D00;
  v8[4] = self;
  v8[5] = &v9;
  *&v8[6] = time;
  v3 = objc_retainBlock(v8);
  v4 = +[NSThread currentThread];
  isMainThread = [v4 isMainThread];

  if (isMainThread)
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v3);
  }

  v6 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (CGImage)_createSketchImageForTime:(double)time
{
  if (self->_startTime > time || self->_finishedRendering)
  {
    return 0;
  }

  sketchView = self->_sketchView;
  if (!sketchView)
  {
    v7 = [[ETGLSketchView alloc] initWithFrame:{self->_videoFrame.origin.x, self->_videoFrame.origin.y, self->_videoFrame.size.width, self->_videoFrame.size.height}];
    v8 = self->_sketchView;
    self->_sketchView = v7;

    [(ETMessage *)self->_message setRenderingOffscreen:1];
    [(ETGLSketchView *)self->_sketchView setMessageData:self->_message];
    sketchView = self->_sketchView;
  }

  return [(ETGLSketchView *)sketchView createImageForTime:time];
}

- (CGImage)_createSceneImageForTime:(double)time
{
  if (self->_startTime > time || self->_finishedRendering)
  {
    return 0;
  }

  scene = self->_scene;
  if (scene)
  {
    [(SKScene *)scene setPaused:0];
    v7 = self->_scene;
    v8 = time - self->_startTime;
  }

  else
  {
    v9 = [[SKScene alloc] initWithSize:{self->_videoFrame.size.width, self->_videoFrame.size.height}];
    v10 = self->_scene;
    self->_scene = v9;

    if (([(ETMessage *)self->_message isRenderingOffscreenOpaque]& 1) == 0)
    {
      v11 = self->_scene;
      v12 = +[UIColor clearColor];
      colorSpaceConvertedColor = [v12 colorSpaceConvertedColor];
      [(SKScene *)v11 setBackgroundColor:colorSpaceConvertedColor];
    }

    [(SKScene *)self->_scene setAnchorPoint:0.5, 0.5];
    v14 = [[SKView alloc] initWithFrame:{self->_videoFrame.origin.x, self->_videoFrame.origin.y, self->_videoFrame.size.width, self->_videoFrame.size.height}];
    sceneView = self->_sceneView;
    self->_sceneView = v14;

    [(SKView *)self->_sceneView presentScene:self->_scene];
    [(SKView *)self->_sceneView setPaused:1];
    [(ETMessage *)self->_message displayInScene:self->_scene];
    [(ETMessage *)self->_message setDelegate:self];
    [(SKScene *)self->_scene setPaused:0];
    v7 = self->_scene;
    v8 = 0.0;
  }

  [(SKScene *)v7 _update:v8];
  [(SKScene *)self->_scene setPaused:1];
  v16 = [(SKView *)self->_sceneView textureFromNode:self->_scene];
  _createCGImage = [v16 _createCGImage];

  return _createCGImage;
}

- (void)messageDidStopPlaying:(id)playing
{
  [(SKView *)self->_sceneView presentScene:0];
  sceneView = self->_sceneView;
  self->_sceneView = 0;

  scene = self->_scene;
  self->_scene = 0;

  self->_finishedRendering = 1;
  sketchView = self->_sketchView;
  self->_sketchView = 0;
}

@end