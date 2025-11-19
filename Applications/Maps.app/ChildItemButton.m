@interface ChildItemButton
+ (UIEdgeInsets)contentEdgeInsets;
+ (UIFont)buttonTitleFont;
+ (id)button;
+ (id)buttonTitleWithChildAction:(id)a3;
+ (id)buttonTitleWithChildItem:(id)a3;
- (ChildItemButtonDelegate)delegate;
- (void)_buttonAction;
- (void)_setAttributes;
- (void)setChildItem:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateTheme;
@end

@implementation ChildItemButton

+ (id)buttonTitleWithChildAction:(id)a3
{
  v3 = a3;
  v4 = [v3 childActionType];
  v5 = 0;
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        v14 = [v3 guideLocation];
        v15 = [v14 numberOfGuides];
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        if (v15 == 1)
        {
          v18 = @"Guide_One [Autocomplete]";
        }

        else
        {
          v18 = @"Guide_Many [Autocomplete]";
        }

        v9 = [v16 localizedStringForKey:v18 value:@"localized string not found" table:0];

        v19 = [v3 guideLocation];
        v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, [v19 numberOfGuides]);

        goto LABEL_20;
      }

      if (v4 != 8)
      {
        goto LABEL_21;
      }

      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"[Autocomplete] Download Offline";
      v11 = @"Offline";
      goto LABEL_18;
    }

    if (v4 == 5)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Call [Autocomplete]";
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"Website [Autocomplete]";
    }
  }

  else if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = [v3 childActionSearch];
      v12 = [v9 displayString];
      goto LABEL_19;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Look Around [Autocomplete]";
  }

  else if (v4 == 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"Directions [Autocomplete]";
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v6 = +[VKPlatform sharedPlatform];
    v7 = [v6 supportsARMode];

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = @"Flyover [Autocomplete]";
    }

    else
    {
      v10 = @"Flyover Tour [Autocomplete]";
    }
  }

  v11 = 0;
LABEL_18:
  v12 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:v11];
LABEL_19:
  v5 = v12;
LABEL_20:

LABEL_21:

  return v5;
}

+ (id)buttonTitleWithChildItem:(id)a3
{
  v4 = a3;
  v5 = [v4 childItemType];
  if (v5 == 3)
  {
    v8 = [v4 publisherResult];
    v9 = [v8 publisher];
    v10 = [v9 totalCollectionCount];

    if (!v10)
    {
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      v11 = @"Guide_One [Autocomplete]";
    }

    else
    {
      v11 = @"Guide_Many [Autocomplete]";
    }

    v12 = +[NSBundle mainBundle];
    v6 = [v12 localizedStringForKey:v11 value:@"localized string not found" table:0];

    v7 = [NSString stringWithFormat:v6, v10];
    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = [v4 childItemAction];
    v7 = [a1 buttonTitleWithChildAction:v6];
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    v6 = [v4 childItemPlace];
    v7 = [v6 name];
LABEL_11:
    v10 = v7;

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (UIFont)buttonTitleFont
{
  if (sub_100960CE4())
  {
    +[UIFont system13];
  }

  else
  {
    +[UIFont system15];
  }
  v2 = ;

  return v2;
}

+ (UIEdgeInsets)contentEdgeInsets
{
  v2 = 9.5;
  v3 = 4.0;
  v4 = 12.5;
  v5 = 4.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)button
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___ChildItemButton;
  v2 = objc_msgSendSuper2(&v4, "buttonWithType:", 0);
  [v2 _setAttributes];

  return v2;
}

- (ChildItemButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setChildItem:(id)a3
{
  v5 = a3;
  if (self->_childItem != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_childItem, a3);
    v6 = [objc_opt_class() buttonTitleWithChildItem:v7];
    [(ChildItemButton *)self setTitle:v6 forState:0];

    v5 = v7;
  }
}

- (void)_buttonAction
{
  v4 = [(ChildItemButton *)self delegate];
  v3 = [(ChildItemButton *)self childItem];
  [v4 didTapChildItemButtonForChildItem:v3];
}

- (void)updateTheme
{
  v4 = [(ChildItemButton *)self theme];
  v3 = [v4 childItemButtonBackgroundColor];
  [(ChildItemButton *)self setBackgroundColor:v3];
}

- (void)_setAttributes
{
  [(ChildItemButton *)self setClipsToBounds:1];
  v3 = [(ChildItemButton *)self layer];
  [v3 setCornerRadius:8.0];

  v4 = [(ChildItemButton *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:&stru_101655510];

  v5 = [(ChildItemButton *)self titleLabel];
  [v5 setLineBreakMode:4];

  v6 = [(ChildItemButton *)self theme];
  v7 = [v6 keyColor];
  [(ChildItemButton *)self setTitleColor:v7 forState:0];

  [objc_opt_class() contentEdgeInsets];
  [(ChildItemButton *)self setContentEdgeInsets:?];

  [(ChildItemButton *)self addTarget:self action:"_buttonAction" forControlEvents:0x2000];
}

@end