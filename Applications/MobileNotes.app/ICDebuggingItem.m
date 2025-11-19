@interface ICDebuggingItem
- (BOOL)isSelected;
- (ICDebuggingItem)initWithTitle:(id)a3 selector:(SEL)a4;
- (NSString)identifier;
- (SEL)selector;
- (id)debugDescription;
- (void)setSelector:(SEL)a3;
@end

@implementation ICDebuggingItem

- (ICDebuggingItem)initWithTitle:(id)a3 selector:(SEL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = ICDebuggingItem;
  v8 = [(ICDebuggingItem *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, a3);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v9->_selector = v10;
    subtitle = v9->_subtitle;
    v9->_subtitle = 0;

    selectedDefaultsKey = v9->_selectedDefaultsKey;
    v9->_selectedDefaultsKey = 0;
  }

  return v9;
}

- (NSString)identifier
{
  v3 = [(ICDebuggingItem *)self title];
  v4 = [v3 uppercaseString];

  v5 = [(ICDebuggingItem *)self subtitle];
  if ([v5 length])
  {
    v6 = [(ICDebuggingItem *)self subtitle];
    v7 = [v6 uppercaseString];
    v8 = [NSString stringWithFormat:@"%@-%@", v4, v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (BOOL)isSelected
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(ICDebuggingItem *)self selectedDefaultsKey];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = ICDebuggingItem;
  v3 = [(ICDebuggingItem *)&v12 debugDescription];
  v4 = [(ICDebuggingItem *)self title];
  v5 = [(ICDebuggingItem *)self subtitle];
  v6 = [(ICDebuggingItem *)self identifier];
  v7 = [(ICDebuggingItem *)self selectedDefaultsKey];
  v8 = [NSNumber numberWithBool:[(ICDebuggingItem *)self isSelected]];
  v9 = NSStringFromSelector([(ICDebuggingItem *)self selector]);
  v10 = [NSString stringWithFormat:@"%@, title: %@, subtitle: %@, identifier: %@, selectedDefaultsKey: %@, selected: %@, selector: %@", v3, v4, v5, v6, v7, v8, v9];

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

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end