@interface SQLiteQueryResults
- (BOOL)hasRows;
- (NSNumber)firstNumberValue;
- (SQLiteQueryResults)initWithStatement:(id)a3;
- (int64_t)firstInt64Value;
- (void)enumerateRowsUsingBlock:(id)a3;
@end

@implementation SQLiteQueryResults

- (SQLiteQueryResults)initWithStatement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteQueryResults;
  v6 = [(SQLiteQueryResults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, a3);
  }

  return v7;
}

- (void)enumerateRowsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [[SQLiteCursor alloc] initWithStatement:self->_statement];
  v6 = [(SQLiteStatement *)self->_statement sqlite3_stmt];
  v7 = [(SQLiteStatement *)self->_statement connection];
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063E80;
  v13[3] = &unk_1003828E0;
  v16 = v6;
  v8 = v4;
  v15 = v8;
  v9 = v5;
  v14 = v9;
  v10 = [v7 executeWithError:&v17 usingBlock:v13];
  v11 = v17;

  if (v10)
  {
    [(SQLiteStatement *)self->_statement reset];
  }

  else
  {
    v12 = 0;
    (*(v8 + 2))(v8, 0, v11, &v12);
  }
}

- (int64_t)firstInt64Value
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100063F9C;
  v4[3] = &unk_1003828B8;
  v4[4] = &v5;
  [(SQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSNumber)firstNumberValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000640E4;
  v9 = sub_1000640F4;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000640FC;
  v4[3] = &unk_1003828B8;
  v4[4] = &v5;
  [(SQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)hasRows
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006420C;
  v4[3] = &unk_1003828B8;
  v4[4] = &v5;
  [(SQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end