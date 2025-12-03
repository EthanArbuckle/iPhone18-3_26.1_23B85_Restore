@interface NSXPCConnection
- (unint64_t)ct_clientID;
@end

@implementation NSXPCConnection

- (unint64_t)ct_clientID
{
  exportedObject = [(NSXPCConnection *)self exportedObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = exportedObject;
  }

  else
  {
    v3 = 0;
  }

  clientID = [v3 clientID];
  return clientID;
}

@end