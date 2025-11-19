@interface FKInsightsFetchController
- (void)fetchRowViewModelsForTransactionWithIdentifier:(id)a3 primaryAccountIdentifier:(id)a4 completionHandler:(id)a5;
- (void)pruneRowViewModelsForTransactionWithIdentifier:(id)a3 primaryAccountIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation FKInsightsFetchController

- (void)fetchRowViewModelsForTransactionWithIdentifier:(id)a3 primaryAccountIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_TtC12FinanceKitUI23InsightsFetchController makeFetchController];
  [v10 fetchRowViewModelsForTransactionWithIdentifier:v9 primaryAccountIdentifier:v8 completionHandler:v7];
}

- (void)pruneRowViewModelsForTransactionWithIdentifier:(id)a3 primaryAccountIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_TtC12FinanceKitUI23InsightsFetchController makeFetchController];
  [v10 pruneRowViewModelsForTransactionWithIdentifier:v9 primaryAccountIdentifier:v8 completionHandler:v7];
}

@end