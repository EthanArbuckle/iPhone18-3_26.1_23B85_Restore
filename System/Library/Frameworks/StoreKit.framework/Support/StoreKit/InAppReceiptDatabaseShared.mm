@interface InAppReceiptDatabaseShared
+ (id)databasePathsForBundleID:(id)d error:(id *)error;
@end

@implementation InAppReceiptDatabaseShared

+ (id)databasePathsForBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v18];

  v7 = v18;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    dataContainerURL = [v6 dataContainerURL];
    path = [dataContainerURL path];

    if (path)
    {
      v13 = [path stringByAppendingPathComponent:@"/Library/Caches/StoreKit/"];
      v14 = [v13 stringByAppendingPathComponent:@"receipts.db"];
      v19[0] = v14;
      v15 = [v13 stringByAppendingPathComponent:@"receipts.db-shm"];
      v19[1] = v15;
      v16 = [v13 stringByAppendingPathComponent:@"receipts.db-wal"];
      v19[2] = v16;
      v10 = [NSArray arrayWithObjects:v19 count:3];
    }

    else if (error)
    {
      ASDErrorWithTitleAndMessage();
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end