@interface TUIControlView
+ (id)renderModelWithStateToButtonAttributes:(id)attributes stateToRenderModel:(id)model imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)state linkEntities:(id)entities type:(unint64_t)type role:(unint64_t)self0 userInterfaceStyle:(unint64_t)self1 enabled:(BOOL)self2 pressScale:(double)self3 touchInsets:(UIEdgeInsets)self4 identifier:(id)self5 style:(id)self6 pointer:(id)self7 focusStyle:(id)self8 menu:(id)self9 contextMenuIsPrimaryAction:(BOOL)action name:(id)name axAttributes:(id)axAttributes enableBackgroundForHighlightPreview:(BOOL)preview enableShadowForHighlightPreview:(BOOL)highlightPreview;
+ (int64_t)uiButtonRoleFromTUIButtonRole:(unint64_t)role;
+ (int64_t)uiButtonTypeFromTUIButtonType:(unint64_t)type;
+ (int64_t)uiUserInterfaceStyleFromTUIUserInterfaceStyle:(unint64_t)style;
+ (unint64_t)uiControlStateFromTUIElementState:(id)state;
- (BOOL)presentContextMenuForAccessibility;
- (TUIControlView)initWithFrame:(CGRect)frame;
- (id)_contextMenuConfigurationForPoint:(CGPoint)point;
- (id)_pointerTargetViewWithRefId:(id)id;
- (id)accessibilityLabel;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)currentState;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_buttonPressed:(id)pressed;
- (void)_cleanUp;
- (void)_selectGesture:(id)gesture;
- (void)_showContextMenu:(id)menu;
- (void)_updateHoverActive;
- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateSubviews;
- (void)imageResourceDidChangeImage:(id)image;
- (void)loadControlIfNeeded;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)prepareForReuse;
- (void)renderModelUpdated;
- (void)tui_handleContextMenuKey:(id)key;
- (void)tui_handleSelectKey:(id)key;
- (void)viewDidEndDisplay;
@end

@implementation TUIControlView

