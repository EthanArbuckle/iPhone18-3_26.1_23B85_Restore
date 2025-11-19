@interface TUIControlView
+ (id)renderModelWithStateToButtonAttributes:(id)a3 stateToRenderModel:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 viewState:(id)a7 linkEntities:(id)a8 type:(unint64_t)a9 role:(unint64_t)a10 userInterfaceStyle:(unint64_t)a11 enabled:(BOOL)a12 pressScale:(double)a13 touchInsets:(UIEdgeInsets)a14 identifier:(id)a15 style:(id)a16 pointer:(id)a17 focusStyle:(id)a18 menu:(id)a19 contextMenuIsPrimaryAction:(BOOL)a20 name:(id)a21 axAttributes:(id)a22 enableBackgroundForHighlightPreview:(BOOL)a23 enableShadowForHighlightPreview:(BOOL)a24;
+ (int64_t)uiButtonRoleFromTUIButtonRole:(unint64_t)a3;
+ (int64_t)uiButtonTypeFromTUIButtonType:(unint64_t)a3;
+ (int64_t)uiUserInterfaceStyleFromTUIUserInterfaceStyle:(unint64_t)a3;
+ (unint64_t)uiControlStateFromTUIElementState:(id)a3;
- (BOOL)presentContextMenuForAccessibility;
- (TUIControlView)initWithFrame:(CGRect)a3;
- (id)_contextMenuConfigurationForPoint:(CGPoint)a3;
- (id)_pointerTargetViewWithRefId:(id)a3;
- (id)accessibilityLabel;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)currentState;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_buttonPressed:(id)a3;
- (void)_cleanUp;
- (void)_selectGesture:(id)a3;
- (void)_showContextMenu:(id)a3;
- (void)_updateHoverActive;
- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)didUpdateSubviews;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)loadControlIfNeeded;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)prepareForReuse;
- (void)renderModelUpdated;
- (void)tui_handleContextMenuKey:(id)a3;
- (void)tui_handleSelectKey:(id)a3;
- (void)viewDidEndDisplay;
@end

@implementation TUIControlView

