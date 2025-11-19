@interface AVRoutingCMNotificationDispatcherListenerKey
+ (id)listenerKeyWithWeakReferenceToListener:(id)a3 callback:(void *)a4 name:(id)a5 object:(void *)a6;
- (AVRoutingCMNotificationDispatcherListenerKey)initWithWeakReferenceToListener:(id)a3 callback:(void *)a4 name:(id)a5 object:(void *)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation AVRoutingCMNotificationDispatcherListenerKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRoutingCMNotificationDispatcherListenerKey;
  [(AVRoutingCMNotificationDispatcherListenerKey *)&v3 dealloc];
}

+ (id)listenerKeyWithWeakReferenceToListener:(id)a3 callback:(void *)a4 name:(id)a5 object:(void *)a6
{
  v6 = [objc_alloc(objc_opt_class()) initWithWeakReferenceToListener:a3 callback:a4 name:a5 object:a6];

  return v6;
}

- (AVRoutingCMNotificationDispatcherListenerKey)initWithWeakReferenceToListener:(id)a3 callback:(void *)a4 name:(id)a5 object:(void *)a6
{
  v12.receiver = self;
  v12.super_class = AVRoutingCMNotificationDispatcherListenerKey;
  v10 = [(AVRoutingCMNotificationDispatcherListenerKey *)&v12 init];
  if (v10)
  {
    v10->_weakReferenceToListener = a3;
    v10->_callback = a4;
    v10->_name = [a5 copyWithZone:{-[AVRoutingCMNotificationDispatcherListenerKey zone](v10, "zone")}];
    v10->_object = a6;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVRoutingCMNotificationDispatcherListenerKey allocWithZone:[(AVRoutingCMNotificationDispatcherListenerKey *)self zone]];
  weakReferenceToListener = self->_weakReferenceToListener;
  callback = self->_callback;
  name = self->_name;
  object = self->_object;

  return [(AVRoutingCMNotificationDispatcherListenerKey *)v4 initWithWeakReferenceToListener:weakReferenceToListener callback:callback name:name object:object];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (self == a3)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    name = self->_name;
    if (name == *(a3 + 3))
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = ![(NSString *)name isEqualToString:?];
    }

    weakReferenceToListener = self->_weakReferenceToListener;
    if (weakReferenceToListener == *(a3 + 1) || (v7 = [(AVRoutingWeakReference *)weakReferenceToListener isEqual:?]) != 0)
    {
      if ((self->_callback != *(a3 + 2)) | v6 & 1)
      {
LABEL_10:
        LOBYTE(v7) = 0;
        return v7;
      }

      LOBYTE(v7) = self->_object == *(a3 + 4);
    }
  }

  return v7;
}

@end