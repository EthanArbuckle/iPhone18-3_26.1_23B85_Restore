@interface BSUINavigationBar
- (id)accessibilityElements;
- (void)pushNavigationItem:(id)a3 animated:(BOOL)a4;
@end

@implementation BSUINavigationBar

- (void)pushNavigationItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (_UISolariumEnabled())
  {
    v12.receiver = self;
    v12.super_class = BSUINavigationBar;
    [(BSUINavigationBar *)&v12 pushNavigationItem:v6 animated:v4];
  }

  else
  {
    v7 = [(BSUINavigationBar *)self delegate];
    v8 = BUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 shouldHideNavigationItemBackgroundDuringTransition:v6] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v6 _backgroundHidden];
    if (v9 & 1) != 0 || (v10)
    {
      v11.receiver = self;
      v11.super_class = BSUINavigationBar;
      [(BSUINavigationBar *)&v11 pushNavigationItem:v6 animated:v4];
    }

    else
    {
      [v6 _setBackgroundHidden:1];
      v11.receiver = self;
      v11.super_class = BSUINavigationBar;
      [(BSUINavigationBar *)&v11 pushNavigationItem:v6 animated:v4];
      [v6 _setBackgroundHidden:0];
    }
  }
}

- (id)accessibilityElements
{
  v17.receiver = self;
  v17.super_class = BSUINavigationBar;
  v2 = [(BSUINavigationBar *)&v17 accessibilityElements];
  v3 = [v2 mutableCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 accessibilityIdentifier];
        v11 = [v10 isEqualToString:@"ToggleSidebar"];

        if (v11)
        {
          [v4 removeObject:v9];
          [v4 insertObject:v9 atIndex:0];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end