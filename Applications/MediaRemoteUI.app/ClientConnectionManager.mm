@interface ClientConnectionManager
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ClientConnectionManager

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002126C(connectionCopy);

  swift_unknownObjectRelease();
}

@end