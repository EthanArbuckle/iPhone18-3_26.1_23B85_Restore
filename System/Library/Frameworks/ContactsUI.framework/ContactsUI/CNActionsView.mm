@interface CNActionsView
+ (int64_t)axisWithTitlesPresent:(BOOL)present;
- (BOOL)actionViewShouldPresentDisambiguationUI:(id)i;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNActionsView)initWithFrame:(CGRect)frame;
- (CNActionsViewProtocol)actionsDelegate;
- (id)actionViewForType:(id)type;
- (unint64_t)insertionIndexForType:(id)type;
- (void)addActionItem:(id)item;
- (void)didPressActionView:(id)view longPress:(BOOL)press;
- (void)removeActionItem:(id)item;
- (void)resetActions;
- (void)setPosterTintColor:(id)color;
- (void)setSortedActionTypes:(id)types;
- (void)setSpacing:(double)spacing;
- (void)setStyle:(int64_t)style;
- (void)setVisualEffectViewCaptureView:(id)view;
- (void)updateActionItem:(id)item;
- (void)updateAxis;
@end

@implementation CNActionsView

- (CNActionsViewProtocol)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (BOOL)actionViewShouldPresentDisambiguationUI:(id)i
{
  iCopy = i;
  actionItemsByType = [(CNActionsView *)self actionItemsByType];
  type = [iCopy type];

  v7 = [actionItemsByType objectForKeyedSubscript:type];

  actionsDelegate = [(CNActionsView *)self actionsDelegate];
  LOBYTE(type) = objc_opt_respondsToSelector();

  if (type)
  {
    actionsDelegate2 = [(CNActionsView *)self actionsDelegate];
    v10 = [actionsDelegate2 actionsView:self shouldPresentDisambiguationUIForAction:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)didPressActionView:(id)view longPress:(BOOL)press
{
  pressCopy = press;
  viewCopy = view;
  actionItemsByType = [(CNActionsView *)self actionItemsByType];
  type = [viewCopy type];
  v8 = [actionItemsByType objectForKeyedSubscript:type];

  actionsDelegate = [(CNActionsView *)self actionsDelegate];
  LOBYTE(type) = objc_opt_respondsToSelector();

  if (type)
  {
    actionsDelegate2 = [(CNActionsView *)self actionsDelegate];
    [actionsDelegate2 didSelectAction:v8 withSourceView:viewCopy longPress:pressCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  containerView = [(CNActionsView *)self containerView];
  [containerView sizeThatFits:{width, height}];
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
  containerView = [(CNActionsView *)self containerView];
  [containerView effectiveLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setVisualEffectViewCaptureView:(id)view
{
  viewCopy = view;
  if (self->_visualEffectViewCaptureView != viewCopy)
  {
    objc_storeStrong(&self->_visualEffectViewCaptureView, view);
    containerView = [(CNActionsView *)self containerView];
    arrangedSubviews = [containerView arrangedSubviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__CNActionsView_setVisualEffectViewCaptureView___block_invoke;
    v8[3] = &unk_1E74E6848;
    v9 = viewCopy;
    [arrangedSubviews enumerateObjectsUsingBlock:v8];
  }
}

- (void)setPosterTintColor:(id)color
{
  colorCopy = color;
  if (self->_posterTintColor != colorCopy)
  {
    objc_storeStrong(&self->_posterTintColor, color);
    containerView = [(CNActionsView *)self containerView];
    arrangedSubviews = [containerView arrangedSubviews];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__CNActionsView_setPosterTintColor___block_invoke;
    v8[3] = &unk_1E74E6848;
    v9 = colorCopy;
    [arrangedSubviews enumerateObjectsUsingBlock:v8];
  }
}

- (void)setStyle:(int64_t)style
{
  self->_style = style;
  v5 = (style - 6) & 0xFFFFFFFFFFFFFFFALL;
  containerView = [(CNActionsView *)self containerView];
  arrangedSubviews = [containerView arrangedSubviews];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __26__CNActionsView_setStyle___block_invoke;
  v26[3] = &__block_descriptor_40_e29_v32__0__CNActionView_8Q16_B24l;
  v26[4] = style;
  [arrangedSubviews enumerateObjectsUsingBlock:v26];

  [CNActionView minimumSizeForStyle:style];
  v9 = v8;
  v11 = v10;
  containerView2 = [(CNActionsView *)self containerView];
  [containerView2 setMinimumLayoutSize:{v9, v11}];

  if (v5)
  {
    [(CNActionsView *)self spacing];
  }

  else
  {
    v13 = 8.0;
  }

  [(CNActionsView *)self setSpacing:v13];
  if (style == 10)
  {
    visualEffectViewCaptureView = [(CNActionsView *)self visualEffectViewCaptureView];
    if (!visualEffectViewCaptureView)
    {
      if (![(CNActionsView *)self enableVisualEffectViewCaptureView])
      {
LABEL_9:
        [(CNActionsView *)self bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        visualEffectViewCaptureView2 = [(CNActionsView *)self visualEffectViewCaptureView];
        [visualEffectViewCaptureView2 setBounds:{v18, v20, v22, v24}];

        return;
      }

      v15 = objc_alloc(MEMORY[0x1E69DD838]);
      [(CNActionsView *)self bounds];
      visualEffectViewCaptureView = [v15 initWithFrame:?];
      [visualEffectViewCaptureView setAutoresizingMask:18];
      [(CNActionsView *)self insertSubview:visualEffectViewCaptureView atIndex:0];
      [visualEffectViewCaptureView setRenderMode:1];
      captureGroup = [visualEffectViewCaptureView captureGroup];
      [captureGroup setGroupName:@"CNQuickActionsCaptureGroup"];

      [(CNActionsView *)self setVisualEffectViewCaptureView:visualEffectViewCaptureView];
    }

    goto LABEL_9;
  }

  [(CNActionsView *)self setVisualEffectViewCaptureView:0];
}

- (void)setSpacing:(double)spacing
{
  if (self->_spacing != spacing)
  {
    if (spacing >= 0.0)
    {
      self->_spacing = spacing;
      containerView = [(CNActionsView *)self containerView];
      [containerView setSpacing:spacing];
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
  containerView = [(CNActionsView *)self containerView];
  arrangedSubviews = [containerView arrangedSubviews];

  v4 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v8 + 1) + 8 * v7++) setHidden:1];
      }

      while (v5 != v7);
      v5 = [arrangedSubviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateAxis
{
  containerView = [(CNActionsView *)self containerView];
  arrangedSubviews = [containerView arrangedSubviews];
  v5 = [arrangedSubviews _cn_any:&__block_literal_global_11_63833];

  v6 = [objc_opt_class() axisWithTitlesPresent:v5];
  containerView2 = [(CNActionsView *)self containerView];
  axis = [containerView2 axis];

  if (v6 != axis)
  {
    containerView3 = [(CNActionsView *)self containerView];
    [containerView3 setAxis:v6];
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

- (void)updateActionItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  v6 = [(CNActionsView *)self actionViewForType:type];

  if ([v6 isHidden])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNActionsView.m" lineNumber:156 description:{@"If updating an existing action item, the action view can't be hidden"}];
  }

  sUpdateActionViewWithItem_block_invoke(&__block_literal_global_63839, v6, itemCopy);
}

- (void)removeActionItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  v8 = [(CNActionsView *)self actionViewForType:type];

  actionItemsByType = [(CNActionsView *)self actionItemsByType];
  type2 = [itemCopy type];

  [actionItemsByType removeObjectForKey:type2];
  [v8 setHidden:1];
  [(CNActionsView *)self updateAxis];
}

- (void)addActionItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  v8 = [(CNActionsView *)self actionViewForType:type];

  [v8 setActionDelegate:self];
  [v8 setStyle:{-[CNActionsView style](self, "style")}];
  sUpdateActionViewWithItem_block_invoke(&__block_literal_global_63839, v8, itemCopy);
  actionItemsByType = [(CNActionsView *)self actionItemsByType];
  type2 = [itemCopy type];
  [actionItemsByType setObject:itemCopy forKeyedSubscript:type2];

  [(CNActionsView *)self updateAxis];
}

- (id)actionViewForType:(id)type
{
  typeCopy = type;
  actionViewsByType = [(CNActionsView *)self actionViewsByType];
  v6 = [actionViewsByType objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v7 = [(CNActionsView *)self insertionIndexForType:typeCopy];
    actionViewsByType2 = [(CNActionsView *)self actionViewsByType];
    v9 = [actionViewsByType2 mutableCopy];

    v6 = objc_alloc_init(CNActionView);
    [(CNActionView *)v6 setHidden:1];
    [v9 setObject:v6 forKeyedSubscript:typeCopy];
    titleFont = [(CNActionsView *)self titleFont];
    [(CNActionView *)v6 setTitleFont:titleFont];

    [(CNActionsView *)self setActionViewsByType:v9];
    containerView = [(CNActionsView *)self containerView];
    [containerView insertArrangedSubview:v6 atIndex:v7];
  }

  return v6;
}

- (unint64_t)insertionIndexForType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sortedActionTypes = [(CNActionsView *)self sortedActionTypes];
  v6 = [sortedActionTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(sortedActionTypes);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      actionViewsByType = [(CNActionsView *)self actionViewsByType];
      v13 = [actionViewsByType objectForKeyedSubscript:v11];

      if (v13)
      {
        ++v8;
      }

      if (v11 == typeCopy)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [sortedActionTypes countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)setSortedActionTypes:(id)types
{
  v25 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  sortedActionTypes = self->_sortedActionTypes;
  if (typesCopy | sortedActionTypes && ([(NSArray *)sortedActionTypes isEqual:typesCopy]& 1) == 0)
  {
    v6 = [typesCopy copy];
    v7 = self->_sortedActionTypes;
    self->_sortedActionTypes = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = typesCopy;
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
          actionViewsByType = [(CNActionsView *)self actionViewsByType];
          v15 = [actionViewsByType objectForKeyedSubscript:v13];

          if (v15)
          {
            actionViewsByType2 = [(CNActionsView *)self actionViewsByType];
            [actionViewsByType2 setObject:0 forKeyedSubscript:v13];

            containerView = [(CNActionsView *)self containerView];
            [containerView removeArrangedSubview:v15];

            containerView2 = [(CNActionsView *)self containerView];
            [containerView2 insertArrangedSubview:v15 atIndex:{-[CNActionsView insertionIndexForType:](self, "insertionIndexForType:", v13)}];

            actionViewsByType3 = [(CNActionsView *)self actionViewsByType];
            [actionViewsByType3 setObject:v15 forKeyedSubscript:v13];
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

- (CNActionsView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CNActionsView;
  v3 = [(CNActionsView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionItemsByType = v3->_actionItemsByType;
    v3->_actionItemsByType = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionViewsByType = v3->_actionViewsByType;
    v3->_actionViewsByType = v7;

    v9 = 8.0;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v9 = 16.0;
    }

    v3->_spacing = v9;
    v10 = objc_alloc(MEMORY[0x1E698B730]);
    [(CNActionsView *)v3 bounds];
    v11 = [v10 initWithFrame:?];
    [v11 setAutoresizingMask:18];
    [v11 setAxis:{objc_msgSend(objc_opt_class(), "axisWithTitlesPresent:", 1)}];
    [v11 setDistribution:ab_preferredContentSizeCategoryIsAccessibilityCategory ^ 1u];
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

+ (int64_t)axisWithTitlesPresent:(BOOL)present
{
  if (present)
  {
    return [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  }

  else
  {
    return 0;
  }
}

@end