- (TUIControlView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUIControlView;
  result = [(TUIControlView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_cachedDynamicMenuDataLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)renderModelWithStateToButtonAttributes:(id)a3 stateToRenderModel:(id)a4 imageModelIDToResource:(id)a5 actionHandler:(id)a6 viewState:(id)a7 linkEntities:(id)a8 type:(unint64_t)a9 role:(unint64_t)a10 userInterfaceStyle:(unint64_t)a11 enabled:(BOOL)a12 pressScale:(double)a13 touchInsets:(UIEdgeInsets)a14 identifier:(id)a15 style:(id)a16 pointer:(id)a17 focusStyle:(id)a18 menu:(id)a19 contextMenuIsPrimaryAction:(BOOL)a20 name:(id)a21 axAttributes:(id)a22 enableBackgroundForHighlightPreview:(BOOL)a23 enableShadowForHighlightPreview:(BOOL)a24
{
  right = a14.right;
  bottom = a14.bottom;
  left = a14.left;
  top = a14.top;
  v44 = a22;
  v41 = a21;
  v40 = a19;
  v30 = a18;
  v31 = a17;
  v43 = a16;
  v55 = a15;
  v39 = a8;
  v32 = a7;
  v46 = a6;
  v49 = a5;
  v51 = a4;
  v33 = a3;
  v34 = [TUIRenderModelButton alloc];
  v53 = [a1 tuiReuseIdentifier];
  LOWORD(v38) = __PAIR16__(a24, a23);
  LOBYTE(v37) = a20;
  LOBYTE(v36) = a12;
  v54 = [(TUIRenderModelButton *)v34 initWithReuseIdentifier:v53 identifier:v55 style:v43 stateToButtonAttributes:v33 stateToRenderModel:v51 imageModelIDToResource:v49 actionHandler:a13 viewState:top linkEntities:left type:bottom role:right userInterfaceStyle:v46 enabled:v32 pressScale:v39 touchInsets:a9 pointer:a10 focusStyle:a11 menu:v36 contextMenuIsPrimaryAction:v31 name:v30 axAttributes:v40 enableBackgroundForHighlightPreview:v37 enableShadowForHighlightPreview:v41, v44, v38];

  return v54;
}

- (void)dealloc
{
  v3 = [(TUIInteractiveBaseView *)self control];
  [v3 removeTarget:self action:"_buttonPressed:" forControlEvents:64];
  [v3 removeObserver:self forKeyPath:@"enabled"];
  [v3 removeObserver:self forKeyPath:@"highlighted"];
  v4 = [(TUIInteractiveBaseView *)self renderModel];
  v5 = [v4 imageModelIDToResource];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_183C78;
  v7[3] = &unk_25DD98;
  v7[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = TUIControlView;
  [(TUIControlView *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_2E5620 == a6)
  {
    if ([NSThread isMainThread:a3])
    {

      [(TUIInteractiveBaseView *)self updateFromState];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_183DB0;
      block[3] = &unk_25DE30;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TUIControlView;
    [(TUIControlView *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TUIInteractiveBaseView *)self control];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  if ((-[TUIControlView isHidden](self, "isHidden") & 1) != 0 || (-[TUIControlView alpha](self, "alpha"), v13 < 0.01) || (-[TUIInteractiveBaseView control](self, "control"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 pointInside:v7 withEvent:{v10, v12}], v14, !v15))
  {
    v19.receiver = self;
    v19.super_class = TUIControlView;
    v17 = [(TUIControlView *)&v19 hitTest:v7 withEvent:x, y];
  }

  else
  {
    v16 = [(TUIInteractiveBaseView *)self control];
    v17 = [v16 hitTest:v7 withEvent:{v10, v12}];
  }

  return v17;
}

- (void)renderModelUpdated
{
  v18.receiver = self;
  v18.super_class = TUIControlView;
  [(TUIInteractiveBaseView *)&v18 renderModelUpdated];
  focusHelper = self->_focusHelper;
  if (focusHelper)
  {
    v4 = [(TUIInteractiveBaseView *)self renderModel];
    v5 = [v4 focusStyle];
    [(TUIFocusStylingHelper *)focusHelper updateStyle:v5];
  }

  else
  {
    v6 = [TUIFocusStylingHelper alloc];
    v4 = [(TUIInteractiveBaseView *)self control];
    v5 = [(TUIInteractiveBaseView *)self renderModel];
    v7 = [v5 focusStyle];
    v8 = [(TUIFocusStylingHelper *)v6 initWithContainer:self reference:v4 style:v7];
    v9 = self->_focusHelper;
    self->_focusHelper = v8;
  }

  interactionHelper = self->_interactionHelper;
  if (!interactionHelper)
  {
    v11 = [[TUIInteractionsHelper alloc] initWithView:self];
    v12 = self->_interactionHelper;
    self->_interactionHelper = v11;

    interactionHelper = self->_interactionHelper;
  }

  v13 = [(TUIInteractiveBaseView *)self renderModel];
  v14 = [v13 linkEntities];
  [(TUIInteractionsHelper *)interactionHelper updateWithLinkEntities:v14];

  v15 = self->_interactionHelper;
  v16 = [(TUIReusableBaseView *)self feedControllerHost];
  v17 = [v16 interactionBuilder];
  [(TUIInteractionsHelper *)v15 updateInteractionsWithBuilder:v17];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIControlView;
  [(TUIInteractiveBaseView *)&v3 prepareForReuse];
  [(TUIControlView *)self _cleanUp];
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = TUIControlView;
  [(TUIInteractiveBaseView *)&v3 viewDidEndDisplay];
  [(TUIControlView *)self _cleanUp];
}

- (void)_cleanUp
{
  [(TUIFocusStylingHelper *)self->_focusHelper reset];
  focusHelper = self->_focusHelper;
  self->_focusHelper = 0;

  [(TUIInteractionsHelper *)self->_interactionHelper detachInteractions];
  interactionHelper = self->_interactionHelper;
  self->_interactionHelper = 0;

  if (self->_pointerInteraction)
  {
    v5 = [(TUIInteractiveBaseView *)self control];
    [v5 removeInteraction:self->_pointerInteraction];

    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_customContextMenuInteraction);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_customContextMenuInteraction);
    [(TUIControlView *)self removeInteraction:v8];

    objc_storeWeak(&self->_customContextMenuInteraction, 0);
  }

  if (self->_hoverGestureRecognizer)
  {
    [(TUIControlView *)self removeGestureRecognizer:?];
    hoverGestureRecognizer = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = 0;
  }

  if (self->_selectGestureRecognizer)
  {
    [(TUIControlView *)self removeGestureRecognizer:?];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = 0;
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 nextFocusedItem];

  if (v7 == self)
  {
    [(TUIFocusStylingHelper *)self->_focusHelper activateEffectWithAnimationCoordinator:v6];
  }

  else
  {
    v8 = [v9 previouslyFocusedItem];

    if (v8 == self)
    {
      [(TUIFocusStylingHelper *)self->_focusHelper deactivateEffectWithAnimationCoordinator:v6];
    }
  }
}

- (id)keyCommands
{
  v2 = [(TUIInteractiveBaseView *)self renderModel];
  v3 = [v2 actionHandler];
  v4 = [v3 keyCommands];

  return v4;
}

- (void)tui_handleSelectKey:(id)a3
{
  v5 = [(TUIInteractiveBaseView *)self renderModel];
  v4 = [v5 actionHandler];
  [v4 invoke:@"press" view:self];
}

- (void)tui_handleContextMenuKey:(id)a3
{
  v5 = [(TUIInteractiveBaseView *)self renderModel];
  v4 = [v5 actionHandler];
  [v4 invoke:@"context-menu" view:self];
}

- (id)currentState
{
  v3 = [(TUIInteractiveBaseView *)self control];
  v4 = [v3 isEnabled];

  v5 = [(TUIInteractiveBaseView *)self control];
  v6 = [v5 isHighlighted];

  v7 = [(TUIInteractiveBaseView *)self renderModel];
  v8 = [v7 pointer];
  v9 = [v8 refId];

  v10 = TUIElementStateHover;
  if (!self->_hoverActive)
  {
    if ([v9 length])
    {
      if (![(NSMutableSet *)self->_cursorEnteredIdentifiers containsObject:v9])
      {
        v10 = TUIElementStateDefault;
      }
    }

    else
    {
      v10 = TUIElementStateDefault;
    }
  }

  v11 = TUIElementStateDisabled;
  if (v4)
  {
    v11 = v10;
  }

  if (v6)
  {
    v11 = TUIElementStateHighlighted;
  }

  v12 = *v11;
  v13 = *v11;

  return v12;
}

- (void)didUpdateSubviews
{
  v3.receiver = self;
  v3.super_class = TUIControlView;
  [(TUIInteractiveBaseView *)&v3 didUpdateSubviews];
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
}

- (void)loadControlIfNeeded
{
  v55 = [(TUIInteractiveBaseView *)self control];
  if (!v55)
  {
    v3 = objc_opt_class();
    v4 = [(TUIInteractiveBaseView *)self renderModel];
    v5 = TUIDynamicCast(v3, v4);

    v55 = +[TUIUIKitButton buttonWithType:](TUIUIKitButton, "buttonWithType:", +[TUIControlView uiButtonTypeFromTUIButtonType:](TUIControlView, "uiButtonTypeFromTUIButtonType:", [v5 type]));
    [(TUIControlView *)self bounds];
    [v55 frameForAlignmentRect:?];
    [v55 setFrame:?];
    [v55 setEnabled:1];
    [v55 setAutoresizingMask:18];
    [v55 addTarget:self action:"_buttonPressed:" forControlEvents:64];
    [v55 addObserver:self forKeyPath:@"enabled" options:0 context:off_2E5620];
    [v55 addObserver:self forKeyPath:@"highlighted" options:0 context:off_2E5620];
    [v55 setTui_delegate:self];
    [(TUIControlView *)self addSubview:v55];
    [(TUIInteractiveBaseView *)self setControl:v55];
  }

  if (!self->_selectGestureRecognizer)
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_selectGesture:"];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = v6;

    [(UITapGestureRecognizer *)self->_selectGestureRecognizer setAllowedTouchTypes:&__NSArray0__struct];
    [(UITapGestureRecognizer *)self->_selectGestureRecognizer setAllowedPressTypes:&off_273388];
    [(TUIControlView *)self addGestureRecognizer:self->_selectGestureRecognizer];
  }

  if (_TUIDeviceHasInternalInstall())
  {
    v8 = [(TUIInteractiveBaseView *)self renderModel];
    if (v8)
    {
      v9 = v8;
      v10 = [(TUIInteractiveBaseView *)self renderModel];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        v21 = TUIRenderModelLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_19C074(self);
        }

        v22 = self;
        v23 = 0;
        v54 = v22;
        do
        {
          v24 = objc_opt_class();
          v25 = TUIDynamicCast(v24, v22);
          if (v25)
          {
            v26 = v25;
            v27 = objc_opt_class();
            v28 = [(TUIControlView *)v22 scrollingDelegate];
            v29 = TUIDynamicCast(v27, v28);

            if (v29)
            {
              break;
            }
          }

          v30 = objc_opt_class();
          v31 = TUIDynamicCast(v30, v22);
          v32 = TUIRenderModelLog();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
          if (v31)
          {
            if (v33)
            {
              v34 = [(TUIReusableBaseView *)v31 layoutAttributes];
              v35 = [v34 renderModel];
              *buf = 134218498;
              v59 = v23;
              v60 = 2112;
              v61 = v31;
              v62 = 2112;
              v63 = v35;
              _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "superview[%lu]: %@, renderModel=%@", buf, 0x20u);
            }
          }

          else if (v33)
          {
            *buf = 134218242;
            v59 = v23;
            v60 = 2112;
            v61 = v22;
            _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "superView[%lu]: %@ (not renderModel based)", buf, 0x16u);
          }

          ++v23;
          v36 = [(TUIControlView *)v22 superview];

          v22 = v36;
        }

        while (v36);
        v37 = objc_opt_class();
        v38 = TUIDynamicCast(v37, v22);
        v39 = TUIRenderModelLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_19C138(v38);
        }

        v40 = [NSException alloc];
        v56[0] = @"renderModel";
        v41 = [(TUIInteractiveBaseView *)v54 renderModel];
        v57[0] = v41;
        v56[1] = @"renderModelIdentifier";
        v42 = [(TUIInteractiveBaseView *)v54 renderModel];
        v43 = [v42 identifier];
        v44 = [v43 tui_identifierToString];
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = @"nil";
        }

        v57[1] = v46;
        v56[2] = @"renderModelReuseIdentifier";
        v47 = [(TUIInteractiveBaseView *)v54 renderModel];
        v48 = [v47 reuseIdentifier];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = @"nil";
        }

        v57[2] = v50;
        v51 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
        v52 = [v40 initWithName:@"InvalidRenderModel" reason:@"A renderModel of the wrong type is used" userInfo:v51];
        v53 = v52;

        objc_exception_throw(v52);
      }
    }
  }

  v12 = [(TUIInteractiveBaseView *)self renderModel];
  v13 = [v12 pointer];
  v14 = [v13 refId];
  v15 = [v14 length];

  pointerInteraction = self->_pointerInteraction;
  if (pointerInteraction)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 0;
  }

  if (v17)
  {
    if (pointerInteraction && !v15)
    {
      [v55 removeInteraction:?];
      v18 = self->_pointerInteraction;
      self->_pointerInteraction = 0;
    }
  }

  else
  {
    v19 = [[UIPointerInteraction alloc] initWithDelegate:self];
    v20 = self->_pointerInteraction;
    self->_pointerInteraction = v19;

    [v55 addInteraction:self->_pointerInteraction];
  }
}

