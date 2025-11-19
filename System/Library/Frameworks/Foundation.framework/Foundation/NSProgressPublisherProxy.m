@interface NSProgressPublisherProxy
- (NSFileAccessNode)itemLocation;
- (NSProgressPublisherProxy)initWithForwarder:(id)a3 onConnection:(id)a4 publisherID:(id)a5 values:(id)a6;
- (id)publisherID;
- (void)dealloc;
- (void)observeUserInfoValue:(id)a3 forKey:(id)a4;
- (void)observeValues:(id)a3 forKeys:(id)a4;
- (void)setItemLocation:(id)a3;
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

- (NSProgressPublisherProxy)initWithForwarder:(id)a3 onConnection:(id)a4 publisherID:(id)a5 values:(id)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSProgressPublisherProxy;
  v10 = [(NSProgressPublisherProxy *)&v12 init];
  if (v10)
  {
    v10->_forwarder = a3;
    v10->_publisherID = a5;
    v10->_connection = a4;
    v10->_values = [a6 copy];
  }

  return v10;
}

- (void)setItemLocation:(id)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  itemLocation = self->_itemLocation;
  if (itemLocation != a3)
  {
    if (!a3)
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
    self->_itemLocation = a3;
    [a3 addProgressPublisher:self];
  }
}

- (void)observeUserInfoValue:(id)a3 forKey:(id)a4
{
  userInfo = self->_values->_userInfo;
  if (!userInfo)
  {
    self->_values->_userInfo = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = self->_values->_userInfo;
  }

  [(NSMutableDictionary *)userInfo setObject:a3 forKeyedSubscript:a4];
}

- (void)observeValues:(id)a3 forKeys:(id)a4
{
  v7 = [a3 count];
  v8 = [a4 count];
  if (v7 && v7 == v8)
  {
    for (i = 0; i != v7; ++i)
    {
      -[NSProgressValues setValue:forKey:](self->_values, "setValue:forKey:", [a3 objectAtIndexedSubscript:i], objc_msgSend(a4, "objectAtIndexedSubscript:", i));
    }
  }
}

@end