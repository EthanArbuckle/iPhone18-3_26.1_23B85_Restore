@interface BKJaliscoStatus
+ (BOOL)addHidden:(id)a3 inMOC:(id)a4;
+ (BOOL)addLocal:(id)a3 inMOC:(id)a4;
+ (BOOL)addStatus:(id)a3 forStoreIds:(id)a4 inMOC:(id)a5;
+ (BOOL)hasStatusValues:(id)a3;
+ (BOOL)mergeLocalAssets:(id)a3 inMOC:(id)a4;
+ (BOOL)mergeSerializedHidden:(id)a3 inMOC:(id)a4;
+ (BOOL)mergeSerializedLocal:(id)a3 inMOC:(id)a4;
+ (BOOL)mergedSerializedStatus:(id)a3 summaries:(id)a4 inMOC:(id)a5;
+ (id)allHiddenStoreIds:(id)a3;
+ (id)allLocalStoreIds:(id)a3;
+ (id)allStoreIdsForStatus:(id)a3 inMOC:(id)a4;
+ (id)serializeAllHidden:(id)a3;
+ (id)serializeAllLocal:(id)a3;
+ (id)serializeAllStatus:(id)a3 inMOC:(id)a4;
+ (void)dsidChangeCleanup:(id)a3;
@end

@implementation BKJaliscoStatus

+ (id)allStoreIdsForStatus:(id)a3 inMOC:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v7 = [NSPredicate predicateWithValue:1];
  v8 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v6];
  v9 = objc_alloc_init(NSFetchRequest);
  [v9 setEntity:v8];
  [v9 setPredicate:v7];
  [v9 setReturnsObjectsAsFaults:0];
  v34 = 0;
  v10 = [v6 executeFetchRequest:v9 error:&v34];
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
          v19 = [v18 status];
          v20 = [v18 storeId];
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            if ([v19 isEqualToString:v5])
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

+ (id)allHiddenStoreIds:(id)a3
{
  v3 = a3;
  v4 = +[BKJaliscoStatus statusValueHidden];
  v5 = [BKJaliscoStatus allStoreIdsForStatus:v4 inMOC:v3];

  return v5;
}

+ (id)allLocalStoreIds:(id)a3
{
  v3 = a3;
  v4 = +[BKJaliscoStatus statusValueLocal];
  v5 = [BKJaliscoStatus allStoreIdsForStatus:v4 inMOC:v3];

  return v5;
}

+ (id)serializeAllStatus:(id)a3 inMOC:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"status", a3];
    v7 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v5];
    v8 = objc_alloc_init(NSFetchRequest);
    [v8 setEntity:v7];
    v9 = [NSArray arrayWithObjects:@"storeId", @"timeIntervalSinceReferenceDate", 0];
    [v8 setPropertiesToFetch:v9];

    [v8 setResultType:2];
    [v8 setPredicate:v6];
    v16 = 0;
    v10 = [v5 executeFetchRequest:v8 error:&v16];

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

+ (id)serializeAllHidden:(id)a3
{
  v3 = a3;
  v4 = +[BKJaliscoStatus statusValueHidden];
  v5 = [BKJaliscoStatus serializeAllStatus:v4 inMOC:v3];

  return v5;
}

+ (id)serializeAllLocal:(id)a3
{
  v3 = a3;
  v4 = +[BKJaliscoStatus statusValueLocal];
  v5 = [BKJaliscoStatus serializeAllStatus:v4 inMOC:v3];

  return v5;
}

+ (BOOL)addStatus:(id)a3 forStoreIds:(id)a4 inMOC:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 && [v7 length] && objc_msgSend(v8, "count"))
  {
    v10 = objc_autoreleasePoolPush();
    v50 = +[NSDate date];
    [v50 timeIntervalSinceReferenceDate];
    v55 = [NSNumber numberWithUnsignedLongLong:v11];
    v12 = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeId", v8];
    v13 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v9];
    v14 = objc_alloc_init(NSFetchRequest);
    [v14 setEntity:v13];
    [v14 setPredicate:v12];
    [v14 setReturnsObjectsAsFaults:0];
    v65 = 0;
    v51 = v14;
    v15 = [v9 executeFetchRequest:v14 error:&v65];
    v16 = v65;
    if (v15)
    {
      v49 = v16;
      v45 = v13;
      v52 = [v15 valueForKey:@"storeId"];
      v17 = [v52 count];
      v18 = [v8 count];
      v19 = v17 > v18;
      v54 = v9;
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

              [v9 deleteObject:*(*(&v61 + 1) + 8 * i)];
            }

            v22 = [v20 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v22);
        }

        v60 = v49;
        v15 = [v9 executeFetchRequest:v51 error:&v60];
        v25 = v60;

        v30 = [v15 valueForKey:@"storeId"];

        v49 = v25;
      }

      else
      {
        v30 = v52;
      }

      v46 = v12;
      v44 = v15;
      v53 = v30;
      v31 = [[NSDictionary alloc] initWithObjects:v15 forKeys:v30];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v48 = v8;
      v32 = v8;
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
              v40 = [v38 status];
              v41 = [v40 isEqualToString:v7];

              if (v41)
              {
                goto LABEL_32;
              }

              [v39 setStatus:v7];
              [v39 setTimeIntervalSinceReferenceDate:v55];
            }

            else
            {
              v42 = [NSEntityDescription insertNewObjectForEntityForName:@"BKJaliscoStatus" inManagedObjectContext:v54];
              [v42 setStoreId:v37];
              [v42 setStatus:v7];
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
      v8 = v48;
      v9 = v54;
      v26 = v49;
      v28 = v50;
      v13 = v45;
      v12 = v46;
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

+ (BOOL)addLocal:(id)a3 inMOC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKJaliscoStatus statusValueLocal];
  v8 = [BKJaliscoStatus addStatus:v7 forStoreIds:v6 inMOC:v5];

  return v8;
}

