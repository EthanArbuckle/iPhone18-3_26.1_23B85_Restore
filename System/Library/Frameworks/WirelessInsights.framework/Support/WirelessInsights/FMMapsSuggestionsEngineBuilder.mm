@interface FMMapsSuggestionsEngineBuilder
+ (id)alreadyThereFilter;
+ (id)engineWithAlreadyThereFilter:(id)filter;
@end

@implementation FMMapsSuggestionsEngineBuilder

+ (id)engineWithAlreadyThereFilter:(id)filter
{
  filterCopy = filter;
  if (objc_opt_respondsToSelector())
  {
    alreadyThereFilter = [self alreadyThereFilter];
    v6 = [filterCopy performSelector:"withoutPostFilters:" withObject:alreadyThereFilter];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)alreadyThereFilter
{
  v2 = NSClassFromString(@"MapsSuggestionsAlreadyThereFilter");
  if (v2 && (v3 = objc_alloc_init(v2)) != 0)
  {
    v4 = v3;
    v5 = [[NSSet alloc] initWithObjects:{v3, 0}];
  }

  else
  {
    v5 = +[NSSet set];
  }

  return v5;
}

@end