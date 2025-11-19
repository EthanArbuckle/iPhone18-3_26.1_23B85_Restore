@interface THWSceneView
- (THWSceneView)initWithFrame:(CGRect)a3 options:(id)a4;
- (id)p_cameraGroup;
- (id)p_duplicateCameraAndAddToGroupAtSceneCenter;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeCameraAnimation;
- (void)rotateCameraContinuously;
- (void)rotateCameraContinuouslyWithEaseIn;
- (void)scnWarmUpScene:(id)a3 abortHandler:(id)a4;
- (void)setEventHandlerStickyAxis:(unint64_t)a3;
- (void)setScene:(id)a3;
@end

@implementation THWSceneView

- (THWSceneView)initWithFrame:(CGRect)a3 options:(id)a4
{
  v6.receiver = self;
  v6.super_class = THWSceneView;
  v4 = [(THWSceneView *)&v6 initWithFrame:a4 options:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    -[THWSceneView setBackgroundColor:](v4, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    v4->mFnObserving = 0;
    ++dword_567778;
  }

  return v4;
}

- (void)setEventHandlerStickyAxis:(unint64_t)a3
{
  v4 = [(THWSceneView *)self eventHandler];

  [v4 setStickyAxis:a3];
}

- (void)removeCameraAnimation
{
  v3 = [(THWSceneView *)self p_cameraGroup];
  if (self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 0;
  }

  if ([v3 hasContinuousRotationAnimation])
  {

    [v3 removeContinuousRotationAnimations];
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

- (void)scnWarmUpScene:(id)a3 abortHandler:(id)a4
{
  v6 = [(THWSceneView *)self renderer];

  [v6 prepareObject:a3 shouldAbortBlock:a4];
}

- (void)setScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWSceneView;
  [(THWSceneView *)&v7 setScene:a3];
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
  v3 = [(THWSceneView *)self pointOfView];
  if (v3 || (v10 = [objc_msgSend(-[THWSceneView scene](self "scene")]) != 0 && (v11 = v10, objc_msgSend(v10, "count")) && (v3 = objc_msgSend(v11, "objectAtIndex:", 0)) != 0)
  {
    v4 = v3;
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
  v3 = [(THWSceneView *)self p_cameraGroup];
  if (!v3)
  {
    v3 = [(THWSceneView *)self p_duplicateCameraAndAddToGroupAtSceneCenter];
    [objc_msgSend(-[THWSceneView scene](self "scene")];
  }

  LODWORD(v4) = 1.0;
  [v3 addContinuousRotationWithInitialRotation:{0.0, v4, 0.0, 0.0}];
  -[THWSceneView setPointOfView:](self, "setPointOfView:", [objc_msgSend(v3 "childNodes")]);
  if (!self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 1;
  }
}

- (void)rotateCameraContinuouslyWithEaseIn
{
  v3 = [(THWSceneView *)self p_cameraGroup];
  if (!v3)
  {
    v3 = [(THWSceneView *)self p_duplicateCameraAndAddToGroupAtSceneCenter];
    [objc_msgSend(-[THWSceneView scene](self "scene")];
  }

  [v3 addContinuousRotationWithEaseIn];
  -[THWSceneView setPointOfView:](self, "setPointOfView:", [objc_msgSend(v3 "childNodes")]);
  if (!self->mFnObserving)
  {
    [-[THWSceneView renderer](self "renderer")];
    self->mFnObserving = 1;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"pointOfView"] && -[THWSceneView renderer](self, "renderer") == a4)
  {

    [(THWSceneView *)self removeCameraAnimation];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = THWSceneView;
    [(THWSceneView *)&v11 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

@end