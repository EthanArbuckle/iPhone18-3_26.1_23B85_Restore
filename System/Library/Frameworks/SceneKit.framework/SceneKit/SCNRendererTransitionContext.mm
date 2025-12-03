@interface SCNRendererTransitionContext
- (__C3DFXPass)transitionPass;
- (id)copyWithZone:(_NSZone *)zone;
- (id)prepareRendererAtIndex:(int)index withScene:(id)scene renderSize:(CGSize)size pointOfView:(id)view parentRenderer:(id)renderer;
- (void)dealloc;
@end

@implementation SCNRendererTransitionContext

- (id)copyWithZone:(_NSZone *)zone
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

- (id)prepareRendererAtIndex:(int)index withScene:(id)scene renderSize:(CGSize)size pointOfView:(id)view parentRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  renderers = self->_renderers;
  v11 = self->_renderers[index];
  if (!v11)
  {
    +[SCNTransaction begin];
    [SCNTransaction setImmediateMode:1];
    if ([renderer renderingAPI])
    {
      v15 = +[SCNOffscreenRenderer offscreenRendererWithContext:size:](SCNOffscreenRenderer, "offscreenRendererWithContext:size:", [renderer context], width, height);
    }

    else
    {
      v15 = +[SCNOffscreenRenderer offscreenRendererWithDevice:size:](SCNOffscreenRenderer, "offscreenRendererWithDevice:size:", [renderer device], width, height);
    }

    v16 = v15;
    renderers[index] = v16;
    [(SCNRenderer *)v16 setScene:scene];
    [(SCNRenderer *)renderers[index] setPointOfView:view];
    -[SCNRenderer setBackgroundColor:](renderers[index], "setBackgroundColor:", [renderer backgroundColor]);
    v17 = renderers[index];
    [renderer sceneTime];
    [(SCNRenderer *)v17 setSceneTime:?];
    +[SCNTransaction commit];
    v11 = renderers[index];
  }

  [(SCNOffscreenRenderer *)v11 setSize:width, height];
  return renderers[index];
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