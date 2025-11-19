@interface BKHIDEventDeliveryClient
- (void)invalidate;
- (void)setBufferTimer:(uint64_t)a1;
- (void)setProcessDescription:(uint64_t)a1;
@end

@implementation BKHIDEventDeliveryClient

- (void)invalidate
{
  [(BSContinuousMachTimer *)self->_bufferTimer invalidate];
  bufferTimer = self->_bufferTimer;
  self->_bufferTimer = 0;
}

- (void)setBufferTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (void)setProcessDescription:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

@end