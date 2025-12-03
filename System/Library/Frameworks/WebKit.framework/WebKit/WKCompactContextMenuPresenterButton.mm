@interface WKCompactContextMenuPresenterButton
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation WKCompactContextMenuPresenterButton

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_externalDelegate);

    return [Weak contextMenuInteraction:interaction configurationForMenuAtLocation:{x, y}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WKCompactContextMenuPresenterButton;
    return [(WKCompactContextMenuPresenterButton *)&v10 contextMenuInteraction:interaction configurationForMenuAtLocation:x, y];
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_externalDelegate);

    return [Weak contextMenuInteraction:interaction configuration:configuration highlightPreviewForItemWithIdentifier:identifier];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WKCompactContextMenuPresenterButton;
    return [(WKCompactContextMenuPresenterButton *)&v11 contextMenuInteraction:interaction configuration:configuration highlightPreviewForItemWithIdentifier:identifier];
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v9.receiver = self;
  v9.super_class = WKCompactContextMenuPresenterButton;
  [WKCompactContextMenuPresenterButton contextMenuInteraction:sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_ willDisplayMenuForConfiguration:? animator:?];
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_externalDelegate) contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  }
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v9.receiver = self;
  v9.super_class = WKCompactContextMenuPresenterButton;
  [WKCompactContextMenuPresenterButton contextMenuInteraction:sel_contextMenuInteraction_willEndForConfiguration_animator_ willEndForConfiguration:? animator:?];
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_externalDelegate) contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  }
}

@end