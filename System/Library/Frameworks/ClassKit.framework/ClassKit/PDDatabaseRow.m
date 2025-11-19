@interface PDDatabaseRow
- (PDDatabaseRow)initWithSQLiteRow:(PDSQLiteRow *)a3;
@end

@implementation PDDatabaseRow

- (PDDatabaseRow)initWithSQLiteRow:(PDSQLiteRow *)a3
{
  v5.receiver = self;
  v5.super_class = PDDatabaseRow;
  result = [(PDDatabaseRow *)&v5 init];
  if (result)
  {
    result->_SQLiteRow = a3;
  }

  return result;
}

@end