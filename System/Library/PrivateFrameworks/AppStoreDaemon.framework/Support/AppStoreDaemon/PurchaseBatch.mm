@interface PurchaseBatch
- (PurchaseBatch)initWithPurchaseInfos:(id)a3;
@end

@implementation PurchaseBatch

- (PurchaseBatch)initWithPurchaseInfos:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PurchaseBatch;
  v5 = [(PurchaseBatch *)&v28 init];
  if (v5)
  {
    v6 = [v4 copy];
    purchaseInfo = v5->_purchaseInfo;
    v5->_purchaseInfo = v6;

    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](v5->_purchaseInfo, "count")}];
    responseItems = v5->_responseItems;
    v5->_responseItems = v8;

    v10 = [v4 firstObject];
    v11 = [v10 isMachineBased];
    if (v11)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 logKey];
        *buf = 138412290;
        v31 = v13;
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
          if (v11 != [v19 isMachineBased])
          {
            v21 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              v22 = [v19 logKey];
              *buf = 138412290;
              v31 = v22;
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