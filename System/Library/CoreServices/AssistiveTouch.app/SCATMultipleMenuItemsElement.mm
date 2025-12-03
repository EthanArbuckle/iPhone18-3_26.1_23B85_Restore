@interface SCATMultipleMenuItemsElement
- (BOOL)scatPerformAction:(int)action;
- (SCATMultipleMenuItemsElementDelegate)delegate;
- (id)description;
- (void)scatDidBecomeFocused:(BOOL)focused;
@end

@implementation SCATMultipleMenuItemsElement

- (void)scatDidBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  menuItems = [(SCATMultipleMenuItemsElement *)self menuItems];
  v6 = [menuItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    if (focusedCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(menuItems);
        }

        [*(*(&v12 + 1) + 8 * v10) setStyle:v9];
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [menuItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  delegate = [(SCATMultipleMenuItemsElement *)self delegate];
  [delegate multipleMenuItemsElement:self didBecomeHighlighted:focusedCopy];
}

- (BOOL)scatPerformAction:(int)action
{
  if (action == 2010)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    menuItems = [(SCATMultipleMenuItemsElement *)self menuItems];
    v5 = [menuItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(menuItems);
          }

          [*(*(&v12 + 1) + 8 * v8) flash];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [menuItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    delegate = [(SCATMultipleMenuItemsElement *)self delegate];
    [delegate didActivateMultipleMenuItemsElement:self];

    return 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SCATMultipleMenuItemsElement;
    return [(SCATSimpleElement *)&v11 scatPerformAction:?];
  }
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SCATMultipleMenuItemsElement;
  v3 = [(SCATMultipleMenuItemsElement *)&v9 description];
  menuItems = [(SCATMultipleMenuItemsElement *)self menuItems];
  identifier = [(SCATMultipleMenuItemsElement *)self identifier];
  delegate = [(SCATMultipleMenuItemsElement *)self delegate];
  v7 = [v3 stringByAppendingFormat:@" - menu items %@, identifier %@, delegate %@", menuItems, identifier, delegate];

  return v7;
}

- (SCATMultipleMenuItemsElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end