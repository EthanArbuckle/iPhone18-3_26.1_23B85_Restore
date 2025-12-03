@interface BKJaliscoStatus
+ (BOOL)addHidden:(id)hidden inMOC:(id)c;
+ (BOOL)addLocal:(id)local inMOC:(id)c;
+ (BOOL)addStatus:(id)status forStoreIds:(id)ids inMOC:(id)c;
+ (BOOL)hasStatusValues:(id)values;
+ (BOOL)mergeLocalAssets:(id)assets inMOC:(id)c;
+ (BOOL)mergeSerializedHidden:(id)hidden inMOC:(id)c;
+ (BOOL)mergeSerializedLocal:(id)local inMOC:(id)c;
+ (BOOL)mergedSerializedStatus:(id)status summaries:(id)summaries inMOC:(id)c;
+ (id)allHiddenStoreIds:(id)ids;
+ (id)allLocalStoreIds:(id)ids;
+ (id)allStoreIdsForStatus:(id)status inMOC:(id)c;
+ (id)serializeAllHidden:(id)hidden;
+ (id)serializeAllLocal:(id)local;
+ (id)serializeAllStatus:(id)status inMOC:(id)c;
+ (void)dsidChangeCleanup:(id)cleanup;
@end

@implementation BKJaliscoStatus

+ (id)allStoreIdsForStatus:(id)status inMOC:(id)c
{
  statusCopy = status;
  cCopy = c;
  if (!cCopy)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v7 = [NSPredicate predicateWithValue:1];
  v8 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:cCopy];
  v9 = objc_alloc_init(NSFetchRequest);
  [v9 setEntity:v8];
  [v9 setPredicate:v7];
  [v9 setReturnsObjectsAsFaults:0];
  v34 = 0;
  v10 = [cCopy executeFetchRequest:v9 error:&v34];
  v11 = v34;
  if ([v10 count])
  {
    v26 = v11;
    v28 = v8;
    v29 = v7;
    v12 = +[NSMutableSet set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          status = [v18 status];
          storeId = [v18 storeId];
          v21 = storeId;
          if (status)
          {
            v22 = storeId == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            if ([status isEqualToString:statusCopy])
            {
              [v12 addObject:v21];
            }

            else
            {
              [v12 removeObject:v21];
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v15);
    }

    v23 = [v12 copy];
    v8 = v28;
    v7 = v29;
    v11 = v26;
    v10 = v27;
  }

  else
  {
    if (!v11)
    {
      v23 = 0;
      goto LABEL_26;
    }

    v24 = BCIMLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v36 = "+[BKJaliscoStatus allStoreIdsForStatus:inMOC:]";
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKJaliscoStatus.m";
      v39 = 1024;
      v40 = 75;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v12 = BCIMLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Fetch Error: %@", buf, 0xCu);
    }

    v23 = 0;
  }

LABEL_26:
LABEL_27:

  return v23;
}

+ (id)allHiddenStoreIds:(id)ids
{
  idsCopy = ids;
  v4 = +[BKJaliscoStatus statusValueHidden];
  v5 = [BKJaliscoStatus allStoreIdsForStatus:v4 inMOC:idsCopy];

  return v5;
}

+ (id)allLocalStoreIds:(id)ids
{
  idsCopy = ids;
  v4 = +[BKJaliscoStatus statusValueLocal];
  v5 = [BKJaliscoStatus allStoreIdsForStatus:v4 inMOC:idsCopy];

  return v5;
}

