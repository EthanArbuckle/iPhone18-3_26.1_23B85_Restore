@interface SCATMultipleMenuItemsElement
- (BOOL)scatPerformAction:(int)a3;
- (SCATMultipleMenuItemsElementDelegate)delegate;
- (id)description;
- (void)scatDidBecomeFocused:(BOOL)a3;
@end

@implementation SCATMultipleMenuItemsElement

- (void)scatDidBecomeFocused:(BOOL)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SCATMultipleMenuItemsElement *)self menuItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    if (v3)
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v10) setStyle:v9];
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(SCATMultipleMenuItemsElement *)self delegate];
  [v11 multipleMenuItemsElement:self didBecomeHighlighted:v3];
}

- (BOOL)scatPerformAction:(int)a3
{
  if (a3 == 2010)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(SCATMultipleMenuItemsElement *)self menuItems];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * v8) flash];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = [(SCATMultipleMenuItemsElement *)self delegate];
    [v9 didActivateMultipleMenuItemsElement:self];

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
  v4 = [(SCATMultipleMenuItemsElement *)self menuItems];
  v5 = [(SCATMultipleMenuItemsElement *)self identifier];
  v6 = [(SCATMultipleMenuItemsElement *)self delegate];
  v7 = [v3 stringByAppendingFormat:@" - menu items %@, identifier %@, delegate %@", v4, v5, v6];

  return v7;
}

- (SCATMultipleMenuItemsElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end