@interface ChildItemButton
+ (UIEdgeInsets)contentEdgeInsets;
+ (UIFont)buttonTitleFont;
+ (id)button;
+ (id)buttonTitleWithChildAction:(id)action;
+ (id)buttonTitleWithChildItem:(id)item;
- (ChildItemButtonDelegate)delegate;
- (void)_buttonAction;
- (void)_setAttributes;
- (void)setChildItem:(id)item;
- (void)setDelegate:(id)delegate;
- (void)updateTheme;
@end

@implementation ChildItemButton

+ (id)buttonTitleWithChildAction:(id)action
{
  actionCopy = action;
  childActionType = [actionCopy childActionType];
  v5 = 0;
  if (childActionType > 4)
  {
    if (childActionType > 6)
    {
      if (childActionType == 7)
      {
        guideLocation = [actionCopy guideLocation];
        numberOfGuides = [guideLocation numberOfGuides];
        v16 = +[NSBundle mainBundle];
        v17 = v16;
        if (numberOfGuides == 1)
        {
          v18 = @"Guide_One [Autocomplete]";
        }

        else
        {
          v18 = @"Guide_Many [Autocomplete]";
        }

        childActionSearch = [v16 localizedStringForKey:v18 value:@"localized string not found" table:0];

        guideLocation2 = [actionCopy guideLocation];
        v5 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", childActionSearch, [guideLocation2 numberOfGuides]);

        goto LABEL_20;
      }

      if (childActionType != 8)
      {
        goto LABEL_21;
      }

      v8 = +[NSBundle mainBundle];
      childActionSearch = v8;
      v10 = @"[Autocomplete] Download Offline";
      v11 = @"Offline";
      goto LABEL_18;
    }

    if (childActionType == 5)
    {
      v8 = +[NSBundle mainBundle];
      childActionSearch = v8;
      v10 = @"Call [Autocomplete]";
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      childActionSearch = v8;
      v10 = @"Website [Autocomplete]";
    }
  }

  else if (childActionType > 2)
  {
    if (childActionType == 3)
    {
      childActionSearch = [actionCopy childActionSearch];
      displayString = [childActionSearch displayString];
      goto LABEL_19;
    }

    v8 = +[NSBundle mainBundle];
    childActionSearch = v8;
    v10 = @"Look Around [Autocomplete]";
  }

  else if (childActionType == 1)
  {
    v8 = +[NSBundle mainBundle];
    childActionSearch = v8;
    v10 = @"Directions [Autocomplete]";
  }

  else
  {
    if (childActionType != 2)
    {
      goto LABEL_21;
    }

    v6 = +[VKPlatform sharedPlatform];
    supportsARMode = [v6 supportsARMode];

    v8 = +[NSBundle mainBundle];
    childActionSearch = v8;
    if (supportsARMode)
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
  displayString = [v8 localizedStringForKey:v10 value:@"localized string not found" table:v11];
LABEL_19:
  v5 = displayString;
LABEL_20:

LABEL_21:

  return v5;
}

+ (id)buttonTitleWithChildItem:(id)item
{
  itemCopy = item;
  childItemType = [itemCopy childItemType];
  if (childItemType == 3)
  {
    publisherResult = [itemCopy publisherResult];
    publisher = [publisherResult publisher];
    totalCollectionCount = [publisher totalCollectionCount];

    if (!totalCollectionCount)
    {
      goto LABEL_13;
    }

    if (totalCollectionCount == 1)
    {
      v11 = @"Guide_One [Autocomplete]";
    }

    else
    {
      v11 = @"Guide_Many [Autocomplete]";
    }

    v12 = +[NSBundle mainBundle];
    childItemAction = [v12 localizedStringForKey:v11 value:@"localized string not found" table:0];

    name = [NSString stringWithFormat:childItemAction, totalCollectionCount];
    goto LABEL_11;
  }

  if (childItemType == 2)
  {
    childItemAction = [itemCopy childItemAction];
    name = [self buttonTitleWithChildAction:childItemAction];
    goto LABEL_11;
  }

  if (childItemType == 1)
  {
    childItemAction = [itemCopy childItemPlace];
    name = [childItemAction name];
LABEL_11:
    totalCollectionCount = name;

    goto LABEL_13;
  }

  totalCollectionCount = 0;
LABEL_13:

  return totalCollectionCount;
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
  v4.receiver = self;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setChildItem:(id)item
{
  itemCopy = item;
  if (self->_childItem != itemCopy)
  {
    v7 = itemCopy;
    objc_storeStrong(&self->_childItem, item);
    v6 = [objc_opt_class() buttonTitleWithChildItem:v7];
    [(ChildItemButton *)self setTitle:v6 forState:0];

    itemCopy = v7;
  }
}

- (void)_buttonAction
{
  delegate = [(ChildItemButton *)self delegate];
  childItem = [(ChildItemButton *)self childItem];
  [delegate didTapChildItemButtonForChildItem:childItem];
}

- (void)updateTheme
{
  theme = [(ChildItemButton *)self theme];
  childItemButtonBackgroundColor = [theme childItemButtonBackgroundColor];
  [(ChildItemButton *)self setBackgroundColor:childItemButtonBackgroundColor];
}

- (void)_setAttributes
{
  [(ChildItemButton *)self setClipsToBounds:1];
  layer = [(ChildItemButton *)self layer];
  [layer setCornerRadius:8.0];

  titleLabel = [(ChildItemButton *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_101655510];

  titleLabel2 = [(ChildItemButton *)self titleLabel];
  [titleLabel2 setLineBreakMode:4];

  theme = [(ChildItemButton *)self theme];
  keyColor = [theme keyColor];
  [(ChildItemButton *)self setTitleColor:keyColor forState:0];

  [objc_opt_class() contentEdgeInsets];
  [(ChildItemButton *)self setContentEdgeInsets:?];

  [(ChildItemButton *)self addTarget:self action:"_buttonAction" forControlEvents:0x2000];
}

@end