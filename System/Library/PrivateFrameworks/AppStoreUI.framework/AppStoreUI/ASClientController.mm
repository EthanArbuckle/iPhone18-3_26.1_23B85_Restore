@interface ASClientController
- (ASClientController)initWithClientIdentifier:(id)identifier;
- (ASClientController)initWithClientInterface:(id)interface;
- (BOOL)libraryContainsItemIdentifier:(unint64_t)identifier;
- (id)purchaseManager:(id)manager purchaseBatchForItems:(id)items;
- (id)purchaseManager:(id)manager purchaseBatchForPurchases:(id)purchases;
@end

@implementation ASClientController

- (ASClientController)initWithClientIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x277D7FDC0]);
  [v5 setClientIdentifier:identifier];
  v6 = objc_alloc_init(ASViewControllerFactory);
  [v5 setViewControllerFactory:v6];

  v7 = [(ASClientController *)self initWithClientInterface:v5];
  return v7;
}

- (ASClientController)initWithClientInterface:(id)interface
{
  values[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = ASClientController;
  v3 = [(SUClientController *)&v7 initWithClientInterface:interface];
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

- (BOOL)libraryContainsItemIdentifier:(unint64_t)identifier
{
  loadedMap = [MEMORY[0x277D7FD40] loadedMap];
  if ([loadedMap applicationForItemIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithItemIdentifier:", identifier)}])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = ASClientController;
  return [(SUClientController *)&v7 libraryContainsItemIdentifier:identifier];
}

- (id)purchaseManager:(id)manager purchaseBatchForItems:(id)items
{
  v4 = [(SUPurchaseBatch *)[ASPurchaseBatch alloc] initWithItems:items];

  return v4;
}

- (id)purchaseManager:(id)manager purchaseBatchForPurchases:(id)purchases
{
  v5 = objc_alloc_init(ASPurchaseBatch);
  [(SUPurchaseBatch *)v5 setPurchasesAndContinuationsFromPurchases:purchases];

  return v5;
}

@end