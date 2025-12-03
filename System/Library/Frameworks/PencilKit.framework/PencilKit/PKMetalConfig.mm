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
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(&lock);
    if (!*(selfCopy + 4))
    {
      v3 = +[PKMetalUtility defaultDevice];
      v4 = *(selfCopy + 4);
      *(selfCopy + 4) = v3;
    }

    os_unfair_lock_unlock(&lock);
    self = *(selfCopy + 4);
    v1 = vars8;
  }

  return self;
}

- (id)renderQueue
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(&lock);
    if (!*(selfCopy + 3))
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

      v5 = dispatch_queue_create("com.apple.pencilkit.renderer", v4);
      v6 = *(selfCopy + 3);
      *(selfCopy + 3) = v5;
    }

    os_unfair_lock_unlock(&lock);
    self = *(selfCopy + 3);
    v1 = vars8;
  }

  return self;
}

- (id)resourceHandler
{
  selfCopy = self;
  if (self)
  {
    device = [(PKMetalConfig *)self device];
    os_unfair_lock_lock(&lock);
    if (!*(selfCopy + 2))
    {
      if (*(selfCopy + 8))
      {
        v3 = [[PKMetalResourceHandler alloc] initWithDevice:device];
      }

      else
      {
        v3 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:device];
      }

      v4 = *(selfCopy + 2);
      *(selfCopy + 2) = v3;
    }

    os_unfair_lock_unlock(&lock);
    selfCopy = *(selfCopy + 2);
  }

  return selfCopy;
}

@end