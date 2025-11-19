@interface BKLibraryImportMigratedBooksOperation
- (BKLibraryImportMigratedBooksOperation)initWithLibraryAssetProvider:(id)a3;
- (void)main;
@end

@implementation BKLibraryImportMigratedBooksOperation

- (BKLibraryImportMigratedBooksOperation)initWithLibraryAssetProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKLibraryImportMigratedBooksOperation;
  v6 = [(BKLibraryImportMigratedBooksOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryAssetProvider, a3);
  }

  return v7;
}

- (void)main
{
  v3 = +[NSURL bu_booksRepositoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"Migrated" isDirectory:1];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if (([(BKLibraryImportMigratedBooksOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v13 = [(BKLibraryImportMigratedBooksOperation *)self libraryAssetProvider];
      [v13 importURL:v12 openInPlace:0 options:0 completion:0];

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end