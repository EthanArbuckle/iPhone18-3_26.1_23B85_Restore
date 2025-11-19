@interface ABBufferQueryCursorCount
- (ABBufferQueryCursorCount)initWithAddressBook:(void *)a3 predicate:(id)a4 includeLinkedContacts:(BOOL)a5 managedConfiguration:(id)a6;
- (ABBufferQueryCursorCount)initWithQuery:(id)a3;
- (int64_t)fetchContactCount;
- (void)dealloc;
@end

@implementation ABBufferQueryCursorCount

- (ABBufferQueryCursorCount)initWithAddressBook:(void *)a3 predicate:(id)a4 includeLinkedContacts:(BOOL)a5 managedConfiguration:(id)a6
{
  v7 = [[ABBufferQueryCount alloc] initWithAddressBook:a3 predicate:a4 includeLinkedContacts:a5 managedConfiguration:a6];
  if (v7)
  {
    v8 = v7;
    v9 = [(ABBufferQueryCursorCount *)self initWithQuery:v7];

    return v9;
  }

  else
  {

    return 0;
  }
}

- (ABBufferQueryCursorCount)initWithQuery:(id)a3
{
  v6.receiver = self;
  v6.super_class = ABBufferQueryCursorCount;
  v4 = [(ABBufferQueryCursorCount *)&v6 init];
  if (v4)
  {
    v4->_query = a3;
  }

  return v4;
}

- (int64_t)fetchContactCount
{
  v2 = [(ABBufferQuery *)self->_query statement];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  var1 = v2->var1;
  if (!var1 || !*v3 || !*(*v3 + 1))
  {
    return 0;
  }

  if (sqlite3_step(var1) == 100)
  {
    v5 = sqlite3_column_int(v3[1], 0);
  }

  else
  {
    v5 = 0;
  }

  CPSqliteStatementReset();
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABBufferQueryCursorCount;
  [(ABBufferQueryCursorCount *)&v3 dealloc];
}

@end