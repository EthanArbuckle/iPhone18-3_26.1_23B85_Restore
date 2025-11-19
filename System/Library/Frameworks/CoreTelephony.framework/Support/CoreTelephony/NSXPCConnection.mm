@interface NSXPCConnection
- (unint64_t)ct_clientID;
@end

@implementation NSXPCConnection

- (unint64_t)ct_clientID
{
  v2 = [(NSXPCConnection *)self exportedObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 clientID];
  return v4;
}

@end