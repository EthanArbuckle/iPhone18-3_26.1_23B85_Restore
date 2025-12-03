@interface SWAttributionView
- (CGSize)intrinsicContentSize;
- (SWAttributionView)init;
- (UIMenu)highlightMenu;
- (id)closeButton;
- (void)_sendFeedbackForCurrentDisplayContext;
- (void)_updateSLAttributionViewAlignment;
- (void)_updateSLAttributionViewBackgroundStyle;
- (void)_updateSLAttributionViewHideMenuItemTitle;
- (void)_updateSLAttributionViewSupplementalMenu;
- (void)didMoveToWindow;
- (void)setBlurEffectGroupName:(id)name;
- (void)setDisplayContext:(SWAttributionViewDisplayContext)displayContext;
- (void)setHighlight:(SWHighlight *)highlight;
- (void)setMenuTitleForHideAction:(NSString *)menuTitleForHideAction;
- (void)setPreferredMaxLayoutWidth:(CGFloat)preferredMaxLayoutWidth;
- (void)setSupplementalMenu:(UIMenu *)supplementalMenu;
- (void)updateConstraints;
- (void)useBannerLayout;
@end

@implementation SWAttributionView

- (SWAttributionView)init
{
  v3.receiver = self;
  v3.super_class = SWAttributionView;
  return [(SWAttributionView *)&v3 init];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SWAttributionView;
  [(SWAttributionView *)&v4 didMoveToWindow];
  window = [(SWAttributionView *)self window];

  if (window)
  {
    [(SWAttributionView *)self _sendFeedbackForCurrentDisplayContext];
  }
}

