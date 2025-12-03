@interface ASCSKPurchaseIntent
- (ASCSKPurchaseIntent)initWithBundleId:(id)id productIdentifier:(id)identifier appName:(id)name productName:(id)productName;
@end

@implementation ASCSKPurchaseIntent

- (ASCSKPurchaseIntent)initWithBundleId:(id)id productIdentifier:(id)identifier appName:(id)name productName:(id)productName
{
  idCopy = id;
  identifierCopy = identifier;
  nameCopy = name;
  productNameCopy = productName;
  v20.receiver = self;
  v20.super_class = ASCSKPurchaseIntent;
  v14 = [(ASCSKPurchaseIntent *)&v20 init];
  if (v14)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v15 = getSKPurchaseIntentClass_softClass;
    v25 = getSKPurchaseIntentClass_softClass;
    if (!getSKPurchaseIntentClass_softClass)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getSKPurchaseIntentClass_block_invoke;
      v21[3] = &unk_2784B1970;
      v21[4] = &v22;
      __getSKPurchaseIntentClass_block_invoke(v21);
      v15 = v23[3];
    }

    v16 = v15;
    _Block_object_dispose(&v22, 8);
    v17 = [[v15 alloc] initWithBundleId:idCopy productIdentifier:identifierCopy appName:nameCopy productName:productNameCopy];
    purchaseIntent = v14->_purchaseIntent;
    v14->_purchaseIntent = v17;
  }

  return v14;
}

@end