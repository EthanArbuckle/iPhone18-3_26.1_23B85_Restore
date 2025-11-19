@interface MFNanoBridgeSettingsMailbox
+ (id)defaultSelectedMailboxes;
+ (unint64_t)sourceTypeForMailboxFilterType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation MFNanoBridgeSettingsMailbox

+ (id)defaultSelectedMailboxes
{
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[MailAccount activeAccounts];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count] + 4);
    v9 = [MailAccount nano_bridgeSettingsInboxesFromAccounts:v2];
    if ([v9 count])
    {
      [v8 addObjectsFromArray:v9];
    }

    if ([v2 count] >= 2)
    {
      v10 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
      if (v10)
      {
        [v8 addObject:v10];
      }
    }

    if ([v2 count])
    {
      v11 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:3];
      [v8 addObject:v11];

      v12 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:2];
      [v8 addObject:v12];

      v13 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:1];
      [v8 addObject:v13];
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

+ (unint64_t)sourceTypeForMailboxFilterType:(unint64_t)a3
{
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      return 4;
    }

    if (a3 != 32)
    {
      if (a3 == 64)
      {
        return 7;
      }

      return 0;
    }

    return 6;
  }

  else
  {
    if (a3 == 2)
    {
      return 1;
    }

    if (a3 != 4)
    {
      if (a3 == 8)
      {
        return 3;
      }

      return 0;
    }

    return 2;
  }
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end