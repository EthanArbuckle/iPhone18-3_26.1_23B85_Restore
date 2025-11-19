@interface SCNBufferBinding
- (void)dealloc;
@end

@implementation SCNBufferBinding

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNBufferBinding;
  [(SCNBufferBinding *)&v3 dealloc];
}

@end