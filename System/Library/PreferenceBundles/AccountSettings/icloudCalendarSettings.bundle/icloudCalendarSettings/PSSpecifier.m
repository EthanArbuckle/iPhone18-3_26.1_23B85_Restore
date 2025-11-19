@interface PSSpecifier
- (BOOL)calendar_startSpinner;
- (BOOL)calendar_stopSpinner;
@end

@implementation PSSpecifier

- (BOOL)calendar_startSpinner
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

- (BOOL)calendar_stopSpinner
{
  v3 = [(PSSpecifier *)self propertyForKey:PSTableCellKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEditing];
    v6 = [(PSSpecifier *)self propertyForKey:PSControlKey];
    if (v5)
    {
      [v4 setEditingAccessoryView:v6];
    }

    else
    {
      [v4 setAccessoryView:v6];
    }
  }

  return v4 != 0;
}

@end