@interface NSProgressPublisherProxy
- (NSFileAccessNode)itemLocation;
- (NSProgressPublisherProxy)initWithForwarder:(id)forwarder onConnection:(id)connection publisherID:(id)d values:(id)values;
- (id)publisherID;
- (void)dealloc;
- (void)observeUserInfoValue:(id)value forKey:(id)key;
- (void)observeValues:(id)values forKeys:(id)keys;
- (void)setItemLocation:(id)location;
@end

@implementation NSProgressPublisherProxy

- (NSFileAccessNode)itemLocation
{
  v2 = self->_itemLocation;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSProgressPublisherProxy;
  [(NSProgressPublisherProxy *)&v3 dealloc];
}

- (id)publisherID
{
  v2 = self->_publisherID;

  return v2;
}

- (NSProgressPublisherProxy)initWithForwarder:(id)forwarder onConnection:(id)connection publisherID:(id)d values:(id)values
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSProgressPublisherProxy;
  v10 = [(NSProgressPublisherProxy *)&v12 init];
  if (v10)
  {
    v10->_forwarder = forwarder;
    v10->_publisherID = d;
    v10->_connection = connection;
    v10->_values = [values copy];
  }

  return v10;
}

- (void)setItemLocation:(id)location
{
  v6[5] = *MEMORY[0x1E69E9840];
  itemLocation = self->_itemLocation;
  if (itemLocation != location)
  {
    if (!location)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __44__NSProgressPublisherProxy_setItemLocation___block_invoke;
      v6[3] = &unk_1E69F2008;
      v6[4] = self;
      [(NSFileAccessNode *)itemLocation forEachProgressSubscriberOfItemOrContainingItemPerformProcedure:v6];
      itemLocation = self->_itemLocation;
    }

    [(NSFileAccessNode *)itemLocation removeProgressPublisher:self];
    self->_itemLocation = location;
    [location addProgressPublisher:self];
  }
}

- (void)observeUserInfoValue:(id)value forKey:(id)key
{
  userInfo = self->_values->_userInfo;
  if (!userInfo)
  {
    self->_values->_userInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = self->_values->_userInfo;
  }

  [(NSMutableDictionary *)userInfo setObject:value forKeyedSubscript:key];
}

- (void)observeValues:(id)values forKeys:(id)keys
{
  v7 = [values count];
  v8 = [keys count];
  if (v7 && v7 == v8)
  {
    for (i = 0; i != v7; ++i)
    {
      -[NSProgressValues setValue:forKey:](self->_values, "setValue:forKey:", [values objectAtIndexedSubscript:i], objc_msgSend(keys, "objectAtIndexedSubscript:", i));
    }
  }
}

@end