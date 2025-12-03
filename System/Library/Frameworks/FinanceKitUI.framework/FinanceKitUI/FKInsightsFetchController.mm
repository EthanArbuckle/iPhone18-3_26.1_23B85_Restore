@interface FKInsightsFetchController
- (void)fetchRowViewModelsForTransactionWithIdentifier:(id)identifier primaryAccountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
- (void)pruneRowViewModelsForTransactionWithIdentifier:(id)identifier primaryAccountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
@end

@implementation FKInsightsFetchController

- (void)fetchRowViewModelsForTransactionWithIdentifier:(id)identifier primaryAccountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v10 = +[_TtC12FinanceKitUI23InsightsFetchController makeFetchController];
  [v10 fetchRowViewModelsForTransactionWithIdentifier:identifierCopy primaryAccountIdentifier:accountIdentifierCopy completionHandler:handlerCopy];
}

- (void)pruneRowViewModelsForTransactionWithIdentifier:(id)identifier primaryAccountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  accountIdentifierCopy = accountIdentifier;
  identifierCopy = identifier;
  v10 = +[_TtC12FinanceKitUI23InsightsFetchController makeFetchController];
  [v10 pruneRowViewModelsForTransactionWithIdentifier:identifierCopy primaryAccountIdentifier:accountIdentifierCopy completionHandler:handlerCopy];
}

@end