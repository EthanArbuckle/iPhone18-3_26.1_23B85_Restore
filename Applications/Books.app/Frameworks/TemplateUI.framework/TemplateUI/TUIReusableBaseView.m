@interface TUIReusableBaseView
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (id)feedControllerHost;
- (id)tui_querySectionUID;
- (id)tui_querySectionUUID;
- (void)prepareForReuse;
@end

@implementation TUIReusableBaseView

- (void)prepareForReuse
{
  v3 = [(TUIReusableBaseView *)self layer];
  [v3 setFlipsHorizontalAxis:0];

  [(TUIReusableBaseView *)self _removeAllAnimations:1];
}

- (id)descendentViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUIReusableBaseView *)self layoutAttributes];
  v6 = [v5 renderModel];
  v7 = [v6 identifier];
  v8 = [v7 isEqual:v4];

  if (!v8)
  {
    self = 0;
  }

  v9 = self;

  return self;
}

- (id)descendentViewWithRefId:(id)a3
{
  v4 = a3;
  v5 = [(TUIReusableBaseView *)self layoutAttributes];
  v6 = [v5 refId];
  v7 = [v6 isEqualToString:v4];

  if (!v7)
  {
    self = 0;
  }

  v8 = self;

  return self;
}

- (id)feedControllerHost
{
  objc_opt_class();
  v3 = TUIPlatformAncestorOfClass(self);
  v4 = [v3 controllerHost];

  return v4;
}

- (id)tui_querySectionUUID
{
  v2 = [(TUIReusableBaseView *)self renderViewHost];
  v3 = [v2 tui_querySectionUUID];

  return v3;
}

- (id)tui_querySectionUID
{
  v2 = [(TUIReusableBaseView *)self renderViewHost];
  v3 = [v2 tui_querySectionUID];

  return v3;
}

@end