@interface SQLiteEntity
+ (BOOL)_insertValues:(id)values intoTable:(id)table withPersistentID:(int64_t)d onConnection:(id)connection;
+ (id)_aggregateValueForProperty:(id)property function:(id)function predicate:(id)predicate onConnection:(id)connection;
+ (id)allOnConnection:(id)connection predicate:(id)predicate;
+ (id)anyOnConnection:(id)connection predicate:(id)predicate;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)memoryEntityForPersistentID:(int64_t)d withProperties:(id)properties usingConnection:(id)connection;
+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions entityClass:(Class)class;
+ (id)sumForProperty:(id)property predicate:(id)predicate onConnection:(id)connection;
- (BOOL)BOOLValueForProperty:(id)property;
- (BOOL)_deleteRowFromTable:(id)table usingColumn:(id)column;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValuesWithDictionary:(id)dictionary;
- (SQLiteEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (SQLiteEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
- (id)_copyTableClusteredValuesWithValues:(id)values;
- (id)errorValueForProperty:(id)property;
- (id)getValuesForProperties:(id)properties;
- (id)numberValueForProperty:(id)property;
- (id)stringValueForProperty:(id)property;
- (id)urlValueForProperty:(id)property;
- (id)uuidValueForProperty:(id)property;
- (id)valueForProperty:(id)property;
- (int64_t)integerValueForProperty:(id)property;
@end

@implementation SQLiteEntity

+ (id)anyOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000A1C8;
  v20 = sub_10000A1D8;
  v21 = 0;
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A1E0;
  v12[3] = &unk_1002783E0;
  v14 = &v16;
  selfCopy = self;
  v9 = connectionCopy;
  v13 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)allOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000A1C8;
  v20 = sub_10000A1D8;
  v21 = objc_opt_new();
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A3B4;
  v12[3] = &unk_100278408;
  selfCopy = self;
  v9 = connectionCopy;
  v13 = v9;
  v14 = &v16;
  [v8 enumeratePersistentIDsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

+ (id)sumForProperty:(id)property predicate:(id)predicate onConnection:(id)connection
{
  v5 = [self _aggregateValueForProperty:property function:@"SUM" predicate:predicate onConnection:connection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = &off_100299920;
  }

  v7 = v6;

  return v6;
}

+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions entityClass:(Class)class
{
  directionsCopy = directions;
  propertiesCopy = properties;
  predicateCopy = predicate;
  connectionCopy = connection;
  v15 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:class memoryEntityClass:[(objc_class *)class memoryEntityClass]];
  [(SQLiteQueryDescriptor *)v15 setOrderingProperties:propertiesCopy];

  [(SQLiteQueryDescriptor *)v15 setOrderingDirections:directionsCopy];
  [(SQLiteQueryDescriptor *)v15 setPredicate:predicateCopy];

  v16 = [[SQLiteQuery alloc] initOnConnection:connectionCopy descriptor:v15];

  return v16;
}

+ (id)_aggregateValueForProperty:(id)property function:(id)function predicate:(id)predicate onConnection:(id)connection
{
  propertyCopy = property;
  functionCopy = function;
  predicateCopy = predicate;
  connectionCopy = connection;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000A1C8;
  v31 = sub_10000A1D8;
  v32 = 0;
  v14 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:self];
  [(SQLiteQueryDescriptor *)v14 setPredicate:predicateCopy];
  v15 = [NSString alloc];
  v16 = [self disambiguatedSQLForProperty:propertyCopy];
  v17 = [v15 initWithFormat:@"%@(%@)", functionCopy, v16];

  v33 = propertyCopy;
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  v19 = [NSArray arrayWithObject:v17];
  v20 = [(SQLiteQueryDescriptor *)v14 _newSelectSQLWithProperties:v18 columns:v19];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000A86C;
  v24[3] = &unk_100278430;
  v21 = v14;
  v25 = v21;
  v26 = &v27;
  [connectionCopy executeQuery:v20 withResults:v24];
  v22 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v22;
}

