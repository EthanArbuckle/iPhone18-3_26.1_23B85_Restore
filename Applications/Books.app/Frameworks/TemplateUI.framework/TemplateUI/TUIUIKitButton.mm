@interface TUIUIKitButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (TUIButtonDelegate)tui_delegate;
- (UIEdgeInsets)computedTouchInsets;
- (UIEdgeInsets)touchInsets;
- (id)_accessibilityGetAXElementMatchFromArray:(id)array;
- (id)_accessibilityUnderlyingElementForFocusItem;
- (id)backgroundColor;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)menuDataDidUpdate;
- (void)setBackgroundColor:(id)color;
- (void)setTui_menu:(id)tui_menu;
@end

@implementation TUIUIKitButton

- (id)backgroundColor
{
  if ([(TUIUIKitButton *)self buttonType])
  {
    configuration = [(TUIUIKitButton *)self configuration];
    baseBackgroundColor = [configuration baseBackgroundColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUIUIKitButton;
    baseBackgroundColor = [(TUIUIKitButton *)&v6 backgroundColor];
  }

  return baseBackgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if ([(TUIUIKitButton *)self buttonType])
  {
    if (colorCopy)
    {
      configuration = [(TUIUIKitButton *)self configuration];
      v6 = configuration;
      if (configuration)
      {
        v7 = configuration;
      }

      else
      {
        v7 = +[UIButtonConfiguration filledButtonConfiguration];
      }

      v8 = v7;

      [v8 setBaseBackgroundColor:colorCopy];
      [(TUIUIKitButton *)self setConfiguration:v8];
    }

    else
    {
      [(TUIUIKitButton *)self setConfiguration:0];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIUIKitButton;
    [(TUIUIKitButton *)&v9 setBackgroundColor:colorCopy];
  }
}

- (void)setTui_menu:(id)tui_menu
{
  tui_menuCopy = tui_menu;
  tui_menu = self->_tui_menu;
  if (tui_menu != tui_menuCopy && ![(TUIMenuModel *)tui_menu isEqual:tui_menuCopy])
  {
    objc_storeStrong(&self->_tui_menu, tui_menu);
    isStaticMenu = [(TUIUIKitButton *)self isStaticMenu];
    v8 = self->_tui_menu;
    if (isStaticMenu)
    {
      newUIMenuElement = [(TUIMenuModel *)v8 newUIMenuElement];
      [(TUIUIKitButton *)self setMenu:newUIMenuElement];
    }

    else
    {
      [(TUIUIKitButton *)self setContextMenuInteractionEnabled:v8 != 0];
    }

    [(TUIUIKitButton *)self setShowsMenuAsPrimaryAction:[(TUIMenuModel *)self->_tui_menu isPrimary]];
    contextMenuInteraction = [(TUIUIKitButton *)self contextMenuInteraction];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_181130;
    v11[3] = &unk_263820;
    v12 = tui_menuCopy;
    [contextMenuInteraction updateVisibleMenuWithBlock:v11];
  }
}

- (void)menuDataDidUpdate
{
  if ([(TUIUIKitButton *)self isStaticMenu])
  {
    newUIMenuElement = [(TUIMenuModel *)self->_tui_menu newUIMenuElement];
    [(TUIUIKitButton *)self setMenu:newUIMenuElement];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  v8 = self->_tui_menu;
  if ([(TUIUIKitButton *)self isStaticMenu])
  {
    v14.receiver = self;
    v14.super_class = TUIUIKitButton;
    v9 = [(TUIUIKitButton *)&v14 contextMenuInteraction:interactionCopy configurationForMenuAtLocation:x, y];
  }

  else if (v8)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_181344;
    v12[3] = &unk_263848;
    v13 = v8;
    v9 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v12];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);
    v9 = [WeakRetained contextMenuConfigurationForButton:self point:{x, y}];
  }

  [v9 setPreferredMenuElementOrder:2];

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v12.receiver = self;
  v12.super_class = TUIUIKitButton;
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  [(TUIUIKitButton *)&v12 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);
  [WeakRetained button:self contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:{animatorCopy, v12.receiver, v12.super_class}];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v12.receiver = self;
  v12.super_class = TUIUIKitButton;
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  [(TUIUIKitButton *)&v12 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);
  [WeakRetained button:self contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:{animatorCopy, v12.receiver, v12.super_class}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = TUIUIKitButton;
  selfCopy = [(TUIUIKitButton *)&v17 hitTest:eventCopy withEvent:x, y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    gestureRecognizers = [(TUIUIKitButton *)selfCopy gestureRecognizers];
    if ([gestureRecognizers count])
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = [(TUIUIKitButton *)self pointInside:eventCopy withEvent:x, y];

    if (v10)
    {
      gestureRecognizers = selfCopy;
      selfCopy = self;
      goto LABEL_5;
    }
  }

LABEL_6:
  v11 = +[TUIDragController sharedInstance];
  v12 = objc_opt_class();
  v13 = TUIPlatformAncestorOfClassAndProtocol(self, v12, &OBJC_PROTOCOL___TUIReusableRenderView);
  v14 = [TUIDragController viewSupportsDrag:v13];
  if ([v11 isDragging] && v14)
  {
    v15 = v13;

    selfCopy = v15;
  }

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(TUIUIKitButton *)self computedTouchInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(TUIUIKitButton *)self bounds];
  v16 = v10 + v15;
  v18 = v8 + v17;
  v20 = v19 - (v10 + v14);
  v22 = v21 - (v8 + v12);
  v23 = x;
  v24 = y;

  return CGRectContainsPoint(*&v16, *&v23);
}

