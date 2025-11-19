@interface LSDefaultApplicationQueryUnrestrictedBehavior
- (id)URLOfDefaultAppForCategory:(unint64_t)a3;
@end

@implementation LSDefaultApplicationQueryUnrestrictedBehavior

- (id)URLOfDefaultAppForCategory:(unint64_t)a3
{
  v4 = objc_alloc_init(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator);
  v5 = [(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator *)v4 URLOfDefaultAppForCategory:a3];

  return v5;
}

@end