- (BOOL)presentContextMenuForAccessibility
{
  v3 = [(TUIInteractiveBaseView *)self control];
  if ([v3 showsMenuAsPrimaryAction])
  {
    WeakRetained = [v3 contextMenuInteraction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_customContextMenuInteraction);
  }

  v5 = WeakRetained;
  if (WeakRetained)
  {
    [v3 accessibilityActivationPoint];
    [v5 _presentMenuAtLocation:?];
  }

  return v5 != 0;
}

- (void)_updateHoverActive
{
  v3 = [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer state]- 1 < &dword_0 + 2;
  if (self->_hoverActive != v3)
  {
    self->_hoverActive = v3;

    [(TUIInteractiveBaseView *)self updateFromState];
  }
}

- (void)configureWithModel:(id)a3 outsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = [(TUIInteractiveBaseView *)self renderModel];
  v12 = TUIDynamicCast(v10, v11);

  v13 = objc_opt_class();
  v14 = TUIDynamicCast(v13, v9);
  v15 = [(TUIInteractiveBaseView *)self control];
  v16 = [v15 buttonType];

  if (v16 != +[TUIControlView uiButtonTypeFromTUIButtonType:](TUIControlView, "uiButtonTypeFromTUIButtonType:", [v14 type]))
  {
    v17 = [(TUIInteractiveBaseView *)self control];
    [v17 removeFromSuperview];

    if (self->_pointerInteraction)
    {
      v18 = [(TUIInteractiveBaseView *)self control];
      [v18 removeInteraction:self->_pointerInteraction];

      pointerInteraction = self->_pointerInteraction;
      self->_pointerInteraction = 0;
    }

    [(TUIInteractiveBaseView *)self setControl:0];
  }

  v20 = [v14 stateToModel];
  v21 = [v20 objectForKeyedSubscript:@"hover"];

  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  if (v21)
  {
    if (!hoverGestureRecognizer)
    {
      v23 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"_hoverGesture:"];
      v24 = self->_hoverGestureRecognizer;
      self->_hoverGestureRecognizer = v23;

      [(TUIControlView *)self addGestureRecognizer:self->_hoverGestureRecognizer];
LABEL_10:
      self->_hoverActive = 0;
    }
  }

  else if (hoverGestureRecognizer)
  {
    [(TUIControlView *)self removeGestureRecognizer:?];
    v25 = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = 0;

    goto LABEL_10;
  }

  v104.receiver = self;
  v104.super_class = TUIControlView;
  [(TUIInteractiveBaseView *)&v104 configureWithModel:v9 outsets:top, left, bottom, right];
  if (v12 == v14 || ([v12 isEqualToRenderModel:v14] & 1) != 0)
  {
    goto LABEL_36;
  }

  v96 = v12;
  v97 = v9;
  v26 = +[TUIControlView uiButtonRoleFromTUIButtonRole:](TUIControlView, "uiButtonRoleFromTUIButtonRole:", [v14 role]);
  v27 = [(TUIInteractiveBaseView *)self control];
  [v27 setRole:v26];

  -[TUIControlView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", +[TUIControlView uiUserInterfaceStyleFromTUIUserInterfaceStyle:](TUIControlView, "uiUserInterfaceStyleFromTUIUserInterfaceStyle:", [v14 userInterfaceStyle]));
  [v14 touchInsets];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(TUIInteractiveBaseView *)self control];
  [v36 setTouchInsets:{v29, v31, v33, v35}];

  v37 = [v14 axAttributes];
  v38 = [v37 axLabel];
  v39 = [(TUIInteractiveBaseView *)self control];
  [v39 setAccessibilityLabel:v38];

  v40 = [v14 axAttributes];
  v41 = [v40 axValue];
  v42 = [(TUIInteractiveBaseView *)self control];
  [v42 setAccessibilityValue:v41];

  v43 = [v14 axAttributes];
  v44 = [v43 axHint];
  v45 = [(TUIInteractiveBaseView *)self control];
  [v45 setAccessibilityHint:v44];

  v46 = [v14 axAttributes];
  v47 = [v46 axIdentifier];
  v48 = [(TUIInteractiveBaseView *)self control];
  [v48 setAccessibilityIdentifier:v47];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v105[0] = @"default";
  v105[1] = @"highlighted";
  v105[2] = @"disabled";
  v49 = [NSArray arrayWithObjects:v105 count:3];
  v50 = [v49 countByEnumeratingWithState:&v100 objects:v106 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v101;
    do
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v101 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v100 + 1) + 8 * i);
        v55 = [TUIControlView uiControlStateFromTUIElementState:v54];
        v56 = [v14 stateToButtonAttributes];
        v57 = [v56 objectForKeyedSubscript:v54];

        v58 = [(TUIInteractiveBaseView *)self control];
        v59 = [v57 image];
        [v58 setImage:v59 forState:v55];

        v60 = [(TUIInteractiveBaseView *)self control];
        v61 = [v57 title];
        [v60 setAttributedTitle:v61 forState:v55];
      }

      v51 = [v49 countByEnumeratingWithState:&v100 objects:v106 count:16];
    }

    while (v51);
  }

  v62 = [v14 imageModelIDToResource];
  [v62 enumerateKeysAndObjectsUsingBlock:&stru_263908];

  v12 = v96;
  v63 = [v96 imageModelIDToResource];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_185630;
  v99[3] = &unk_25DD98;
  v99[4] = self;
  [v63 enumerateKeysAndObjectsUsingBlock:v99];

  v64 = [v14 imageModelIDToResource];
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_185684;
  v98[3] = &unk_25DD98;
  v98[4] = self;
  [v64 enumerateKeysAndObjectsUsingBlock:v98];

  v65 = [(TUIInteractiveBaseView *)self control];
  [(TUIControlView *)self bounds];
  [v65 frameForAlignmentRect:?];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = [(TUIInteractiveBaseView *)self control];
  [v74 setFrame:{v67, v69, v71, v73}];

  v75 = [(TUIInteractiveBaseView *)self renderModel];
  v76 = [v75 actionHandler];
  v77 = [v76 hasActionForTrigger:@"context-menu"];

  v78 = [v14 enabled];
  v79 = v78;
  if (!v77 || !v78)
  {
    v85 = [v14 menu];
    v86 = (v85 != 0) & v79;

    if (v86 == 1)
    {
      v84 = [v14 menu];
      v87 = [v14 imageModelIDToResource];
      [v84 loadImagesFromResourceMap:v87];

      v88 = [(TUIInteractiveBaseView *)self control];
      [v88 setTui_menu:v84];
    }

    else
    {
      v89 = [(TUIInteractiveBaseView *)self control];
      [v89 setContextMenuInteractionEnabled:0];

      v90 = [(TUIInteractiveBaseView *)self control];
      [v90 setShowsMenuAsPrimaryAction:0];

      v84 = [(TUIInteractiveBaseView *)self control];
      [v84 setTui_menu:0];
    }

    goto LABEL_27;
  }

  v80 = [v14 contextMenuIsPrimaryAction];
  v81 = [(TUIInteractiveBaseView *)self control];
  [v81 setTui_menu:0];

  v82 = [(TUIInteractiveBaseView *)self control];
  v83 = v82;
  if (v80)
  {
    [v82 setContextMenuInteractionEnabled:1];

    v84 = [(TUIInteractiveBaseView *)self control];
    [v84 setShowsMenuAsPrimaryAction:1];
LABEL_27:
    v91 = 0;
    goto LABEL_29;
  }

  [v82 setContextMenuInteractionEnabled:0];

  v84 = [(TUIInteractiveBaseView *)self control];
  [v84 setShowsMenuAsPrimaryAction:0];
  v91 = 1;