- (TUIControlView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TUIControlView;
  result = [(TUIControlView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_cachedDynamicMenuDataLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)renderModelWithStateToButtonAttributes:(id)attributes stateToRenderModel:(id)model imageModelIDToResource:(id)resource actionHandler:(id)handler viewState:(id)state linkEntities:(id)entities type:(unint64_t)type role:(unint64_t)self0 userInterfaceStyle:(unint64_t)self1 enabled:(BOOL)self2 pressScale:(double)self3 touchInsets:(UIEdgeInsets)self4 identifier:(id)self5 style:(id)self6 pointer:(id)self7 focusStyle:(id)self8 menu:(id)self9 contextMenuIsPrimaryAction:(BOOL)action name:(id)name axAttributes:(id)axAttributes enableBackgroundForHighlightPreview:(BOOL)preview enableShadowForHighlightPreview:(BOOL)highlightPreview
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  axAttributesCopy = axAttributes;
  nameCopy = name;
  menuCopy = menu;
  focusStyleCopy = focusStyle;
  pointerCopy = pointer;
  v43 = a16;
  identifierCopy = identifier;
  entitiesCopy = entities;
  stateCopy = state;
  handlerCopy = handler;
  resourceCopy = resource;
  modelCopy = model;
  attributesCopy = attributes;
  v34 = [TUIRenderModelButton alloc];
  tuiReuseIdentifier = [self tuiReuseIdentifier];
  LOWORD(v38) = __PAIR16__(highlightPreview, preview);
  LOBYTE(v37) = action;
  LOBYTE(v36) = enabled;
  v54 = [(TUIRenderModelButton *)v34 initWithReuseIdentifier:tuiReuseIdentifier identifier:identifierCopy style:v43 stateToButtonAttributes:attributesCopy stateToRenderModel:modelCopy imageModelIDToResource:resourceCopy actionHandler:scale viewState:top linkEntities:left type:bottom role:right userInterfaceStyle:handlerCopy enabled:stateCopy pressScale:entitiesCopy touchInsets:type pointer:role focusStyle:style menu:v36 contextMenuIsPrimaryAction:pointerCopy name:focusStyleCopy axAttributes:menuCopy enableBackgroundForHighlightPreview:v37 enableShadowForHighlightPreview:nameCopy, axAttributesCopy, v38];

  return v54;
}

- (void)dealloc
{
  control = [(TUIInteractiveBaseView *)self control];
  [control removeTarget:self action:"_buttonPressed:" forControlEvents:64];
  [control removeObserver:self forKeyPath:@"enabled"];
  [control removeObserver:self forKeyPath:@"highlighted"];
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  imageModelIDToResource = [renderModel imageModelIDToResource];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_183C78;
  v7[3] = &unk_25DD98;
  v7[4] = self;
  [imageModelIDToResource enumerateKeysAndObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = TUIControlView;
  [(TUIControlView *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_2E5620 == context)
  {
    if ([NSThread isMainThread:path])
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
    [(TUIControlView *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  control = [(TUIInteractiveBaseView *)self control];
  [control convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  if ((-[TUIControlView isHidden](self, "isHidden") & 1) != 0 || (-[TUIControlView alpha](self, "alpha"), v13 < 0.01) || (-[TUIInteractiveBaseView control](self, "control"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 pointInside:eventCopy withEvent:{v10, v12}], v14, !v15))
  {
    v19.receiver = self;
    v19.super_class = TUIControlView;
    v17 = [(TUIControlView *)&v19 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    control2 = [(TUIInteractiveBaseView *)self control];
    v17 = [control2 hitTest:eventCopy withEvent:{v10, v12}];
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
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    focusStyle = [renderModel focusStyle];
    [(TUIFocusStylingHelper *)focusHelper updateStyle:focusStyle];
  }

  else
  {
    v6 = [TUIFocusStylingHelper alloc];
    renderModel = [(TUIInteractiveBaseView *)self control];
    focusStyle = [(TUIInteractiveBaseView *)self renderModel];
    v5FocusStyle = [focusStyle focusStyle];
    v8 = [(TUIFocusStylingHelper *)v6 initWithContainer:self reference:renderModel style:v5FocusStyle];
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

  renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
  linkEntities = [renderModel2 linkEntities];
  [(TUIInteractionsHelper *)interactionHelper updateWithLinkEntities:linkEntities];

  v15 = self->_interactionHelper;
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  interactionBuilder = [feedControllerHost interactionBuilder];
  [(TUIInteractionsHelper *)v15 updateInteractionsWithBuilder:interactionBuilder];
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
    control = [(TUIInteractiveBaseView *)self control];
    [control removeInteraction:self->_pointerInteraction];

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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    [(TUIFocusStylingHelper *)self->_focusHelper activateEffectWithAnimationCoordinator:coordinatorCopy];
  }

  else
  {
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];

    if (previouslyFocusedItem == self)
    {
      [(TUIFocusStylingHelper *)self->_focusHelper deactivateEffectWithAnimationCoordinator:coordinatorCopy];
    }
  }
}

- (id)keyCommands
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  keyCommands = [actionHandler keyCommands];

  return keyCommands;
}

- (void)tui_handleSelectKey:(id)key
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"press" view:self];
}

- (void)tui_handleContextMenuKey:(id)key
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"context-menu" view:self];
}

- (id)currentState
{
  control = [(TUIInteractiveBaseView *)self control];
  isEnabled = [control isEnabled];

  control2 = [(TUIInteractiveBaseView *)self control];
  isHighlighted = [control2 isHighlighted];

  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  pointer = [renderModel pointer];
  refId = [pointer refId];

  v10 = TUIElementStateHover;
  if (!self->_hoverActive)
  {
    if ([refId length])
    {
      if (![(NSMutableSet *)self->_cursorEnteredIdentifiers containsObject:refId])
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
  if (isEnabled)
  {
    v11 = v10;
  }

  if (isHighlighted)
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
  control = [(TUIInteractiveBaseView *)self control];
  if (!control)
  {
    v3 = objc_opt_class();
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    v5 = TUIDynamicCast(v3, renderModel);

    control = +[TUIUIKitButton buttonWithType:](TUIUIKitButton, "buttonWithType:", +[TUIControlView uiButtonTypeFromTUIButtonType:](TUIControlView, "uiButtonTypeFromTUIButtonType:", [v5 type]));
    [(TUIControlView *)self bounds];
    [control frameForAlignmentRect:?];
    [control setFrame:?];
    [control setEnabled:1];
    [control setAutoresizingMask:18];
    [control addTarget:self action:"_buttonPressed:" forControlEvents:64];
    [control addObserver:self forKeyPath:@"enabled" options:0 context:off_2E5620];
    [control addObserver:self forKeyPath:@"highlighted" options:0 context:off_2E5620];
    [control setTui_delegate:self];
    [(TUIControlView *)self addSubview:control];
    [(TUIInteractiveBaseView *)self setControl:control];
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
    renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
    if (renderModel2)
    {
      v9 = renderModel2;
      renderModel3 = [(TUIInteractiveBaseView *)self renderModel];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        v21 = TUIRenderModelLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_19C074(self);
        }

        selfCopy = self;
        v23 = 0;
        v54 = selfCopy;
        do
        {
          v24 = objc_opt_class();
          v25 = TUIDynamicCast(v24, selfCopy);
          if (v25)
          {
            v26 = v25;
            v27 = objc_opt_class();
            scrollingDelegate = [(TUIControlView *)selfCopy scrollingDelegate];
            v29 = TUIDynamicCast(v27, scrollingDelegate);

            if (v29)
            {
              break;
            }
          }

          v30 = objc_opt_class();
          v31 = TUIDynamicCast(v30, selfCopy);
          v32 = TUIRenderModelLog();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
          if (v31)
          {
            if (v33)
            {
              layoutAttributes = [(TUIReusableBaseView *)v31 layoutAttributes];
              renderModel4 = [layoutAttributes renderModel];
              *buf = 134218498;
              v59 = v23;
              v60 = 2112;
              v61 = v31;
              v62 = 2112;
              v63 = renderModel4;
              _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "superview[%lu]: %@, renderModel=%@", buf, 0x20u);
            }
          }

          else if (v33)
          {
            *buf = 134218242;
            v59 = v23;
            v60 = 2112;
            v61 = selfCopy;
            _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "superView[%lu]: %@ (not renderModel based)", buf, 0x16u);
          }

          ++v23;
          superview = [(TUIControlView *)selfCopy superview];

          selfCopy = superview;
        }

        while (superview);
        v37 = objc_opt_class();
        v38 = TUIDynamicCast(v37, selfCopy);
        v39 = TUIRenderModelLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_19C138(v38);
        }

        v40 = [NSException alloc];
        v56[0] = @"renderModel";
        renderModel5 = [(TUIInteractiveBaseView *)v54 renderModel];
        v57[0] = renderModel5;
        v56[1] = @"renderModelIdentifier";
        renderModel6 = [(TUIInteractiveBaseView *)v54 renderModel];
        identifier = [renderModel6 identifier];
        tui_identifierToString = [identifier tui_identifierToString];
        v45 = tui_identifierToString;
        if (tui_identifierToString)
        {
          v46 = tui_identifierToString;
        }

        else
        {
          v46 = @"nil";
        }

        v57[1] = v46;
        v56[2] = @"renderModelReuseIdentifier";
        renderModel7 = [(TUIInteractiveBaseView *)v54 renderModel];
        reuseIdentifier = [renderModel7 reuseIdentifier];
        v49 = reuseIdentifier;
        if (reuseIdentifier)
        {
          v50 = reuseIdentifier;
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

  renderModel8 = [(TUIInteractiveBaseView *)self renderModel];
  pointer = [renderModel8 pointer];
  refId = [pointer refId];
  v15 = [refId length];

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
      [control removeInteraction:?];
      v18 = self->_pointerInteraction;
      self->_pointerInteraction = 0;
    }
  }

  else
  {
    v19 = [[UIPointerInteraction alloc] initWithDelegate:self];
    v20 = self->_pointerInteraction;
    self->_pointerInteraction = v19;

    [control addInteraction:self->_pointerInteraction];
  }
}

- (BOOL)presentContextMenuForAccessibility
{
  control = [(TUIInteractiveBaseView *)self control];
  if ([control showsMenuAsPrimaryAction])
  {
    WeakRetained = [control contextMenuInteraction];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_customContextMenuInteraction);
  }

  v5 = WeakRetained;
  if (WeakRetained)
  {
    [control accessibilityActivationPoint];
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

- (void)configureWithModel:(id)model outsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  modelCopy = model;
  v10 = objc_opt_class();
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  v12 = TUIDynamicCast(v10, renderModel);

  v13 = objc_opt_class();
  v14 = TUIDynamicCast(v13, modelCopy);
  control = [(TUIInteractiveBaseView *)self control];
  buttonType = [control buttonType];

  if (buttonType != +[TUIControlView uiButtonTypeFromTUIButtonType:](TUIControlView, "uiButtonTypeFromTUIButtonType:", [v14 type]))
  {
    control2 = [(TUIInteractiveBaseView *)self control];
    [control2 removeFromSuperview];

    if (self->_pointerInteraction)
    {
      control3 = [(TUIInteractiveBaseView *)self control];
      [control3 removeInteraction:self->_pointerInteraction];

      pointerInteraction = self->_pointerInteraction;
      self->_pointerInteraction = 0;
    }

    [(TUIInteractiveBaseView *)self setControl:0];
  }

  stateToModel = [v14 stateToModel];
  v21 = [stateToModel objectForKeyedSubscript:@"hover"];

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
  [(TUIInteractiveBaseView *)&v104 configureWithModel:modelCopy outsets:top, left, bottom, right];
  if (v12 == v14 || ([v12 isEqualToRenderModel:v14] & 1) != 0)
  {
    goto LABEL_36;
  }

  v96 = v12;
  v97 = modelCopy;
  v26 = +[TUIControlView uiButtonRoleFromTUIButtonRole:](TUIControlView, "uiButtonRoleFromTUIButtonRole:", [v14 role]);
  control4 = [(TUIInteractiveBaseView *)self control];
  [control4 setRole:v26];

  -[TUIControlView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", +[TUIControlView uiUserInterfaceStyleFromTUIUserInterfaceStyle:](TUIControlView, "uiUserInterfaceStyleFromTUIUserInterfaceStyle:", [v14 userInterfaceStyle]));
  [v14 touchInsets];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  control5 = [(TUIInteractiveBaseView *)self control];
  [control5 setTouchInsets:{v29, v31, v33, v35}];

  axAttributes = [v14 axAttributes];
  axLabel = [axAttributes axLabel];
  control6 = [(TUIInteractiveBaseView *)self control];
  [control6 setAccessibilityLabel:axLabel];

  axAttributes2 = [v14 axAttributes];
  axValue = [axAttributes2 axValue];
  control7 = [(TUIInteractiveBaseView *)self control];
  [control7 setAccessibilityValue:axValue];

  axAttributes3 = [v14 axAttributes];
  axHint = [axAttributes3 axHint];
  control8 = [(TUIInteractiveBaseView *)self control];
  [control8 setAccessibilityHint:axHint];

  axAttributes4 = [v14 axAttributes];
  axIdentifier = [axAttributes4 axIdentifier];
  control9 = [(TUIInteractiveBaseView *)self control];
  [control9 setAccessibilityIdentifier:axIdentifier];

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
        stateToButtonAttributes = [v14 stateToButtonAttributes];
        v57 = [stateToButtonAttributes objectForKeyedSubscript:v54];

        control10 = [(TUIInteractiveBaseView *)self control];
        image = [v57 image];
        [control10 setImage:image forState:v55];

        control11 = [(TUIInteractiveBaseView *)self control];
        title = [v57 title];
        [control11 setAttributedTitle:title forState:v55];
      }

      v51 = [v49 countByEnumeratingWithState:&v100 objects:v106 count:16];
    }

    while (v51);
  }

  imageModelIDToResource = [v14 imageModelIDToResource];
  [imageModelIDToResource enumerateKeysAndObjectsUsingBlock:&stru_263908];

  v12 = v96;
  imageModelIDToResource2 = [v96 imageModelIDToResource];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_185630;
  v99[3] = &unk_25DD98;
  v99[4] = self;
  [imageModelIDToResource2 enumerateKeysAndObjectsUsingBlock:v99];

  imageModelIDToResource3 = [v14 imageModelIDToResource];
  v98[0] = _NSConcreteStackBlock;
  v98[1] = 3221225472;
  v98[2] = sub_185684;
  v98[3] = &unk_25DD98;
  v98[4] = self;
  [imageModelIDToResource3 enumerateKeysAndObjectsUsingBlock:v98];

  control12 = [(TUIInteractiveBaseView *)self control];
  [(TUIControlView *)self bounds];
  [control12 frameForAlignmentRect:?];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  control13 = [(TUIInteractiveBaseView *)self control];
  [control13 setFrame:{v67, v69, v71, v73}];

  renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel2 actionHandler];
  v77 = [actionHandler hasActionForTrigger:@"context-menu"];

  enabled = [v14 enabled];
  v79 = enabled;
  if (!v77 || !enabled)
  {
    menu = [v14 menu];
    v86 = (menu != 0) & v79;

    if (v86 == 1)
    {
      menu2 = [v14 menu];
      imageModelIDToResource4 = [v14 imageModelIDToResource];
      [menu2 loadImagesFromResourceMap:imageModelIDToResource4];

      control14 = [(TUIInteractiveBaseView *)self control];
      [control14 setTui_menu:menu2];
    }

    else
    {
      control15 = [(TUIInteractiveBaseView *)self control];
      [control15 setContextMenuInteractionEnabled:0];

      control16 = [(TUIInteractiveBaseView *)self control];
      [control16 setShowsMenuAsPrimaryAction:0];

      menu2 = [(TUIInteractiveBaseView *)self control];
      [menu2 setTui_menu:0];
    }

    goto LABEL_27;
  }

  contextMenuIsPrimaryAction = [v14 contextMenuIsPrimaryAction];
  control17 = [(TUIInteractiveBaseView *)self control];
  [control17 setTui_menu:0];

  control18 = [(TUIInteractiveBaseView *)self control];
  v83 = control18;
  if (contextMenuIsPrimaryAction)
  {
    [control18 setContextMenuInteractionEnabled:1];

    menu2 = [(TUIInteractiveBaseView *)self control];
    [menu2 setShowsMenuAsPrimaryAction:1];
LABEL_27:
    v91 = 0;
    goto LABEL_29;
  }

  [control18 setContextMenuInteractionEnabled:0];

  menu2 = [(TUIInteractiveBaseView *)self control];
  [menu2 setShowsMenuAsPrimaryAction:0];
  v91 = 1;
