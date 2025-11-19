@interface STStorageLocalStorageController
- (id)createCollection;
@end

@implementation STStorageLocalStorageController

- (id)createCollection
{
  v36.receiver = self;
  v36.super_class = STStorageLocalStorageController;
  v3 = [(STStorageFPFSController *)&v36 storageApp];
  v4 = +[STFileProviderMonitor sharedMonitor];
  v5 = [v4 fpDomains];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *v33;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      v12 = [v11 topLevelBundleIdentifier];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v11 providerID];
      }

      v15 = v14;

      v16 = [v3 bundleIdentifier];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        v18 = v11;

        if (!v18)
        {
          goto LABEL_16;
        }

        v19 = STStorageDeviceKey();
        v20 = STLocalizedString(@"On My Device");
        if ([v19 isEqualToString:@"PHONE"])
        {
          v21 = @"On My iPhone";
        }

        else if ([v19 isEqualToString:@"PAD"])
        {
          v21 = @"On My iPad";
        }

        else
        {
          if (![v19 isEqualToString:@"IPOD"])
          {
LABEL_22:
            v24 = [(STStorageLocalStorageController *)self navigationItem];
            [v24 setTitle:v20];

            [(STStorageFPFSController *)self setConfirmDelete:1];
            v25 = +[FPItemManager defaultManager];
            v26 = [v25 rootCollectionForProviderDomain:v18];

            v27 = +[FPItemManager defaultManager];
            v28 = [v27 trashCollectionForProviderDomain:v18];

            v29 = [FPUnionCollection alloc];
            v37[0] = v26;
            v37[1] = v28;
            v30 = [NSArray arrayWithObjects:v37 count:2];
            v22 = [v29 initWithCollections:v30];

            goto LABEL_23;
          }

          v21 = @"On My iPod touch";
        }

        v23 = STLocalizedString(v21);

        v20 = v23;
        goto LABEL_22;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_12:

LABEL_16:
  v18 = [v3 name];
  NSLog(@"No file provider specified for %@", v18);
  v22 = 0;
LABEL_23:

  return v22;
}

@end