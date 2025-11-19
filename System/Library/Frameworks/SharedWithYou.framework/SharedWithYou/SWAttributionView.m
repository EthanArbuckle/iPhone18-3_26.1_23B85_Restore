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
- (void)setBlurEffectGroupName:(id)a3;
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
  v3 = [(SWAttributionView *)self window];

  if (v3)
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
  v3 = [(SWAttributionView *)self constraints];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(SWAttributionView *)self constraints];
    [v5 deactivateConstraints:v6];

    [(SWAttributionView *)self setConstraints:0];
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(SWAttributionView *)self slAttributionView];

  if (v8)
  {
    [(SWAttributionView *)self preferredMaxLayoutWidth];
    v10 = v9;
    v11 = [(SWAttributionView *)self slAttributionView];
    v12 = v11;
    if (v10 <= 0.0)
    {
      v49 = [v11 topAnchor];
      v47 = [(SWAttributionView *)self topAnchor];
      v48 = [v49 constraintEqualToAnchor:v47];
      v55[0] = v48;
      v45 = [(SWAttributionView *)self slAttributionView];
      v46 = [v45 bottomAnchor];
      v43 = [(SWAttributionView *)self bottomAnchor];
      v53 = [v46 constraintEqualToAnchor:v43];
      v55[1] = v53;
      v52 = [(SWAttributionView *)self slAttributionView];
      v40 = [v52 leadingAnchor];
      v51 = [(SWAttributionView *)self leadingAnchor];
      v50 = [v40 constraintEqualToAnchor:?];
      v55[2] = v50;
      v44 = [(SWAttributionView *)self slAttributionView];
      v42 = [v44 trailingAnchor];
      v41 = [(SWAttributionView *)self trailingAnchor];
      v39 = [v42 constraintEqualToAnchor:v41];
      v55[3] = v39;
      v38 = [(SWAttributionView *)self slAttributionView];
      v37 = [v38 widthAnchor];
      v23 = [(SWAttributionView *)self widthAnchor];
      v24 = [v37 constraintEqualToAnchor:v23];
      v55[4] = v24;
      v25 = [(SWAttributionView *)self slAttributionView];
      v26 = [v25 heightAnchor];
      [(SWAttributionView *)self heightAnchor];
      v28 = v27 = v12;
      v29 = [v26 constraintEqualToAnchor:v28];
      v55[5] = v29;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
      v31 = v30 = v7;
      [v30 addObjectsFromArray:v31];

      v7 = v30;
      v18 = v43;

      v16 = v45;
      v12 = v27;
      v14 = v47;

      v22 = v40;
      v17 = v46;

      v13 = v49;
      v15 = v48;
    }

    else
    {
      v13 = [v11 widthAnchor];
      [(SWAttributionView *)self preferredMaxLayoutWidth];
      v14 = [v13 constraintEqualToConstant:?];
      v56[0] = v14;
      v15 = [(SWAttributionView *)self widthAnchor];
      v16 = [(SWAttributionView *)self slAttributionView];
      v17 = [v16 widthAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];
      v56[1] = v18;
      v19 = [(SWAttributionView *)self heightAnchor];
      v52 = [(SWAttributionView *)self slAttributionView];
      v20 = [v52 heightAnchor];
      v53 = v19;
      v21 = v19;
      v22 = v20;
      v51 = [v21 constraintEqualToAnchor:v20];
      v56[2] = v51;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
      [v7 addObjectsFromArray:?];
    }
  }

  [(SWAttributionView *)self setConstraints:v7];
  v32 = [(SWAttributionView *)self constraints];
  v33 = [v32 count];

  if (v33)
  {
    v34 = MEMORY[0x1E696ACD8];
    v35 = [(SWAttributionView *)self constraints];
    [v34 activateConstraints:v35];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (CGSize)intrinsicContentSize
{
  [(SWAttributionView *)self frame];
  v4 = v3;
  v5 = [(SWAttributionView *)self slAttributionView];
  [v5 intrinsicContentSize];
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
    v6 = [(SWAttributionView *)self slAttributionView];

    if (v6)
    {
      v7 = [(SWAttributionView *)self slAttributionView];
      [v7 removeFromSuperview];

      [(SWAttributionView *)self setSlAttributionView:0];
    }

    objc_storeStrong(&self->_highlight, highlight);
    v5 = v13;
    if (v13)
    {
      v8 = objc_alloc(MEMORY[0x1E69D37B8]);
      v9 = [(SWHighlight *)v13 slHighlight];
      v10 = [v8 initWithHighlight:v9];
      [(SWAttributionView *)self setSlAttributionView:v10];

      v11 = [(SWAttributionView *)self slAttributionView];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [(SWAttributionView *)self slAttributionView];
      [(SWAttributionView *)self addSubview:v12];

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
    v4 = [(SWAttributionView *)self window];

    if (v4)
    {

      [(SWAttributionView *)self _sendFeedbackForCurrentDisplayContext];
    }
  }
}

- (void)_updateSLAttributionViewAlignment
{
  v3 = [(SWAttributionView *)self horizontalAlignment];
  v4 = 1;
  if (v3 != SWAttributionViewHorizontalAlignmentCenter)
  {
    v4 = -1;
  }

  if (v3 == SWAttributionViewHorizontalAlignmentTrailing)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(SWAttributionView *)self slAttributionView];
  [v6 updateAlignment:v5];
}

- (void)_updateSLAttributionViewBackgroundStyle
{
  v3 = [(SWAttributionView *)self backgroundStyle];
  if (v3 == SWAttributionViewBackgroundStyleColor)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 == SWAttributionViewBackgroundStyleMaterial)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [(SWAttributionView *)self slAttributionView];
  [v6 updateBackgroundStyle:v5];
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
  v3 = [(SWAttributionView *)self slAttributionView];
  v4 = [v3 contextMenuItems];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(UIMenu *)self->_highlightMenu children];
  v9 = [v8 isEqualToArray:v7];

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
  v4 = [(SWAttributionView *)self supplementalMenu];
  v3 = [(SWAttributionView *)self slAttributionView];
  [v3 setSupplementalMenu:v4];
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
  v4 = [(SWAttributionView *)self menuTitleForHideAction];
  v3 = [(SWAttributionView *)self slAttributionView];
  [v3 setHideMenuItemTitle:v4];
}

- (id)closeButton
{
  v2 = [(SWAttributionView *)self slAttributionView];
  v3 = [v2 closeButton];

  return v3;
}

- (void)useBannerLayout
{
  v2 = [(SWAttributionView *)self slAttributionView];
  [v2 useBannerLayout];
}

- (void)setBlurEffectGroupName:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_blurEffectGroupName] & 1) == 0)
  {
    objc_storeStrong(&self->_blurEffectGroupName, a3);
    v5 = [(SWAttributionView *)self blurEffectGroupName];
    v6 = [(SWAttributionView *)self slAttributionView];
    [v6 setBlurEffectGroupName:v5];
  }
}

- (void)_sendFeedbackForCurrentDisplayContext
{
  v3 = [(SWAttributionView *)self displayContext];
  v5 = [(SWAttributionView *)self highlight];
  v4 = [v5 slHighlight];
  if (v3 == SWAttributionViewDisplayContextDetail)
  {
    SLSendPortraitFeedbackTypeUserInteractedWithHighlight();
  }

  else
  {
    SLSendPortraitFeedbackTypeDisplayedHighlight();
  }
}

@end