LABEL_29:
  modelCopy = v97;

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

- (void)imageResourceDidChangeImage:(id)image
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_18572C;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  imageCopy = image;
  v3 = imageCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)_pointerTargetViewWithRefId:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v5 = [(TUIInteractiveBaseView *)self descendentViewWithRefId:idCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  if (self->_pointerInteraction == interaction)
  {
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    pointer = [renderModel pointer];
    refId = [pointer refId];

    v12 = [(TUIControlView *)self _pointerTargetViewWithRefId:refId];
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
      [requestCopy location];
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
        renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
        pointer2 = [renderModel2 pointer];
        refId2 = [pointer2 refId];
        v8 = [UIPointerRegion regionWithRect:refId2 identifier:v40, v42, v44, v46];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  v6 = [(TUIControlView *)self _pointerTargetViewWithRefId:identifier];
  v7 = v6;
  if (v6)
  {
    v60 = identifier;
    [(TUIControlView *)v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    hostingContainerView = [feedControllerHost hostingContainerView];

    if (([(TUIControlView *)v7 isDescendantOfView:hostingContainerView]& 1) == 0)
    {
      feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
      hostingNavigationBar = [feedControllerHost2 hostingNavigationBar];

      if (([(TUIControlView *)v7 isDescendantOfView:hostingNavigationBar]& 1) != 0)
      {
        hostingContainerView = hostingNavigationBar;
      }

      else
      {
        hostingContainerView = [(TUIControlView *)v7 superview];
      }
    }

    v21 = v15;
    v22 = v13;
    v23 = v11;
    v24 = v9;
    if (v7 == self)
    {
      superview = [(TUIControlView *)self superview];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v21 = v15;
      v22 = v13;
      v23 = v11;
      v24 = v9;
      if (isKindOfClass)
      {
        superview2 = [(TUIControlView *)self superview];
        v27Superview = [superview2 superview];
        v28Superview = [v27Superview superview];

        [(TUIControlView *)v7 convertRect:v28Superview toView:v9, v11, v13, v15];
        v31 = v30;
        v33 = v32;
        [v28Superview bounds];
        [v28Superview convertRect:v7 toView:{v31, 0.0, v33, CGRectGetHeight(v62)}];
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
    [hostingContainerView convertPoint:v7 fromView:{MidX, CGRectGetMidY(v64)}];
    v59 = hostingContainerView;
    v42 = [[UIPreviewTarget alloc] initWithContainer:hostingContainerView center:{v40, v41}];
    v43 = objc_alloc_init(UIPreviewParameters);
    v44 = [[UITargetedPreview alloc] initWithView:v7 parameters:v43 target:v42];
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    pointer = [renderModel pointer];
    style = [pointer style];
    v48 = [style pointerEffectWithPreview:v44];
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

    renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
    pointer2 = [renderModel2 pointer];
    style2 = [pointer2 style];
    cursor = [style2 cursor];
    v56 = [cursor pointerShapeWithBounds:v44 preview:{v24, v23, v58, v38}];

    v20 = [UIPointerStyle styleWithEffect:v51 shape:v56];

    identifier = v60;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  identifier = [region identifier];
  cursorEnteredIdentifiers = self->_cursorEnteredIdentifiers;
  if (cursorEnteredIdentifiers)
  {
    if (([(NSMutableSet *)cursorEnteredIdentifiers containsObject:identifier]& 1) != 0)
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

  [(NSMutableSet *)self->_cursorEnteredIdentifiers addObject:identifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_186044;
  v12[3] = &unk_25DE30;
  v12[4] = self;
  [animatorCopy addAnimations:v12];
LABEL_6:
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  identifier = [region identifier];
  cursorEnteredIdentifiers = self->_cursorEnteredIdentifiers;
  if (cursorEnteredIdentifiers && [(NSMutableSet *)cursorEnteredIdentifiers containsObject:identifier])
  {
    v10 = [(NSMutableSet *)self->_cursorEnteredIdentifiers count];
    v11 = self->_cursorEnteredIdentifiers;
    if (v10 == &dword_0 + 1)
    {
      self->_cursorEnteredIdentifiers = 0;
    }

    else
    {
      [(NSMutableSet *)v11 removeObject:identifier];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_186170;
    v12[3] = &unk_25DE30;
    v12[4] = self;
    [animatorCopy addAnimations:v12];
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  control = [(TUIInteractiveBaseView *)self control];
  if ([control isStaticMenu])
  {
  }

  else
  {
    control2 = [(TUIInteractiveBaseView *)self control];
    tui_menu = [control2 tui_menu];

    if (!tui_menu)
    {
      feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
      contextMenuConfigurationProvider = [feedControllerHost contextMenuConfigurationProvider];
      [contextMenuConfigurationProvider contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy];
      goto LABEL_5;
    }
  }

  feedControllerHost = [(TUIInteractiveBaseView *)self renderModel];
  contextMenuConfigurationProvider = [feedControllerHost actionHandler];
  [contextMenuConfigurationProvider invoke:@"menuPresent" view:self];
LABEL_5:

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_186330;
  v17[3] = &unk_25DCA0;
  v17[4] = self;
  v18 = interactionCopy;
  v16 = interactionCopy;
  [animatorCopy addCompletion:v17];
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_alloc_init(UIPreviewParameters);
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  enableBackgroundForHighlightPreview = [renderModel enableBackgroundForHighlightPreview];

  if ((enableBackgroundForHighlightPreview & 1) == 0)
  {
    v9 = +[UIColor clearColor];
    [v6 setBackgroundColor:v9];
  }

  renderModel2 = [(TUIInteractiveBaseView *)self renderModel];
  enableShadowForHighlightPreview = [renderModel2 enableShadowForHighlightPreview];

  if ((enableShadowForHighlightPreview & 1) == 0)
  {
    v12 = +[UIBezierPath bezierPath];
    [v6 setShadowPath:v12];
  }

  v13 = [UITargetedPreview alloc];
  control = [(TUIInteractiveBaseView *)self control];
  v15 = [v13 initWithView:control parameters:v6];

  return v15;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  v6 = objc_alloc_init(UIPreviewParameters);
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  v8 = +[UIBezierPath bezierPath];
  [v6 setShadowPath:v8];

  v9 = [UITargetedPreview alloc];
  control = [(TUIInteractiveBaseView *)self control];
  v11 = [v9 initWithView:control parameters:v6];

  return v11;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  control = [(TUIInteractiveBaseView *)self control];
  if ([control isStaticMenu])
  {

LABEL_4:
    renderModel = [(TUIInteractiveBaseView *)self renderModel];
    actionHandler = [renderModel actionHandler];
    [actionHandler invoke:@"menuDismiss" view:self];
    goto LABEL_5;
  }

  control2 = [(TUIInteractiveBaseView *)self control];
  tui_menu = [control2 tui_menu];

  if (tui_menu)
  {
    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_cachedDynamicMenuDataLock);
  cachedDynamicMenuData = self->_cachedDynamicMenuData;
  self->_cachedDynamicMenuData = 0;
  v14 = cachedDynamicMenuData;

  os_unfair_lock_unlock(&self->_cachedDynamicMenuDataLock);
  renderModel = [(TUIReusableBaseView *)self feedControllerHost];
  actionHandler = [renderModel contextMenuConfigurationProvider];
  [actionHandler contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy withData:v14];

LABEL_5:
}

- (id)accessibilityLabel
{
  control = [(TUIInteractiveBaseView *)self control];
  accessibilityLabel = [control accessibilityLabel];

  return accessibilityLabel;
}

- (void)_buttonPressed:(id)pressed
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"press" view:self];
}

- (void)_showContextMenu:(id)menu
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"context-menu" view:self];
}

- (void)_selectGesture:(id)gesture
{
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  [actionHandler invoke:@"press" view:self];
}

+ (int64_t)uiButtonTypeFromTUIButtonType:(unint64_t)type
{
  if (qword_2E68C0 != -1)
  {
    sub_19C1D8();
  }

  v4 = qword_2E68B8;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (int64_t)uiButtonRoleFromTUIButtonRole:(unint64_t)role
{
  if (qword_2E68D0 != -1)
  {
    sub_19C1EC();
  }

  v4 = qword_2E68C8;
  v5 = [NSNumber numberWithUnsignedInteger:role];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (unint64_t)uiControlStateFromTUIElementState:(id)state
{
  stateCopy = state;
  if (qword_2E68E0 != -1)
  {
    sub_19C200();
  }

  v4 = [qword_2E68D8 objectForKeyedSubscript:stateCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (int64_t)uiUserInterfaceStyleFromTUIUserInterfaceStyle:(unint64_t)style
{
  if (qword_2E68F0 != -1)
  {
    sub_19C214();
  }

  v4 = qword_2E68E8;
  v5 = [NSNumber numberWithUnsignedInteger:style];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)_contextMenuConfigurationForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  renderModel = [(TUIInteractiveBaseView *)self renderModel];
  actionHandler = [renderModel actionHandler];
  v8 = [actionHandler hasActionForTrigger:@"context-menu"];

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