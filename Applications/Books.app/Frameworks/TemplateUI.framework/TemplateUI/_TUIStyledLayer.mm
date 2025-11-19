@interface _TUIStyledLayer
- (TUIFeedControllerHosting)feedControllerHost;
- (id)implicitAnimationForKeyPath:(id)a3;
- (void)didAddLayerWithFeedControllerHost:(id)a3;
- (void)setOpacityTriggers:(id)a3;
- (void)willRemoveLayerWithFeedControllerHost:(id)a3;
@end

@implementation _TUIStyledLayer

- (id)implicitAnimationForKeyPath:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _TUIStyledLayer;
  v5 = [(_TUIStyledLayer *)&v7 implicitAnimationForKeyPath:v4];
  if (!v5)
  {
    if ([v4 isEqualToString:@"shadowPath"])
    {
      v5 = [CABasicAnimation animationWithKeyPath:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setOpacityTriggers:(id)a3
{
  v4 = a3;
  triggerObserver = self->_triggerObserver;
  v11 = v4;
  if (v4)
  {
    v6 = [triggerObserver opacityTriggers];
    v7 = [v11 isEqualToDictionary:v6];

    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [[_TtC10TemplateUI30TUILayerOpacityTriggerObserver alloc] initWithLayer:self opacityTriggers:v11];
    v9 = self->_triggerObserver;
    self->_triggerObserver = v8;

    triggerObserver = objc_loadWeakRetained(&self->_feedControllerHost);
    v10 = [triggerObserver triggerStateManager];
    [(TUILayerOpacityTriggerObserver *)self->_triggerObserver setManager:v10];
  }

  else
  {
    self->_triggerObserver = 0;
  }

LABEL_6:
}

- (void)didAddLayerWithFeedControllerHost:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_feedControllerHost, v5);
  v4 = [v5 triggerStateManager];
  [(TUILayerOpacityTriggerObserver *)self->_triggerObserver setManager:v4];
}

- (void)willRemoveLayerWithFeedControllerHost:(id)a3
{
  objc_storeWeak(&self->_feedControllerHost, 0);
  triggerObserver = self->_triggerObserver;

  [(TUILayerOpacityTriggerObserver *)triggerObserver setManager:0];
}

- (TUIFeedControllerHosting)feedControllerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_feedControllerHost);

  return WeakRetained;
}

@end