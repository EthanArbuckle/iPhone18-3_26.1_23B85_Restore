@interface AVCMNotificationDispatcherListenerKey
+ (id)listenerKeyWithWeakReferenceToListener:(id)listener callback:(void *)callback name:(id)name object:(void *)object;
- (AVCMNotificationDispatcherListenerKey)initWithWeakReferenceToListener:(id)listener callback:(void *)callback name:(id)name object:(void *)object;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation AVCMNotificationDispatcherListenerKey

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCMNotificationDispatcherListenerKey;
  [(AVCMNotificationDispatcherListenerKey *)&v3 dealloc];
}

+ (id)listenerKeyWithWeakReferenceToListener:(id)listener callback:(void *)callback name:(id)name object:(void *)object
{
  v6 = [objc_alloc(objc_opt_class()) initWithWeakReferenceToListener:listener callback:callback name:name object:object];

  return v6;
}

- (AVCMNotificationDispatcherListenerKey)initWithWeakReferenceToListener:(id)listener callback:(void *)callback name:(id)name object:(void *)object
{
  v12.receiver = self;
  v12.super_class = AVCMNotificationDispatcherListenerKey;
  v10 = [(AVCMNotificationDispatcherListenerKey *)&v12 init];
  if (v10)
  {
    v10->_weakReferenceToListener = listener;
    v10->_callback = callback;
    v10->_name = [name copyWithZone:{-[AVCMNotificationDispatcherListenerKey zone](v10, "zone")}];
    v10->_object = object;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVCMNotificationDispatcherListenerKey allocWithZone:[(AVCMNotificationDispatcherListenerKey *)self zone]];
  weakReferenceToListener = self->_weakReferenceToListener;
  callback = self->_callback;
  name = self->_name;
  object = self->_object;

  return [(AVCMNotificationDispatcherListenerKey *)v4 initWithWeakReferenceToListener:weakReferenceToListener callback:callback name:name object:object];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (self == equal)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    name = self->_name;
    if (name == *(equal + 3))
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = ![(NSString *)name isEqualToString:?];
    }

    weakReferenceToListener = self->_weakReferenceToListener;
    if (weakReferenceToListener == *(equal + 1) || (v7 = [(AVWeakReference *)weakReferenceToListener isEqual:?]) != 0)
    {
      if ((self->_callback != *(equal + 2)) | v6 & 1)
      {
LABEL_10:
        LOBYTE(v7) = 0;
        return v7;
      }

      LOBYTE(v7) = self->_object == *(equal + 4);
    }
  }

  return v7;
}

@end