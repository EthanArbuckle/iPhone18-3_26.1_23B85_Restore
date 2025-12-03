@interface MusicAngel.Server
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)subscriptionOffer_updateOptionsWithClientID:(NSString *)d encodedOptions:(NSData *)options completionHandler:(id)handler;
@end

@implementation MusicAngel.Server

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000B9E4(selfCopy, connectionCopy, context);

  swift_unknownObjectRelease();
}

- (void)subscriptionOffer_updateOptionsWithClientID:(NSString *)d encodedOptions:(NSData *)options completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = d;
  v9[3] = options;
  v9[4] = v8;
  v9[5] = self;
  dCopy = d;
  optionsCopy = options;
  selfCopy = self;

  sub_100013F80(&unk_100018450, v9);
}

@end