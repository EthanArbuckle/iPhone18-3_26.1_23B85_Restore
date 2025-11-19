@interface ICDebuggingSection
- (ICDebuggingSection)initWithTitle:(id)a3 items:(id)a4;
- (NSString)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)setDestructive:(BOOL)a3;
@end

@implementation ICDebuggingSection

- (ICDebuggingSection)initWithTitle:(id)a3 items:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICDebuggingSection;
  v9 = [(ICDebuggingSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_items, a4);
  }

  return v10;
}

- (NSString)identifier
{
  v2 = [(ICDebuggingSection *)self title];
  v3 = [v2 uppercaseString];

  return v3;
}

- (void)setDestructive:(BOOL)a3
{
  v3 = a3;
  self->_destructive = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(ICDebuggingSection *)self items];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setDestructive:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = ICDebuggingSection;
  v3 = [(ICDebuggingSection *)&v8 debugDescription];
  v4 = [(ICDebuggingSection *)self title];
  v5 = [(ICDebuggingSection *)self items];
  v6 = [NSString stringWithFormat:@"%@, title: %@, items: %@", v3, v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICDebuggingSection allocWithZone:a3];
  v5 = [(ICDebuggingSection *)self title];
  v6 = [(ICDebuggingSection *)self items];
  v7 = [(ICDebuggingSection *)v4 initWithTitle:v5 items:v6];

  return v7;
}

@end