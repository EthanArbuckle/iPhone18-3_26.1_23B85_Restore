@interface Server
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation Server

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100001B94(selfCopy, connectionCopy);

  swift_unknownObjectRelease();
}

@end