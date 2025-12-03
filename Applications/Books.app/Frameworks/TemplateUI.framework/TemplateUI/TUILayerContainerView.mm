@interface TUILayerContainerView
+ (id)renderModelWithLayerModel:(id)model identifier:(id)identifier;
- (TUILayerContainerView)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureWithModel:(id)model;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
@end

@implementation TUILayerContainerView

- (TUILayerContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUILayerContainerView;
  v3 = [(TUILayerContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUILayerContainerView *)v3 setUserInteractionEnabled:0];
    [(TUILayerContainerView *)v4 setClipsToBounds:0];
  }

  return v4;
}

+ (id)renderModelWithLayerModel:(id)model identifier:(id)identifier
{
  identifierCopy = identifier;
  modelCopy = model;
  v7 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIIdentifierLayerContainerView" identifier:identifierCopy submodel:modelCopy];

  return v7;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = TUILayerContainerView;
  [(TUILayerContainerView *)&v3 _dynamicUserInterfaceTraitDidChange];
  if (+[UIView areAnimationsEnabled])
  {
    [(TUIRenderModelLayerBuilder *)self->_builder dynamicUserInterfaceTraitDidChange];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(TUIRenderModelLayerBuilder *)self->_builder dynamicUserInterfaceTraitDidChange];
    +[CATransaction commit];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = TUILayerContainerView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(TUILayerContainerView *)self configureWithModel:submodel];
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  if (!self->_builder)
  {
    v5 = objc_alloc_init(TUIRenderModelLayerBuilder);
    builder = self->_builder;
    self->_builder = v5;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v7 = +[_TUIAnimationState currentState];
  model = [(TUIRenderModelLayerBuilder *)self->_builder model];
  v9 = model;
  v10 = 0;
  if (modelCopy && model)
  {
    model2 = [(TUIRenderModelLayerBuilder *)self->_builder model];
    identifier = [model2 identifier];
    identifier2 = [modelCopy identifier];
    v10 = [identifier isEqual:identifier2];
  }

  shouldCaptureCALayerAnimations = [v7 shouldCaptureCALayerAnimations];
  config = [modelCopy config];
  if (objc_opt_respondsToSelector())
  {
    clipContainerForCrossfade = [config clipContainerForCrossfade];
  }

  else
  {
    clipContainerForCrossfade = 0;
  }

  [v7 duration];
  v18 = v17;
  v55 = config;
  v56 = v7;
  if (v10)
  {
    shouldCaptureCALayerAnimations2 = [v7 shouldCaptureCALayerAnimations];
  }

  else
  {
    shouldCaptureCALayerAnimations2 = 0;
  }

  containerClipLayer = self->_containerClipLayer;
  if (((containerClipLayer == 0) & clipContainerForCrossfade) == 1)
  {
    v21 = +[CALayer layer];
    v22 = self->_containerClipLayer;
    self->_containerClipLayer = v21;

    [(CALayer *)self->_containerClipLayer setDelegate:self->_builder];
    layer = [(TUILayerContainerView *)self layer];
    [layer addSublayer:self->_containerClipLayer];
  }

  else
  {
    if ((containerClipLayer == 0) | clipContainerForCrossfade & 1)
    {
      goto LABEL_17;
    }

    [(CALayer *)containerClipLayer removeFromSuperlayer];
    layer = self->_containerClipLayer;
    self->_containerClipLayer = 0;
  }

LABEL_17:
  if ((clipContainerForCrossfade & 1) == 0)
  {
    layer2 = [(TUILayerContainerView *)self layer];
    layer3 = 0;
    if (!shouldCaptureCALayerAnimations)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  layer2 = self->_containerClipLayer;
  layer3 = [(TUILayerContainerView *)self layer];
  if (shouldCaptureCALayerAnimations)
  {
LABEL_21:
    +[CATransaction begin];
    [CATransaction setDisableActions:0];
  }

LABEL_22:
  [(TUIRenderModelLayerBuilder *)self->_builder setModel:modelCopy];
  layer4 = [(TUIRenderModelLayerBuilder *)self->_builder layer];
  [(TUILayerContainerView *)self bounds];
  [(CALayer *)layer4 setPosition:v26 * 0.5, v27 * 0.5];
  if (self->_containerClipLayer)
  {
    [(CALayer *)layer4 frame];
    v29 = v28;
    v31 = v30;
    [(CALayer *)self->_containerClipLayer setFrame:?];
    CATransform3DMakeTranslation(&v59, -v29, -v31, 0.0);
    v32 = self->_containerClipLayer;
    v58 = v59;
    [(CALayer *)v32 setSublayerTransform:&v58];
  }

  if (shouldCaptureCALayerAnimations)
  {
    +[CATransaction commit];
  }

  contentLayer = self->_contentLayer;
  if (contentLayer == layer4)
  {
    if (layer4)
    {
      superlayer = [(CALayer *)contentLayer superlayer];

      if (superlayer != layer2)
      {
        [(CALayer *)self->_contentLayer removeFromSuperlayer];
        [(CALayer *)layer2 addSublayer:self->_contentLayer];
      }
    }
  }

  else
  {
    if (shouldCaptureCALayerAnimations2)
    {
      v34 = +[CATransition animation];
      [v34 setDuration:v18];
      v35 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
      [v34 setTimingFunction:v35];

      [v34 setRemovedOnCompletion:1];
      if (clipContainerForCrossfade)
      {
        WeakRetained = objc_loadWeakRetained(&self->_containerClip);
        if (!WeakRetained)
        {
          WeakRetained = [[_TUILayerContainerClip alloc] initWithLayer:layer2];
          objc_storeWeak(&self->_containerClip, WeakRetained);
        }

        [(_TUILayerContainerClip *)WeakRetained addAnimation:v34];
      }

      [(CALayer *)layer2 addAnimation:v34 forKey:@"crossfade"];
    }

    if (objc_opt_respondsToSelector())
    {
      v37 = self->_contentLayer;
      if (v37)
      {
        feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
        [(CALayer *)v37 willRemoveLayerWithFeedControllerHost:feedControllerHost];
      }
    }

    else
    {
      v37 = 0;
    }

    [(CALayer *)self->_contentLayer removeFromSuperlayer];
    if (layer4)
    {
      [(CALayer *)layer2 addSublayer:layer4];
      v40 = objc_opt_respondsToSelector();
      if (v40)
      {
        v41 = layer4;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;
      if (v40)
      {
        feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
        [(CALayer *)layer4 didAddLayerWithFeedControllerHost:feedControllerHost2];
      }

      [(CALayer *)layer4 bounds];
      if (v45 > 8192.0 || v44 > 8192.0)
      {
        feedControllerHost3 = [(TUIReusableBaseView *)self feedControllerHost];
        [feedControllerHost3 reportLargeLayer:layer4 renderModel:modelCopy];
      }
    }

    objc_storeStrong(&self->_contentLayer, layer4);
  }

  compositingFilter = [(CALayer *)self->_contentLayer compositingFilter];
  v48 = TUILayerCompositingFilterNeedsBackdropLayer(compositingFilter);
  [(CALayer *)layer2 setAllowsGroupBlending:(compositingFilter == 0) | (v48 & 1)];
  [layer3 setAllowsGroupBlending:1];
  backdropLayer = self->_backdropLayer;
  if (v48)
  {
    if (backdropLayer)
    {
      superlayer2 = [(CABackdropLayer *)backdropLayer superlayer];

      if (superlayer2 == layer2)
      {
        goto LABEL_59;
      }

      [(CABackdropLayer *)self->_backdropLayer removeFromSuperlayer];
    }

    else
    {
      v52 = +[CABackdropLayer layer];
      v53 = self->_backdropLayer;
      self->_backdropLayer = v52;

      [(CABackdropLayer *)self->_backdropLayer setDelegate:self->_builder];
    }

    [(CALayer *)layer2 insertSublayer:self->_backdropLayer atIndex:0];
  }

  else if (backdropLayer)
  {
    [(CABackdropLayer *)backdropLayer removeFromSuperlayer];
    v51 = self->_backdropLayer;
    self->_backdropLayer = 0;
  }

LABEL_59:
  v54 = self->_backdropLayer;
  if (((v54 != 0) & shouldCaptureCALayerAnimations) == 1)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:0];
    [(CALayer *)self->_contentLayer frame];
    [(CABackdropLayer *)self->_backdropLayer setFrame:?];
    +[CATransaction commit];
  }

  else if (v54)
  {
    [(CALayer *)self->_contentLayer frame];
    [(CABackdropLayer *)self->_backdropLayer setFrame:?];
  }

  +[CATransaction commit];
}

