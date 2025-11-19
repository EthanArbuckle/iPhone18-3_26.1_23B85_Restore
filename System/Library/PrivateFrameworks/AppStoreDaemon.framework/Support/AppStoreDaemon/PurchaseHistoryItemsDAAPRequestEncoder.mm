@interface PurchaseHistoryItemsDAAPRequestEncoder
- (id)dataForRequestWithError:(id *)a3;
@end

@implementation PurchaseHistoryItemsDAAPRequestEncoder

- (id)dataForRequestWithError:(id *)a3
{
  revision = self->_revision;
  if (revision)
  {
    v5 = [(NSNumber *)revision intValue];
  }

  else
  {
    v5 = 0;
  }

  knownApps = self->_knownApps;
  currentPaginationToken = self->_currentPaginationToken;
  v8 = knownApps;
  v9 = currentPaginationToken;
  objc_opt_self();
  v10 = [[NSOutputStream alloc] initToMemory];
  v11 = [[DKDAAPWriter alloc] initWithStream:v10];
  [v11 startContainerWithCode:1633973106];
  objc_opt_self();
  v12 = [&off_100549308 componentsJoinedByString:{@", "}];
  [v11 writeString:v12 withCode:1835365473];

  [v11 writeUInt32:v5 withCode:1836413810];
  [v11 writeUInt8:1 withCode:1835559268];
  [v11 writeUInt8:1 withCode:1634355568];
  if ([(NSString *)v9 length])
  {
    [v11 writeString:v9 withCode:1836081511];
  }

  v13 = sub_100403578();
  v14 = [NSString stringWithFormat:@"(%@)", v13];

  [v11 writeString:v14 withCode:1836152165];
  [v11 startContainerWithCode:1634038892];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v8;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        [v11 startContainerWithCode:1634038889];
        [v11 writeUInt32:objc_msgSend(v20 withCode:{"purchaseToken"), 1634038895}];
        [v11 writeUInt64:objc_msgSend(v20 withCode:{"lockerItemID"), 1835625572}];
        [v11 endContainerWithCode:1634038889];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v17);
  }

  [v11 endContainerWithCode:1634038892];
  [v11 endContainerWithCode:1633973106];
  [v11 close];
  v21 = [v10 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      *buf = 138412290;
      v32 = v25;
      v26 = v25;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@]: Purchase History DAAP data not NSData", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

@end