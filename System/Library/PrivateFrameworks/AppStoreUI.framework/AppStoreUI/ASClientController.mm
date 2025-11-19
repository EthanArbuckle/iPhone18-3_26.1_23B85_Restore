@interface ASClientController
- (ASClientController)initWithClientIdentifier:(id)a3;
- (ASClientController)initWithClientInterface:(id)a3;
- (BOOL)libraryContainsItemIdentifier:(unint64_t)a3;
- (id)purchaseManager:(id)a3 purchaseBatchForItems:(id)a4;
- (id)purchaseManager:(id)a3 purchaseBatchForPurchases:(id)a4;
@end

@implementation ASClientController

- (ASClientController)initWithClientIdentifier:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277D7FDC0]);
  [v5 setClientIdentifier:a3];
  v6 = objc_alloc_init(ASViewControllerFactory);
  [v5 setViewControllerFactory:v6];

  v7 = [(ASClientController *)self initWithClientInterface:v5];
  return v7;
}

- (ASClientController)initWithClientInterface:(id)a3
{
  values[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = ASClientController;
  v3 = [(SUClientController *)&v7 initWithClientInterface:a3];
  if (v3)
  {
    values[0] = 9;
    v4 = CFArrayCreate(0, values, 1, 0);
    [(SUClientController *)v3 setOfferedAssetTypes:v4];
    CFRelease(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)libraryContainsItemIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277D7FD40] loadedMap];
  if ([v5 applicationForItemIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithItemIdentifier:", a3)}])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = ASClientController;
  return [(SUClientController *)&v7 libraryContainsItemIdentifier:a3];
}

- (id)purchaseManager:(id)a3 purchaseBatchForItems:(id)a4
{
  v4 = [(SUPurchaseBatch *)[ASPurchaseBatch alloc] initWithItems:a4];

  return v4;
}

- (id)purchaseManager:(id)a3 purchaseBatchForPurchases:(id)a4
{
  v5 = objc_alloc_init(ASPurchaseBatch);
  [(SUPurchaseBatch *)v5 setPurchasesAndContinuationsFromPurchases:a4];

  return v5;
}

@end