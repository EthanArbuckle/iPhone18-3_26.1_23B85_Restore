@interface _VNInstanceMaskObservationMaskProductionResources
- (void)dealloc;
@end

@implementation _VNInstanceMaskObservationMaskProductionResources

- (void)dealloc
{
  completionSemaphore = self->_completionSemaphore;
  if (completionSemaphore)
  {
    dispatch_semaphore_signal(completionSemaphore);
  }

  v4.receiver = self;
  v4.super_class = _VNInstanceMaskObservationMaskProductionResources;
  [(_VNInstanceMaskObservationMaskProductionResources *)&v4 dealloc];
}

@end