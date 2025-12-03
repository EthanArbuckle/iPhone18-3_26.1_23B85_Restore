@interface ICDebuggingSection
- (ICDebuggingSection)initWithTitle:(id)title items:(id)items;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)setDestructive:(BOOL)destructive;
@end

@implementation ICDebuggingSection

- (ICDebuggingSection)initWithTitle:(id)title items:(id)items
{
  titleCopy = title;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = ICDebuggingSection;
  v9 = [(ICDebuggingSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_items, items);
  }

  return v10;
}

- (NSString)identifier
{
  title = [(ICDebuggingSection *)self title];
  uppercaseString = [title uppercaseString];

  return uppercaseString;
}

- (void)setDestructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  self->_destructive = destructive;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [(ICDebuggingSection *)self items];
  v5 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v9 + 1) + 8 * v8) setDestructive:destructiveCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = ICDebuggingSection;
  v3 = [(ICDebuggingSection *)&v8 debugDescription];
  title = [(ICDebuggingSection *)self title];
  items = [(ICDebuggingSection *)self items];
  v6 = [NSString stringWithFormat:@"%@, title: %@, items: %@", v3, title, items];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICDebuggingSection allocWithZone:zone];
  title = [(ICDebuggingSection *)self title];
  items = [(ICDebuggingSection *)self items];
  v7 = [(ICDebuggingSection *)v4 initWithTitle:title items:items];

  return v7;
}

@end