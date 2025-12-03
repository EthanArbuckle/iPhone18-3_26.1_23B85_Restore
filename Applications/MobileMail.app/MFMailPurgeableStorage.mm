@interface MFMailPurgeableStorage
- (MFMailPurgeableStorage)initWithAccountsProvider:(id)provider;
- (int64_t)nonPurgeableSpace;
@end

@implementation MFMailPurgeableStorage

- (MFMailPurgeableStorage)initWithAccountsProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MFMailPurgeableStorage;
  v6 = [(MFMailPurgeableStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountsProvider, provider);
    v7->_previousUrgency = -1;
  }

  return v7;
}

- (int64_t)nonPurgeableSpace
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1001E5264;
  v44[3] = &unk_1006548C0;
  v44[4] = &v45;
  v31 = objc_retainBlock(v44);
  library = [(MFMailPurgeableStorage *)self library];
  v4 = [library messageBasePathForAccount:0];

  v5 = [EDMessageDataLayoutManager rootMessageDataDirectoryForBasePath:v4 purgeable:0];
  (v31[2])(v31, v5);

  +[MailAccount mailAccounts];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v6)
  {
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        personaIdentifier = [v9 personaIdentifier];
        if (personaIdentifier)
        {
          supportsPurge = [v9 supportsPurge];

          if ((supportsPurge & 1) == 0)
          {
            library2 = [(MFMailPurgeableStorage *)self library];
            v13 = [library2 messageBasePathForAccount:v9];

            v14 = [EDMessageDataLayoutManager rootMessageDataDirectoryForBasePath:v13 purgeable:0];
            (v31[2])(v31, v14);

            v4 = v13;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v6);
  }

  v30 = +[EMPersistenceLayoutManager baseMailDirectory];
  v15 = +[NSFileManager defaultManager];
  v39 = 0;
  v16 = [v15 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:0 error:&v39];
  v17 = v39;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v16;
  v18 = [v32 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      v20 = 0;
      v21 = v17;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v32);
        }

        v22 = *(*(&v35 + 1) + 8 * v20);
        v23 = +[NSFileManager defaultManager];
        path = [v22 path];
        v34 = v21;
        v25 = [v23 attributesOfItemAtPath:path error:&v34];
        v17 = v34;

        v26 = [v25 objectForKeyedSubscript:NSFileTypeDirectory];
        LOBYTE(v23) = [v26 BOOLValue];

        if ((v23 & 1) == 0)
        {
          fileSize = [v25 fileSize];
          if ((fileSize & 0x8000000000000000) == 0)
          {
            v46[3] += fileSize;
          }
        }

        v20 = v20 + 1;
        v21 = v17;
      }

      while (v18 != v20);
      v18 = [v32 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v18);
  }

  v28 = v46[3];
  _Block_object_dispose(&v45, 8);
  return v28;
}

@end