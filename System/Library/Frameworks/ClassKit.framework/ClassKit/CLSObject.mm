@interface CLSObject
+ (id)hashableColumnNames;
+ (void)resolveConflictForLocalRecord:(id)record serverRecord:(id)serverRecord commonAncestorRecord:(id)ancestorRecord;
- (BOOL)writeInDatabase:(id)database;
- (unint64_t)changeHash;
- (void)_initCommonPropsWithDatabaseRow:(id)row;
- (void)_initCommonPropsWithRecord:(id)record;
- (void)bindTo:(id)to;
- (void)populate:(id)populate;
- (void)setExpiration:(double)expiration;
- (void)updateParentReferencesForRecord:(id)record;
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
  objectID = [(CLSObject *)self objectID];
  _cls_stableHash = [objectID _cls_stableHash];

  dateLastModified = [(CLSObject *)self dateLastModified];
  v6 = [dateLastModified hash];

  return v6 ^ _cls_stableHash;
}

- (void)_initCommonPropsWithDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = sub_10016D778(rowCopy, @"objectID");
  [(CLSObject *)self setObjectID:v4];

  [(CLSObject *)self setTemporary:0];
  v5 = sub_10016D778(rowCopy, @"appIdentifier");

  if (v5)
  {
    v6 = sub_10016D778(rowCopy, @"appIdentifier");
    [(CLSObject *)self setAppIdentifier:v6];
  }

  v7 = sub_10016D6F0(rowCopy, @"dateCreated");
  [(CLSObject *)self setDateCreated:v7];

  v8 = sub_10016D6F0(rowCopy, @"dateLastModified");
  [(CLSObject *)self setDateLastModified:v8];

  if ([(CLSObject *)self conformsToProtocol:&OBJC_PROTOCOL___PDExpirableDatabaseEntity])
  {
    v9 = sub_10016D6F0(rowCopy, @"dateExpires");
    [(CLSObject *)self setDateExpires:v9];
  }
}

- (void)bindTo:(id)to
{
  toCopy = to;
  objectID = [(CLSObject *)self objectID];
  sub_1000982FC(toCopy, objectID, @"objectID");

  appIdentifier = [(CLSObject *)self appIdentifier];

  if (appIdentifier)
  {
    appIdentifier2 = [(CLSObject *)self appIdentifier];
    sub_1000982FC(toCopy, appIdentifier2, @"appIdentifier");
  }

  dateCreated = [(CLSObject *)self dateCreated];
  sub_1000982FC(toCopy, dateCreated, @"dateCreated");

  dateLastModified = [(CLSObject *)self dateLastModified];
  sub_1000982FC(toCopy, dateLastModified, @"dateLastModified");

  if ([(CLSObject *)self conformsToProtocol:&OBJC_PROTOCOL___PDExpirableDatabaseEntity])
  {
    dateExpires = [(CLSObject *)self dateExpires];
    sub_1000982FC(toCopy, dateExpires, @"dateExpires");
  }
}

- (void)setExpiration:(double)expiration
{
  if (expiration == 0.0)
  {

    [(CLSObject *)self setDateExpires:0];
  }

  else
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:?];
    [(CLSObject *)self setDateExpires:v4];
  }
}

- (void)_initCommonPropsWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  [(CLSObject *)self setObjectID:recordName];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(CLSObject *)self parentReferenceName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [recordCopy objectForKeyedSubscript:v6];
    recordID2 = [v8 recordID];
    recordName2 = [recordID2 recordName];

    if (recordName2)
    {
      [(CLSObject *)self setParentObjectID:recordName2];
    }
  }

  else
  {
    recordName2 = recordName;
  }

  v11 = [recordCopy objectForKeyedSubscript:@"appIdentifier"];
  [(CLSObject *)self setAppIdentifier:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"dateCreated"];
  [(CLSObject *)self setDateCreated:v12];

  dateCreated = [(CLSObject *)self dateCreated];

  if (!dateCreated)
  {
    v14 = +[NSDate date];
    [(CLSObject *)self setDateCreated:v14];
  }

  v15 = [recordCopy objectForKeyedSubscript:@"dateLastModified"];
  [(CLSObject *)self setDateLastModified:v15];

  dateLastModified = [(CLSObject *)self dateLastModified];

  if (!dateLastModified)
  {
    dateCreated2 = [(CLSObject *)self dateCreated];
    [(CLSObject *)self setDateLastModified:dateCreated2];
  }
}

- (void)populate:(id)populate
{
  populateCopy = populate;
  appIdentifier = [(CLSObject *)self appIdentifier];
  [populateCopy setObject:appIdentifier forKeyedSubscript:@"appIdentifier"];

  dateCreated = [(CLSObject *)self dateCreated];

  if (dateCreated)
  {
    [(CLSObject *)self dateCreated];
  }

  else
  {
    +[NSDate date];
  }
  v6 = ;
  [populateCopy setObject:v6 forKeyedSubscript:@"dateCreated"];

  dateLastModified = [(CLSObject *)self dateLastModified];

  if (dateLastModified)
  {
    [(CLSObject *)self dateLastModified];
  }

  else
  {
    [populateCopy objectForKeyedSubscript:@"dateCreated"];
  }
  v8 = ;
  [populateCopy setObject:v8 forKeyedSubscript:@"dateLastModified"];
}

- (void)updateParentReferencesForRecord:(id)record
{
  recordCopy = record;
  parentObjectID = [(CLSObject *)self parentObjectID];
  if (parentObjectID)
  {
    v5 = [CKRecordID alloc];
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    v8 = [v5 initWithRecordName:parentObjectID zoneID:zoneID];

    v9 = [[CKReference alloc] initWithRecordID:v8 action:0];
    [recordCopy setParent:v9];
    if (objc_opt_respondsToSelector())
    {
      parentReferenceName = [(CLSObject *)self parentReferenceName];
      if (parentReferenceName)
      {
        v11 = parentReferenceName;
        v12 = [[CKReference alloc] initWithRecordID:v8 action:1];

        [recordCopy setObject:v12 forKeyedSubscript:v11];
        v9 = v12;
      }
    }
  }
}

+ (void)resolveConflictForLocalRecord:(id)record serverRecord:(id)serverRecord commonAncestorRecord:(id)ancestorRecord
{
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  values = [ancestorRecordCopy values];
  v11 = sub_1000A3110(self, recordCopy, values);
  v37 = values;
  v12 = sub_1000A3110(self, serverRecordCopy, values);
  v39 = recordCopy;
  v13 = [recordCopy objectForKeyedSubscript:@"dateLastModified"];
  v41 = serverRecordCopy;
  v35 = [serverRecordCopy objectForKeyedSubscript:@"dateLastModified"];
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
  keyEnumerator = [v16 keyEnumerator];
  v27 = [keyEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
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
          objc_enumerationMutation(keyEnumerator);
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
      v28 = [keyEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v28);
  }
}

- (BOOL)writeInDatabase:(id)database
{
  selfCopy = self;
  databaseCopy = database;
  if ([(CLSObject *)selfCopy isDeleted])
  {
    v6 = [databaseCopy deleteObject:selfCopy];
  }

  else
  {
    v6 = [databaseCopy insertOrUpdateObject:selfCopy];
  }

  v7 = v6;

  return v7;
}

@end