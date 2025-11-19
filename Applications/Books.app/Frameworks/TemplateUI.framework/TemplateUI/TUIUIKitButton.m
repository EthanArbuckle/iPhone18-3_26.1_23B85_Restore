@interface TUIUIKitButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (TUIButtonDelegate)tui_delegate;
- (UIEdgeInsets)computedTouchInsets;
- (UIEdgeInsets)touchInsets;
- (id)_accessibilityGetAXElementMatchFromArray:(id)a3;
- (id)_accessibilityUnderlyingElementForFocusItem;
- (id)backgroundColor;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)menuDataDidUpdate;
- (void)setBackgroundColor:(id)a3;
- (void)setTui_menu:(id)a3;
@end

@implementation TUIUIKitButton

- (id)backgroundColor
{
  if ([(TUIUIKitButton *)self buttonType])
  {
    v3 = [(TUIUIKitButton *)self configuration];
    v4 = [v3 baseBackgroundColor];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUIUIKitButton;
    v4 = [(TUIUIKitButton *)&v6 backgroundColor];
  }

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if ([(TUIUIKitButton *)self buttonType])
  {
    if (v4)
    {
      v5 = [(TUIUIKitButton *)self configuration];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = +[UIButtonConfiguration filledButtonConfiguration];
      }

      v8 = v7;

      [v8 setBaseBackgroundColor:v4];
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
    [(TUIUIKitButton *)&v9 setBackgroundColor:v4];
  }
}

- (void)setTui_menu:(id)a3
{
  v5 = a3;
  tui_menu = self->_tui_menu;
  if (tui_menu != v5 && ![(TUIMenuModel *)tui_menu isEqual:v5])
  {
    objc_storeStrong(&self->_tui_menu, a3);
    v7 = [(TUIUIKitButton *)self isStaticMenu];
    v8 = self->_tui_menu;
    if (v7)
    {
      v9 = [(TUIMenuModel *)v8 newUIMenuElement];
      [(TUIUIKitButton *)self setMenu:v9];
    }

    else
    {
      [(TUIUIKitButton *)self setContextMenuInteractionEnabled:v8 != 0];
    }

    [(TUIUIKitButton *)self setShowsMenuAsPrimaryAction:[(TUIMenuModel *)self->_tui_menu isPrimary]];
    v10 = [(TUIUIKitButton *)self contextMenuInteraction];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_181130;
    v11[3] = &unk_263820;
    v12 = v5;
    [v10 updateVisibleMenuWithBlock:v11];
  }
}

- (void)menuDataDidUpdate
{
  if ([(TUIUIKitButton *)self isStaticMenu])
  {
    v3 = [(TUIMenuModel *)self->_tui_menu newUIMenuElement];
    [(TUIUIKitButton *)self setMenu:v3];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self->_tui_menu;
  if ([(TUIUIKitButton *)self isStaticMenu])
  {
    v14.receiver = self;
    v14.super_class = TUIUIKitButton;
    v9 = [(TUIUIKitButton *)&v14 contextMenuInteraction:v7 configurationForMenuAtLocation:x, y];
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

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v12.receiver = self;
  v12.super_class = TUIUIKitButton;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(TUIUIKitButton *)&v12 contextMenuInteraction:v10 willDisplayMenuForConfiguration:v9 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);
  [WeakRetained button:self contextMenuInteraction:v10 willDisplayMenuForConfiguration:v9 animator:{v8, v12.receiver, v12.super_class}];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v12.receiver = self;
  v12.super_class = TUIUIKitButton;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(TUIUIKitButton *)&v12 contextMenuInteraction:v10 willEndForConfiguration:v9 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_tui_delegate);
  [WeakRetained button:self contextMenuInteraction:v10 willEndForConfiguration:v9 animator:{v8, v12.receiver, v12.super_class}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TUIUIKitButton;
  v8 = [(TUIUIKitButton *)&v17 hitTest:v7 withEvent:x, y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [(TUIUIKitButton *)v8 gestureRecognizers];
    if ([v9 count])
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = [(TUIUIKitButton *)self pointInside:v7 withEvent:x, y];

    if (v10)
    {
      v9 = v8;
      v8 = self;
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

    v8 = v15;
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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
  v5 = [v4 _accessibilityViewController];
  v6 = TUIDynamicCast(v3, v5);

  v7 = [v6 topLevelAXElement];
  v8 = objc_opt_class();
  v9 = [v7 children];
  v10 = TUIDynamicCast(v8, v9);

  v11 = [(TUIUIKitButton *)self _accessibilityGetAXElementMatchFromArray:v10];
  v12 = v11;
  if (v11)
  {
    self = v11;
  }

  v13 = self;

  return self;
}

- (id)_accessibilityGetAXElementMatchFromArray:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
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
          v23 = [v9 children];
          v24 = TUIDynamicCast(v22, v23);

          v25 = [(TUIUIKitButton *)self _accessibilityGetAXElementMatchFromArray:v24];

          if (v25)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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