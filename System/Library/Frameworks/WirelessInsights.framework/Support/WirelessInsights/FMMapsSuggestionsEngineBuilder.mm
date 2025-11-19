@interface FMMapsSuggestionsEngineBuilder
+ (id)alreadyThereFilter;
+ (id)engineWithAlreadyThereFilter:(id)a3;
@end

@implementation FMMapsSuggestionsEngineBuilder

+ (id)engineWithAlreadyThereFilter:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 alreadyThereFilter];
    v6 = [v4 performSelector:"withoutPostFilters:" withObject:v5];
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