LABEL_29:
  v9 = v97;

  WeakRetained = objc_loadWeakRetained(&self->_customContextMenuInteraction);
  if (v91 && !WeakRetained)
  {
    v93 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
    [(TUIControlView *)self addInteraction:v93];
    objc_storeWeak(&self->_customContextMenuInteraction, v93);
  }

  v94 = objc_loadWeakRetained(&self->_customContextMenuInteraction);
  if (!v94)
  {
    LOBYTE(v91) = 1;
  }

  if ((v91 & 1) == 0)
  {
    v95 = objc_loadWeakRetained(&self->_customContextMenuInteraction);
    [(TUIControlView *)self removeInteraction:v95];

    objc_storeWeak(&self->_customContextMenuInteraction, 0);
  }

LABEL_36:
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_18572C;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)_pointerTargetViewWithRefId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TUIInteractiveBaseView *)self descendentViewWithRefId:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a4;
  if (self->_pointerInteraction == a3)
  {
    v9 = [(TUIInteractiveBaseView *)self renderModel];
    v10 = [v9 pointer];
    v11 = [v10 refId];

    v12 = [(TUIControlView *)self _pointerTargetViewWithRefId:v11];
    if (v12)
    {
      v13 = TUIProtocolCast(&OBJC_PROTOCOL___TUITouchInsetting, v12);
      v14 = v13;
      if (v13)
      {
        [v13 computedTouchInsets];
        top = v15;
        left = v17;
        bottom = v19;
        right = v21;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      [v12 bounds];
      [(TUIControlView *)self convertRect:v12 fromView:left + v23, top + v24, v25 - (right + left), v26 - (bottom + top)];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [v7 location];
      v52.x = v35;
      v52.y = v36;
      v53.origin.x = v28;
      v53.origin.y = v30;
      v53.size.width = v32;
      v53.size.height = v34;
      if (CGRectContainsPoint(v53, v52) && (-[TUIInteractiveBaseView control](self, "control"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v37 isEnabled], v37, v38))
      {
        [v12 bounds];
        [(TUIControlView *)self convertRect:v12 fromView:?];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v47 = [(TUIInteractiveBaseView *)self renderModel];
        v48 = [v47 pointer];
        v49 = [v48 refId];
        v8 = [UIPointerRegion regionWithRect:v49 identifier:v40, v42, v44, v46];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a4 identifier];
  v6 = [(TUIControlView *)self _pointerTargetViewWithRefId:v5];
  v7 = v6;
  if (v6)
  {
    v60 = v5;
    [(TUIControlView *)v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(TUIReusableBaseView *)self feedControllerHost];
    v17 = [v16 hostingContainerView];

    if (([(TUIControlView *)v7 isDescendantOfView:v17]& 1) == 0)
    {
      v18 = [(TUIReusableBaseView *)self feedControllerHost];
      v19 = [v18 hostingNavigationBar];

      if (([(TUIControlView *)v7 isDescendantOfView:v19]& 1) != 0)
      {
        v17 = v19;
      }

      else
      {
        v17 = [(TUIControlView *)v7 superview];
      }
    }

    v21 = v15;
    v22 = v13;
    v23 = v11;
    v24 = v9;
    if (v7 == self)
    {
      v25 = [(TUIControlView *)self superview];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v21 = v15;
      v22 = v13;
      v23 = v11;
      v24 = v9;
      if (isKindOfClass)
      {
        v27 = [(TUIControlView *)self superview];
        v28 = [v27 superview];
        v29 = [v28 superview];

        [(TUIControlView *)v7 convertRect:v29 toView:v9, v11, v13, v15];
        v31 = v30;
        v33 = v32;
        [v29 bounds];
        [v29 convertRect:v7 toView:{v31, 0.0, v33, CGRectGetHeight(v62)}];
        v24 = v34;
        v23 = v35;
        v22 = v36;
        v21 = v37;
      }
    }

    v58 = v22;
    v38 = v21;
    v63.origin.x = v9;
    v63.origin.y = v11;
    v63.size.width = v13;
    v63.size.height = v15;
    MidX = CGRectGetMidX(v63);
    v64.origin.x = v9;
    v64.origin.y = v11;
    v64.size.width = v13;
    v64.size.height = v15;
    [v17 convertPoint:v7 fromView:{MidX, CGRectGetMidY(v64)}];
    v59 = v17;
    v42 = [[UIPreviewTarget alloc] initWithContainer:v17 center:{v40, v41}];
    v43 = objc_alloc_init(UIPreviewParameters);
    v44 = [[UITargetedPreview alloc] initWithView:v7 parameters:v43 target:v42];
    v45 = [(TUIInteractiveBaseView *)self renderModel];
    v46 = [v45 pointer];
    v47 = [v46 style];
    v48 = [v47 pointerEffectWithPreview:v44];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = [UIPointerEffect effectWithPreview:v44];
    }

    v51 = v50;

    v52 = [(TUIInteractiveBaseView *)self renderModel];
    v53 = [v52 pointer];
    v54 = [v53 style];
    v55 = [v54 cursor];
    v56 = [v55 pointerShapeWithBounds:v44 preview:{v24, v23, v58, v38}];

    v20 = [UIPointerStyle styleWithEffect:v51 shape:v56];

    v5 = v60;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  cursorEnteredIdentifiers = self->_cursorEnteredIdentifiers;
  if (cursorEnteredIdentifiers)
  {
    if (([(NSMutableSet *)cursorEnteredIdentifiers containsObject:v8]& 1) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = objc_opt_new();
    v11 = self->_cursorEnteredIdentifiers;
    self->_cursorEnteredIdentifiers = v10;
  }

  [(NSMutableSet *)self->_cursorEnteredIdentifiers addObject:v8];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_186044;
  v12[3] = &unk_25DE30;
  v12[4] = self;
  [v7 addAnimations:v12];
LABEL_6:
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  cursorEnteredIdentifiers = self->_cursorEnteredIdentifiers;
  if (cursorEnteredIdentifiers && [(NSMutableSet *)cursorEnteredIdentifiers containsObject:v8])
  {
    v10 = [(NSMutableSet *)self->_cursorEnteredIdentifiers count];
    v11 = self->_cursorEnteredIdentifiers;
    if (v10 == &dword_0 + 1)
    {
      self->_cursorEnteredIdentifiers = 0;
    }

    else
    {
      [(NSMutableSet *)v11 removeObject:v8];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_186170;
    v12[3] = &unk_25DE30;
    v12[4] = self;
    [v7 addAnimations:v12];
  }
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TUIInteractiveBaseView *)self control];
  if ([v11 isStaticMenu])
  {
  }

  else
  {
    v12 = [(TUIInteractiveBaseView *)self control];
    v13 = [v12 tui_menu];

    if (!v13)
    {
      v14 = [(TUIReusableBaseView *)self feedControllerHost];
      v15 = [v14 contextMenuConfigurationProvider];
      [v15 contextMenuInteraction:v8 willDisplayMenuForConfiguration:v9];
      goto LABEL_5;
    }
  }

  v14 = [(TUIInteractiveBaseView *)self renderModel];
  v15 = [v14 actionHandler];
  [v15 invoke:@"menuPresent" view:self];
LABEL_5:

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_186330;
  v17[3] = &unk_25DCA0;
  v17[4] = self;
  v18 = v8;
  v16 = v8;
  [v10 addCompletion:v17];
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_alloc_init(UIPreviewParameters);
  v7 = [(TUIInteractiveBaseView *)self renderModel];
  v8 = [v7 enableBackgroundForHighlightPreview];

  if ((v8 & 1) == 0)
  {
    v9 = +[UIColor clearColor];
    [v6 setBackgroundColor:v9];
  }

  v10 = [(TUIInteractiveBaseView *)self renderModel];
  v11 = [v10 enableShadowForHighlightPreview];

  if ((v11 & 1) == 0)
  {
    v12 = +[UIBezierPath bezierPath];
    [v6 setShadowPath:v12];
  }

  v13 = [UITargetedPreview alloc];
  v14 = [(TUIInteractiveBaseView *)self control];
  v15 = [v13 initWithView:v14 parameters:v6];

  return v15;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v6 = objc_alloc_init(UIPreviewParameters);
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  v8 = +[UIBezierPath bezierPath];
  [v6 setShadowPath:v8];

  v9 = [UITargetedPreview alloc];
  v10 = [(TUIInteractiveBaseView *)self control];
  v11 = [v9 initWithView:v10 parameters:v6];

  return v11;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = [(TUIInteractiveBaseView *)self control];
  if ([v8 isStaticMenu])
  {

LABEL_4:
    v11 = [(TUIInteractiveBaseView *)self renderModel];
    v12 = [v11 actionHandler];
    [v12 invoke:@"menuDismiss" view:self];
    goto LABEL_5;
  }

  v9 = [(TUIInteractiveBaseView *)self control];
  v10 = [v9 tui_menu];

  if (v10)
  {
    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_cachedDynamicMenuDataLock);
  cachedDynamicMenuData = self->_cachedDynamicMenuData;
  self->_cachedDynamicMenuData = 0;
  v14 = cachedDynamicMenuData;

  os_unfair_lock_unlock(&self->_cachedDynamicMenuDataLock);
  v11 = [(TUIReusableBaseView *)self feedControllerHost];
  v12 = [v11 contextMenuConfigurationProvider];
  [v12 contextMenuInteraction:v15 willEndForConfiguration:v7 withData:v14];

LABEL_5:
}

- (id)accessibilityLabel
{
  v2 = [(TUIInteractiveBaseView *)self control];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_buttonPressed:(id)a3
{
  v5 = [(TUIInteractiveBaseView *)self renderModel];
  v4 = [v5 actionHandler];
  [v4 invoke:@"press" view:self];
}

- (void)_showContextMenu:(id)a3
{
  v5 = [(TUIInteractiveBaseView *)self renderModel];
  v4 = [v5 actionHandler];
  [v4 invoke:@"context-menu" view:self];
}

- (void)_selectGesture:(id)a3
{
  v5 = [(TUIInteractiveBaseView *)self renderModel];
  v4 = [v5 actionHandler];
  [v4 invoke:@"press" view:self];
}

+ (int64_t)uiButtonTypeFromTUIButtonType:(unint64_t)a3
{
  if (qword_2E68C0 != -1)
  {
    sub_19C1D8();
  }

  v4 = qword_2E68B8;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int64_t)uiButtonRoleFromTUIButtonRole:(unint64_t)a3
{
  if (qword_2E68D0 != -1)
  {
    sub_19C1EC();
  }

  v4 = qword_2E68C8;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)uiControlStateFromTUIElementState:(id)a3
{
  v3 = a3;
  if (qword_2E68E0 != -1)
  {
    sub_19C200();
  }

  v4 = [qword_2E68D8 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)uiUserInterfaceStyleFromTUIUserInterfaceStyle:(unint64_t)a3
{
  if (qword_2E68F0 != -1)
  {
    sub_19C214();
  }

  v4 = qword_2E68E8;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_contextMenuConfigurationForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TUIInteractiveBaseView *)self renderModel];
  v7 = [v6 actionHandler];
  v8 = [v7 hasActionForTrigger:@"context-menu"];

  if (v8 && (-[TUIReusableBaseView feedControllerHost](self, "feedControllerHost"), v9 = objc_claimAutoreleasedReturnValue(), [v9 contextMenuConfigurationProvider], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_18725C;
    v16[3] = &unk_263A28;
    objc_copyWeak(v17, &location);
    v16[4] = self;
    v17[1] = *&x;
    v17[2] = *&y;
    [UIDeferredMenuElement elementWithUncachedProvider:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_187648;
    v11 = v14[3] = &unk_263848;
    v15 = v11;
    v12 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end