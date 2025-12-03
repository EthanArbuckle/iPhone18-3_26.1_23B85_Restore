@interface ICDebuggingItem
- (BOOL)isSelected;
- (ICDebuggingItem)initWithTitle:(id)title selector:(SEL)selector;
- (NSString)identifier;
- (SEL)selector;
- (id)debugDescription;
- (void)setSelector:(SEL)selector;
@end

@implementation ICDebuggingItem

- (ICDebuggingItem)initWithTitle:(id)title selector:(SEL)selector
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = ICDebuggingItem;
  v8 = [(ICDebuggingItem *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, title);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v9->_selector = selectorCopy;
    subtitle = v9->_subtitle;
    v9->_subtitle = 0;

    selectedDefaultsKey = v9->_selectedDefaultsKey;
    v9->_selectedDefaultsKey = 0;
  }

  return v9;
}

- (NSString)identifier
{
  title = [(ICDebuggingItem *)self title];
  uppercaseString = [title uppercaseString];

  subtitle = [(ICDebuggingItem *)self subtitle];
  if ([subtitle length])
  {
    subtitle2 = [(ICDebuggingItem *)self subtitle];
    uppercaseString2 = [subtitle2 uppercaseString];
    v8 = [NSString stringWithFormat:@"%@-%@", uppercaseString, uppercaseString2];
  }

  else
  {
    v8 = uppercaseString;
  }

  return v8;
}

- (BOOL)isSelected
{
  v3 = +[NSUserDefaults standardUserDefaults];
  selectedDefaultsKey = [(ICDebuggingItem *)self selectedDefaultsKey];
  v5 = [v3 BOOLForKey:selectedDefaultsKey];

  return v5;
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = ICDebuggingItem;
  v3 = [(ICDebuggingItem *)&v12 debugDescription];
  title = [(ICDebuggingItem *)self title];
  subtitle = [(ICDebuggingItem *)self subtitle];
  identifier = [(ICDebuggingItem *)self identifier];
  selectedDefaultsKey = [(ICDebuggingItem *)self selectedDefaultsKey];
  v8 = [NSNumber numberWithBool:[(ICDebuggingItem *)self isSelected]];
  v9 = NSStringFromSelector([(ICDebuggingItem *)self selector]);
  v10 = [NSString stringWithFormat:@"%@, title: %@, subtitle: %@, identifier: %@, selectedDefaultsKey: %@, selected: %@, selector: %@", v3, title, subtitle, identifier, selectedDefaultsKey, v8, v9];

  return v10;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end