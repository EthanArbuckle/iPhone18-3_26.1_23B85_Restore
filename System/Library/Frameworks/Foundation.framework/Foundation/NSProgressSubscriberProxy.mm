@interface NSProgressSubscriberProxy
- (NSFileAccessNode)itemLocation;
- (NSProgressSubscriberProxy)initWithForwarder:(id)forwarder onConnection:(id)connection subscriberID:(id)d appBundleID:(id)iD;
- (id)appBundleID;
- (void)dealloc;
- (void)observePublisherForID:(id)d values:(id)values forKeys:(id)keys;
- (void)observePublisherUserInfoForID:(id)d value:(id)value forKey:(id)key;
- (void)setItemLocation:(id)location;
@end

@implementation NSProgressSubscriberProxy

- (id)appBundleID
{
  v2 = self->_bundleID;

  return v2;
}

- (NSProgressSubscriberProxy)initWithForwarder:(id)forwarder onConnection:(id)connection subscriberID:(id)d appBundleID:(id)iD
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSProgressSubscriberProxy;
  v10 = [(NSProgressSubscriberProxy *)&v12 init];
  if (v10)
  {
    v10->_forwarder = forwarder;
    v10->_subscriberID = [d copy];
    v10->_bundleID = [iD copy];
    v10->_connection = connection;
  }

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSProgressSubscriberProxy;
  [(NSProgressSubscriberProxy *)&v3 dealloc];
}

- (void)setItemLocation:(id)location
{
  itemLocation = self->_itemLocation;
  if (itemLocation != location)
  {
    [(NSFileAccessNode *)itemLocation removeProgressSubscriber:self];
    self->_itemLocation = location;

    [location addProgressSubscriber:self];
  }
}

- (NSFileAccessNode)itemLocation
{
  v2 = self->_itemLocation;

  return v2;
}

- (void)observePublisherForID:(id)d values:(id)values forKeys:(id)keys
{
  _unboostingRemoteObjectProxy = [(NSProgressSubscriber *)self->_forwarder _unboostingRemoteObjectProxy];

  [_unboostingRemoteObjectProxy observePublisherForID:d values:values forKeys:keys];
}

- (void)observePublisherUserInfoForID:(id)d value:(id)value forKey:(id)key
{
  _unboostingRemoteObjectProxy = [(NSProgressSubscriber *)self->_forwarder _unboostingRemoteObjectProxy];

  [_unboostingRemoteObjectProxy observePublisherUserInfoForID:d value:value forKey:key];
}

@end