+ (id)serializeAllStatus:(id)status inMOC:(id)c
{
  if (c)
  {
    cCopy = c;
    status = [NSPredicate predicateWithFormat:@"%K == %@", @"status", status];
    v7 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:cCopy];
    v8 = objc_alloc_init(NSFetchRequest);
    [v8 setEntity:v7];
    v9 = [NSArray arrayWithObjects:@"storeId", @"timeIntervalSinceReferenceDate", 0];
    [v8 setPropertiesToFetch:v9];

    [v8 setResultType:2];
    [v8 setPredicate:status];
    v16 = 0;
    v10 = [cCopy executeFetchRequest:v8 error:&v16];

    v11 = v16;
    v12 = v11;
    if (!v10 && v11)
    {
      v13 = BCIMLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v18 = "+[BKJaliscoStatus serializeAllStatus:inMOC:]";
        v19 = 2080;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKJaliscoStatus.m";
        v21 = 1024;
        v22 = 110;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v14 = BCIMLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "@Fetch Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)serializeAllHidden:(id)hidden
{
  hiddenCopy = hidden;
  v4 = +[BKJaliscoStatus statusValueHidden];
  v5 = [BKJaliscoStatus serializeAllStatus:v4 inMOC:hiddenCopy];

  return v5;
}

+ (id)serializeAllLocal:(id)local
{
  localCopy = local;
  v4 = +[BKJaliscoStatus statusValueLocal];
  v5 = [BKJaliscoStatus serializeAllStatus:v4 inMOC:localCopy];

  return v5;
}

+ (BOOL)addStatus:(id)status forStoreIds:(id)ids inMOC:(id)c
{
  statusCopy = status;
  idsCopy = ids;
  cCopy = c;
  if (cCopy && [statusCopy length] && objc_msgSend(idsCopy, "count"))
  {
    v10 = objc_autoreleasePoolPush();
    v50 = +[NSDate date];
    [v50 timeIntervalSinceReferenceDate];
    v55 = [NSNumber numberWithUnsignedLongLong:v11];
    idsCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeId", idsCopy];
    v13 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:cCopy];
    v14 = objc_alloc_init(NSFetchRequest);
    [v14 setEntity:v13];
    [v14 setPredicate:idsCopy];
    [v14 setReturnsObjectsAsFaults:0];
    v65 = 0;
    v51 = v14;
    v15 = [cCopy executeFetchRequest:v14 error:&v65];
    v16 = v65;
    if (v15)
    {
      v49 = v16;
      v45 = v13;
      v52 = [v15 valueForKey:@"storeId"];
      v17 = [v52 count];
      v18 = [idsCopy count];
      v19 = v17 > v18;
      v54 = cCopy;
      v47 = v10;
      if (v17 > v18)
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v20 = v15;
        v21 = [v20 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v62;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v62 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [cCopy deleteObject:*(*(&v61 + 1) + 8 * i)];
            }

            v22 = [v20 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v22);
        }

        v60 = v49;
        v15 = [cCopy executeFetchRequest:v51 error:&v60];
        v25 = v60;

        v30 = [v15 valueForKey:@"storeId"];

        v49 = v25;
      }

      else
      {
        v30 = v52;
      }

      v46 = idsCopy;
      v44 = v15;
      v53 = v30;
      v31 = [[NSDictionary alloc] initWithObjects:v15 forKeys:v30];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v48 = idsCopy;
      v32 = idsCopy;
      v33 = [v32 countByEnumeratingWithState:&v56 objects:v72 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v57;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v57 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v56 + 1) + 8 * j);
            v38 = [v31 objectForKey:v37];
            v39 = v38;
            if (v38)
            {
              status = [v38 status];
              v41 = [status isEqualToString:statusCopy];

              if (v41)
              {
                goto LABEL_32;
              }

              [v39 setStatus:statusCopy];
              [v39 setTimeIntervalSinceReferenceDate:v55];
            }

            else
            {
              v42 = [NSEntityDescription insertNewObjectForEntityForName:@"BKJaliscoStatus" inManagedObjectContext:v54];
              [v42 setStoreId:v37];
              [v42 setStatus:statusCopy];
              [v42 setTimeIntervalSinceReferenceDate:v55];
            }

            v19 = 1;
LABEL_32:
          }

          v34 = [v32 countByEnumeratingWithState:&v56 objects:v72 count:16];
        }

        while (v34);
      }

      v10 = v47;
      idsCopy = v48;
      cCopy = v54;
      v26 = v49;
      v28 = v50;
      v13 = v45;
      idsCopy = v46;
      v29 = v44;
    }

    else
    {
      if (!v16)
      {
        v19 = 0;
        v28 = v50;
        goto LABEL_36;
      }

      v26 = v16;
      v27 = BCIMLog();
      v28 = v50;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v67 = "+[BKJaliscoStatus addStatus:forStoreIds:inMOC:]";
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKJaliscoStatus.m";
        v70 = 1024;
        v71 = 188;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v29 = BCIMLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v26;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "@Fetch Error: %@", buf, 0xCu);
      }

      v19 = 0;
    }

LABEL_36:
    objc_autoreleasePoolPop(v10);
    goto LABEL_37;
  }

  v19 = 0;
LABEL_37:

  return v19;
}

+ (BOOL)addLocal:(id)local inMOC:(id)c
{
  cCopy = c;
  localCopy = local;
  v7 = +[BKJaliscoStatus statusValueLocal];
  v8 = [BKJaliscoStatus addStatus:v7 forStoreIds:localCopy inMOC:cCopy];

  return v8;
}

