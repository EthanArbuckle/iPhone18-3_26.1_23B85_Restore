@interface SKPaymentQueueInternal
- (SKPaymentQueueInternal)init;
@end

@implementation SKPaymentQueueInternal

- (SKPaymentQueueInternal)init
{
  v15.receiver = self;
  v15.super_class = SKPaymentQueueInternal;
  v2 = [(SKPaymentQueueInternal *)&v15 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transactions = v2->_transactions;
    v2->_transactions = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    localTransactions = v2->_localTransactions;
    v2->_localTransactions = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    weakObservers = v2->_weakObservers;
    v2->_weakObservers = v10;

    objc_storeStrong(&v2->_observerQueue, MEMORY[0x1E69E96A0]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    downloads = v2->_downloads;
    v2->_downloads = v12;
  }

  return v2;
}

@end