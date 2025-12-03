@interface ASUSQLiteEntity
+ (id)allOnConnection:(id)connection predicate:(id)predicate;
+ (id)anyOnConnection:(id)connection predicate:(id)predicate;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (id)memoryEntityForPersistentID:(int64_t)d withProperties:(id)properties usingConnection:(id)connection;
+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions entityClass:(Class)class;
+ (id)sumForProperty:(id)property predicate:(id)predicate onConnection:(id)connection;
- (ASUSQLiteEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection;
- (ASUSQLiteEntity)initWithPropertyValues:(id)values onConnection:(id)connection;
- (BOOL)BOOLValueForProperty:(id)property;
- (BOOL)deleteFromDatabase;
- (BOOL)existsInDatabase;
- (BOOL)setValue:(id)value forProperty:(id)property;
- (BOOL)setValuesWithDictionary:(id)dictionary;
- (id)dictValueForProperty:(id)property;
- (id)errorValueForProperty:(id)property;
- (id)getValuesForProperties:(id)properties;
- (id)numberValueForProperty:(id)property;
- (id)stringValueForProperty:(id)property;
- (id)urlValueForProperty:(id)property;
- (id)uuidValueForProperty:(id)property;
- (id)valueForProperty:(id)property;
- (int64_t)integerValueForProperty:(id)property;
@end

@implementation ASUSQLiteEntity

- (ASUSQLiteEntity)initWithPersistentID:(int64_t)d onConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = ASUSQLiteEntity;
  v8 = [(ASUSQLiteEntity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_persistentID = d;
  }

  return v9;
}

- (ASUSQLiteEntity)initWithPropertyValues:(id)values onConnection:(id)connection
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

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E3F74;
  v15[3] = &unk_100756750;
  v12 = sub_100670F18(self, valuesCopy);
  v17 = &v19;
  v18 = longLongValue;
  v16 = v12;
  if (![connectionCopy performTransaction:v15 error:0] || (v20[3] & 1) == 0)
  {

    self = 0;
  }

  v13 = [(ASUSQLiteEntity *)self initWithPersistentID:longLongValue onConnection:connectionCopy];

  _Block_object_dispose(&v19, 8);
  return v13;
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
  connection = self->_connection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E45F0;
  v9[3] = &unk_100756778;
  v9[4] = self;
  v4 = [(ASUSQLiteConnection *)connection performTransaction:v9 error:0];
  if (v4)
  {
    persistentID = [(ASUSQLiteEntity *)self persistentID];
    v6 = dispatch_get_global_queue(21, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001E47A4;
    v8[3] = &unk_100756798;
    v8[4] = persistentID;
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
  databaseTable = [objc_opt_class() databaseTable];
  v6 = [v4 initWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1;", databaseTable, @"ROWID"];

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

- (id)getValuesForProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = objc_autoreleasePoolPush();
  if ([propertiesCopy count] == 1 && (objc_msgSend(propertiesCopy, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"ROWID"), v6, v7))
  {
    v39 = @"ROWID";
    databaseTable = [NSNumber numberWithLongLong:self->_persistentID];
    v40 = databaseTable;
    v9 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  else
  {
    v26 = v5;
    v10 = objc_opt_class();
    databaseTable = [v10 databaseTable];
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
    [propertiesCopy enumerateObjectsUsingBlock:v34];
    [v13 appendString:@" FROM "];
    [v13 appendString:databaseTable];
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
    [v13 appendString:databaseTable];
    [v13 appendString:@".ROWID = ?;"];
    v21 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [propertiesCopy count]);
    connection = self->_connection;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001E4E5C;
    v27[3] = &unk_100756860;
    v27[4] = self;
    v28 = propertiesCopy;
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

  v12 = [(ASUSQLiteEntity *)self setValuesWithDictionary:v10];

  return v12;
}

- (BOOL)setValuesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  databaseTable = [v5 databaseTable];
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E5220;
  v11[3] = &unk_100756900;
  v11[4] = self;
  v12 = dictionaryCopy;
  v13 = databaseTable;
  v14 = v5;
  v8 = databaseTable;
  v9 = dictionaryCopy;
  LOBYTE(v5) = [(ASUSQLiteConnection *)connection performTransaction:v11 error:0];

  return v5;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  propertyCopy2 = property;
  v5 = [NSArray arrayWithObjects:&propertyCopy count:1];
  propertyCopy = [(ASUSQLiteEntity *)self getValuesForProperties:v5, propertyCopy];
  v7 = [propertyCopy objectForKeyedSubscript:propertyCopy2];

  return v7;
}

- (BOOL)BOOLValueForProperty:(id)property
{
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:property];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)dictValueForProperty:(id)property
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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

- (id)errorValueForProperty:(id)property
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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
  v3 = [(ASUSQLiteEntity *)self numberValueForProperty:property];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)numberValueForProperty:(id)property
{
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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
  v3 = [(ASUSQLiteEntity *)self valueForProperty:property];
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

+ (id)anyOnConnection:(id)connection predicate:(id)predicate
{
  connectionCopy = connection;
  predicateCopy = predicate;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001E7880;
  v20 = sub_1001E7890;
  v21 = 0;
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E7898;
  v12[3] = &unk_100756AF0;
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
  v19 = sub_1001E7880;
  v20 = sub_1001E7890;
  v21 = objc_opt_new();
  v8 = [self queryOnConnection:connectionCopy predicate:predicateCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001E7A6C;
  v12[3] = &unk_100756B18;
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
  v5 = sub_1001E7AE8(self, property, @"SUM", predicate, connection);
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

+ (id)queryOnConnection:(id)connection predicate:(id)predicate orderingProperties:(id)properties orderingDirections:(id)directions entityClass:(Class)class
{
  directionsCopy = directions;
  propertiesCopy = properties;
  predicateCopy = predicate;
  connectionCopy = connection;
  v15 = [[ASUSQLiteQueryDescriptor alloc] initWithEntityClass:class memoryEntityClass:[(objc_class *)class memoryEntityClass]];
  [(ASUSQLiteQueryDescriptor *)v15 setOrderingProperties:propertiesCopy];

  [(ASUSQLiteQueryDescriptor *)v15 setOrderingDirections:directionsCopy];
  [(ASUSQLiteQueryDescriptor *)v15 setPredicate:predicateCopy];

  v16 = [[ASUSQLiteQuery alloc] initOnConnection:connectionCopy descriptor:v15];

  return v16;
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

@end