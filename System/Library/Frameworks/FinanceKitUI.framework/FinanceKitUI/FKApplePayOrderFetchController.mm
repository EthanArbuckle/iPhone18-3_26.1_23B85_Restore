@interface FKApplePayOrderFetchController
- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation FKApplePayOrderFetchController

- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(2, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__FKApplePayOrderFetchController_fetchAllRowViewModelsForTransactionWithIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_278A54E78;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = identifierCopy;
  dispatch_async(v7, v10);
}

void __102__FKApplePayOrderFetchController_fetchAllRowViewModelsForTransactionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[_TtC12FinanceKitUI28ApplePayOrderFetchController makeFetchController];
  [v2 fetchAllRowViewModelsForTransactionWithIdentifier:*(a1 + 32) completionHandler:*(a1 + 40)];
}

@end