- (void)viewDidEndDisplay
{
  v10.receiver = self;
  v10.super_class = TUILayerContainerView;
  [(TUIReusableBaseView *)&v10 viewDidEndDisplay];
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_contentLayer;
    if (v3)
    {
      feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
      [(CALayer *)v3 willRemoveLayerWithFeedControllerHost:feedControllerHost];
    }
  }

  else
  {
    v3 = 0;
  }

  [(CALayer *)self->_contentLayer removeFromSuperlayer];
  contentLayer = self->_contentLayer;
  self->_contentLayer = 0;

  [(CABackdropLayer *)self->_backdropLayer removeFromSuperlayer];
  backdropLayer = self->_backdropLayer;
  self->_backdropLayer = 0;

  builder = self->_builder;
  self->_builder = 0;

  [(CALayer *)self->_containerClipLayer removeFromSuperlayer];
  containerClipLayer = self->_containerClipLayer;
  self->_containerClipLayer = 0;

  layer = [(TUILayerContainerView *)self layer];
  [layer setAllowsGroupBlending:1];
}

- (void)prepareForReuse
{
  v10.receiver = self;
  v10.super_class = TUILayerContainerView;
  [(TUIReusableBaseView *)&v10 prepareForReuse];
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_contentLayer;
    if (v3)
    {
      feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
      [(CALayer *)v3 willRemoveLayerWithFeedControllerHost:feedControllerHost];
    }
  }

  else
  {
    v3 = 0;
  }

  [(CALayer *)self->_contentLayer removeFromSuperlayer];
  contentLayer = self->_contentLayer;
  self->_contentLayer = 0;

  [(CABackdropLayer *)self->_backdropLayer removeFromSuperlayer];
  backdropLayer = self->_backdropLayer;
  self->_backdropLayer = 0;

  builder = self->_builder;
  self->_builder = 0;

  [(CALayer *)self->_containerClipLayer removeFromSuperlayer];
  containerClipLayer = self->_containerClipLayer;
  self->_containerClipLayer = 0;

  layer = [(TUILayerContainerView *)self layer];
  [layer setAllowsGroupBlending:1];
}

@end