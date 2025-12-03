@interface PDDatabaseRow
- (PDDatabaseRow)initWithSQLiteRow:(PDSQLiteRow *)row;
@end

@implementation PDDatabaseRow

- (PDDatabaseRow)initWithSQLiteRow:(PDSQLiteRow *)row
{
  v5.receiver = self;
  v5.super_class = PDDatabaseRow;
  result = [(PDDatabaseRow *)&v5 init];
  if (result)
  {
    result->_SQLiteRow = row;
  }

  return result;
}

@end