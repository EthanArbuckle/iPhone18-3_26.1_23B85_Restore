@interface ClockAngelConnectionManager
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ClockAngelConnectionManager

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100082FB8(connectionCopy);

  swift_unknownObjectRelease();
}

@end