@interface SQLiteEntity
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)memoryEntityForPersistentID:(int64_t)a3 withProperties:(id)a4 usingConnection:(id)a5;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (SQLiteEntity)initWithPersistentID:(int64_t)a3 onConnection:(id)a4;
- (SQLiteEntity)initWithPropertyValues:(id)a3 onConnection:(id)a4;
- (id)getValuesForProperties:(id)a3;
- (id)valueForProperty:(id)a3;
@end

@implementation SQLiteEntity

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
  v18 = sub_10033E2A0;
  v19 = &unk_100523CF0;
  v12 = sub_10033E19C(self, v6);
  v20 = v12;
  v23 = v10;
  v13 = v7;
  v21 = v13;
  v22 = &v24;
  sub_10022CC88(v13, &v16);
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
  v9[2] = sub_10033E9A0;
  v9[3] = &unk_100523D18;
  v9[4] = self;
  v9[5] = &v10;
  sub_10022CC88(connection, v9);
  if (*(v11 + 24) == 1)
  {
    v4 = [(SQLiteEntity *)self persistentID];
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033EC4C;
    block[3] = &unk_10051BD00;
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
  v8[2] = sub_10033EE48;
  v8[3] = &unk_10051DEB8;
  v8[4] = self;
  v8[5] = &v9;
  sub_10022C3C4(connection, v5, v8);
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
    v32[2] = sub_10033F224;
    v32[3] = &unk_100523D40;
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
    v25[2] = sub_10033F2D8;
    v25[3] = &unk_100523D90;
    v25[4] = self;
    v26 = v4;
    v22 = v20;
    v27 = v22;
    sub_10022C3C4(connection, v12, v25);
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
  v11[2] = sub_10033F6F8;
  v11[3] = &unk_100523E08;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v15 = v5;
  v9 = v6;
  v13 = v9;
  v14 = &v16;
  sub_10022CC88(connection, v11);
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

@end