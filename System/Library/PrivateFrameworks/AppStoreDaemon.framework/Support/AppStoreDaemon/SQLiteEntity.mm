@interface SQLiteEntity
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)memoryEntityForPersistentID:(int64_t)d withProperties:(id)properties usingConnection:(id)connection;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValuesWithDictionary:(id)dictionary;
- (SQLiteEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (SQLiteEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
- (id)getValuesForProperties:(id)properties;
- (id)valueForProperty:(id)property;
@end

@implementation SQLiteEntity

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
  v18 = sub_10033E2A0;
  v19 = &unk_100523CF0;
  v12 = sub_10033E19C(self, valuesCopy);
  v20 = v12;
  v23 = longLongValue;
  v13 = connectionCopy;
  v21 = v13;
  v22 = &v24;
  sub_10022CC88(v13, &v16);
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
  v9[2] = sub_10033E9A0;
  v9[3] = &unk_100523D18;
  v9[4] = self;
  v9[5] = &v10;
  sub_10022CC88(connection, v9);
  if (*(v11 + 24) == 1)
  {
    persistentID = [(SQLiteEntity *)self persistentID];
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033EC4C;
    block[3] = &unk_10051BD00;
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
  v8[2] = sub_10033EE48;
  v8[3] = &unk_10051DEB8;
  v8[4] = self;
  v8[5] = &v9;
  sub_10022C3C4(connection, v5, v8);
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
    v32[2] = sub_10033F224;
    v32[3] = &unk_100523D40;
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
    v25[2] = sub_10033F2D8;
    v25[3] = &unk_100523D90;
    v25[4] = self;
    v26 = propertiesCopy;
    v22 = v20;
    v27 = v22;
    sub_10022C3C4(connection, v12, v25);
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
  v11[2] = sub_10033F6F8;
  v11[3] = &unk_100523E08;
  v11[4] = self;
  v8 = dictionaryCopy;
  v12 = v8;
  v15 = v5;
  v9 = databaseTable;
  v13 = v9;
  v14 = &v16;
  sub_10022CC88(connection, v11);
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

@end