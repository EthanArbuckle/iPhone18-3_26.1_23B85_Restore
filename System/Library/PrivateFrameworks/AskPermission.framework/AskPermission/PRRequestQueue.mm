@interface PRRequestQueue
+ (id)defaultRequestQueue;
- (PRRequestDelegate)delegate;
- (void)_attemptLocalApprovalForStorePurchaseRequestWithAdamID:(unint64_t)a3 completionHandler:(id)a4;
- (void)_attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation PRRequestQueue

+ (id)defaultRequestQueue
{
  if (defaultRequestQueue_ap_once_token___COUNTER__ != -1)
  {
    +[PRRequestQueue defaultRequestQueue];
  }

  v3 = defaultRequestQueue_ap_once_object___COUNTER__;

  return v3;
}

uint64_t __37__PRRequestQueue_defaultRequestQueue__block_invoke()
{
  defaultRequestQueue_ap_once_object___COUNTER__ = objc_alloc_init(PRRequestQueue);

  return MEMORY[0x2821F96F8]();
}

- (void)_attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v6 stringValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__PRRequestQueue__attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_278CC1830;
  v10 = v5;
  v8 = v5;
  [APRequestHandler localApproveRequestWithItemIdentifier:v7 completion:v9];
}

- (void)_attemptLocalApprovalForStorePurchaseRequestWithAdamID:(unint64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v6 stringValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__PRRequestQueue__attemptLocalApprovalForStorePurchaseRequestWithAdamID_completionHandler___block_invoke;
  v9[3] = &unk_278CC1830;
  v10 = v5;
  v8 = v5;
  [APRequestHandler localApproveRequestWithItemIdentifier:v7 completion:v9];
}

- (PRRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end