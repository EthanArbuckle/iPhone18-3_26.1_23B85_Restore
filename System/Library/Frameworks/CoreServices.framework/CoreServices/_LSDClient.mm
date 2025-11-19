@interface _LSDClient
- (_LSDClient)initWithXPCConnection:(id)a3;
@end

@implementation _LSDClient

- (_LSDClient)initWithXPCConnection:(id)a3
{
  v6.receiver = self;
  v6.super_class = _LSDClient;
  v4 = [(_LSDClient *)&v6 init];
  _LSAssertRunningInServer("[_LSDClient initWithXPCConnection:]");
  if (v4)
  {
    objc_storeStrong(&v4->_XPCConnection, a3);
  }

  return v4;
}

@end