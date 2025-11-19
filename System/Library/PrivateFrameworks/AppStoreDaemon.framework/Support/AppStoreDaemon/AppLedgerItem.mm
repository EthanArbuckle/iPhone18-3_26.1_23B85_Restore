@interface AppLedgerItem
- (AppLedgerItem)initWithBundleID:(id)a3 itemID:(id)a4;
- (AppLedgerItem)initWithDictionary:(id)a3;
- (NSArray)installs;
- (NSDictionary)dictionaryRepresentation;
- (id)lastUserInitiatedInstall;
@end

@implementation AppLedgerItem

- (AppLedgerItem)initWithBundleID:(id)a3 itemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = AppLedgerItem;
  v9 = [(AppLedgerItem *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    if (!v10->_bundleIdentifier)
    {
      v13 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v10->_itemID, a4);
    v11 = +[NSMutableArray array];
    installs = v10->_installs;
    v10->_installs = v11;
  }

  v13 = v10;
LABEL_6:

  return v13;
}

- (AppLedgerItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = AppLedgerItem;
  v5 = [(AppLedgerItem *)&v41 init];
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = sub_1002380D8(v4, @"bundleIdentifier");
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v6;

  if (!v5->_bundleIdentifier)
  {
    v35 = 0;
    goto LABEL_27;
  }

  v8 = sub_10023790C(v4, @"itemID");
  itemID = v5->_itemID;
  v5->_itemID = v8;

  v10 = [v4 objectForKeyedSubscript:@"installs"];
  v39 = +[NSMutableArray array];
  if (!v10)
  {
    goto LABEL_24;
  }

  v38 = v5;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = v10;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v43;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v43 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v42 + 1) + 8 * i);
      v16 = [AppLedgerInstallItem alloc];
      v17 = v15;
      if (!v16)
      {
        v19 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v46.receiver = v16;
      v46.super_class = AppLedgerInstallItem;
      v18 = [(AppLedgerItem *)&v46 init];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1002380D8(v17, @"bundleVersion");
        isa = v19[1].super.isa;
        v19[1].super.isa = v20;

        v22 = sub_10023790C(v17, @"externalVersionID");
        v23 = v19->_itemID;
        v19->_itemID = v22;

        v24 = sub_100237CE4(v17, @"installDate");
        installs = v19->_installs;
        v19->_installs = v24;

        v26 = sub_10023790C(v17, @"installType");
        objc_opt_class();
        v27 = sub_1001C09E4(v26);

        if (v27)
        {
          v19->_bundleIdentifier = [v26 integerValue];
        }

        v28 = sub_10023790C(v17, @"packageType");
        objc_opt_class();
        v29 = sub_1001C09E4(v28);

        if (v29)
        {
          v19[1]._bundleIdentifier = [v28 integerValue];
        }

        v30 = sub_1002380D8(v17, @"originator");
        v31 = v19[1]._installs;
        v19[1]._installs = v30;

        v32 = v19->_installs;
        if (v32)
        {
          v33 = v19;

          [(NSMutableArray *)v39 addObject:v33];
          goto LABEL_21;
        }

        goto LABEL_19;
      }

LABEL_20:
      v33 = 0;
LABEL_21:
    }

    v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  }

  while (v12);
LABEL_23:

  v5 = v38;
  v10 = v37;
LABEL_24:

  v34 = v5->_installs;
  v5->_installs = v39;

LABEL_25:
  v35 = v5;
LABEL_27:

  return v35;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(AppLedgerItem *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"bundleIdentifier"];

  v5 = [(AppLedgerItem *)self itemID];
  v17 = v3;
  [v3 setObject:v5 forKeyedSubscript:@"itemID"];

  if (self)
  {
    v6 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = self->_installs;
    v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          if (v11)
          {
            v12 = +[NSMutableDictionary dictionary];
            [v12 setObject:v11[4] forKeyedSubscript:@"bundleVersion"];
            [v12 setObject:v11[3] forKeyedSubscript:@"externalVersionID"];
            [v12 setObject:v11[1] forKeyedSubscript:@"installDate"];
            v13 = [NSNumber numberWithInteger:v11[2]];
            [v12 setObject:v13 forKeyedSubscript:@"installType"];

            v14 = [NSNumber numberWithInteger:v11[6]];
            [v12 setObject:v14 forKeyedSubscript:@"packageType"];

            [v12 setObject:v11[5] forKeyedSubscript:@"originator"];
          }

          else
          {
            v12 = 0;
          }

          [v6 addObject:v12];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        v8 = v15;
      }

      while (v15);
    }
  }

  else
  {
    v6 = 0;
  }

  [v17 setObject:v6 forKeyedSubscript:@"installs"];

  return v17;
}

- (NSArray)installs
{
  v2 = [(NSMutableArray *)self->_installs copy];

  return v2;
}

- (id)lastUserInitiatedInstall
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(NSMutableArray *)self->_installs reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        if (v6)
        {
          v7 = v6[2];
          v8 = v7 > 0x21;
          v9 = (1 << v7) & 0x340088000;
          if (!v8 && v9 != 0)
          {
            continue;
          }
        }

        v3 = v6;
        goto LABEL_15;
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v3;
}

@end