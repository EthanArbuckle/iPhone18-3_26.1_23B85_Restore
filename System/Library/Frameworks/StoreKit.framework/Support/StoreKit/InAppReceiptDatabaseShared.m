@interface InAppReceiptDatabaseShared
+ (id)databasePathsForBundleID:(id)a3 error:(id *)a4;
@end

@implementation InAppReceiptDatabaseShared

+ (id)databasePathsForBundleID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v18 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v18];

  v7 = v18;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = [v6 dataContainerURL];
    v12 = [v11 path];

    if (v12)
    {
      v13 = [v12 stringByAppendingPathComponent:@"/Library/Caches/StoreKit/"];
      v14 = [v13 stringByAppendingPathComponent:@"receipts.db"];
      v19[0] = v14;
      v15 = [v13 stringByAppendingPathComponent:@"receipts.db-shm"];
      v19[1] = v15;
      v16 = [v13 stringByAppendingPathComponent:@"receipts.db-wal"];
      v19[2] = v16;
      v10 = [NSArray arrayWithObjects:v19 count:3];
    }

    else if (a4)
    {
      ASDErrorWithTitleAndMessage();
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end