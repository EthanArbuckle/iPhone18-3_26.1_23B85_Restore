@interface PurchaseHistoryHideShowRequestEncoder
- (id)dataForRequestWithError:(id *)a3;
@end

@implementation PurchaseHistoryHideShowRequestEncoder

- (id)dataForRequestWithError:(id *)a3
{
  v22 = [[NSOutputStream alloc] initToMemory];
  v4 = [[DKDAAPWriter alloc] initWithStream:v22];
  [v4 startContainerWithCode:1835360883];
  [v4 writeUInt8:2 withCode:1835625316];
  [v4 startContainerWithCode:1835819884];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = self;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        [v4 startContainerWithCode:{1835821428, v21}];
        if (v10)
        {
          v11 = *(v10 + 16);
          v12 = [v11 lockerItemID];

          [v4 writeUInt64:v12 withCode:1835625572];
          v13 = *(v10 + 8) ^ 1;
        }

        else
        {
          [v4 writeUInt64:objc_msgSend(0 withCode:{"lockerItemID"), 1835625572}];
          v13 = 1;
        }

        [v4 writeUInt8:v13 & 1 withCode:1835624553];
        [v4 endContainerWithCode:1835821428];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v14 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      v7 = v14;
    }

    while (v14);
  }

  [v4 endContainerWithCode:1835819884];
  [v4 endContainerWithCode:1835360883];
  [v4 close];
  v15 = [v22 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138412290;
      v28 = v19;
      v20 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@]: Purchase History DAAP data not NSData", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

@end