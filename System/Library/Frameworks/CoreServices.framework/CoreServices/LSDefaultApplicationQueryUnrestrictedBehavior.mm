@interface LSDefaultApplicationQueryUnrestrictedBehavior
- (id)URLOfDefaultAppForCategory:(unint64_t)category;
@end

@implementation LSDefaultApplicationQueryUnrestrictedBehavior

- (id)URLOfDefaultAppForCategory:(unint64_t)category
{
  v4 = objc_alloc_init(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator);
  v5 = [(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator *)v4 URLOfDefaultAppForCategory:category];

  return v5;
}

@end