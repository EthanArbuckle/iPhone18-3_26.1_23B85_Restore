@interface _TUIStyledLayer
- (TUIFeedControllerHosting)feedControllerHost;
- (id)implicitAnimationForKeyPath:(id)path;
- (void)didAddLayerWithFeedControllerHost:(id)host;
- (void)setOpacityTriggers:(id)triggers;
- (void)willRemoveLayerWithFeedControllerHost:(id)host;
@end

@implementation _TUIStyledLayer

- (id)implicitAnimationForKeyPath:(id)path
{
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = _TUIStyledLayer;
  v5 = [(_TUIStyledLayer *)&v7 implicitAnimationForKeyPath:pathCopy];
  if (!v5)
  {
    if ([pathCopy isEqualToString:@"shadowPath"])
    {
      v5 = [CABasicAnimation animationWithKeyPath:pathCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setOpacityTriggers:(id)triggers
{
  triggersCopy = triggers;
  triggerObserver = self->_triggerObserver;
  v11 = triggersCopy;
  if (triggersCopy)
  {
    opacityTriggers = [triggerObserver opacityTriggers];
    v7 = [v11 isEqualToDictionary:opacityTriggers];

    if (v7)
    {
      goto LABEL_6;
    }

    v8 = [[_TtC10TemplateUI30TUILayerOpacityTriggerObserver alloc] initWithLayer:self opacityTriggers:v11];
    v9 = self->_triggerObserver;
    self->_triggerObserver = v8;

    triggerObserver = objc_loadWeakRetained(&self->_feedControllerHost);
    triggerStateManager = [triggerObserver triggerStateManager];
    [(TUILayerOpacityTriggerObserver *)self->_triggerObserver setManager:triggerStateManager];
  }

  else
  {
    self->_triggerObserver = 0;
  }

LABEL_6:
}

- (void)didAddLayerWithFeedControllerHost:(id)host
{
  hostCopy = host;
  objc_storeWeak(&self->_feedControllerHost, hostCopy);
  triggerStateManager = [hostCopy triggerStateManager];
  [(TUILayerOpacityTriggerObserver *)self->_triggerObserver setManager:triggerStateManager];
}

- (void)willRemoveLayerWithFeedControllerHost:(id)host
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