@interface SUCellConfigurationCacheAccessibility
- (id)configurationForRow:(unint64_t)a3;
@end

@implementation SUCellConfigurationCacheAccessibility

- (id)configurationForRow:(unint64_t)a3
{
  v4 = [(SUCellConfigurationCacheAccessibility *)self safeValueForKey:@"_configurations"];
  v5 = [v4 count];
  if (v5 <= a3)
  {
    v6 = v5;
    v7 = [v4 objectAtIndex:0];
    v8 = objc_opt_class();

    if (a3 + 5 != v6)
    {
      if (a3 + 5 - v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = a3 + 5 - v6;
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

  v11 = [v4 objectAtIndex:a3];

  return v11;
}

@end