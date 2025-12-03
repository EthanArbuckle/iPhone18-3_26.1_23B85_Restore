@interface STStorageLocalStorageController
- (id)createCollection;
@end

@implementation STStorageLocalStorageController

- (id)createCollection
{
  v36.receiver = self;
  v36.super_class = STStorageLocalStorageController;
  storageApp = [(STStorageFPFSController *)&v36 storageApp];
  v4 = +[STFileProviderMonitor sharedMonitor];
  fpDomains = [v4 fpDomains];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = fpDomains;
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
      topLevelBundleIdentifier = [v11 topLevelBundleIdentifier];
      v13 = topLevelBundleIdentifier;
      if (topLevelBundleIdentifier)
      {
        providerID = topLevelBundleIdentifier;
      }

      else
      {
        providerID = [v11 providerID];
      }

      v15 = providerID;

      bundleIdentifier = [storageApp bundleIdentifier];
      v17 = [v15 isEqualToString:bundleIdentifier];

      if (v17)
      {
        name = v11;

        if (!name)
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
            navigationItem = [(STStorageLocalStorageController *)self navigationItem];
            [navigationItem setTitle:v20];

            [(STStorageFPFSController *)self setConfirmDelete:1];
            v25 = +[FPItemManager defaultManager];
            v26 = [v25 rootCollectionForProviderDomain:name];

            v27 = +[FPItemManager defaultManager];
            v28 = [v27 trashCollectionForProviderDomain:name];

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
  name = [storageApp name];
  NSLog(@"No file provider specified for %@", name);
  v22 = 0;
LABEL_23:

  return v22;
}

@end