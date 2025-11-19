@interface IAPInfoDAAPRequestEncoder
- (id)dataForRequestWithError:(id *)a3;
@end

@implementation IAPInfoDAAPRequestEncoder

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

  v6 = self->_knownIAPs;
  objc_opt_self();
  v7 = [[NSOutputStream alloc] initToMemory];
  v8 = [[DKDAAPWriter alloc] initWithStream:v7];
  [v8 startContainerWithCode:1633973106];
  [v8 writeUInt32:v5 withCode:1836413810];
  objc_opt_self();
  v34[0] = @"daap.databasesongs";
  v34[1] = @"dmap.status";
  v34[2] = @"dmap.updatetype";
  v34[3] = @"dmap.specifiedtotalcount";
  v34[4] = @"dmap.returnedcount";
  v34[5] = @"dmap.serverrevision";
  v34[6] = @"dmap.listing";
  v34[7] = @"dmap.listingitem";
  v34[8] = @"dmap.itemkind";
  v34[9] = @"com.apple.itunes.adam-id";
  v34[10] = @"daap.songdatemodified";
  v34[11] = @"com.apple.itunes.cloud-purchased-token";
  v34[12] = @"com.apple.itunes.store.in-app-purchase-type";
  v34[13] = @"com.apple.itunes.store.in-app-purchase-expiration-date";
  v34[14] = @"com.apple.itunes.store.app-adam-id";
  v34[15] = @"dmap.longitemid";
  v34[16] = @"com.apple.itunes.store.in-app-used-offers";
  v34[17] = @"com.apple.itunes.store.in-app-subscription-family-id";
  v34[18] = @"com.apple.itunes.store.in-app-auto-renew-status";
  v9 = [NSArray arrayWithObjects:v34 count:19];
  v10 = [v9 componentsJoinedByString:{@", "}];
  [v8 writeString:v10 withCode:1835365473];

  [v8 startContainerWithCode:1634038892];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v6;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        [v8 startContainerWithCode:1634038889];
        v17 = [v16 purchaseDate];
        [v17 timeIntervalSince1970];
        v19 = v18;

        [v8 writeUInt32:v19 withCode:1634038895];
        v20 = [v16 adamId];
        v21 = [v20 unsignedLongLongValue];

        [v8 writeUInt64:v21 withCode:1835625572];
        [v8 endContainerWithCode:1634038889];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  [v8 endContainerWithCode:1634038892];
  [v8 endContainerWithCode:1633973106];
  [v8 close];
  v22 = [v7 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      *buf = 138412290;
      v33 = v26;
      v27 = v26;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@]: IAP Info DAAP data not NSData", buf, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

@end