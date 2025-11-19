@interface DatabaseSession
- (SQLiteConnection)connection;
- (void)setConnection:(id)a3;
@end

@implementation DatabaseSession

- (SQLiteConnection)connection
{
  v2 = sub_1000C9D90();

  return v2;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000C9DFC(v4);
}

@end