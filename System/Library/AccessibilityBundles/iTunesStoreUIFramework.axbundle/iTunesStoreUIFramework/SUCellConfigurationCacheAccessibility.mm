@interface SUCellConfigurationCacheAccessibility
- (id)configurationForRow:(unint64_t)row;
@end

@implementation SUCellConfigurationCacheAccessibility

- (id)configurationForRow:(unint64_t)row
{
  v4 = [(SUCellConfigurationCacheAccessibility *)self safeValueForKey:@"_configurations"];
  v5 = [v4 count];
  if (v5 <= row)
  {
    v6 = v5;
    v7 = [v4 objectAtIndex:0];
    v8 = objc_opt_class();

    if (row + 5 != v6)
    {
      if (row + 5 - v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = row + 5 - v6;
      }

      do
      {
        v10 = objc_alloc_init(v8);
        [v4 addObject:v10];

        --v9;
      }

      while (v9);
    }
  }

  v11 = [v4 objectAtIndex:row];

  return v11;
}

@end