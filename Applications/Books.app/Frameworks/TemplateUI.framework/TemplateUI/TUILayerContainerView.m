@interface TUILayerContainerView
+ (id)renderModelWithLayerModel:(id)a3 identifier:(id)a4;
- (TUILayerContainerView)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)applyLayoutAttributes:(id)a3;
- (void)configureWithModel:(id)a3;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
@end

@implementation TUILayerContainerView

- (TUILayerContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUILayerContainerView;
  v3 = [(TUILayerContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUILayerContainerView *)v3 setUserInteractionEnabled:0];
    [(TUILayerContainerView *)v4 setClipsToBounds:0];
  }

  return v4;
}

+ (id)renderModelWithLayerModel:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIIdentifierLayerContainerView" identifier:v5 submodel:v6];

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

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUILayerContainerView;
  v4 = a3;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(TUILayerContainerView *)self configureWithModel:v6];
}

- (void)configureWithModel:(id)a3
{
  v4 = a3;
  if (!self->_builder)
  {
    v5 = objc_alloc_init(TUIRenderModelLayerBuilder);
    builder = self->_builder;
    self->_builder = v5;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v7 = +[_TUIAnimationState currentState];
  v8 = [(TUIRenderModelLayerBuilder *)self->_builder model];
  v9 = v8;
  v10 = 0;
  if (v4 && v8)
  {
    v11 = [(TUIRenderModelLayerBuilder *)self->_builder model];
    v12 = [v11 identifier];
    v13 = [v4 identifier];
    v10 = [v12 isEqual:v13];
  }

  v14 = [v7 shouldCaptureCALayerAnimations];
  v15 = [v4 config];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 clipContainerForCrossfade];
  }

  else
  {
    v16 = 0;
  }

  [v7 duration];
  v18 = v17;
  v55 = v15;
  v56 = v7;
  if (v10)
  {
    v19 = [v7 shouldCaptureCALayerAnimations];
  }

  else
  {
    v19 = 0;
  }

  containerClipLayer = self->_containerClipLayer;
  if (((containerClipLayer == 0) & v16) == 1)
  {
    v21 = +[CALayer layer];
    v22 = self->_containerClipLayer;
    self->_containerClipLayer = v21;

    [(CALayer *)self->_containerClipLayer setDelegate:self->_builder];
    v23 = [(TUILayerContainerView *)self layer];
    [v23 addSublayer:self->_containerClipLayer];
  }

  else
  {
    if ((containerClipLayer == 0) | v16 & 1)
    {
      goto LABEL_17;
    }

    [(CALayer *)containerClipLayer removeFromSuperlayer];
    v23 = self->_containerClipLayer;
    self->_containerClipLayer = 0;
  }

LABEL_17:
  if ((v16 & 1) == 0)
  {
    v24 = [(TUILayerContainerView *)self layer];
    v57 = 0;
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v24 = self->_containerClipLayer;
  v57 = [(TUILayerContainerView *)self layer];
  if (v14)
  {
LABEL_21:
    +[CATransaction begin];
    [CATransaction setDisableActions:0];
  }

LABEL_22:
  [(TUIRenderModelLayerBuilder *)self->_builder setModel:v4];
  v25 = [(TUIRenderModelLayerBuilder *)self->_builder layer];
  [(TUILayerContainerView *)self bounds];
  [(CALayer *)v25 setPosition:v26 * 0.5, v27 * 0.5];
  if (self->_containerClipLayer)
  {
    [(CALayer *)v25 frame];
    v29 = v28;
    v31 = v30;
    [(CALayer *)self->_containerClipLayer setFrame:?];
    CATransform3DMakeTranslation(&v59, -v29, -v31, 0.0);
    v32 = self->_containerClipLayer;
    v58 = v59;
    [(CALayer *)v32 setSublayerTransform:&v58];
  }

  if (v14)
  {
    +[CATransaction commit];
  }

  contentLayer = self->_contentLayer;
  if (contentLayer == v25)
  {
    if (v25)
    {
      v39 = [(CALayer *)contentLayer superlayer];

      if (v39 != v24)
      {
        [(CALayer *)self->_contentLayer removeFromSuperlayer];
        [(CALayer *)v24 addSublayer:self->_contentLayer];
      }
    }
  }

  else
  {
    if (v19)
    {
      v34 = +[CATransition animation];
      [v34 setDuration:v18];
      v35 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
      [v34 setTimingFunction:v35];

      [v34 setRemovedOnCompletion:1];
      if (v16)
      {
        WeakRetained = objc_loadWeakRetained(&self->_containerClip);
        if (!WeakRetained)
        {
          WeakRetained = [[_TUILayerContainerClip alloc] initWithLayer:v24];
          objc_storeWeak(&self->_containerClip, WeakRetained);
        }

        [(_TUILayerContainerClip *)WeakRetained addAnimation:v34];
      }

      [(CALayer *)v24 addAnimation:v34 forKey:@"crossfade"];
    }

    if (objc_opt_respondsToSelector())
    {
      v37 = self->_contentLayer;
      if (v37)
      {
        v38 = [(TUIReusableBaseView *)self feedControllerHost];
        [(CALayer *)v37 willRemoveLayerWithFeedControllerHost:v38];
      }
    }

    else
    {
      v37 = 0;
    }

    [(CALayer *)self->_contentLayer removeFromSuperlayer];
    if (v25)
    {
      [(CALayer *)v24 addSublayer:v25];
      v40 = objc_opt_respondsToSelector();
      if (v40)
      {
        v41 = v25;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;
      if (v40)
      {
        v43 = [(TUIReusableBaseView *)self feedControllerHost];
        [(CALayer *)v25 didAddLayerWithFeedControllerHost:v43];
      }

      [(CALayer *)v25 bounds];
      if (v45 > 8192.0 || v44 > 8192.0)
      {
        v46 = [(TUIReusableBaseView *)self feedControllerHost];
        [v46 reportLargeLayer:v25 renderModel:v4];
      }
    }

    objc_storeStrong(&self->_contentLayer, v25);
  }

  v47 = [(CALayer *)self->_contentLayer compositingFilter];
  v48 = TUILayerCompositingFilterNeedsBackdropLayer(v47);
  [(CALayer *)v24 setAllowsGroupBlending:(v47 == 0) | (v48 & 1)];
  [v57 setAllowsGroupBlending:1];
  backdropLayer = self->_backdropLayer;
  if (v48)
  {
    if (backdropLayer)
    {
      v50 = [(CABackdropLayer *)backdropLayer superlayer];

      if (v50 == v24)
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

    [(CALayer *)v24 insertSublayer:self->_backdropLayer atIndex:0];
  }

  else if (backdropLayer)
  {
    [(CABackdropLayer *)backdropLayer removeFromSuperlayer];
    v51 = self->_backdropLayer;
    self->_backdropLayer = 0;
  }

LABEL_59:
  v54 = self->_backdropLayer;
  if (((v54 != 0) & v14) == 1)
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
      v4 = [(TUIReusableBaseView *)self feedControllerHost];
      [(CALayer *)v3 willRemoveLayerWithFeedControllerHost:v4];
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

  v9 = [(TUILayerContainerView *)self layer];
  [v9 setAllowsGroupBlending:1];
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
      v4 = [(TUIReusableBaseView *)self feedControllerHost];
      [(CALayer *)v3 willRemoveLayerWithFeedControllerHost:v4];
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

  v9 = [(TUILayerContainerView *)self layer];
  [v9 setAllowsGroupBlending:1];
}

@end