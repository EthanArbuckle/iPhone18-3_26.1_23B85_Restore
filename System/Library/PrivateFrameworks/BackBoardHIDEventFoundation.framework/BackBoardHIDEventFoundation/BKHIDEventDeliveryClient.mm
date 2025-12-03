@interface BKHIDEventDeliveryClient
- (void)invalidate;
- (void)setBufferTimer:(uint64_t)timer;
- (void)setProcessDescription:(uint64_t)description;
@end

@implementation BKHIDEventDeliveryClient

- (void)invalidate
{
  [(BSContinuousMachTimer *)self->_bufferTimer invalidate];
  bufferTimer = self->_bufferTimer;
  self->_bufferTimer = 0;
}

- (void)setBufferTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 64), a2);
  }
}

- (void)setProcessDescription:(uint64_t)description
{
  if (description)
  {
    objc_storeStrong((description + 16), a2);
  }
}

@end