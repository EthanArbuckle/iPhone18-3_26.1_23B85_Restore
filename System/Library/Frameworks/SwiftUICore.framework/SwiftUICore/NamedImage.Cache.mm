@interface NamedImage.Cache
- (void)releaseImages;
@end

@implementation NamedImage.Cache

- (void)releaseImages
{

  os_unfair_lock_lock(v3 + 6);
  _s7SwiftUI10NamedImageO5CacheC13releaseImages33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLyyFyAE4DataAGLLVzYuYTXEfU_(&self->data[8]);
  os_unfair_lock_unlock(self->data);
}

@end