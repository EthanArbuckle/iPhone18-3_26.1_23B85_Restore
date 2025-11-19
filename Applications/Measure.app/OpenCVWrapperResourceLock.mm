@interface OpenCVWrapperResourceLock
- (id)initInternal;
@end

@implementation OpenCVWrapperResourceLock

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = OpenCVWrapperResourceLock;
  return [(OpenCVWrapperResourceLock *)&v3 init];
}

@end