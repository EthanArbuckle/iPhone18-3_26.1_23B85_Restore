@interface NSProgressSubscriberProxy
- (NSFileAccessNode)itemLocation;
- (NSProgressSubscriberProxy)initWithForwarder:(id)a3 onConnection:(id)a4 subscriberID:(id)a5 appBundleID:(id)a6;
- (id)appBundleID;
- (void)dealloc;
- (void)observePublisherForID:(id)a3 values:(id)a4 forKeys:(id)a5;
- (void)observePublisherUserInfoForID:(id)a3 value:(id)a4 forKey:(id)a5;
- (void)setItemLocation:(id)a3;
@end

@implementation NSProgressSubscriberProxy

- (id)appBundleID
{
  v2 = self->_bundleID;

  return v2;
}

- (NSProgressSubscriberProxy)initWithForwarder:(id)a3 onConnection:(id)a4 subscriberID:(id)a5 appBundleID:(id)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSProgressSubscriberProxy;
  v10 = [(NSProgressSubscriberProxy *)&v12 init];
  if (v10)
  {
    v10->_forwarder = a3;
    v10->_subscriberID = [a5 copy];
    v10->_bundleID = [a6 copy];
    v10->_connection = a4;
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

- (void)setItemLocation:(id)a3
{
  itemLocation = self->_itemLocation;
  if (itemLocation != a3)
  {
    [(NSFileAccessNode *)itemLocation removeProgressSubscriber:self];
    self->_itemLocation = a3;

    [a3 addProgressSubscriber:self];
  }
}

- (NSFileAccessNode)itemLocation
{
  v2 = self->_itemLocation;

  return v2;
}

- (void)observePublisherForID:(id)a3 values:(id)a4 forKeys:(id)a5
{
  v8 = [(NSProgressSubscriber *)self->_forwarder _unboostingRemoteObjectProxy];

  [v8 observePublisherForID:a3 values:a4 forKeys:a5];
}

- (void)observePublisherUserInfoForID:(id)a3 value:(id)a4 forKey:(id)a5
{
  v8 = [(NSProgressSubscriber *)self->_forwarder _unboostingRemoteObjectProxy];

  [v8 observePublisherUserInfoForID:a3 value:a4 forKey:a5];
}

@end