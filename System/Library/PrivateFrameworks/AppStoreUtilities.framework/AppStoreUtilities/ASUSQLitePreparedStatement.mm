@interface ASUSQLitePreparedStatement
- (void)initWithConnection:(void *)connection SQL:;
@end

@implementation ASUSQLitePreparedStatement

- (void)initWithConnection:(void *)connection SQL:
{
  connectionCopy = connection;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = ASUSQLitePreparedStatement;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    self = v6;
    if (v6)
    {
      v6[1] = a2;
      v7 = [connectionCopy copy];
      v8 = self[2];
      self[2] = v7;
    }
  }

  return self;
}

@end