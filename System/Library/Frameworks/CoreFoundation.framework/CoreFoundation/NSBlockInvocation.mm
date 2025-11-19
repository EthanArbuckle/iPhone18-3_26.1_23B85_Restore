@interface NSBlockInvocation
- (SEL)selector;
- (void)invoke;
@end

@implementation NSBlockInvocation

- (void)invoke
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSBlockInvocation;
  [(NSInvocation *)&v3 invoke];
  v2 = *MEMORY[0x1E69E9840];
}

- (SEL)selector
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end