@interface AVPropertyValuePublisher
+ (id)propertyValuePublisherWithObject:(id)object key:(id)key notificationName:(id)name;
- (AVPropertyValuePublisher)initWithObject:(id)object key:(id)key notificationName:(id)name;
- (id)subscribeRequestingInitialValue:(BOOL)value block:(id)block;
- (void)dealloc;
@end

@implementation AVPropertyValuePublisher

- (AVPropertyValuePublisher)initWithObject:(id)object key:(id)key notificationName:(id)name
{
  v10.receiver = self;
  v10.super_class = AVPropertyValuePublisher;
  v8 = [(AVPublisher *)&v10 init];
  if (v8)
  {
    v8->_object = object;
    v8->_key = [key copy];
    v8->_notificationName = [name copy];
  }

  return v8;
}

+ (id)propertyValuePublisherWithObject:(id)object key:(id)key notificationName:(id)name
{
  v5 = [[AVPropertyValuePublisher alloc] initWithObject:object key:key notificationName:name];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPropertyValuePublisher;
  [(AVPublisher *)&v3 dealloc];
}

- (id)subscribeRequestingInitialValue:(BOOL)value block:(id)block
{
  valueCopy = value;
  objc_initWeak(&location, self);
  key = self->_key;
  v8 = [AVNotificationSubscription alloc];
  object = self->_object;
  notificationName = self->_notificationName;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__AVPropertyValuePublisher_subscribeRequestingInitialValue_block___block_invoke;
  v14[3] = &unk_1E7463590;
  v14[4] = key;
  v14[5] = block;
  v11 = [(AVNotificationSubscription *)v8 initWithObject:object notificationName:notificationName callbackBlock:v14];
  if (valueCopy)
  {
    (*(block + 2))(block, [self->_object valueForKey:key]);
  }

  v12 = v11;
  objc_destroyWeak(&location);
  return v12;
}

uint64_t __66__AVPropertyValuePublisher_subscribeRequestingInitialValue_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_msgSend(a2 "object")];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end