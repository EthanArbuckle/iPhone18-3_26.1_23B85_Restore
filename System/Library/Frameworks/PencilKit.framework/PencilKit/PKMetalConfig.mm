@interface PKMetalConfig
- (PKMetalConfig)init;
- (_BYTE)initWithPrivateResourceHandler:(_BYTE *)result;
- (id)device;
- (id)renderQueue;
- (id)resourceHandler;
@end

@implementation PKMetalConfig

- (PKMetalConfig)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = PKMetalConfig;
    self = [(PKMetalConfig *)&v2 init];
    if (self)
    {
      self->_privateResourceHandler = 0;
    }
  }

  return self;
}

- (_BYTE)initWithPrivateResourceHandler:(_BYTE *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = PKMetalConfig;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[8] = a2;
    }
  }

  return result;
}

- (id)device
{
  if (a1)
  {
    v2 = a1;
    os_unfair_lock_lock(&lock);
    if (!*(v2 + 4))
    {
      v3 = +[PKMetalUtility defaultDevice];
      v4 = *(v2 + 4);
      *(v2 + 4) = v3;
    }

    os_unfair_lock_unlock(&lock);
    a1 = *(v2 + 4);
    v1 = vars8;
  }

  return a1;
}

- (id)renderQueue
{
  if (a1)
  {
    v2 = a1;
    os_unfair_lock_lock(&lock);
    if (!*(v2 + 3))
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

      v5 = dispatch_queue_create("com.apple.pencilkit.renderer", v4);
      v6 = *(v2 + 3);
      *(v2 + 3) = v5;
    }

    os_unfair_lock_unlock(&lock);
    a1 = *(v2 + 3);
    v1 = vars8;
  }

  return a1;
}

- (id)resourceHandler
{
  v1 = a1;
  if (a1)
  {
    v2 = [(PKMetalConfig *)a1 device];
    os_unfair_lock_lock(&lock);
    if (!*(v1 + 2))
    {
      if (*(v1 + 8))
      {
        v3 = [[PKMetalResourceHandler alloc] initWithDevice:v2];
      }

      else
      {
        v3 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:v2];
      }

      v4 = *(v1 + 2);
      *(v1 + 2) = v3;
    }

    os_unfair_lock_unlock(&lock);
    v1 = *(v1 + 2);
  }

  return v1;
}

@end