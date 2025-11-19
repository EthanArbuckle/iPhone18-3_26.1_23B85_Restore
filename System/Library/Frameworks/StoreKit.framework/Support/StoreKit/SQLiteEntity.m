@interface SQLiteEntity
+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 onConnection:(id)a6;
+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 onConnection:(id)a6;
+ (id)allOnConnection:(id)a3 predicate:(id)a4;
+ (id)anyOnConnection:(id)a3 predicate:(id)a4;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5;
+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 entityClass:(Class)a7;
+ (id)sumForProperty:(id)a3 predicate:(id)a4 onConnection:(id)a5;
- (BOOL)BOOLValueForProperty:(id)a3;
- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (SQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (SQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
- (id)_copyTableClusteredValuesWithValues:(id)a3;
- (id)errorValueForProperty:(id)a3;
- (id)getValuesForProperties:(id)a3;
- (id)numberValueForProperty:(id)a3;
- (id)stringValueForProperty:(id)a3;
- (id)urlValueForProperty:(id)a3;
- (id)uuidValueForProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (int64_t)integerValueForProperty:(id)a3;
@end

@implementation SQLiteEntity

- (SQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SQLiteEntity;
  v8 = [(SQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    v9->_persistentID = a3;
  }

  return v9;
}

- (SQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"ROWID"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 longLongValue];
  }

  else
  {
    v11 = CFUUIDCreate(0);
    v10 = *&CFUUIDGetUUIDBytes(v11);
    CFRelease(v11);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100007E28;
  v19 = &unk_10037F968;
  v12 = [(SQLiteEntity *)self _copyTableClusteredValuesWithValues:v6];
  v20 = v12;
  v23 = v10;
  v13 = v7;
  v21 = v13;
  v22 = &v24;
  [v13 performTransaction:&v16];
  if ((v25[3] & 1) == 0)
  {

    self = 0;
  }

  v14 = [(SQLiteEntity *)self initWithPersistentID:v10 onConnection:v13, v16, v17, v18, v19];

  _Block_object_dispose(&v24, 8);
  return v14;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  v5 = [a1 joinClauseForProperty:v4];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v7 = [a1 databaseTable];
    v6 = [NSString stringWithFormat:@"%@.%@", v7, v4];
  }

  return v6;
}

- (BOOL)deleteFromDatabase
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000081A4;
  v9[3] = &unk_10037F990;
  v9[4] = self;
  v9[5] = &v10;
  [(SQLiteConnection *)connection performTransaction:v9];
  if (*(v11 + 24) == 1)
  {
    v4 = [(SQLiteEntity *)self persistentID];
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008374;
    block[3] = &unk_10037F9B0;
    block[4] = v4;
    dispatch_async(v5, block);

    v6 = *(v11 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v6 & 1;
}

- (BOOL)existsInDatabase
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [NSString alloc];
  v4 = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v4, @"ROWID"];

  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008570;
  v8[3] = &unk_10037F9D8;
  v8[4] = self;
  v8[5] = &v9;
  [(SQLiteConnection *)connection executeQuery:v5 withResults:v8];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (id)getValuesForProperties:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ROWID"), v5, v6))
  {
    v37 = @"ROWID";
    v7 = [NSNumber numberWithLongLong:self->_persistentID];
    v38 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  }

  else
  {
    v9 = objc_opt_class();
    v7 = [v9 databaseTable];
    v10 = [[NSMutableString alloc] initWithString:@"SELECT "];
    v11 = objc_alloc_init(NSMutableSet);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000894C;
    v32[3] = &unk_10037FA00;
    v35 = v9;
    v12 = v10;
    v33 = v12;
    v13 = v11;
    v34 = v13;
    [v4 enumerateObjectsUsingBlock:v32];
    [v12 appendString:@" FROM "];
    [v12 appendString:v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          [v12 appendString:@" "];
          [v12 appendString:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    [v12 appendString:@" WHERE "];
    [v12 appendString:v7];
    [v12 appendString:@".ROWID = ?;"];
    v20 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    connection = self->_connection;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100008A00;
    v25[3] = &unk_10037FA78;
    v25[4] = self;
    v26 = v4;
    v22 = v20;
    v27 = v22;
    [(SQLiteConnection *)connection executeQuery:v12 withResults:v25];
    v23 = v27;
    v8 = v22;
  }

  return v8;
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSDictionary alloc];
  v9 = v8;
  if (v6)
  {
    v10 = [v8 initWithObjectsAndKeys:{v6, v7, 0}];
  }

  else
  {
    v11 = +[NSNull null];
    v10 = [v9 initWithObjectsAndKeys:{v11, v7, 0}];
  }

  v12 = [(SQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008E20;
  v11[3] = &unk_10037FB18;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v15 = v5;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  [(SQLiteConnection *)connection performTransaction:v11];
  LOBYTE(v5) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v5;
}

- (id)valueForProperty:(id)a3
{
  v9 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [(SQLiteEntity *)self getValuesForProperties:v5, v9];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

+ (BOOL)_insertValues:(id)a3 intoTable:(id)a4 withPersistentID:(int64_t)a5 onConnection:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v12 appendString:v10];
  objc_msgSend(v12, "appendString:", @" (");
  v31 = a1;
  v13 = [a1 foreignKeyColumnForTable:v10];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"ROWID";
  }

  [v12 appendString:v15];
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        [v12 appendString:{@", "}];
        [v12 appendString:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v18);
  }

  [v12 appendString:@") VALUES (?"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    while (1)
    {
      if (*v38 != v25)
      {
        objc_enumerationMutation(v22);
      }

      [v12 appendString:{@", ?"}];
      if (!--v24)
      {
        v24 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  [v12 appendString:@";"]);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000098E8;
  v33[3] = &unk_10037FB40;
  v35 = a5;
  v36 = 0;
  v26 = v22;
  v34 = v26;
  v27 = [v11 executeStatement:v12 error:&v36 bindings:v33];
  v28 = v36;
  if (v28)
  {
    if (qword_1003D3A48 != -1)
    {
      sub_1002C7688();
    }

    v29 = qword_1003D3A30;
    if (os_log_type_enabled(qword_1003D3A30, OS_LOG_TYPE_ERROR))
    {
      sub_1002C76B0(v29, v31, v28);
    }
  }

  return v27;
}

- (id)_copyTableClusteredValuesWithValues:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_opt_class();
  [v5 databaseTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009B28;
  v11[3] = &unk_10037FB68;
  v12 = v14 = v5;
  v6 = v4;
  v13 = v6;
  v7 = v12;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v9;
}

- (BOOL)_deleteRowFromTable:(id)a3 usingColumn:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v7, v6];

  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009D14;
  v11[3] = &unk_10037F688;
  v11[4] = self;
  LOBYTE(v7) = [(SQLiteConnection *)connection executeStatement:v8 error:0 bindings:v11];

  return v7;
}

