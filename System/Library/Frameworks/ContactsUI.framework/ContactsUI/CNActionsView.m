@interface CNActionsView
+ (int64_t)axisWithTitlesPresent:(BOOL)a3;
- (BOOL)actionViewShouldPresentDisambiguationUI:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNActionsView)initWithFrame:(CGRect)a3;
- (CNActionsViewProtocol)actionsDelegate;
- (id)actionViewForType:(id)a3;
- (unint64_t)insertionIndexForType:(id)a3;
- (void)addActionItem:(id)a3;
- (void)didPressActionView:(id)a3 longPress:(BOOL)a4;
- (void)removeActionItem:(id)a3;
- (void)resetActions;
- (void)setPosterTintColor:(id)a3;
- (void)setSortedActionTypes:(id)a3;
- (void)setSpacing:(double)a3;
- (void)setStyle:(int64_t)a3;
- (void)setVisualEffectViewCaptureView:(id)a3;
- (void)updateActionItem:(id)a3;
- (void)updateAxis;
@end

@implementation CNActionsView

- (CNActionsViewProtocol)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (BOOL)actionViewShouldPresentDisambiguationUI:(id)a3
{
  v4 = a3;
  v5 = [(CNActionsView *)self actionItemsByType];
  v6 = [v4 type];

  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(CNActionsView *)self actionsDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(CNActionsView *)self actionsDelegate];
    v10 = [v9 actionsView:self shouldPresentDisambiguationUIForAction:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)didPressActionView:(id)a3 longPress:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(CNActionsView *)self actionItemsByType];
  v7 = [v11 type];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [(CNActionsView *)self actionsDelegate];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v10 = [(CNActionsView *)self actionsDelegate];
    [v10 didSelectAction:v8 withSourceView:v11 longPress:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CNActionsView *)self containerView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CNActionsView *)self containerView];
  [v2 effectiveLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setVisualEffectViewCaptureView:(id)a3
{
  v5 = a3;
  if (self->_visualEffectViewCaptureView != v5)
  {
    objc_storeStrong(&self->_visualEffectViewCaptureView, a3);
    v6 = [(CNActionsView *)self containerView];
    v7 = [v6 arrangedSubviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CNActionsView_setVisualEffectViewCaptureView___block_invoke;
    v8[3] = &unk_1E74E6848;
    v9 = v5;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

- (void)setPosterTintColor:(id)a3
{
  v5 = a3;
  if (self->_posterTintColor != v5)
  {
    objc_storeStrong(&self->_posterTintColor, a3);
    v6 = [(CNActionsView *)self containerView];
    v7 = [v6 arrangedSubviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__CNActionsView_setPosterTintColor___block_invoke;
    v8[3] = &unk_1E74E6848;
    v9 = v5;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

- (void)setStyle:(int64_t)a3
{
  self->_style = a3;
  v5 = (a3 - 6) & 0xFFFFFFFFFFFFFFFALL;
  v6 = [(CNActionsView *)self containerView];
  v7 = [v6 arrangedSubviews];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __26__CNActionsView_setStyle___block_invoke;
  v26[3] = &__block_descriptor_40_e29_v32__0__CNActionView_8Q16_B24l;
  v26[4] = a3;
  [v7 enumerateObjectsUsingBlock:v26];

  [CNActionView minimumSizeForStyle:a3];
  v9 = v8;
  v11 = v10;
  v12 = [(CNActionsView *)self containerView];
  [v12 setMinimumLayoutSize:{v9, v11}];

  if (v5)
  {
    [(CNActionsView *)self spacing];
  }

  else
  {
    v13 = 8.0;
  }

  [(CNActionsView *)self setSpacing:v13];
  if (a3 == 10)
  {
    v14 = [(CNActionsView *)self visualEffectViewCaptureView];
    if (!v14)
    {
      if (![(CNActionsView *)self enableVisualEffectViewCaptureView])
      {
LABEL_9:
        [(CNActionsView *)self bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [(CNActionsView *)self visualEffectViewCaptureView];
        [v25 setBounds:{v18, v20, v22, v24}];

        return;
      }

      v15 = objc_alloc(MEMORY[0x1E69DD838]);
      [(CNActionsView *)self bounds];
      v14 = [v15 initWithFrame:?];
      [v14 setAutoresizingMask:18];
      [(CNActionsView *)self insertSubview:v14 atIndex:0];
      [v14 setRenderMode:1];
      v16 = [v14 captureGroup];
      [v16 setGroupName:@"CNQuickActionsCaptureGroup"];

      [(CNActionsView *)self setVisualEffectViewCaptureView:v14];
    }

    goto LABEL_9;
  }

  [(CNActionsView *)self setVisualEffectViewCaptureView:0];
}

- (void)setSpacing:(double)a3
{
  if (self->_spacing != a3)
  {
    if (a3 >= 0.0)
    {
      self->_spacing = a3;
      v8 = [(CNActionsView *)self containerView];
      [v8 setSpacing:a3];
    }

    else
    {

      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNActionsView.m", 184, 3, @"CNActionView: Spacing specified is < 0, would result in overlapping views. Leaving unchanged.", v3, v4, v5, v6, v10);
    }
  }
}

- (void)resetActions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CNActionsView *)self containerView];
  v3 = [v2 arrangedSubviews];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateAxis
{
  v3 = [(CNActionsView *)self containerView];
  v4 = [v3 arrangedSubviews];
  v5 = [v4 _cn_any:&__block_literal_global_11_63833];

  v6 = [objc_opt_class() axisWithTitlesPresent:v5];
  v7 = [(CNActionsView *)self containerView];
  v8 = [v7 axis];

  if (v6 != v8)
  {
    v9 = [(CNActionsView *)self containerView];
    [v9 setAxis:v6];
  }
}

BOOL __27__CNActionsView_updateAxis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHidden])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 title];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)updateActionItem:(id)a3
{
  v8 = a3;
  v5 = [v8 type];
  v6 = [(CNActionsView *)self actionViewForType:v5];

  if ([v6 isHidden])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNActionsView.m" lineNumber:156 description:{@"If updating an existing action item, the action view can't be hidden"}];
  }

  sUpdateActionViewWithItem_block_invoke(&__block_literal_global_63839, v6, v8);
}

- (void)removeActionItem:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v8 = [(CNActionsView *)self actionViewForType:v5];

  v6 = [(CNActionsView *)self actionItemsByType];
  v7 = [v4 type];

  [v6 removeObjectForKey:v7];
  [v8 setHidden:1];
  [(CNActionsView *)self updateAxis];
}