- (void)updateConstraints
{
  v56[3] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = SWAttributionView;
  [(SWAttributionView *)&v54 updateConstraints];
  constraints = [(SWAttributionView *)self constraints];
  v4 = [constraints count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraints2 = [(SWAttributionView *)self constraints];
    [v5 deactivateConstraints:constraints2];

    [(SWAttributionView *)self setConstraints:0];
  }

  array = [MEMORY[0x1E695DF70] array];
  slAttributionView = [(SWAttributionView *)self slAttributionView];

  if (slAttributionView)
  {
    [(SWAttributionView *)self preferredMaxLayoutWidth];
    v10 = v9;
    slAttributionView2 = [(SWAttributionView *)self slAttributionView];
    v12 = slAttributionView2;
    if (v10 <= 0.0)
    {
      topAnchor = [slAttributionView2 topAnchor];
      topAnchor2 = [(SWAttributionView *)self topAnchor];
      v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v55[0] = v48;
      slAttributionView3 = [(SWAttributionView *)self slAttributionView];
      bottomAnchor = [slAttributionView3 bottomAnchor];
      bottomAnchor2 = [(SWAttributionView *)self bottomAnchor];
      v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v55[1] = v53;
      slAttributionView4 = [(SWAttributionView *)self slAttributionView];
      leadingAnchor = [slAttributionView4 leadingAnchor];
      leadingAnchor2 = [(SWAttributionView *)self leadingAnchor];
      v50 = [leadingAnchor constraintEqualToAnchor:?];
      v55[2] = v50;
      slAttributionView5 = [(SWAttributionView *)self slAttributionView];
      trailingAnchor = [slAttributionView5 trailingAnchor];
      trailingAnchor2 = [(SWAttributionView *)self trailingAnchor];
      v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v55[3] = v39;
      slAttributionView6 = [(SWAttributionView *)self slAttributionView];
      widthAnchor = [slAttributionView6 widthAnchor];
      widthAnchor2 = [(SWAttributionView *)self widthAnchor];
      v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v55[4] = v24;
      slAttributionView7 = [(SWAttributionView *)self slAttributionView];
      heightAnchor = [slAttributionView7 heightAnchor];
      [(SWAttributionView *)self heightAnchor];
      v28 = v27 = v12;
      v29 = [heightAnchor constraintEqualToAnchor:v28];
      v55[5] = v29;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
      v31 = v30 = array;
      [v30 addObjectsFromArray:v31];

      array = v30;
      v18 = bottomAnchor2;

      slAttributionView8 = slAttributionView3;
      v12 = v27;
      v14 = topAnchor2;

      v22 = leadingAnchor;
      widthAnchor5 = bottomAnchor;

      widthAnchor3 = topAnchor;
      widthAnchor4 = v48;
    }

    else
    {
      widthAnchor3 = [slAttributionView2 widthAnchor];
      [(SWAttributionView *)self preferredMaxLayoutWidth];
      v14 = [widthAnchor3 constraintEqualToConstant:?];
      v56[0] = v14;
      widthAnchor4 = [(SWAttributionView *)self widthAnchor];
      slAttributionView8 = [(SWAttributionView *)self slAttributionView];
      widthAnchor5 = [slAttributionView8 widthAnchor];
      v18 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
      v56[1] = v18;
      heightAnchor2 = [(SWAttributionView *)self heightAnchor];
      slAttributionView4 = [(SWAttributionView *)self slAttributionView];
      heightAnchor3 = [slAttributionView4 heightAnchor];
      v53 = heightAnchor2;
      v21 = heightAnchor2;
      v22 = heightAnchor3;
      leadingAnchor2 = [v21 constraintEqualToAnchor:heightAnchor3];
      v56[2] = leadingAnchor2;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
      [array addObjectsFromArray:?];
    }
  }

  [(SWAttributionView *)self setConstraints:array];
  constraints3 = [(SWAttributionView *)self constraints];
  v33 = [constraints3 count];

  if (v33)
  {
    v34 = MEMORY[0x1E696ACD8];
    constraints4 = [(SWAttributionView *)self constraints];
    [v34 activateConstraints:constraints4];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (CGSize)intrinsicContentSize
{
  [(SWAttributionView *)self frame];
  v4 = v3;
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView intrinsicContentSize];
  v7 = v6;

  v8 = v4;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setHighlight:(SWHighlight *)highlight
{
  v5 = highlight;
  if (self->_highlight != v5)
  {
    v13 = v5;
    slAttributionView = [(SWAttributionView *)self slAttributionView];

    if (slAttributionView)
    {
      slAttributionView2 = [(SWAttributionView *)self slAttributionView];
      [slAttributionView2 removeFromSuperview];

      [(SWAttributionView *)self setSlAttributionView:0];
    }

    objc_storeStrong(&self->_highlight, highlight);
    v5 = v13;
    if (v13)
    {
      v8 = objc_alloc(MEMORY[0x1E69D37B8]);
      slHighlight = [(SWHighlight *)v13 slHighlight];
      v10 = [v8 initWithHighlight:slHighlight];
      [(SWAttributionView *)self setSlAttributionView:v10];

      slAttributionView3 = [(SWAttributionView *)self slAttributionView];
      [slAttributionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      slAttributionView4 = [(SWAttributionView *)self slAttributionView];
      [(SWAttributionView *)self addSubview:slAttributionView4];

      [(SWAttributionView *)self _updateSLAttributionViewAlignment];
      [(SWAttributionView *)self _updateSLAttributionViewBackgroundStyle];
      [(SWAttributionView *)self _updateSLAttributionViewSupplementalMenu];
      [(SWAttributionView *)self _updateSLAttributionViewHideMenuItemTitle];
      [(SWAttributionView *)self _updateSLAttributionViewEnablesMarquee];
      [(SWAttributionView *)self setNeedsUpdateConstraints];
      v5 = v13;
    }
  }
}

- (void)setDisplayContext:(SWAttributionViewDisplayContext)displayContext
{
  if (self->_displayContext != displayContext)
  {
    self->_displayContext = displayContext;
    window = [(SWAttributionView *)self window];

    if (window)
    {

      [(SWAttributionView *)self _sendFeedbackForCurrentDisplayContext];
    }
  }
}

- (void)_updateSLAttributionViewAlignment
{
  horizontalAlignment = [(SWAttributionView *)self horizontalAlignment];
  v4 = 1;
  if (horizontalAlignment != SWAttributionViewHorizontalAlignmentCenter)
  {
    v4 = -1;
  }

  if (horizontalAlignment == SWAttributionViewHorizontalAlignmentTrailing)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView updateAlignment:v5];
}

- (void)_updateSLAttributionViewBackgroundStyle
{
  backgroundStyle = [(SWAttributionView *)self backgroundStyle];
  if (backgroundStyle == SWAttributionViewBackgroundStyleColor)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (backgroundStyle == SWAttributionViewBackgroundStyleMaterial)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView updateBackgroundStyle:v5];
}

- (void)setPreferredMaxLayoutWidth:(CGFloat)preferredMaxLayoutWidth
{
  v5 = self->_preferredMaxLayoutWidth;
  if ((SL_CGFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    [(SWAttributionView *)self setTranslatesAutoresizingMaskIntoConstraints:preferredMaxLayoutWidth == 0.0];
    self->_preferredMaxLayoutWidth = preferredMaxLayoutWidth;

    [(SWAttributionView *)self setNeedsUpdateConstraints];
  }
}

- (UIMenu)highlightMenu
{
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  contextMenuItems = [slAttributionView contextMenuItems];
  v5 = contextMenuItems;
  v6 = MEMORY[0x1E695E0F0];
  if (contextMenuItems)
  {
    v6 = contextMenuItems;
  }

  v7 = v6;

  children = [(UIMenu *)self->_highlightMenu children];
  v9 = [children isEqualToArray:v7];

  highlightMenu = self->_highlightMenu;
  if (!highlightMenu || (v9 & 1) == 0)
  {
    v11 = [MEMORY[0x1E69DCC60] menuWithChildren:v7];
    v12 = self->_highlightMenu;
    self->_highlightMenu = v11;

    highlightMenu = self->_highlightMenu;
  }

  v13 = highlightMenu;

  return highlightMenu;
}

- (void)setSupplementalMenu:(UIMenu *)supplementalMenu
{
  v5 = supplementalMenu;
  if (self->_supplementalMenu != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_supplementalMenu, supplementalMenu);
    [(SWAttributionView *)self _updateSLAttributionViewSupplementalMenu];
    v5 = v6;
  }
}

- (void)_updateSLAttributionViewSupplementalMenu
{
  supplementalMenu = [(SWAttributionView *)self supplementalMenu];
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView setSupplementalMenu:supplementalMenu];
}