- (BOOL)BOOLValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)errorValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)integerValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)numberValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)stringValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)uuidValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)urlValueForProperty:(id)a3
{
  v3 = [(SQLiteEntity *)self valueForProperty:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)anyOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100062F6C;
  v20 = sub_100062F7C;
  v21 = 0;
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100062F84;
  v12[3] = &unk_100382868;
  v14 = &v16;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)allOnConnection:(id)a3 predicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100062F6C;
  v20 = sub_100062F7C;
  v21 = objc_opt_new();
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063158;
  v12[3] = &unk_100382890;
  v15 = a1;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)sumForProperty:(id)a3 predicate:(id)a4 onConnection:(id)a5
{
  v5 = [a1 _aggregateValueForProperty:a3 function:@"SUM" predicate:a4 onConnection:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_1003A14B0;
  }

  v7 = v6;

  return v6;
}

+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 entityClass:(Class)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:a7 memoryEntityClass:[(objc_class *)a7 memoryEntityClass]];
  [(SQLiteQueryDescriptor *)v15 setOrderingProperties:v12];

  [(SQLiteQueryDescriptor *)v15 setOrderingDirections:v11];
  [(SQLiteQueryDescriptor *)v15 setPredicate:v13];

  v16 = [[SQLiteQuery alloc] initOnConnection:v14 descriptor:v15];

  return v16;
}

+ (id)_aggregateValueForProperty:(id)a3 function:(id)a4 predicate:(id)a5 onConnection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100062F6C;
  v31 = sub_100062F7C;
  v32 = 0;
  v14 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:a1];
  [(SQLiteQueryDescriptor *)v14 setPredicate:v12];
  v15 = [NSString alloc];
  v16 = [a1 disambiguatedSQLForProperty:v10];
  v17 = [v15 initWithFormat:@"%@(%@)", v11, v16];

  v33 = v10;
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  v19 = [NSArray arrayWithObject:v17];
  v20 = [(SQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100063610;
  v24[3] = &unk_10037F9D8;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  [v13 executeQuery:v20 withResults:v24];
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 memoryEntityClass];
  v11 = v10;
  if (!v8)
  {
    v8 = [(objc_class *)v10 defaultProperties];
  }

  v12 = [[a1 alloc] initWithPersistentID:a3 onConnection:v9];

  v13 = [[v11 alloc] initWithDatabaseEntity:v12 properties:v8];

  return v13;
}

@end