@interface DatabaseSession
- (SQLiteConnection)connection;
- (void)setConnection:(id)connection;
@end

@implementation DatabaseSession

- (SQLiteConnection)connection
{
  v2 = sub_1000C9D90();

  return v2;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_1000C9DFC(connectionCopy);
}

@end