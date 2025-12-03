@interface TUIReusableBaseView
- (id)descendentViewWithIdentifier:(id)identifier;
- (id)descendentViewWithRefId:(id)id;
- (id)feedControllerHost;
- (id)tui_querySectionUID;
- (id)tui_querySectionUUID;
- (void)prepareForReuse;
@end

@implementation TUIReusableBaseView

- (void)prepareForReuse
{
  layer = [(TUIReusableBaseView *)self layer];
  [layer setFlipsHorizontalAxis:0];

  [(TUIReusableBaseView *)self _removeAllAnimations:1];
}

- (id)descendentViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];
  identifier = [renderModel identifier];
  v8 = [identifier isEqual:identifierCopy];

  if (!v8)
  {
    self = 0;
  }

  selfCopy = self;

  return self;
}

- (id)descendentViewWithRefId:(id)id
{
  idCopy = id;
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  refId = [layoutAttributes refId];
  v7 = [refId isEqualToString:idCopy];

  if (!v7)
  {
    self = 0;
  }

  selfCopy = self;

  return self;
}

- (id)feedControllerHost
{
  objc_opt_class();
  v3 = TUIPlatformAncestorOfClass(self);
  controllerHost = [v3 controllerHost];

  return controllerHost;
}

- (id)tui_querySectionUUID
{
  renderViewHost = [(TUIReusableBaseView *)self renderViewHost];
  tui_querySectionUUID = [renderViewHost tui_querySectionUUID];

  return tui_querySectionUUID;
}

- (id)tui_querySectionUID
{
  renderViewHost = [(TUIReusableBaseView *)self renderViewHost];
  tui_querySectionUID = [renderViewHost tui_querySectionUID];

  return tui_querySectionUID;
}

@end