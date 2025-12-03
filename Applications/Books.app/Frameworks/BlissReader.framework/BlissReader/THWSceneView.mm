@interface THWSceneView
- (THWSceneView)initWithFrame:(CGRect)frame options:(id)options;
- (id)p_cameraGroup;
- (id)p_duplicateCameraAndAddToGroupAtSceneCenter;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeCameraAnimation;
- (void)rotateCameraContinuously;
- (void)rotateCameraContinuouslyWithEaseIn;
- (void)scnWarmUpScene:(id)scene abortHandler:(id)handler;
- (void)setEventHandlerStickyAxis:(unint64_t)axis;
- (void)setScene:(id)scene;
@end

@implementation THWSceneView

- (THWSceneView)initWithFrame:(CGRect)frame options:(id)options
{
  v6.receiver = self;
  v6.super_class = THWSceneView;
  v4 = [(THWSceneView *)&v6 initWithFrame:options options:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    -[THWSceneView setBackgroundColor:](v4, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    v4->mFnObserving = 0;
    ++dword_567778;
  }

  return v4;
}

- (void)setEventHandlerStickyAxis:(unint64_t)axis
{
  eventHandler = [(THWSceneView *)self eventHandler];

  [eventHandler setStickyAxis:axis];
}

- (void)removeCameraAnimation
{
  p_cameraGroup = [(THWSceneView *)self p_cameraGroup];
  if (self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 0;
  }

  if ([p_cameraGroup hasContinuousRotationAnimation])
  {

    [p_cameraGroup removeContinuousRotationAnimations];
  }
}

- (void)dealloc
{
  [(THWSceneView *)self removeCameraAnimation];
  if (dword_567778 < 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  else
  {
    --dword_567778;
  }

  v3.receiver = self;
  v3.super_class = THWSceneView;
  [(THWSceneView *)&v3 dealloc];
}

- (void)scnWarmUpScene:(id)scene abortHandler:(id)handler
{
  renderer = [(THWSceneView *)self renderer];

  [renderer prepareObject:scene shouldAbortBlock:handler];
}

- (void)setScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = THWSceneView;
  [(THWSceneView *)&v7 setScene:scene];
  v4 = [-[THWSceneView pointOfView](self "pointOfView")];
  [v4 xFov];
  if (v5 != 0.0)
  {
    [v4 yFov];
    if (v6 != 0.0)
    {
      [v4 setXFov:0.0];
    }
  }
}

- (id)p_cameraGroup
{
  v2 = [-[THWSceneView scene](self "scene")];

  return [v2 childNodeWithName:@"THRotationGroupName" recursively:0];
}

- (id)p_duplicateCameraAndAddToGroupAtSceneCenter
{
  pointOfView = [(THWSceneView *)self pointOfView];
  if (pointOfView || (v10 = [objc_msgSend(-[THWSceneView scene](self "scene")]) != 0 && (v11 = v10, objc_msgSend(v10, "count")) && (pointOfView = objc_msgSend(v11, "objectAtIndex:", 0)) != 0)
  {
    v4 = pointOfView;
    v23 = 0.0;
    v22 = 0;
    v21 = 0.0;
    v20 = 0;
    if ([objc_msgSend(-[THWSceneView scene](self "scene")])
    {
      v6 = vadd_f32(v22, v20);
      v7 = vmul_f32(v6, 0x3F0000003F000000);
      v8 = (v23 + v21) * 0.5;
      v6.i32[0] = v7.i32[1];
      v9 = [v4 copy];
    }

    else
    {
      v8 = 0.0;
      v9 = [v4 copy];
    }

    v13 = v9;
    v12 = +[SCNNode node];
    [(SCNNode *)v12 addChildNode:v13];
    [(SCNNode *)v12 setName:@"THRotationGroupName"];
    *&v14 = v8;
    [(SCNNode *)v12 setPosition:v17, v16, v14];
    [v4 worldTransform];
    *&v19 = vsub_f32(*&v19, __PAIR64__(LODWORD(v16), LODWORD(v17)));
    *(&v19 + 2) = *(&v19 + 2) - v8;
    v18[0] = v18[4];
    v18[1] = v18[5];
    v18[2] = v18[6];
    v18[3] = v19;
    [v13 setTransform:v18];
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return v12;
}

- (void)rotateCameraContinuously
{
  p_cameraGroup = [(THWSceneView *)self p_cameraGroup];
  if (!p_cameraGroup)
  {
    p_cameraGroup = [(THWSceneView *)self p_duplicateCameraAndAddToGroupAtSceneCenter];
    [objc_msgSend(-[THWSceneView scene](self "scene")];
  }

  LODWORD(v4) = 1.0;
  [p_cameraGroup addContinuousRotationWithInitialRotation:{0.0, v4, 0.0, 0.0}];
  -[THWSceneView setPointOfView:](self, "setPointOfView:", [objc_msgSend(p_cameraGroup "childNodes")]);
  if (!self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 1;
  }
}

- (void)rotateCameraContinuouslyWithEaseIn
{
  p_cameraGroup = [(THWSceneView *)self p_cameraGroup];
  if (!p_cameraGroup)
  {
    p_cameraGroup = [(THWSceneView *)self p_duplicateCameraAndAddToGroupAtSceneCenter];
    [objc_msgSend(-[THWSceneView scene](self "scene")];
  }

  [p_cameraGroup addContinuousRotationWithEaseIn];
  -[THWSceneView setPointOfView:](self, "setPointOfView:", [objc_msgSend(p_cameraGroup "childNodes")]);
  if (!self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 1;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:@"pointOfView"] && -[THWSceneView renderer](self, "renderer") == object)
  {

    [(THWSceneView *)self removeCameraAnimation];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THWSceneView;
    [(THWSceneView *)&v11 observeValueForKeyPath:path ofObject:object change:change context:context];
  }
}

@end