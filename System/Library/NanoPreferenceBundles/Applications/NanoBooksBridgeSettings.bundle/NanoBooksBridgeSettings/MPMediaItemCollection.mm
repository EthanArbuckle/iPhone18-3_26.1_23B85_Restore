@interface MPMediaItemCollection
- (id)bk_cloudRepresentativeItem;
- (id)description;
@end

@implementation MPMediaItemCollection

- (id)bk_cloudRepresentativeItem
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(MPMediaItemCollection *)self items];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = MPMediaItemPropertyPurchaseHistoryID;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = [v8 valueForProperty:v6];
      if ([v8 mediaType] == &dword_4)
      {
        if ([v9 longLongValue])
        {
          break;
        }
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v10 = v8;

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_10:
  }

  v11 = NBDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_121AC(v11);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MPMediaItemCollection *)self items];
  v6 = [NSString stringWithFormat:@"<%@(%p) %@>", v4, self, v5];

  return v6;
}

@end