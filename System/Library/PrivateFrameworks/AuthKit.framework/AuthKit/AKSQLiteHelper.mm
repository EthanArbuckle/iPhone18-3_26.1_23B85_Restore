@interface AKSQLiteHelper
+ (id)dataFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
+ (id)doubleFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
+ (id)integerFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
+ (id)stringFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement;
+ (id)tableInfoForTable:(id)table withExecutor:(id)executor;
+ (int)numberOfRowsForTable:(id)table withExecutor:(id)executor;
@end

@implementation AKSQLiteHelper

+ (id)stringFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  v5 = sqlite3_column_text(statement, column);
  if (v5)
  {
    v6 = [NSString stringWithUTF8String:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)integerFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = column;
  v6[1] = statement;
  v6[0] = [NSNumber numberWithInt:sqlite3_column_int(statement, column)];
  v5 = _objc_retain(v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)doubleFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = column;
  v6[1] = statement;
  v6[0] = [NSNumber numberWithDouble:sqlite3_column_double(statement, column)];
  v5 = _objc_retain(v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)dataFromColumn:(int64_t)column inStatement:(sqlite3_stmt *)statement
{
  selfCopy = self;
  v11 = a2;
  columnCopy = column;
  statementCopy = statement;
  v6 = [NSData alloc];
  v5 = sqlite3_column_blob(statementCopy, columnCopy);
  v8 = [v6 initWithBytes:v5 length:{sqlite3_column_bytes(statementCopy, columnCopy)}];
  v7 = _objc_retain(v8);
  objc_storeStrong(&v8, 0);

  return v7;
}

+ (int)numberOfRowsForTable:(id)table withExecutor:(id)executor
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v19 = 0;
  objc_storeStrong(&v19, executor);
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  v13 = [NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", location[0]];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10014A4CC;
  v11 = &unk_100323838;
  v12 = &v14;
  [v19 performQuery:v13 rowHandler:?];
  v5 = *(v15 + 6);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v14, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  return v5;
}

+ (id)tableInfoForTable:(id)table withExecutor:(id)executor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v12 = 0;
  objc_storeStrong(&v12, executor);
  v11 = +[NSMutableDictionary dictionary];
  v10 = [NSString stringWithFormat:@"PRAGMA table_info('%@')", location[0]];
  v7 = v12;
  v6 = v10;
  v9[1] = selfCopy;
  v9[0] = _objc_retain(v11);
  [v7 performQuery:v6 rowHandler:?];
  v8 = [v11 copy];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end