@interface CLSObject
+ (id)hashableColumnNames;
+ (void)resolveConflictForLocalRecord:(id)a3 serverRecord:(id)a4 commonAncestorRecord:(id)a5;
- (BOOL)writeInDatabase:(id)a3;
- (unint64_t)changeHash;
- (void)_initCommonPropsWithDatabaseRow:(id)a3;
- (void)_initCommonPropsWithRecord:(id)a3;
- (void)bindTo:(id)a3;
- (void)populate:(id)a3;
- (void)setExpiration:(double)a3;
- (void)updateParentReferencesForRecord:(id)a3;
@end

@implementation CLSObject

+ (id)hashableColumnNames
{
  v4[0] = @"rowid";
  v4[1] = @"dateLastModified";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)changeHash
{
  v3 = [(CLSObject *)self objectID];
  v4 = [v3 _cls_stableHash];

  v5 = [(CLSObject *)self dateLastModified];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)_initCommonPropsWithDatabaseRow:(id)a3
{
  v10 = a3;
  v4 = sub_10016D778(v10, @"objectID");
  [(CLSObject *)self setObjectID:v4];

  [(CLSObject *)self setTemporary:0];
  v5 = sub_10016D778(v10, @"appIdentifier");

  if (v5)
  {
    v6 = sub_10016D778(v10, @"appIdentifier");
    [(CLSObject *)self setAppIdentifier:v6];
  }

  v7 = sub_10016D6F0(v10, @"dateCreated");
  [(CLSObject *)self setDateCreated:v7];

  v8 = sub_10016D6F0(v10, @"dateLastModified");
  [(CLSObject *)self setDateLastModified:v8];

  if ([(CLSObject *)self conformsToProtocol:&OBJC_PROTOCOL___PDExpirableDatabaseEntity])
  {
    v9 = sub_10016D6F0(v10, @"dateExpires");
    [(CLSObject *)self setDateExpires:v9];
  }
}

- (void)bindTo:(id)a3
{
  v10 = a3;
  v4 = [(CLSObject *)self objectID];
  sub_1000982FC(v10, v4, @"objectID");

  v5 = [(CLSObject *)self appIdentifier];

  if (v5)
  {
    v6 = [(CLSObject *)self appIdentifier];
    sub_1000982FC(v10, v6, @"appIdentifier");
  }

  v7 = [(CLSObject *)self dateCreated];
  sub_1000982FC(v10, v7, @"dateCreated");

  v8 = [(CLSObject *)self dateLastModified];
  sub_1000982FC(v10, v8, @"dateLastModified");

  if ([(CLSObject *)self conformsToProtocol:&OBJC_PROTOCOL___PDExpirableDatabaseEntity])
  {
    v9 = [(CLSObject *)self dateExpires];
    sub_1000982FC(v10, v9, @"dateExpires");
  }
}

- (void)setExpiration:(double)a3
{
  if (a3 == 0.0)
  {

    [(CLSObject *)self setDateExpires:0];
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(CLSObject *)self setDateExpires:v4];
  }
}

- (void)_initCommonPropsWithRecord:(id)a3
{
  v18 = a3;
  v4 = [v18 recordID];
  v5 = [v4 recordName];

  [(CLSObject *)self setObjectID:v5];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(CLSObject *)self parentReferenceName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v18 objectForKeyedSubscript:v6];
    v9 = [v8 recordID];
    v10 = [v9 recordName];

    if (v10)
    {
      [(CLSObject *)self setParentObjectID:v10];
    }
  }

  else
  {
    v10 = v5;
  }

  v11 = [v18 objectForKeyedSubscript:@"appIdentifier"];
  [(CLSObject *)self setAppIdentifier:v11];

  v12 = [v18 objectForKeyedSubscript:@"dateCreated"];
  [(CLSObject *)self setDateCreated:v12];

  v13 = [(CLSObject *)self dateCreated];

  if (!v13)
  {
    v14 = +[NSDate date];
    [(CLSObject *)self setDateCreated:v14];
  }

  v15 = [v18 objectForKeyedSubscript:@"dateLastModified"];
  [(CLSObject *)self setDateLastModified:v15];

  v16 = [(CLSObject *)self dateLastModified];

  if (!v16)
  {
    v17 = [(CLSObject *)self dateCreated];
    [(CLSObject *)self setDateLastModified:v17];
  }
}

