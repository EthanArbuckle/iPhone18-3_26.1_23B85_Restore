@interface MUISearchSuggestionCategoryScope
+ (id)genericSpotlightScope;
@end

@implementation MUISearchSuggestionCategoryScope

+ (id)genericSpotlightScope
{
  v2 = objc_alloc_init(MUISearchSuggestionCategoryScope);
  [v2 setPredicateApplier:&stru_100655BD8];
  [v2 setParsecScope:MSSearchScopeMessage];

  return v2;
}

@end