- (UIEdgeInsets)computedTouchInsets
{
  [(TUIUIKitButton *)self touchInsets];
  v7.f64[0] = v3;
  v7.f64[1] = v4;
  v8.f64[0] = v5;
  v8.f64[1] = v6;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&UIEdgeInsetsZero.top), vceqq_f64(v8, *&UIEdgeInsetsZero.bottom)))))
  {
    [(TUIUIKitButton *)self bounds];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v13 = fmax(44.0 - CGRectGetWidth(v14), 0.0);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v5 = fmax(44.0 - CGRectGetHeight(v15), 0.0) * -0.5;
    v6 = v13 * -0.5;
    v4 = v13 * -0.5;
    v3 = v5;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_accessibilityUnderlyingElementForFocusItem
{
  v3 = objc_opt_class();
  v4 = [(TUIUIKitButton *)self _accessibilityFindAncestor:&stru_263888 startWithSelf:0];
  _accessibilityViewController = [v4 _accessibilityViewController];
  v6 = TUIDynamicCast(v3, _accessibilityViewController);

  topLevelAXElement = [v6 topLevelAXElement];
  v8 = objc_opt_class();
  children = [topLevelAXElement children];
  v10 = TUIDynamicCast(v8, children);

  v11 = [(TUIUIKitButton *)self _accessibilityGetAXElementMatchFromArray:v10];
  v12 = v11;
  if (v11)
  {
    self = v11;
  }

  selfCopy = self;

  return self;
}

- (id)_accessibilityGetAXElementMatchFromArray:(id)array
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  arrayCopy = array;
  v5 = [arrayCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        if ([v9 isAccessibilityElement])
        {
          [(TUIUIKitButton *)self accessibilityFrame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          [v9 accessibilityFrame];
          if ([(TUIUIKitButton *)self _accessibilityRect:v11 equalToRect:v13, v15, v17, v18, v19, v20, v21])
          {
            v25 = v9;
            goto LABEL_13;
          }
        }

        else
        {
          v22 = objc_opt_class();
          children = [v9 children];
          v24 = TUIDynamicCast(v22, children);

          v25 = [(TUIUIKitButton *)self _accessibilityGetAXElementMatchFromArray:v24];

          if (v25)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v25 = 0;
LABEL_13:

  return v25;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TUIButtonDelegate)tui_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);

  return WeakRetained;
}

@end