- (void)setMenuTitleForHideAction:(NSString *)menuTitleForHideAction
{
  v5 = menuTitleForHideAction;
  if (![(NSString *)self->_menuTitleForHideAction isEqualToString:?])
  {
    objc_storeStrong(&self->_menuTitleForHideAction, menuTitleForHideAction);
    [(SWAttributionView *)self _updateSLAttributionViewHideMenuItemTitle];
  }
}

- (void)_updateSLAttributionViewHideMenuItemTitle
{
  menuTitleForHideAction = [(SWAttributionView *)self menuTitleForHideAction];
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView setHideMenuItemTitle:menuTitleForHideAction];
}

- (id)closeButton
{
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  closeButton = [slAttributionView closeButton];

  return closeButton;
}

- (void)useBannerLayout
{
  slAttributionView = [(SWAttributionView *)self slAttributionView];
  [slAttributionView useBannerLayout];
}

- (void)setBlurEffectGroupName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_blurEffectGroupName] & 1) == 0)
  {
    objc_storeStrong(&self->_blurEffectGroupName, name);
    blurEffectGroupName = [(SWAttributionView *)self blurEffectGroupName];
    slAttributionView = [(SWAttributionView *)self slAttributionView];
    [slAttributionView setBlurEffectGroupName:blurEffectGroupName];
  }
}

- (void)_sendFeedbackForCurrentDisplayContext
{
  displayContext = [(SWAttributionView *)self displayContext];
  highlight = [(SWAttributionView *)self highlight];
  slHighlight = [highlight slHighlight];
  if (displayContext == SWAttributionViewDisplayContextDetail)
  {
    SLSendPortraitFeedbackTypeUserInteractedWithHighlight();
  }

  else
  {
    SLSendPortraitFeedbackTypeDisplayedHighlight();
  }
}

@end