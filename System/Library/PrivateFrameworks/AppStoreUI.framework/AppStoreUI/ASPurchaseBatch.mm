@interface ASPurchaseBatch
- (id)_copyItemsByStorefrontFromItems:(id)items;
- (id)_tooBigForNetworkErrorForError:(id)error withCount:(int64_t)count;
- (id)copyFilteredItemsFromItems:(id)items;
- (id)everythingFailedErrorForError:(id)error;
- (id)mergedErrorForError:(id)error withCount:(int64_t)count;
@end

@implementation ASPurchaseBatch

- (id)copyFilteredItemsFromItems:(id)items
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [(ASPurchaseBatch *)self _copyItemsByStorefrontFromItems:?];
  v5 = [objc_msgSend(MEMORY[0x277D69A80] "currentDevice")];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v25 objects:v39 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v26;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      if ([v5 hasPrefix:v11])
      {
        v8 = v11;
        goto LABEL_14;
      }

      if (!v8 || [v11 compare:v8] == -1)
      {
        v8 = v11;
      }
    }

    v7 = [v4 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_14:
  if (v8)
  {
    v12 = [v4 objectForKey:v8];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [v4 count];
      v18 = [v12 count];
      v19 = [items count];
      v29 = 138413314;
      v30 = v16;
      v31 = 2112;
      v32 = v8;
      v33 = 2048;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      v37 = 2048;
      v38 = v19;
      LODWORD(v24) = 52;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v29, v24}];
        free(v21);
        SSFileLog();
      }
    }
  }

  else
  {
LABEL_23:
    v12 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)everythingFailedErrorForError:(id)error
{
  domain = [error domain];
  v5 = *MEMORY[0x277D6A110];
  if (![domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    return error;
  }

  code = [error code];
  if (code == 105)
  {
    mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(ASAppStoreUIBundle(), "localizedStringForKey:value:table:", @"INCOMPATIBLE_DEVICE_ERROR_BODY_ALL", &stru_285213C30, 0), objc_msgSend(mEMORY[0x277D7FCE0], "systemName")];
    code2 = [error code];
    v7 = [ASAppStoreUIBundle() localizedStringForKey:@"INCOMPATIBLE_UPDATE_ERROR_TITLE_ALL" value:&stru_285213C30 table:0];
    v8 = domain;
    v9 = code2;
    v10 = v13;
    goto LABEL_7;
  }

  if (code != 103)
  {
    return error;
  }

  v7 = [ASAppStoreUIBundle() localizedStringForKey:@"NOT_ENOUGH_SPACE_FOR_ALL_APPS" value:&stru_285213C30 table:0];
  v8 = v5;
  v9 = 103;
  v10 = 0;
LABEL_7:

  return MEMORY[0x2821CF670](v8, v9, v7, v10);
}

- (id)mergedErrorForError:(id)error withCount:(int64_t)count
{
  if (count < 2)
  {
    return error;
  }

  domain = [error domain];
  v8 = *MEMORY[0x277D6A110];
  if (![domain isEqualToString:*MEMORY[0x277D6A110]])
  {
    return error;
  }

  code = [error code];
  if (code != 102)
  {
    if (code == 105)
    {
      mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(ASAppStoreUIBundle(), "localizedStringForKey:value:table:", @"INCOMPATIBLE_DEVICE_ERROR_BODY_SOME", &stru_285213C30, 0), objc_msgSend(mEMORY[0x277D7FCE0], "systemName")];
      code2 = [error code];
      v10 = [ASAppStoreUIBundle() localizedStringForKey:@"INCOMPATIBLE_UPDATE_ERROR_TITLE_SOME" value:&stru_285213C30 table:0];
      v11 = domain;
      v12 = code2;
      v13 = v16;
      goto LABEL_9;
    }

    if (code == 103)
    {
      v10 = [ASAppStoreUIBundle() localizedStringForKey:@"NOT_ENOUGH_SPACE_FOR_SOME_APPS" value:&stru_285213C30 table:0];
      v11 = v8;
      v12 = 103;
      v13 = 0;
LABEL_9:

      return MEMORY[0x2821CF670](v11, v12, v10, v13);
    }

    return error;
  }

  return [(ASPurchaseBatch *)self _tooBigForNetworkErrorForError:error withCount:count];
}

- (id)_copyItemsByStorefrontFromItems:(id)items
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  loadedMap = [MEMORY[0x277D7FD40] loadedMap];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        itemIdentifier = [v10 itemIdentifier];
        if (itemIdentifier)
        {
          v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithItemIdentifier:itemIdentifier];
          itemIdentifier = [objc_msgSend(objc_msgSend(loadedMap applicationForItemIdentifier:{v12), "storeFrontIdentifier"), "stringValue"}];
        }

        if (!itemIdentifier)
        {
          itemIdentifier = &stru_285213C30;
        }

        v13 = [v4 objectForKey:itemIdentifier];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v13 forKey:itemIdentifier];
        }

        [v13 addObject:v10];
      }

      v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_tooBigForNetworkErrorForError:(id)error withCount:(int64_t)count
{
  if (MGGetBoolAnswer())
  {
    v6 = ASAppStoreUIBundle();
    v7 = @"TOO_BIG_FOR_NETWORK_BODY_FOR_APPS_WLAN";
  }

  else
  {
    v8 = [objc_msgSend(MEMORY[0x277D69A80] "currentDevice")];
    v6 = ASAppStoreUIBundle();
    if (v8)
    {
      v7 = @"TOO_BIG_FOR_NETWORK_BODY_FOR_APPS";
    }

    else
    {
      v7 = @"TOO_BIG_FOR_NETWORK_BODY_FOR_APPS_NO_WIFI";
    }
  }

  v9 = [v6 localizedStringForKey:v7 value:&stru_285213C30 table:0];
  userInfo = [error userInfo];
  v11 = [userInfo objectForKey:*MEMORY[0x277D6A120]];
  if (v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(ASAppStoreUIBundle(), "localizedStringForKey:value:table:", @"TOO_BIG_FOR_NETWORK_TITLE_FOR_APPS", &stru_285213C30, 0), count, v11];
  }

  else
  {
    v12 = 0;
  }

  domain = [error domain];
  code = [error code];

  return MEMORY[0x2821CF670](domain, code, v12, v9);
}

@end