+ (BOOL)addHidden:(id)hidden inMOC:(id)c
{
  cCopy = c;
  hiddenCopy = hidden;
  v7 = +[BKJaliscoStatus statusValueHidden];
  v8 = [BKJaliscoStatus addStatus:v7 forStoreIds:hiddenCopy inMOC:cCopy];

  return v8;
}

+ (BOOL)mergedSerializedStatus:(id)status summaries:(id)summaries inMOC:(id)c
{
  statusCopy = status;
  summariesCopy = summaries;
  cCopy = c;
  if (cCopy && [statusCopy length] && objc_msgSend(summariesCopy, "count"))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [summariesCopy valueForKey:@"storeId"];
    v11 = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeId", v10];
    v12 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:cCopy];
    v13 = objc_alloc_init(NSFetchRequest);
    [v13 setEntity:v12];
    [v13 setPredicate:v11];
    [v13 setReturnsObjectsAsFaults:0];
    v56 = 0;
    v14 = [cCopy executeFetchRequest:v13 error:&v56];
    v15 = v56;
    v16 = v15;
    if (v14)
    {
      v39 = v15;
      v41 = v13;
      v42 = v12;
      v43 = v11;
      v44 = v10;
      v45 = v9;
      [v14 valueForKey:@"storeId"];
      v38 = v40 = v14;
      v17 = [[NSDictionary alloc] initWithObjects:v14 forKeys:v38];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v46 = summariesCopy;
      obj = summariesCopy;
      v51 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v51)
      {
        v49 = 0;
        goto LABEL_24;
      }

      v49 = 0;
      v18 = *v53;
      v19 = @"storeId";
      while (1)
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = [v21 objectForKey:v19];
          v23 = [v21 objectForKey:@"timeIntervalSinceReferenceDate"];
          v24 = [v17 objectForKey:v22];
          v25 = v24;
          if (!v24)
          {
            v35 = [NSEntityDescription insertNewObjectForEntityForName:@"BKJaliscoStatus" inManagedObjectContext:cCopy];
            [v35 setStoreId:v22];
            [v35 setStatus:statusCopy];
            [v35 setTimeIntervalSinceReferenceDate:v23];

            goto LABEL_15;
          }

          status = [v24 status];
          v27 = [status isEqualToString:statusCopy];

          if ((v27 & 1) == 0)
          {
            timeIntervalSinceReferenceDate = [v25 timeIntervalSinceReferenceDate];
            unsignedLongValue = [timeIntervalSinceReferenceDate unsignedLongValue];
            v29 = v19;
            v30 = v18;
            v31 = v17;
            v32 = statusCopy;
            unsignedLongValue2 = [v23 unsignedLongValue];

            v34 = unsignedLongValue >= unsignedLongValue2;
            statusCopy = v32;
            v17 = v31;
            v18 = v30;
            v19 = v29;
            if (!v34)
            {
              [v25 setStatus:statusCopy];
              [v25 setTimeIntervalSinceReferenceDate:v23];
LABEL_15:
              v49 = 1;
            }
          }
        }

        v51 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        if (!v51)
        {
LABEL_24:

          v9 = v45;
          summariesCopy = v46;
          v11 = v43;
          v10 = v44;
          v13 = v41;
          v12 = v42;
          v16 = v39;
          v14 = v40;
          goto LABEL_25;
        }
      }
    }

    if (v15)
    {
      NSLog(@"Fetch Error: %@", v15);
    }

    v49 = 0;
LABEL_25:

    objc_autoreleasePoolPop(v9);
    v36 = v49;
  }

  else
  {
    v36 = 0;
  }

  return v36 & 1;
}

+ (BOOL)mergeSerializedLocal:(id)local inMOC:(id)c
{
  cCopy = c;
  localCopy = local;
  v7 = +[BKJaliscoStatus statusValueLocal];
  v8 = [BKJaliscoStatus mergedSerializedStatus:v7 summaries:localCopy inMOC:cCopy];

  return v8;
}

+ (BOOL)mergeSerializedHidden:(id)hidden inMOC:(id)c
{
  cCopy = c;
  hiddenCopy = hidden;
  v7 = +[BKJaliscoStatus statusValueHidden];
  v8 = [BKJaliscoStatus mergedSerializedStatus:v7 summaries:hiddenCopy inMOC:cCopy];

  return v8;
}

