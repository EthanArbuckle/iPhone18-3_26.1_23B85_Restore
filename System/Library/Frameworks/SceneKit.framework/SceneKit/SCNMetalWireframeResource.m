@interface SCNMetalWireframeResource
- (void)dealloc;
@end

@implementation SCNMetalWireframeResource

- (void)dealloc
{
  CFRelease(self->material);
  CFRelease(self->program);
  programHashCode = self->programHashCode;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SCNMetalWireframeResource_dealloc__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = programHashCode;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4.receiver = self;
  v4.super_class = SCNMetalWireframeResource;
  [(SCNMetalWireframeResource *)&v4 dealloc];
}

@end