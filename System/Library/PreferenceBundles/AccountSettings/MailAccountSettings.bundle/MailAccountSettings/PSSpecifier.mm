@interface PSSpecifier
+ (void)updateSpecifiers:(id)specifiers withTarget:(id)target;
- (BOOL)byod_startSpinner;
- (BOOL)byod_stopSpinner;
@end

@implementation PSSpecifier

+ (void)updateSpecifiers:(id)specifiers withTarget:(id)target
{
  specifiersCopy = specifiers;
  targetCopy = target;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = specifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) setTarget:{targetCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)byod_startSpinner
{
  v2 = [(PSSpecifier *)self propertyForKey:PSTableCellKey];
  if (v2)
  {
    v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    if ([v2 isEditing])
    {
      [v2 setEditingAccessoryView:v3];
    }

    else
    {
      [v2 setAccessoryView:v3];
    }
  }

  return v2 != 0;
}

- (BOOL)byod_stopSpinner
{
  v3 = [(PSSpecifier *)self propertyForKey:PSTableCellKey];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEditing])
    {
      v5 = [(PSSpecifier *)self propertyForKey:PSControlKey];
      [v4 setEditingAccessoryView:v5];
    }

    else
    {
      v5 = [(PSSpecifier *)self propertyForKey:PSControlKey];
      [v4 setAccessoryView:v5];
    }
  }

  return v4 != 0;
}

@end