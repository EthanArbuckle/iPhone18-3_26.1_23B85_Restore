@interface SCNRendererTransitionContext
- (__C3DFXPass)transitionPass;
- (id)copyWithZone:(_NSZone *)a3;
- (id)prepareRendererAtIndex:(int)a3 withScene:(id)a4 renderSize:(CGSize)a5 pointOfView:(id)a6 parentRenderer:(id)a7;
- (void)dealloc;
@end

@implementation SCNRendererTransitionContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCNRendererTransitionContext);
  [(SCNRendererTransitionContext *)self transitionStartTime];
  [(SCNRendererTransitionContext *)v4 setTransitionStartTime:?];
  [(SCNRendererTransitionContext *)v4 setTransition:[(SCNRendererTransitionContext *)self transition]];
  [(SCNRendererTransitionContext *)v4 setOutgoingPointOfView:[(SCNRendererTransitionContext *)self outgoingPointOfView]];
  [(SCNRendererTransitionContext *)v4 setOutgoingScene:[(SCNRendererTransitionContext *)self outgoingScene]];
  return v4;
}

- (__C3DFXPass)transitionPass
{
  result = self->_transitionPass;
  if (!result)
  {
    v4 = C3DFXPassCreate();
    self->_transitionPass = v4;
    C3DFXPassSetName(v4, @"transition pass");
    C3DFXPassSetDrawInstruction(self->_transitionPass, 1);
    FramebufferDescription = C3DFXPassGetFramebufferDescription(self->_transitionPass);
    *(FramebufferDescription + 8) = 1;
    *(FramebufferDescription + 80) |= 8u;
    return self->_transitionPass;
  }

  return result;
}

- (id)prepareRendererAtIndex:(int)a3 withScene:(id)a4 renderSize:(CGSize)a5 pointOfView:(id)a6 parentRenderer:(id)a7
{
  height = a5.height;
  width = a5.width;
  renderers = self->_renderers;
  v11 = self->_renderers[a3];
  if (!v11)
  {
    +[SCNTransaction begin];
    [SCNTransaction setImmediateMode:1];
    if ([a7 renderingAPI])
    {
      v15 = +[SCNOffscreenRenderer offscreenRendererWithContext:size:](SCNOffscreenRenderer, "offscreenRendererWithContext:size:", [a7 context], width, height);
    }

    else
    {
      v15 = +[SCNOffscreenRenderer offscreenRendererWithDevice:size:](SCNOffscreenRenderer, "offscreenRendererWithDevice:size:", [a7 device], width, height);
    }

    v16 = v15;
    renderers[a3] = v16;
    [(SCNRenderer *)v16 setScene:a4];
    [(SCNRenderer *)renderers[a3] setPointOfView:a6];
    -[SCNRenderer setBackgroundColor:](renderers[a3], "setBackgroundColor:", [a7 backgroundColor]);
    v17 = renderers[a3];
    [a7 sceneTime];
    [(SCNRenderer *)v17 setSceneTime:?];
    +[SCNTransaction commit];
    v11 = renderers[a3];
  }

  [(SCNOffscreenRenderer *)v11 setSize:width, height];
  return renderers[a3];
}

- (void)dealloc
{
  transitionPass = self->_transitionPass;
  if (transitionPass)
  {
    CFRelease(transitionPass);
  }

  completionHandler = self->completionHandler;
  if (completionHandler)
  {
    _Block_release(completionHandler);
  }

  v5.receiver = self;
  v5.super_class = SCNRendererTransitionContext;
  [(SCNRendererTransitionContext *)&v5 dealloc];
}

@end