+ (BOOL)hasStatusValues:(id)values
{
  if (!values)
  {
    return 0;
  }

  valuesCopy = values;
  v4 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:valuesCopy];
  v5 = objc_alloc_init(NSFetchRequest);
  [v5 setEntity:v4];
  v6 = [NSPredicate predicateWithValue:1];
  [v5 setPredicate:v6];

  v11 = 0;
  v7 = [valuesCopy countForFetchRequest:v5 error:&v11];

  v8 = v11;
  v9 = v8;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      NSLog(@"Fetch Error: %@", v8);
    }

    v7 = 0;
  }

  return v7 != 0;
}

+ (void)dsidChangeCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  if (cleanupCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [NSPredicate predicateWithValue:1];
    v6 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:cleanupCopy];
    v7 = objc_alloc_init(NSFetchRequest);
    [v7 setEntity:v6];
    [v7 setPredicate:v5];
    v20 = 0;
    v8 = [cleanupCopy executeFetchRequest:v7 error:&v20];
    v9 = v20;
    if ([v8 count])
    {
      v15 = v4;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [cleanupCopy deleteObject:*(*(&v16 + 1) + 8 * v14)];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v12);
      }

      v4 = v15;
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (BOOL)mergeLocalAssets:(id)assets inMOC:(id)c
{
  assetsCopy = assets;
  cCopy = c;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v55 = [BKJaliscoStatus allLocalStoreIds:cCopy];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v66;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v65 + 1) + 8 * i);
        storeID = [v14 storeID];
        if ([storeID longLongValue] >= 1 && (objc_msgSend(v55, "containsObject:", storeID) & 1) == 0)
        {
          [v7 addObject:storeID];
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v16 = [[NSFetchRequest alloc] initWithEntityName:@"BKJaliscoStatus"];
    statusValueLocal = [self statusValueLocal];
    v18 = [NSPredicate predicateWithFormat:@"%K != %@ AND %K IN %@", @"status", statusValueLocal, @"storeId", v7];
    [v16 setPredicate:v18];

    [v16 setReturnsObjectsAsFaults:0];
    v64 = 0;
    v19 = [cCopy executeFetchRequest:v16 error:&v64];
    v20 = v64;
    v21 = v20;
    v52 = v9;
    if (v19)
    {
      v46 = v20;
      v48 = v16;
      v50 = cCopy;
      v51 = v8;
      v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v47 = v19;
      v23 = v19;
      v24 = [v23 countByEnumeratingWithState:&v60 objects:v76 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v61;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v61 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v60 + 1) + 8 * j);
            storeId = [v28 storeId];
            if ([storeId length])
            {
              [v22 setObject:v28 forKeyedSubscript:storeId];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v60 objects:v76 count:16];
        }

        while (v25);
      }

      v49 = v7;

      v30 = objc_alloc_init(NSMutableArray);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v51;
      v31 = [obj countByEnumeratingWithState:&v56 objects:v75 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v57;
        do
        {
          for (k = 0; k != v32; k = k + 1)
          {
            if (*v57 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v56 + 1) + 8 * k);
            storeID2 = [v35 storeID];
            v37 = [v22 objectForKeyedSubscript:storeID2];
            v38 = v37;
            if (v37)
            {
              timeIntervalSinceReferenceDate = [v37 timeIntervalSinceReferenceDate];
              v40 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [timeIntervalSinceReferenceDate longLongValue]);

              dataSourceInsertionDate = [v35 dataSourceInsertionDate];
              v42 = dataSourceInsertionDate;
              if (!dataSourceInsertionDate || [dataSourceInsertionDate compare:v40] == &dword_0 + 1)
              {
                [v30 addObject:storeID2];
              }
            }

            else
            {
              [v30 addObject:storeID2];
            }
          }

          v32 = [obj countByEnumeratingWithState:&v56 objects:v75 count:16];
        }

        while (v32);
      }

      if ([v30 count])
      {
        cCopy = v50;
        v43 = [objc_opt_class() addLocal:v30 inMOC:v50];
      }

      else
      {
        v43 = 0;
        cCopy = v50;
      }

      v16 = v48;
      v7 = v49;
      v21 = v46;
      v19 = v47;

      v8 = v51;
    }

    else
    {
      v44 = BCIMLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v70 = "+[BKJaliscoStatus mergeLocalAssets:inMOC:]";
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKJaliscoStatus.m";
        v73 = 1024;
        v74 = 392;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v22 = BCIMLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v70 = v21;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "@Failed to get jalico statuses {%@}", buf, 0xCu);
      }

      v43 = 0;
    }

    v9 = v52;
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

@end