- (void)addActionItem:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v8 = [(CNActionsView *)self actionViewForType:v5];

  [v8 setActionDelegate:self];
  [v8 setStyle:{-[CNActionsView style](self, "style")}];
  sUpdateActionViewWithItem_block_invoke(&__block_literal_global_63839, v8, v4);
  v6 = [(CNActionsView *)self actionItemsByType];
  v7 = [v4 type];
  [v6 setObject:v4 forKeyedSubscript:v7];

  [(CNActionsView *)self updateAxis];
}

- (id)actionViewForType:(id)a3
{
  v4 = a3;
  v5 = [(CNActionsView *)self actionViewsByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(CNActionsView *)self insertionIndexForType:v4];
    v8 = [(CNActionsView *)self actionViewsByType];
    v9 = [v8 mutableCopy];

    v6 = objc_alloc_init(CNActionView);
    [(CNActionView *)v6 setHidden:1];
    [v9 setObject:v6 forKeyedSubscript:v4];
    v10 = [(CNActionsView *)self titleFont];
    [(CNActionView *)v6 setTitleFont:v10];

    [(CNActionsView *)self setActionViewsByType:v9];
    v11 = [(CNActionsView *)self containerView];
    [v11 insertArrangedSubview:v6 atIndex:v7];
  }

  return v6;
}

- (unint64_t)insertionIndexForType:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CNActionsView *)self sortedActionTypes];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      v12 = [(CNActionsView *)self actionViewsByType];
      v13 = [v12 objectForKeyedSubscript:v11];

      if (v13)
      {
        ++v8;
      }

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setSortedActionTypes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sortedActionTypes = self->_sortedActionTypes;
  if (v4 | sortedActionTypes && ([(NSArray *)sortedActionTypes isEqual:v4]& 1) == 0)
  {
    v6 = [v4 copy];
    v7 = self->_sortedActionTypes;
    self->_sortedActionTypes = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [(CNActionsView *)self actionViewsByType];
          v15 = [v14 objectForKeyedSubscript:v13];

          if (v15)
          {
            v16 = [(CNActionsView *)self actionViewsByType];
            [v16 setObject:0 forKeyedSubscript:v13];

            v17 = [(CNActionsView *)self containerView];
            [v17 removeArrangedSubview:v15];

            v18 = [(CNActionsView *)self containerView];
            [v18 insertArrangedSubview:v15 atIndex:{-[CNActionsView insertionIndexForType:](self, "insertionIndexForType:", v13)}];

            v19 = [(CNActionsView *)self actionViewsByType];
            [v19 setObject:v15 forKeyedSubscript:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }
}

- (CNActionsView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = CNActionsView;
  v3 = [(CNActionsView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionItemsByType = v3->_actionItemsByType;
    v3->_actionItemsByType = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionViewsByType = v3->_actionViewsByType;
    v3->_actionViewsByType = v7;

    v9 = 8.0;
    if (v4)
    {
      v9 = 16.0;
    }

    v3->_spacing = v9;
    v10 = objc_alloc(MEMORY[0x1E698B730]);
    [(CNActionsView *)v3 bounds];
    v11 = [v10 initWithFrame:?];
    [v11 setAutoresizingMask:18];
    [v11 setAxis:{objc_msgSend(objc_opt_class(), "axisWithTitlesPresent:", 1)}];
    [v11 setDistribution:v4 ^ 1u];
    [v11 setSpacing:v3->_spacing];
    [v11 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    [CNActionView minimumSizeForStyle:[(CNActionsView *)v3 style]];
    [v11 setMinimumLayoutSize:?];
    [v11 setDelegate:v3];
    containerView = v3->_containerView;
    v3->_containerView = v11;
    v13 = v11;

    [(CNActionsView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    [v13 setInsetsLayoutMarginsFromSafeArea:0];
    [(CNActionsView *)v3 addSubview:v13];
  }

  return v3;
}

+ (int64_t)axisWithTitlesPresent:(BOOL)a3
{
  if (a3)
  {
    return [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  }

  else
  {
    return 0;
  }
}

@end