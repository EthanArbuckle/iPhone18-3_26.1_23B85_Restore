@interface BKLibraryDataSourceJaliscoPurchases
- (BKLibraryDataSourceJaliscoPurchases)init;
- (void)fetchAssetIDsWithCompletion:(id)completion;
@end

@implementation BKLibraryDataSourceJaliscoPurchases

- (BKLibraryDataSourceJaliscoPurchases)init
{
  v3.receiver = self;
  v3.super_class = BKLibraryDataSourceJaliscoPurchases;
  return [(BKLibraryDataSourceJalisco *)&v3 initWithIdentifier:@"com.apple.ibooks.datasource.jalisco.purchases"];
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  v5 = +[BLJaliscoDAAPClient sharedClient];

  if (v5)
  {
    +[BLJaliscoDAAPClient sharedClient];
    v6 = v23 = self;
    v7 = [v6 predicateForItems:0];

    v8 = +[NSNull null];
    v9 = [NSPredicate predicateWithFormat:@"expectedDate = %@", v8];

    v10 = [NSCompoundPredicate alloc];
    v29[0] = v7;
    v29[1] = v9;
    v11 = [NSArray arrayWithObjects:v29 count:2];
    v12 = [v10 initWithType:1 subpredicates:v11];

    v13 = +[BLJaliscoDAAPClient sharedClient];
    v14 = [v13 predicateForBookletItems:0];

    v15 = +[NSNull null];
    v16 = [NSPredicate predicateWithFormat:@"parentItem.expectedDate = %@", v15];

    v17 = [NSCompoundPredicate alloc];
    v28[0] = v14;
    v28[1] = v16;
    v18 = [NSArray arrayWithObjects:v28 count:2];
    v19 = [v17 initWithType:1 subpredicates:v18];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001E5B7C;
    v25[3] = &unk_100A05E68;
    v26 = v12;
    v27 = completionCopy;
    v24.receiver = v23;
    v24.super_class = BKLibraryDataSourceJaliscoPurchases;
    v20 = v12;
    [(BKLibraryDataSourceJalisco *)&v24 fetchAssetIDsWithPredicate:v20 bookletPredicate:v19 completion:v25];
  }

  else
  {
    kdebug_trace();
    v7 = [NSError bu_errorWithDomain:BLJaliscoDAAPClientErrorDomain code:3 description:@"Purchases assets fetch failed - jalisco client is nil" underlyingError:0];
    v21 = BKLibraryDataSourceJaliscoLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1007959E0();
    }

    v22 = objc_retainBlock(completionCopy);
    v9 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, &__NSArray0__struct, v7);
    }
  }
}

@end