+ (BOOL)addHidden:(id)a3 inMOC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKJaliscoStatus statusValueHidden];
  v8 = [BKJaliscoStatus addStatus:v7 forStoreIds:v6 inMOC:v5];

  return v8;
}

+ (BOOL)mergedSerializedStatus:(id)a3 summaries:(id)a4 inMOC:(id)a5
{
  v7 = a3;
  v8 = a4;
  v47 = a5;
  if (v47 && [v7 length] && objc_msgSend(v8, "count"))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 valueForKey:@"storeId"];
    v11 = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeId", v10];
    v12 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v47];
    v13 = objc_alloc_init(NSFetchRequest);
    [v13 setEntity:v12];
    [v13 setPredicate:v11];
    [v13 setReturnsObjectsAsFaults:0];
    v56 = 0;
    v14 = [v47 executeFetchRequest:v13 error:&v56];
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
      v46 = v8;
      obj = v8;
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
            v35 = [NSEntityDescription insertNewObjectForEntityForName:@"BKJaliscoStatus" inManagedObjectContext:v47];
            [v35 setStoreId:v22];
            [v35 setStatus:v7];
            [v35 setTimeIntervalSinceReferenceDate:v23];

            goto LABEL_15;
          }

          v26 = [v24 status];
          v27 = [v26 isEqualToString:v7];

          if ((v27 & 1) == 0)
          {
            v28 = [v25 timeIntervalSinceReferenceDate];
            v50 = [v28 unsignedLongValue];
            v29 = v19;
            v30 = v18;
            v31 = v17;
            v32 = v7;
            v33 = [v23 unsignedLongValue];

            v34 = v50 >= v33;
            v7 = v32;
            v17 = v31;
            v18 = v30;
            v19 = v29;
            if (!v34)
            {
              [v25 setStatus:v7];
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
          v8 = v46;
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

+ (BOOL)mergeSerializedLocal:(id)a3 inMOC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKJaliscoStatus statusValueLocal];
  v8 = [BKJaliscoStatus mergedSerializedStatus:v7 summaries:v6 inMOC:v5];

  return v8;
}

+ (BOOL)mergeSerializedHidden:(id)a3 inMOC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[BKJaliscoStatus statusValueHidden];
  v8 = [BKJaliscoStatus mergedSerializedStatus:v7 summaries:v6 inMOC:v5];

  return v8;
}

+ (BOOL)hasStatusValues:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v3];
  v5 = objc_alloc_init(NSFetchRequest);
  [v5 setEntity:v4];
  v6 = [NSPredicate predicateWithValue:1];
  [v5 setPredicate:v6];

  v11 = 0;
  v7 = [v3 countForFetchRequest:v5 error:&v11];

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

+ (void)dsidChangeCleanup:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [NSPredicate predicateWithValue:1];
    v6 = [NSEntityDescription entityForName:@"BKJaliscoStatus" inManagedObjectContext:v3];
    v7 = objc_alloc_init(NSFetchRequest);
    [v7 setEntity:v6];
    [v7 setPredicate:v5];
    v20 = 0;
    v8 = [v3 executeFetchRequest:v7 error:&v20];
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

            [v3 deleteObject:*(*(&v16 + 1) + 8 * v14)];
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

+ (BOOL)mergeLocalAssets:(id)a3 inMOC:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v55 = [BKJaliscoStatus allLocalStoreIds:v6];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = v5;
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
        v15 = [v14 storeID];
        if ([v15 longLongValue] >= 1 && (objc_msgSend(v55, "containsObject:", v15) & 1) == 0)
        {
          [v7 addObject:v15];
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
    v17 = [a1 statusValueLocal];
    v18 = [NSPredicate predicateWithFormat:@"%K != %@ AND %K IN %@", @"status", v17, @"storeId", v7];
    [v16 setPredicate:v18];

    [v16 setReturnsObjectsAsFaults:0];
    v64 = 0;
    v19 = [v6 executeFetchRequest:v16 error:&v64];
    v20 = v64;
    v21 = v20;
    v52 = v9;
    if (v19)
    {
      v46 = v20;
      v48 = v16;
      v50 = v6;
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
            v29 = [v28 storeId];
            if ([v29 length])
            {
              [v22 setObject:v28 forKeyedSubscript:v29];
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
            v36 = [v35 storeID];
            v37 = [v22 objectForKeyedSubscript:v36];
            v38 = v37;
            if (v37)
            {
              v39 = [v37 timeIntervalSinceReferenceDate];
              v40 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v39 longLongValue]);

              v41 = [v35 dataSourceInsertionDate];
              v42 = v41;
              if (!v41 || [v41 compare:v40] == &dword_0 + 1)
              {
                [v30 addObject:v36];
              }
            }

            else
            {
              [v30 addObject:v36];
            }
          }

          v32 = [obj countByEnumeratingWithState:&v56 objects:v75 count:16];
        }

        while (v32);
      }

      if ([v30 count])
      {
        v6 = v50;
        v43 = [objc_opt_class() addLocal:v30 inMOC:v50];
      }

      else
      {
        v43 = 0;
        v6 = v50;
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