- (void)populate:(id)a3
{
  v9 = a3;
  v4 = [(CLSObject *)self appIdentifier];
  [v9 setObject:v4 forKeyedSubscript:@"appIdentifier"];

  v5 = [(CLSObject *)self dateCreated];

  if (v5)
  {
    [(CLSObject *)self dateCreated];
  }

  else
  {
    +[NSDate date];
  }
  v6 = ;
  [v9 setObject:v6 forKeyedSubscript:@"dateCreated"];

  v7 = [(CLSObject *)self dateLastModified];

  if (v7)
  {
    [(CLSObject *)self dateLastModified];
  }

  else
  {
    [v9 objectForKeyedSubscript:@"dateCreated"];
  }
  v8 = ;
  [v9 setObject:v8 forKeyedSubscript:@"dateLastModified"];
}

- (void)updateParentReferencesForRecord:(id)a3
{
  v13 = a3;
  v4 = [(CLSObject *)self parentObjectID];
  if (v4)
  {
    v5 = [CKRecordID alloc];
    v6 = [v13 recordID];
    v7 = [v6 zoneID];
    v8 = [v5 initWithRecordName:v4 zoneID:v7];

    v9 = [[CKReference alloc] initWithRecordID:v8 action:0];
    [v13 setParent:v9];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CLSObject *)self parentReferenceName];
      if (v10)
      {
        v11 = v10;
        v12 = [[CKReference alloc] initWithRecordID:v8 action:1];

        [v13 setObject:v12 forKeyedSubscript:v11];
        v9 = v12;
      }
    }
  }
}

+ (void)resolveConflictForLocalRecord:(id)a3 serverRecord:(id)a4 commonAncestorRecord:(id)a5
{
  v8 = a3;
  v9 = a4;
  v38 = a5;
  v10 = [v38 values];
  v11 = sub_1000A3110(a1, v8, v10);
  v37 = v10;
  v12 = sub_1000A3110(a1, v9, v10);
  v39 = v8;
  v13 = [v8 objectForKeyedSubscript:@"dateLastModified"];
  v41 = v9;
  v35 = [v9 objectForKeyedSubscript:@"dateLastModified"];
  v36 = v13;
  v14 = [v13 compare:v35];
  if (v14 == -1)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 == -1)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  v17 = [NSHashTable hashTableWithOptions:5];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v15 keyEnumerator];
  v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v47;
    do
    {
      v21 = 0;
      do
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v46 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        [v17 addObject:v22];
        v24 = [v16 objectForKeyedSubscript:v22];
        v25 = [v15 objectForKeyedSubscript:v22];
        if (v24 | v25 && (!v24 || ([v24 isEqual:v25] & 1) == 0))
        {
          [v41 setObject:v25 forKeyedSubscript:v22];
        }

        objc_autoreleasePoolPop(v23);
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v19);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = [v16 keyEnumerator];
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      v30 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * v30);
        v32 = objc_autoreleasePoolPush();
        if (([v17 containsObject:v31] & 1) == 0)
        {
          v33 = [v15 objectForKeyedSubscript:v31];

          if (!v33)
          {
            v34 = [v16 objectForKeyedSubscript:v31];
            [v41 setObject:v34 forKeyedSubscript:v31];
          }
        }

        objc_autoreleasePoolPop(v32);
        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v28);
  }
}

- (BOOL)writeInDatabase:(id)a3
{
  v4 = self;
  v5 = a3;
  if ([(CLSObject *)v4 isDeleted])
  {
    v6 = [v5 deleteObject:v4];
  }

  else
  {
    v6 = [v5 insertOrUpdateObject:v4];
  }

  v7 = v6;

  return v7;
}

@end