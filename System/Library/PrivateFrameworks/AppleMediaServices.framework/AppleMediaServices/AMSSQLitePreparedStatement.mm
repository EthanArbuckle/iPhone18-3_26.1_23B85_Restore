@interface AMSSQLitePreparedStatement
- (AMSSQLitePreparedStatement)initWithConnection:(const void *)connection SQL:(id)l;
@end

@implementation AMSSQLitePreparedStatement

- (AMSSQLitePreparedStatement)initWithConnection:(const void *)connection SQL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = AMSSQLitePreparedStatement;
  v7 = [(AMSSQLitePreparedStatement *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_connectionPointer = connection;
    v9 = [lCopy copy];
    SQL = v8->_SQL;
    v8->_SQL = v9;
  }

  return v8;
}

@end