+ (id)memoryEntityForPersistentID:(int64_t)d withProperties:(id)properties usingConnection:(id)connection
{
  propertiesCopy = properties;
  connectionCopy = connection;
  memoryEntityClass = [self memoryEntityClass];
  v11 = memoryEntityClass;
  if (!propertiesCopy)
  {
    propertiesCopy = [(objc_class *)memoryEntityClass defaultProperties];
  }

  v12 = [[self alloc] initWithPersistentID:d onConnection:connectionCopy];

  v13 = [[v11 alloc] initWithDatabaseEntity:v12 properties:propertiesCopy];

  return v13;
}

- (SQLiteEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = SQLiteEntity;
  v8 = [(SQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_persistentID = d;
  }

  return v9;
}

- (SQLiteEntity)initWithPropertyValues:(id)values onConnection:(id)connection
{
  valuesCopy = values;
  connectionCopy = connection;
  v8 = [valuesCopy objectForKey:@"ROWID"];
  v9 = v8;
  if (v8)
  {
    longLongValue = [v8 longLongValue];
  }

  else
  {
    v11 = CFUUIDCreate(0);
    longLongValue = *&CFUUIDGetUUIDBytes(v11);
    CFRelease(v11);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001480C;
  v19 = &unk_100278B78;
  v12 = [(SQLiteEntity *)self _copyTableClusteredValuesWithValues:valuesCopy];
  v20 = v12;
  v23 = longLongValue;
  v13 = connectionCopy;
  v21 = v13;
  v22 = &v24;
  [v13 performTransaction:&v16];
  if ((v25[3] & 1) == 0)
  {

    self = 0;
  }

  v14 = [(SQLiteEntity *)self initWithPersistentID:longLongValue onConnection:v13, v16, v17, v18, v19];

  _Block_object_dispose(&v24, 8);
  return v14;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v5 = [self joinClauseForProperty:propertyCopy];

  if (v5)
  {
    propertyCopy = propertyCopy;
  }

  else
  {
    databaseTable = [self databaseTable];
    propertyCopy = [NSString stringWithFormat:@"%@.%@", databaseTable, propertyCopy];
  }

  return propertyCopy;
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
  v9[2] = sub_100014B88;
  v9[3] = &unk_100278BA0;
  v9[4] = self;
  v9[5] = &v10;
  [(SQLiteConnection *)connection performTransaction:v9];
  if (*(v11 + 24) == 1)
  {
    persistentID = [(SQLiteEntity *)self persistentID];
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014D58;
    block[3] = &unk_100278BC0;
    block[4] = persistentID;
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
  databaseTable = [objc_opt_class() databaseTable];
  v5 = [v3 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", databaseTable, @"ROWID"];

  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014F54;
  v8[3] = &unk_100278430;
  v8[4] = self;
  v8[5] = &v9;
  [(SQLiteConnection *)connection executeQuery:v5 withResults:v8];
  LOBYTE(self) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return self;
}

- (id)getValuesForProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy count] == 1 && (objc_msgSend(propertiesCopy, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ROWID"), v5, v6))
  {
    v37 = @"ROWID";
    databaseTable = [NSNumber numberWithLongLong:self->_persistentID];
    v38 = databaseTable;
    v8 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  }

  else
  {
    v9 = objc_opt_class();
    databaseTable = [v9 databaseTable];
    v10 = [[NSMutableString alloc] initWithString:@"SELECT "];
    v11 = objc_alloc_init(NSMutableSet);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100015330;
    v32[3] = &unk_100278BE8;
    v35 = v9;
    v12 = v10;
    v33 = v12;
    v13 = v11;
    v34 = v13;
    [propertiesCopy enumerateObjectsUsingBlock:v32];
    [v12 appendString:@" FROM "];
    [v12 appendString:databaseTable];
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
    [v12 appendString:databaseTable];
    [v12 appendString:@".ROWID = ?;"];
    v20 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [propertiesCopy count]);
    connection = self->_connection;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000153E4;
    v25[3] = &unk_100278C38;
    v25[4] = self;
    v26 = propertiesCopy;
    v22 = v20;
    v27 = v22;
    [(SQLiteConnection *)connection executeQuery:v12 withResults:v25];
    v23 = v27;
    v8 = v22;
  }

  return v8;
}

- (BOOL)setValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v8 = [NSDictionary alloc];
  v9 = v8;
  if (valueCopy)
  {
    v10 = [v8 initWithObjectsAndKeys:{valueCopy, propertyCopy, 0}];
  }

  else
  {
    v11 = +[NSNull null];
    v10 = [v9 initWithObjectsAndKeys:{v11, propertyCopy, 0}];
  }

  v12 = [(SQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_opt_class();
  databaseTable = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015804;
  v11[3] = &unk_100278CD8;
  v11[4] = self;
  v8 = dictionaryCopy;
  v12 = v8;
  v15 = v5;
  v9 = databaseTable;
  v13 = v9;
  v14 = &v16;
  [(SQLiteConnection *)connection performTransaction:v11];
  LOBYTE(v5) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v5;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  propertyCopy2 = property;
  v5 = [NSArray arrayWithObjects:&propertyCopy count:1];
  propertyCopy = [(SQLiteEntity *)self getValuesForProperties:v5, propertyCopy];
  v7 = [propertyCopy objectForKeyedSubscript:propertyCopy2];

  return v7;
}

+ (BOOL)_insertValues:(id)values intoTable:(id)table withPersistentID:(int64_t)d onConnection:(id)connection
{
  valuesCopy = values;
  tableCopy = table;
  connectionCopy = connection;
  v12 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v12 appendString:tableCopy];
  objc_msgSend(v12, "appendString:", @" (");
  selfCopy = self;
  v13 = [self foreignKeyColumnForTable:tableCopy];
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
  v16 = valuesCopy;
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
  v33[2] = sub_1000162CC;
  v33[3] = &unk_100278778;
  dCopy = d;
  v36 = 0;
  v26 = v22;
  v34 = v26;
  v27 = [connectionCopy executeStatement:v12 error:&v36 bindings:v33];
  v28 = v36;
  if (v28)
  {
    if (qword_1002BD470 != -1)
    {
      sub_1001F5D3C();
    }

    v29 = qword_1002BD458;
    if (os_log_type_enabled(qword_1002BD458, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5D64(v29, selfCopy, v28);
    }
  }

  return v27;
}

- (id)_copyTableClusteredValuesWithValues:(id)values
{
  valuesCopy = values;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_opt_class();
  [v5 databaseTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001650C;
  v11[3] = &unk_100278D00;
  v12 = v14 = v5;
  v6 = v4;
  v13 = v6;
  v7 = v12;
  [valuesCopy enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v9;
}

- (BOOL)_deleteRowFromTable:(id)table usingColumn:(id)column
{
  columnCopy = column;
  tableCopy = table;
  columnCopy = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", tableCopy, columnCopy];

  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000166F8;
  v11[3] = &unk_100278278;
  v11[4] = self;
  LOBYTE(tableCopy) = [(SQLiteConnection *)connection executeStatement:columnCopy error:0 bindings:v11];

  return tableCopy;
}

- (BOOL)BOOLValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self numberValueForProperty:property];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)errorValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self valueForProperty:property];
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

- (int64_t)integerValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self numberValueForProperty:property];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)numberValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self valueForProperty:property];
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

- (id)stringValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self valueForProperty:property];
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

- (id)uuidValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self valueForProperty:property];
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

- (id)urlValueForProperty:(id)property
{
  v3 = [(SQLiteEntity *)self valueForProperty:property];
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

@end