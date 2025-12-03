@interface PKProofreadingView
- (BOOL)allowsAutoHide;
- (PKProofreadingView)initWithProofreadingItem:(id)item inDrawing:(id)drawing;
- (PKProofreadingViewDelegate)delegate;
- (id)_underlineColor;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_setLineDashFor:(id)for;
- (void)didMoveToSuperview;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)ensureViewIsVisible;
- (void)fadeOut;
- (void)popAllAutoHideSuppressionTokensAndFadeOutImmediately;
- (void)popAutoHideSuppressionToken:(id)token;
- (void)popAutoHideSuppressionTokens:(id)tokens fadeOutImmediately:(BOOL)immediately;
- (void)pushAutoHideSuppressionToken:(id)token forceShow:(BOOL)show;
- (void)startHideTimer;
- (void)tapHandler:(id)handler;
@end

@implementation PKProofreadingView

- (PKProofreadingView)initWithProofreadingItem:(id)item inDrawing:(id)drawing
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = PKProofreadingView;
  drawingCopy = drawing;
  v8 = [(PKDetectionView *)&v14 init];
  proofreadingItem = v8->_proofreadingItem;
  v8->_proofreadingItem = itemCopy;
  v10 = itemCopy;

  [(PKDetectionItem *)v8->_proofreadingItem setDrawing:drawingCopy, v14.receiver, v14.super_class];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  autoHideSuppressionTokens = v8->_autoHideSuppressionTokens;
  v8->_autoHideSuppressionTokens = v11;

  return v8;
}

- (void)didMoveToSuperview
{
  superview = [(PKProofreadingView *)self superview];

  if (superview)
  {

    [(PKProofreadingView *)self ensureViewIsVisible];
  }
}

- (id)_underlineColor
{
  item = [(PKProofreadingView *)self item];
  strokeColor = [item strokeColor];

  return strokeColor;
}

- (void)_setLineDashFor:(id)for
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1C801F760;
  [for setLineDash:&v3 count:2 phase:0.0];
}

- (void)ensureViewIsVisible
{
  layer = [(PKProofreadingView *)self layer];
  [layer removeAllAnimations];

  [(PKProofreadingView *)self setAlpha:1.0];
  [(PKProofreadingView *)self setHidden:0];
  if ([(PKProofreadingView *)self allowsAutoHide])
  {

    [(PKProofreadingView *)self startHideTimer];
  }
}

- (void)startHideTimer
{
  [(PKProofreadingView *)self cancelHideTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PKProofreadingView_startHideTimer__block_invoke;
  v6[3] = &unk_1E82DCE18;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:8.0];
  visibilityTimer = self->_visibilityTimer;
  self->_visibilityTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__PKProofreadingView_startHideTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained allowsAutoHide])
  {
    [*(a1 + 32) fadeOut];
  }
}

- (void)fadeOut
{
  v2[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__PKProofreadingView_fadeOut__block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29__PKProofreadingView_fadeOut__block_invoke_2;
  v2[3] = &unk_1E82D8F30;
  [MEMORY[0x1E69DD250] animateWithDuration:196608 delay:v3 options:v2 animations:1.0 completion:0.0];
}

uint64_t __29__PKProofreadingView_fadeOut__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) setHidden:1];
    v3 = *(v2 + 32);

    return [v3 setAlpha:1.0];
  }

  return result;
}

- (BOOL)allowsAutoHide
{
  autoHideSuppressionTokens = [(PKProofreadingView *)self autoHideSuppressionTokens];
  v3 = [autoHideSuppressionTokens count] == 0;

  return v3;
}

- (void)pushAutoHideSuppressionToken:(id)token forceShow:(BOOL)show
{
  showCopy = show;
  tokenCopy = token;
  if (tokenCopy)
  {
    v8 = tokenCopy;
    autoHideSuppressionTokens = [(PKProofreadingView *)self autoHideSuppressionTokens];
    [autoHideSuppressionTokens addObject:v8];

    [(PKProofreadingView *)self cancelHideTimer];
    tokenCopy = v8;
    if (showCopy)
    {
      [(PKProofreadingView *)self ensureViewIsVisible];
      tokenCopy = v8;
    }
  }
}

