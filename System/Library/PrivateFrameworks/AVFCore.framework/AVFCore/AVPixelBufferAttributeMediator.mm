@interface AVPixelBufferAttributeMediator
- (AVPixelBufferAttributeMediator)init;
- (id)mediatedPixelBufferAttributes;
- (void)dealloc;
- (void)removeRequestedPixelBufferAttributesAttributesForKey:(id)key;
- (void)setRequestedPixelBufferAttributes:(id)attributes forKey:(id)key;
@end

@implementation AVPixelBufferAttributeMediator

- (AVPixelBufferAttributeMediator)init
{
  v4.receiver = self;
  v4.super_class = AVPixelBufferAttributeMediator;
  v2 = [(AVPixelBufferAttributeMediator *)&v4 init];
  if (v2)
  {
    if (VTPixelBufferAttributesMediatorCreate())
    {

      return 0;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }
  }

  return v2;
}

- (id)mediatedPixelBufferAttributes
{
  v2 = VTPixelBufferAttributesMediatorCopyProperty();
  result = 0;
  if (!v2)
  {
    return 0;
  }

  return result;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  VTPixelBufferAttributesMediatorNotificationBarrier();
  mediator = self->_mediator;
  if (mediator)
  {
    CFRelease(mediator);
  }

  v4.receiver = self;
  v4.super_class = AVPixelBufferAttributeMediator;
  [(AVPixelBufferAttributeMediator *)&v4 dealloc];
}

- (void)setRequestedPixelBufferAttributes:(id)attributes forKey:(id)key
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (VTPixelBufferAttributesMediatorAddLayer(), !attributes))
  {

    VTPixelBufferAttributesMediatorRemoveRequestedPixelBufferAttributesForKey();
  }

  else
  {

    VTPixelBufferAttributesMediatorSetRequestedPixelBufferAttributesForKey();
  }
}

- (void)removeRequestedPixelBufferAttributesAttributesForKey:(id)key
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    VTPixelBufferAttributesMediatorRemoveLayer();
  }

  VTPixelBufferAttributesMediatorRemoveRequestedPixelBufferAttributesForKey();
}

@end