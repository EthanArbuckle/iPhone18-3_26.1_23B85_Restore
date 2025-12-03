@interface TUIHoverVisibleView
+ (id)renderModelWithSubviewsModel:(id)model identifier:(id)identifier hoverIdentifier:(id)hoverIdentifier;
- (BOOL)_updateVisible;
- (id)hoverController;
- (void)applyLayoutAttributes:(id)attributes;
- (void)hoverStateChanged:(id)changed;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
- (void)viewWillDisplay;
@end

@implementation TUIHoverVisibleView

+ (id)renderModelWithSubviewsModel:(id)model identifier:(id)identifier hoverIdentifier:(id)hoverIdentifier
{
  hoverIdentifierCopy = hoverIdentifier;
  identifierCopy = identifier;
  modelCopy = model;
  v10 = [[_TUIHoverVisibleRenderModel alloc] initWithIdentifier:identifierCopy submodel:modelCopy hoverIdentifier:hoverIdentifierCopy];

  return v10;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = TUIHoverVisibleView;
  attributesCopy = attributes;
  [(TUIContainerView *)&v6 applyLayoutAttributes:attributesCopy];
  forceVisibleOnHover = [attributesCopy forceVisibleOnHover];

  self->_forceVisible = forceVisibleOnHover;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIHoverVisibleView;
  [(TUIContainerView *)&v3 prepareForReuse];
  self->_forceVisible = 0;
}

- (BOOL)_updateVisible
{
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  hoverController = [(TUIHoverVisibleView *)self hoverController];
  hoverIdentifier = [renderModel hoverIdentifier];
  v7 = [hoverController hoverStateForIdentifier:hoverIdentifier];

  visible = self->_visible;
  if (visible != v7)
  {
    self->_visible = v7;
  }

  v9 = visible != v7;

  return v9;
}

- (id)hoverController
{
  superview = [(TUIHoverVisibleView *)self superview];
  if (superview)
  {
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  hoverController = [superview hoverController];

  return hoverController;
}

- (void)viewWillDisplay
{
  v4.receiver = self;
  v4.super_class = TUIHoverVisibleView;
  [(TUIReusableBaseView *)&v4 viewWillDisplay];
  hoverController = [(TUIHoverVisibleView *)self hoverController];
  [hoverController registerHoverObserver:self];

  [(TUIHoverVisibleView *)self _updateVisible];
}

- (void)viewDidEndDisplay
{
  v4.receiver = self;
  v4.super_class = TUIHoverVisibleView;
  [(TUIContainerView *)&v4 viewDidEndDisplay];
  hoverController = [(TUIHoverVisibleView *)self hoverController];
  [hoverController unregisterHoverObserver:self];
}

- (void)hoverStateChanged:(id)changed
{
  changedCopy = changed;
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  if (!changedCopy || ([renderModel hoverIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(changedCopy, "containsObject:", v6), v6, v7))
  {
    if ([(TUIHoverVisibleView *)self _updateVisible])
    {
      [(TUIContainerView *)self invalidateShowContents];
    }
  }
}

@end