- (void)popAllAutoHideSuppressionTokensAndFadeOutImmediately
{
  v3 = MEMORY[0x1E695DFD8];
  autoHideSuppressionTokens = [(PKProofreadingView *)self autoHideSuppressionTokens];
  v4 = [v3 setWithSet:autoHideSuppressionTokens];
  [(PKProofreadingView *)self popAutoHideSuppressionTokens:v4 fadeOutImmediately:1];
}

- (void)popAutoHideSuppressionToken:(id)token
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:token];
  [(PKProofreadingView *)self popAutoHideSuppressionTokens:v4 fadeOutImmediately:0];
}

- (void)popAutoHideSuppressionTokens:(id)tokens fadeOutImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  tokensCopy = tokens;
  v7 = tokensCopy;
  if (tokensCopy)
  {
    v16 = tokensCopy;
    v8 = [tokensCopy count];
    v7 = v16;
    if (v8)
    {
      autoHideSuppressionTokens = [(PKProofreadingView *)self autoHideSuppressionTokens];
      [autoHideSuppressionTokens minusSet:v16];

      if ([(PKProofreadingView *)self isHidden])
      {
        [(PKProofreadingView *)self allowsAutoHide];
LABEL_5:
        v7 = v16;
        goto LABEL_6;
      }

      [(PKProofreadingView *)self alpha];
      v11 = v10;
      allowsAutoHide = [(PKProofreadingView *)self allowsAutoHide];
      v7 = v16;
      if (allowsAutoHide && v11 > 0.0)
      {
        if (([(PKProofreadingView *)self isHidden]& 1) != 0 || ([(PKProofreadingView *)self alpha], v13 <= 0.0))
        {
          v15 = 0;
        }

        else
        {
          [(PKProofreadingView *)self alpha];
          v15 = v14 < 1.0;
        }

        if (!immediatelyCopy || v15)
        {
          [(PKProofreadingView *)self startHideTimer];
        }

        else
        {
          [(PKProofreadingView *)self fadeOut];
        }

        goto LABEL_5;
      }
    }
  }

LABEL_6:
}

- (void)tapHandler:(id)handler
{
  [handler locationInView:self];
  if ([(PKDetectionView *)self hitTest:?])
  {
    if (!self->_editMenuInteraction)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:self];
      editMenuInteraction = self->_editMenuInteraction;
      self->_editMenuInteraction = v4;

      [(PKProofreadingView *)self addInteraction:self->_editMenuInteraction];
    }

    [(PKProofreadingView *)self bounds];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v11 = [MEMORY[0x1E69DC9D8] configurationWithIdentifier:@"proofreadingView" sourcePoint:{MidX, CGRectGetMinY(v14) + 20.0}];
    [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v11];
  }
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v29 = *MEMORY[0x1E69E9840];
  [(PKProofreadingView *)self pushAutoHideSuppressionToken:@"ReplacementMenu" forceShow:1, actions];
  proofreadingItem = [(PKProofreadingView *)self proofreadingItem];
  replacementStrings = [proofreadingItem replacementStrings];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(replacementStrings, "count")}];
  delegate = [(PKProofreadingView *)self delegate];
  [delegate proofreadingView:self willPresentStringsForProofreadingItem:proofreadingItem];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = replacementStrings;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = MEMORY[0x1E69DC628];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __80__PKProofreadingView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
        v20[3] = &unk_1E82DCE40;
        v21 = proofreadingItem;
        v22 = v14;
        selfCopy = self;
        v16 = [v15 actionWithTitle:v14 image:0 identifier:0 handler:v20];
        [v8 addObject:v16];
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E69DCC60] menuWithChildren:v8];

  return v17;
}

uint64_t __80__PKProofreadingView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "Proofreading");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = *(a1 + 40);
    v7 = 138412547;
    v8 = v5;
    v9 = 2117;
    v10 = v6;
    _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Activated menu for proofreading item: %@, string: %{sensitive}@", &v7, 0x16u);
  }

  v3 = [*(a1 + 48) delegate];
  [v3 proofreadingView:*(a1 + 48) didReplaceWithString:*(a1 + 40)];

  return [*(a1 + 48) setNeedsDisplay];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  [(PKProofreadingView *)self popAllAutoHideSuppressionTokensAndFadeOutImmediately:interaction];
  delegate = [(PKProofreadingView *)self delegate];
  proofreadingItem = [(PKProofreadingView *)self proofreadingItem];
  [delegate proofreadingView:self willDismissStringsForProofreadingItem:proofreadingItem];
}

- (PKProofreadingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end