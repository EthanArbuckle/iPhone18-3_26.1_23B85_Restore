@interface PurchaseBatch
- (PurchaseBatch)initWithPurchaseInfos:(id)infos;
@end

@implementation PurchaseBatch

- (PurchaseBatch)initWithPurchaseInfos:(id)infos
{
  infosCopy = infos;
  v28.receiver = self;
  v28.super_class = PurchaseBatch;
  v5 = [(PurchaseBatch *)&v28 init];
  if (v5)
  {
    v6 = [infosCopy copy];
    purchaseInfo = v5->_purchaseInfo;
    v5->_purchaseInfo = v6;

    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v5->_purchaseInfo, "count")}];
    responseItems = v5->_responseItems;
    v5->_responseItems = v8;

    firstObject = [infosCopy firstObject];
    isMachineBased = [firstObject isMachineBased];
    if (isMachineBased)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        logKey = [firstObject logKey];
        *buf = 138412290;
        v31 = logKey;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Created batch for machine based purchases", buf, 0xCu);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v5->_purchaseInfo;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          if (isMachineBased != [v19 isMachineBased])
          {
            v21 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              logKey2 = [v19 logKey];
              *buf = 138412290;
              v31 = logKey2;
              _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "[%@] Cannot mix machine based and non-machine based purchases", buf, 0xCu);
            }

            v23 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Cannot mix machine based and non-machine based purchases" userInfo:0];
            objc_exception_throw(v23);
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }
  }

  return v5;
}

@end