@interface WKCompactContextMenuPresenterButton
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation WKCompactContextMenuPresenterButton

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_externalDelegate);

    return [Weak contextMenuInteraction:a3 configurationForMenuAtLocation:{x, y}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WKCompactContextMenuPresenterButton;
    return [(WKCompactContextMenuPresenterButton *)&v10 contextMenuInteraction:a3 configurationForMenuAtLocation:x, y];
  }
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    Weak = objc_loadWeak(&self->_externalDelegate);

    return [Weak contextMenuInteraction:a3 configuration:a4 highlightPreviewForItemWithIdentifier:a5];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WKCompactContextMenuPresenterButton;
    return [(WKCompactContextMenuPresenterButton *)&v11 contextMenuInteraction:a3 configuration:a4 highlightPreviewForItemWithIdentifier:a5];
  }
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v9.receiver = self;
  v9.super_class = WKCompactContextMenuPresenterButton;
  [WKCompactContextMenuPresenterButton contextMenuInteraction:sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_ willDisplayMenuForConfiguration:? animator:?];
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_externalDelegate) contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v9.receiver = self;
  v9.super_class = WKCompactContextMenuPresenterButton;
  [WKCompactContextMenuPresenterButton contextMenuInteraction:sel_contextMenuInteraction_willEndForConfiguration_animator_ willEndForConfiguration:? animator:?];
  objc_loadWeak(&self->_externalDelegate);
  if (objc_opt_respondsToSelector())
  {
    [objc_loadWeak(&self->_externalDelegate) contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  }
}

@end