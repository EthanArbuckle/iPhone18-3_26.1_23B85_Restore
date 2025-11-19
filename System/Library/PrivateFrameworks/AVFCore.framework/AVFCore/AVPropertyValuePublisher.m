@interface AVPropertyValuePublisher
+ (id)propertyValuePublisherWithObject:(id)a3 key:(id)a4 notificationName:(id)a5;
- (AVPropertyValuePublisher)initWithObject:(id)a3 key:(id)a4 notificationName:(id)a5;
- (id)subscribeRequestingInitialValue:(BOOL)a3 block:(id)a4;
- (void)dealloc;
@end

@implementation AVPropertyValuePublisher

- (AVPropertyValuePublisher)initWithObject:(id)a3 key:(id)a4 notificationName:(id)a5
{
  v10.receiver = self;
  v10.super_class = AVPropertyValuePublisher;
  v8 = [(AVPublisher *)&v10 init];
  if (v8)
  {
    v8->_object = a3;
    v8->_key = [a4 copy];
    v8->_notificationName = [a5 copy];
  }

  return v8;
}

+ (id)propertyValuePublisherWithObject:(id)a3 key:(id)a4 notificationName:(id)a5
{
  v5 = [[AVPropertyValuePublisher alloc] initWithObject:a3 key:a4 notificationName:a5];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPropertyValuePublisher;
  [(AVPublisher *)&v3 dealloc];
}

- (id)subscribeRequestingInitialValue:(BOOL)a3 block:(id)a4
{
  v5 = a3;
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
  v14[5] = a4;
  v11 = [(AVNotificationSubscription *)v8 initWithObject:object notificationName:notificationName callbackBlock:v14];
  if (v5)
  {
    (*(a4 + 2))(a4, [self->_object valueForKey:key]);
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