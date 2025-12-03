@interface StoreKitAngelServiceListener
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation StoreKitAngelServiceListener

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();

  sub_10006F1B0(v9, connectionCopy, context);

  swift_unknownObjectRelease();
}

@end