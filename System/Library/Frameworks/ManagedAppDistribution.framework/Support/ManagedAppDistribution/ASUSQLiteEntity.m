@interface ASUSQLiteEntity
+ (id)allOnConnection:(id)a3 predicate:(id)a4;
+ (id)anyOnConnection:(id)a3 predicate:(id)a4;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5;
+ (id)queryOnConnection:(id)a3 predicate:(id)a4 orderingProperties:(id)a5 orderingDirections:(id)a6 entityClass:(Class)a7;
+ (id)sumForProperty:(id)a3 predicate:(id)a4 onConnection:(id)a5;
- (ASUSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (ASUSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
- (BOOL)BOOLValueForProperty:(id)a3;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (id)dictValueForProperty:(id)a3;
- (id)errorValueForProperty:(id)a3;
- (id)getValuesForProperties:(id)a3;
- (id)numberValueForProperty:(id)a3;
- (id)stringValueForProperty:(id)a3;
- (id)urlValueForProperty:(id)a3;
- (id)uuidValueForProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (int64_t)integerValueForProperty:(id)a3;
@end

@implementation ASUSQLiteEntity

- (ASUSQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASUSQLiteEntity;
  v8 = [(ASUSQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    v9->_persistentID = a3;
  }

  return v9;
}

- (ASUSQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4
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

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E3F74;
  v15[3] = &unk_100756750;
  v12 = sub_100670F18(self, v6);
  v17 = &v19;
  v18 = v10;
  v16 = v12;
  if (![v7 performTransaction:v15 error:0] || (v20[3] & 1) == 0)
  {

    self = 0;
  }

  v13 = [(ASUSQLiteEntity *)self initWithPersistentID:v10 onConnection:v7];

  _Block_object_dispose(&v19, 8);
  return v13;
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
  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E45F0;
  v9[3] = &unk_100756778;
  v9[4] = self;
  v4 = [(ASUSQLiteConnection *)connection performTransaction:v9 error:0];
  if (v4)
  {
    v5 = [(ASUSQLiteEntity *)self persistentID];
    v6 = dispatch_get_global_queue(21, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001E47A4;
    v8[3] = &unk_100756798;
    v8[4] = v5;
    dispatch_async(v6, v8);
  }

  return v4;
}

- (BOOL)existsInDatabase
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [NSString alloc];
  v5 = [objc_opt_class() databaseTable];
  v6 = [v4 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", v5, @"ROWID"];

  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E49B0;
  v9[3] = &unk_1007567C0;
  v9[4] = self;
  v9[5] = &v10;
  [(ASUSQLiteConnection *)connection executeQuery:v6 withResults:v9];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  objc_autoreleasePoolPop(v3);
  return self;
}

- (id)getValuesForProperties:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"ROWID"), v6, v7))
  {
    v39 = @"ROWID";
    v8 = [NSNumber numberWithLongLong:self->_persistentID];
    v40 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  else
  {
    v26 = v5;
    v10 = objc_opt_class();
    v8 = [v10 databaseTable];
    v11 = [[NSMutableString alloc] initWithString:@"SELECT "];
    v12 = objc_alloc_init(NSMutableSet);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1001E4DA8;
    v34[3] = &unk_1007567E8;
    v37 = v10;
    v13 = v11;
    v35 = v13;
    v14 = v12;
    v36 = v14;
    [v4 enumerateObjectsUsingBlock:v34];
    [v13 appendString:@" FROM "];
    [v13 appendString:v8];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          [v13 appendString:{@" ", v26}];
          [v13 appendString:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
    }

    [v13 appendString:@" WHERE "];
    [v13 appendString:v8];
    [v13 appendString:@".ROWID = ?;"];
    v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    connection = self->_connection;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001E4E5C;
    v27[3] = &unk_100756860;
    v27[4] = self;
    v28 = v4;
    v23 = v21;
    v29 = v23;
    [(ASUSQLiteConnection *)connection executeQuery:v13 withResults:v27];
    v24 = v29;
    v9 = v23;

    v5 = v26;
  }

  objc_autoreleasePoolPop(v5);

  return v9;
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

  v12 = [(ASUSQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E5220;
  v11[3] = &unk_100756900;
  v11[4] = self;
  v12 = v4;
  v13 = v6;
  v14 = v5;
  v8 = v6;
  v9 = v4;
  LOBYTE(v5) = [(ASUSQLiteConnection *)connection performTransaction:v11 error:0];

  return v5;
}

- (id)valueForProperty:(id)a3
{
  v9 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [(ASUSQLiteEntity *)self getValuesForProperties:v5, v9];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (BOOL)BOOLValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)dictValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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

- (id)errorValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)numberValueForProperty:(id)a3
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:a3];
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
  v19 = sub_1001E7880;
  v20 = sub_1001E7890;
  v21 = 0;
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E7898;
  v12[3] = &unk_100756AF0;
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
  v19 = sub_1001E7880;
  v20 = sub_1001E7890;
  v21 = objc_opt_new();
  v8 = [a1 queryOnConnection:v6 predicate:v7];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E7A6C;
  v12[3] = &unk_100756B18;
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
  v5 = sub_1001E7AE8(a1, a3, @"SUM", a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_100771480;
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
  v15 = [[ASUSQLiteQueryDescriptor alloc] initWithEntityClass:a7 memoryEntityClass:[(objc_class *)a7 memoryEntityClass]];
  [(ASUSQLiteQueryDescriptor *)v15 setOrderingProperties:v12];

  [(ASUSQLiteQueryDescriptor *)v15 setOrderingDirections:v11];
  [(ASUSQLiteQueryDescriptor *)v15 setPredicate:v13];

  v16 = [[ASUSQLiteQuery alloc] initOnConnection:v14 descriptor:v15];

  return v16;
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