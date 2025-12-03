@interface _WKWebExtensionSQLiteRowEnumerator
- (_WKWebExtensionSQLiteRowEnumerator)initWithResultsOfStatement:(id)statement;
- (id)nextObject;
@end

@implementation _WKWebExtensionSQLiteRowEnumerator

- (_WKWebExtensionSQLiteRowEnumerator)initWithResultsOfStatement:(id)statement
{
  statementCopy = statement;
  v11.receiver = self;
  v11.super_class = _WKWebExtensionSQLiteRowEnumerator;
  v6 = [(_WKWebExtensionSQLiteRowEnumerator *)&v11 init];
  if (v6)
  {
    database = [statementCopy database];
    queue = [database queue];
    dispatch_assert_queue_V2(queue);

    objc_storeStrong(&v6->_statement, statement);
    v9 = v6;
  }

  return v6;
}

- (id)nextObject
{
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  v5 = sqlite3_step([(_WKWebExtensionSQLiteStatement *)self->_statement handle]);
  v6 = 0;
  self->_lastResultCode = v5;
  if (v5)
  {
    if (v5 == 100)
    {
      row = self->_row;
      if (!row)
      {
        v9 = [[_WKWebExtensionSQLiteRow alloc] initWithCurrentRowOfEnumerator:self];
        v10 = self->_row;
        self->_row = v9;

        row = self->_row;
      }

      v6 = row;
    }

    else if (v5 != 101)
    {
      database2 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
      [database2 reportErrorWithCode:self->_lastResultCode statement:-[_WKWebExtensionSQLiteStatement handle](self->_statement error:{"handle"), 0}];

      v6 = 0;
    }
  }

  return v6;
}

@end