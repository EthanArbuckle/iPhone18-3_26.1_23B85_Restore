@interface NSXPCActorSystem.ArgumentListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation NSXPCActorSystem.ArgumentListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1AC6EBB9C(v6, v7);

  return v9 & 1;
}

@end